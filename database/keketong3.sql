/*
Navicat MySQL Data Transfer

Source Server         : 192.168.10.14
Source Server Version : 50712
Source Host           : 192.168.10.14:3306
Source Database       : keketong

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-01-08 16:23:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_permission_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission_role`;
CREATE TABLE `admin_permission_role` (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_permission_role
-- ----------------------------
INSERT INTO `admin_permission_role` VALUES ('2', '1');
INSERT INTO `admin_permission_role` VALUES ('3', '1');
INSERT INTO `admin_permission_role` VALUES ('4', '1');
INSERT INTO `admin_permission_role` VALUES ('5', '1');
INSERT INTO `admin_permission_role` VALUES ('6', '1');
INSERT INTO `admin_permission_role` VALUES ('7', '1');
INSERT INTO `admin_permission_role` VALUES ('8', '1');
INSERT INTO `admin_permission_role` VALUES ('9', '1');
INSERT INTO `admin_permission_role` VALUES ('10', '1');
INSERT INTO `admin_permission_role` VALUES ('11', '1');
INSERT INTO `admin_permission_role` VALUES ('12', '1');
INSERT INTO `admin_permission_role` VALUES ('13', '1');
INSERT INTO `admin_permission_role` VALUES ('15', '1');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '权限名',
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '权限解释名称',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述与备注',
  `cid` tinyint(4) NOT NULL COMMENT '级别',
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '图标',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'admin.permission', '权限管理', '', '0', 'fa-users', '2016-05-21 10:06:50', '2016-06-22 13:49:09');
INSERT INTO `admin_permissions` VALUES ('2', 'admin.permission.index', '权限列表', '', '1', '', '2016-05-21 10:08:04', '2016-05-21 10:08:04');
INSERT INTO `admin_permissions` VALUES ('3', 'admin.permission.create', '权限添加', '', '1', '', '2016-05-21 10:08:18', '2016-05-21 10:08:18');
INSERT INTO `admin_permissions` VALUES ('4', 'admin.permission.edit', '权限修改', '', '1', '', '2016-05-21 10:08:35', '2016-05-21 10:08:35');
INSERT INTO `admin_permissions` VALUES ('5', 'admin.permission.destroy ', '权限删除', '', '1', '', '2016-05-21 10:09:57', '2016-05-21 10:09:57');
INSERT INTO `admin_permissions` VALUES ('6', 'admin.role.index', '角色列表', '', '1', '', '2016-05-23 10:36:40', '2016-05-23 10:36:40');
INSERT INTO `admin_permissions` VALUES ('7', 'admin.role.create', '角色添加', '', '1', '', '2016-05-23 10:37:07', '2016-05-23 10:37:07');
INSERT INTO `admin_permissions` VALUES ('8', 'admin.role.edit', '角色修改', '', '1', '', '2016-05-23 10:37:22', '2016-05-23 10:37:22');
INSERT INTO `admin_permissions` VALUES ('9', 'admin.role.destroy', '角色删除', '', '1', '', '2016-05-23 10:37:48', '2016-05-23 10:37:48');
INSERT INTO `admin_permissions` VALUES ('10', 'admin.user.index', '用户管理', '', '1', '', '2016-05-23 10:38:52', '2016-05-23 10:38:52');
INSERT INTO `admin_permissions` VALUES ('11', 'admin.user.create', '用户添加', '', '1', '', '2016-05-23 10:39:21', '2016-06-22 13:49:29');
INSERT INTO `admin_permissions` VALUES ('12', 'admin.user.edit', '用户编辑', '', '1', '', '2016-05-23 10:39:52', '2016-05-23 10:39:52');
INSERT INTO `admin_permissions` VALUES ('13', 'admin.user.destroy', '用户删除', '', '1', '', '2016-05-23 10:40:36', '2016-05-23 10:40:36');
INSERT INTO `admin_permissions` VALUES ('14', 'admin.permission2', '学生管理', '1234', '0', 'fa-skype', '2016-12-29 13:39:02', '2016-12-29 13:40:52');
INSERT INTO `admin_permissions` VALUES ('15', '1342', '1342', '134', '14', '', '2016-12-29 13:39:36', '2016-12-29 13:43:22');
INSERT INTO `admin_permissions` VALUES ('16', '134', '134', '1234', '14', '', '2016-12-29 13:43:32', '2016-12-29 13:43:32');

-- ----------------------------
-- Table structure for admin_role_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_user`;
CREATE TABLE `admin_role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '角色名称',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', '管理员组', '管理员组', '2016-12-29 13:36:37', '2016-12-29 13:36:37');

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员用户表ID',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'root', 'root@admin.com', '$2y$10$TMccRt/jn4JG0FOOtSan0O1./jkoP7.5JU1qL8KhzJhW9iEsCxNzu', 'hvLHVZgqQn7Eta8qiMvF65YaJ5JeBqLigH4n5idNSutwAsAbcKlFqiXTcTUq', '2016-12-29 13:30:48', '2016-12-29 13:42:07');
INSERT INTO `admin_users` VALUES ('2', 'shentao', 'shentao08@live.cn', '$2y$10$UuIl2NN6aCrvDWGdXdXVCOoh/m5yIoltl.7kcMHZ.Lz0thDGnCowO', 'Ng11WxyT8H9tyt4Dti3Ard9XmcyLRZzYj3DhLeYqTp3F80ylC8xtnLZvMPQq', '2016-12-29 13:41:58', '2016-12-29 13:42:55');

-- ----------------------------
-- Table structure for creater_bak
-- ----------------------------
DROP TABLE IF EXISTS `creater_bak`;
CREATE TABLE `creater_bak` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (id)
(PARTITION p0 VALUES LESS THAN (500) ENGINE = InnoDB,
 PARTITION p1 VALUES LESS THAN (1000) ENGINE = InnoDB,
 PARTITION p2 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;

-- ----------------------------
-- Records of creater_bak
-- ----------------------------
INSERT INTO `creater_bak` VALUES ('1', '1234');
INSERT INTO `creater_bak` VALUES ('2', '2');
INSERT INTO `creater_bak` VALUES ('1000', '2');
INSERT INTO `creater_bak` VALUES ('5000', '2');

-- ----------------------------
-- Table structure for k_class
-- ----------------------------
DROP TABLE IF EXISTS `k_class`;
CREATE TABLE `k_class` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(40) NOT NULL DEFAULT '0' COMMENT '公司id',
  `teacher_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '教师id',
  `name` varchar(64) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of k_class
-- ----------------------------

-- ----------------------------
-- Table structure for k_class_lesson
-- ----------------------------
DROP TABLE IF EXISTS `k_class_lesson`;
CREATE TABLE `k_class_lesson` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(40) NOT NULL DEFAULT '0' COMMENT '公司id',
  `class_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '班级',
  `lesson_tag_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '课程',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of k_class_lesson
-- ----------------------------

-- ----------------------------
-- Table structure for k_class_student
-- ----------------------------
DROP TABLE IF EXISTS `k_class_student`;
CREATE TABLE `k_class_student` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(40) NOT NULL DEFAULT '0' COMMENT '公司id',
  `class_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '班级',
  `student_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '课程',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of k_class_student
-- ----------------------------

-- ----------------------------
-- Table structure for k_company
-- ----------------------------
DROP TABLE IF EXISTS `k_company`;
CREATE TABLE `k_company` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(40) NOT NULL DEFAULT '0' COMMENT '公司id',
  `user_id` varchar(40) NOT NULL DEFAULT '0' COMMENT '用户id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '公司名',
  `province_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '省级行政区id。k_location(ID)',
  `city_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '地级行政区id。k_location(ID)',
  `district_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '区县ID',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `business_licence` varchar(255) NOT NULL DEFAULT '' COMMENT '营业执照',
  `business_entity` varchar(64) NOT NULL DEFAULT '' COMMENT '企业法人',
  `tags` varchar(255) NOT NULL DEFAULT '' COMMENT '机构类型',
  `cell` char(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `id_card` varchar(255) NOT NULL DEFAULT '' COMMENT '身份证',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态。1:审核通过 0:待审核 2:审核通不过 ',
  `reply_msg` varchar(255) NOT NULL DEFAULT '' COMMENT '审核内容',
  `open` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态。1:开启 0:关闭 ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of k_company
-- ----------------------------
INSERT INTO `k_company` VALUES ('5', 'd52c7720-cc04-11e6-957e-93b8c2689162', '2', 'ceshi', '6', '74', '835', 'ceshi', 'http://localhost:8000/storage/2/businesslicence/d52c7720-cc04-11e6-957e-93b8c2689162/3c0d8a97b94895d6f56fa0dee1957efa.jpeg', '1234', '[\"2\",\"3\",\"4\"]', '1234', 'http://localhost:8000/storage/2/id_card/d52c7720-cc04-11e6-957e-93b8c2689162/e2435c2aa8f7795d52479dfbf1984cba.jpeg', '1', '1234134', '1', '2016-12-27 07:19:41', '2016-12-27 07:29:44');

-- ----------------------------
-- Table structure for k_company_tag
-- ----------------------------
DROP TABLE IF EXISTS `k_company_tag`;
CREATE TABLE `k_company_tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of k_company_tag
-- ----------------------------
INSERT INTO `k_company_tag` VALUES ('1', '初中教育');
INSERT INTO `k_company_tag` VALUES ('2', '高中教育');
INSERT INTO `k_company_tag` VALUES ('3', '户外教育');
INSERT INTO `k_company_tag` VALUES ('4', '幼儿教育');
INSERT INTO `k_company_tag` VALUES ('5', '小学教育');

-- ----------------------------
-- Table structure for k_lesson
-- ----------------------------
DROP TABLE IF EXISTS `k_lesson`;
CREATE TABLE `k_lesson` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `center_id` varchar(40) NOT NULL DEFAULT '0' COMMENT '中心id',
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '课程名称',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:正常，1:户外',
  `room_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '教室id',
  `start_time` int(10) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `end_time` int(10) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `teacher_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '老师id',
  `limit` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0:不限',
  `tags` varchar(255) NOT NULL DEFAULT '' COMMENT '课程类型',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of k_lesson
-- ----------------------------
INSERT INTO `k_lesson` VALUES ('1', '1234', '46465465', '1', '1', '1482458026', '1482458026', '1', '0', '', '2016-12-23 09:53:28', '2016-12-23 09:53:30');
INSERT INTO `k_lesson` VALUES ('2', '0', '', '0', '2', '1482865200', '1482868800', '6', '123', '1', '2016-12-27 12:02:26', '2016-12-27 12:02:26');
INSERT INTO `k_lesson` VALUES ('3', '0', '', '0', '1', '1482796800', '1482796800', '6', '2', '1', '2016-12-27 12:04:45', '2016-12-27 12:04:45');

-- ----------------------------
-- Table structure for k_lesson_room
-- ----------------------------
DROP TABLE IF EXISTS `k_lesson_room`;
CREATE TABLE `k_lesson_room` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(40) NOT NULL DEFAULT '0' COMMENT '公司id',
  `name` varchar(64) NOT NULL,
  `limit` tinyint(3) NOT NULL DEFAULT '0' COMMENT '限制人数',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of k_lesson_room
-- ----------------------------
INSERT INTO `k_lesson_room` VALUES ('1', 'd52c7720-cc04-11e6-957e-93b8c2689162', '3214', '3', '2016-12-27 07:55:51', '2016-12-27 07:55:51');
INSERT INTO `k_lesson_room` VALUES ('2', 'd52c7720-cc04-11e6-957e-93b8c2689162', '1234', '1', '2016-12-27 07:56:01', '2016-12-27 08:04:42');

-- ----------------------------
-- Table structure for k_lesson_tag
-- ----------------------------
DROP TABLE IF EXISTS `k_lesson_tag`;
CREATE TABLE `k_lesson_tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(40) NOT NULL DEFAULT '0' COMMENT '公司id',
  `name` varchar(64) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1:必须 0:选修 ',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级ID。0:最上级',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1:有效 0:无效 ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of k_lesson_tag
-- ----------------------------
INSERT INTO `k_lesson_tag` VALUES ('1', 'd52c7720-cc04-11e6-957e-93b8c2689162', '沙龙课', '1', '0', '1', '2016-12-27 16:49:09', '2016-12-27 16:49:13');
INSERT INTO `k_lesson_tag` VALUES ('2', 'd52c7720-cc04-11e6-957e-93b8c2689162', '萨隆1', '1', '1', '1', '2016-12-27 16:49:23', '2016-12-27 16:49:25');

-- ----------------------------
-- Table structure for k_location
-- ----------------------------
DROP TABLE IF EXISTS `k_location`;
CREATE TABLE `k_location` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '姓名',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级行政区ID。0:最上级行政区(无上级)',
  `lv` tinyint(1) NOT NULL COMMENT '行政区级别。0:省级行政区 1:地级行政区 2:县级行政区',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:有效 1:无效',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_location_1` (`name`,`pid`,`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3241 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of k_location
-- ----------------------------
INSERT INTO `k_location` VALUES ('1', '北京市', '0', '0', '0');
INSERT INTO `k_location` VALUES ('2', '天津市', '0', '0', '0');
INSERT INTO `k_location` VALUES ('3', '河北省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('4', '山西省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('5', '内蒙古自治区', '0', '0', '0');
INSERT INTO `k_location` VALUES ('6', '辽宁省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('7', '吉林省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('8', '黑龙江省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('9', '上海市', '0', '0', '0');
INSERT INTO `k_location` VALUES ('10', '江苏省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('11', '浙江省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('12', '安徽省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('13', '福建省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('14', '江西省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('15', '山东省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('16', '河南省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('17', '湖北省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('18', '湖南省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('19', '广东省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('20', '广西壮族自治区', '0', '0', '0');
INSERT INTO `k_location` VALUES ('21', '海南省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('22', '重庆市', '0', '0', '0');
INSERT INTO `k_location` VALUES ('23', '四川省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('24', '贵州省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('25', '云南省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('26', '西藏自治区', '0', '0', '0');
INSERT INTO `k_location` VALUES ('27', '陕西省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('28', '甘肃省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('29', '青海省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('30', '宁夏回族自治区', '0', '0', '0');
INSERT INTO `k_location` VALUES ('31', '新疆维吾尔自治区', '0', '0', '0');
INSERT INTO `k_location` VALUES ('32', '台湾省', '0', '0', '0');
INSERT INTO `k_location` VALUES ('33', '香港特别行政区', '0', '0', '0');
INSERT INTO `k_location` VALUES ('34', '澳门特别行政区', '0', '0', '0');
INSERT INTO `k_location` VALUES ('35', '北京市', '1', '1', '0');
INSERT INTO `k_location` VALUES ('36', '天津市', '2', '1', '0');
INSERT INTO `k_location` VALUES ('37', '石家庄市', '3', '1', '0');
INSERT INTO `k_location` VALUES ('38', '唐山市', '3', '1', '0');
INSERT INTO `k_location` VALUES ('39', '秦皇岛市', '3', '1', '0');
INSERT INTO `k_location` VALUES ('40', '邯郸市', '3', '1', '0');
INSERT INTO `k_location` VALUES ('41', '邢台市', '3', '1', '0');
INSERT INTO `k_location` VALUES ('42', '保定市', '3', '1', '0');
INSERT INTO `k_location` VALUES ('43', '张家口市', '3', '1', '0');
INSERT INTO `k_location` VALUES ('44', '承德市', '3', '1', '0');
INSERT INTO `k_location` VALUES ('45', '沧州市', '3', '1', '0');
INSERT INTO `k_location` VALUES ('46', '廊坊市', '3', '1', '0');
INSERT INTO `k_location` VALUES ('47', '衡水市', '3', '1', '0');
INSERT INTO `k_location` VALUES ('48', '太原市', '4', '1', '0');
INSERT INTO `k_location` VALUES ('49', '大同市', '4', '1', '0');
INSERT INTO `k_location` VALUES ('50', '阳泉市', '4', '1', '0');
INSERT INTO `k_location` VALUES ('51', '长治市', '4', '1', '0');
INSERT INTO `k_location` VALUES ('52', '晋城市', '4', '1', '0');
INSERT INTO `k_location` VALUES ('53', '朔州市', '4', '1', '0');
INSERT INTO `k_location` VALUES ('54', '晋中市', '4', '1', '0');
INSERT INTO `k_location` VALUES ('55', '运城市', '4', '1', '0');
INSERT INTO `k_location` VALUES ('56', '忻州市', '4', '1', '0');
INSERT INTO `k_location` VALUES ('57', '临汾市', '4', '1', '0');
INSERT INTO `k_location` VALUES ('58', '吕梁市', '4', '1', '0');
INSERT INTO `k_location` VALUES ('59', '呼和浩特市', '5', '1', '0');
INSERT INTO `k_location` VALUES ('60', '包头市', '5', '1', '0');
INSERT INTO `k_location` VALUES ('61', '乌海市', '5', '1', '0');
INSERT INTO `k_location` VALUES ('62', '赤峰市', '5', '1', '0');
INSERT INTO `k_location` VALUES ('63', '通辽市', '5', '1', '0');
INSERT INTO `k_location` VALUES ('64', '鄂尔多斯市', '5', '1', '0');
INSERT INTO `k_location` VALUES ('65', '呼伦贝尔市', '5', '1', '0');
INSERT INTO `k_location` VALUES ('66', '巴彦淖尔市', '5', '1', '0');
INSERT INTO `k_location` VALUES ('67', '乌兰察布市', '5', '1', '0');
INSERT INTO `k_location` VALUES ('68', '兴安盟', '5', '1', '0');
INSERT INTO `k_location` VALUES ('69', '锡林郭勒盟', '5', '1', '0');
INSERT INTO `k_location` VALUES ('70', '阿拉善盟', '5', '1', '0');
INSERT INTO `k_location` VALUES ('71', '沈阳市', '6', '1', '0');
INSERT INTO `k_location` VALUES ('72', '大连市', '6', '1', '0');
INSERT INTO `k_location` VALUES ('73', '鞍山市', '6', '1', '0');
INSERT INTO `k_location` VALUES ('74', '抚顺市', '6', '1', '0');
INSERT INTO `k_location` VALUES ('75', '本溪市', '6', '1', '0');
INSERT INTO `k_location` VALUES ('76', '丹东市', '6', '1', '0');
INSERT INTO `k_location` VALUES ('77', '锦州市', '6', '1', '0');
INSERT INTO `k_location` VALUES ('78', '营口市', '6', '1', '0');
INSERT INTO `k_location` VALUES ('79', '阜新市', '6', '1', '0');
INSERT INTO `k_location` VALUES ('80', '辽阳市', '6', '1', '0');
INSERT INTO `k_location` VALUES ('81', '盘锦市', '6', '1', '0');
INSERT INTO `k_location` VALUES ('82', '铁岭市', '6', '1', '0');
INSERT INTO `k_location` VALUES ('83', '朝阳市', '6', '1', '0');
INSERT INTO `k_location` VALUES ('84', '葫芦岛市', '6', '1', '0');
INSERT INTO `k_location` VALUES ('85', '长春市', '7', '1', '0');
INSERT INTO `k_location` VALUES ('86', '吉林市', '7', '1', '0');
INSERT INTO `k_location` VALUES ('87', '四平市', '7', '1', '0');
INSERT INTO `k_location` VALUES ('88', '辽源市', '7', '1', '0');
INSERT INTO `k_location` VALUES ('89', '通化市', '7', '1', '0');
INSERT INTO `k_location` VALUES ('90', '白山市', '7', '1', '0');
INSERT INTO `k_location` VALUES ('91', '松原市', '7', '1', '0');
INSERT INTO `k_location` VALUES ('92', '白城市', '7', '1', '0');
INSERT INTO `k_location` VALUES ('93', '延边朝鲜族自治州', '7', '1', '0');
INSERT INTO `k_location` VALUES ('94', '哈尔滨市', '8', '1', '0');
INSERT INTO `k_location` VALUES ('95', '齐齐哈尔市', '8', '1', '0');
INSERT INTO `k_location` VALUES ('96', '鸡西市', '8', '1', '0');
INSERT INTO `k_location` VALUES ('97', '鹤岗市', '8', '1', '0');
INSERT INTO `k_location` VALUES ('98', '双鸭山市', '8', '1', '0');
INSERT INTO `k_location` VALUES ('99', '大庆市', '8', '1', '0');
INSERT INTO `k_location` VALUES ('100', '伊春市', '8', '1', '0');
INSERT INTO `k_location` VALUES ('101', '佳木斯市', '8', '1', '0');
INSERT INTO `k_location` VALUES ('102', '七台河市', '8', '1', '0');
INSERT INTO `k_location` VALUES ('103', '牡丹江市', '8', '1', '0');
INSERT INTO `k_location` VALUES ('104', '黑河市', '8', '1', '0');
INSERT INTO `k_location` VALUES ('105', '绥化市', '8', '1', '0');
INSERT INTO `k_location` VALUES ('106', '大兴安岭地区', '8', '1', '0');
INSERT INTO `k_location` VALUES ('107', '上海市', '9', '1', '0');
INSERT INTO `k_location` VALUES ('108', '南京市', '10', '1', '0');
INSERT INTO `k_location` VALUES ('109', '无锡市', '10', '1', '0');
INSERT INTO `k_location` VALUES ('110', '徐州市', '10', '1', '0');
INSERT INTO `k_location` VALUES ('111', '常州市', '10', '1', '0');
INSERT INTO `k_location` VALUES ('112', '苏州市', '10', '1', '0');
INSERT INTO `k_location` VALUES ('113', '南通市', '10', '1', '0');
INSERT INTO `k_location` VALUES ('114', '连云港市', '10', '1', '0');
INSERT INTO `k_location` VALUES ('115', '淮安市', '10', '1', '0');
INSERT INTO `k_location` VALUES ('116', '盐城市', '10', '1', '0');
INSERT INTO `k_location` VALUES ('117', '扬州市', '10', '1', '0');
INSERT INTO `k_location` VALUES ('118', '镇江市', '10', '1', '0');
INSERT INTO `k_location` VALUES ('119', '泰州市', '10', '1', '0');
INSERT INTO `k_location` VALUES ('120', '宿迁市', '10', '1', '0');
INSERT INTO `k_location` VALUES ('121', '杭州市', '11', '1', '0');
INSERT INTO `k_location` VALUES ('122', '宁波市', '11', '1', '0');
INSERT INTO `k_location` VALUES ('123', '温州市', '11', '1', '0');
INSERT INTO `k_location` VALUES ('124', '嘉兴市', '11', '1', '0');
INSERT INTO `k_location` VALUES ('125', '湖州市', '11', '1', '0');
INSERT INTO `k_location` VALUES ('126', '绍兴市', '11', '1', '0');
INSERT INTO `k_location` VALUES ('127', '金华市', '11', '1', '0');
INSERT INTO `k_location` VALUES ('128', '衢州市', '11', '1', '0');
INSERT INTO `k_location` VALUES ('129', '舟山市', '11', '1', '0');
INSERT INTO `k_location` VALUES ('130', '台州市', '11', '1', '0');
INSERT INTO `k_location` VALUES ('131', '丽水市', '11', '1', '0');
INSERT INTO `k_location` VALUES ('132', '合肥市', '12', '1', '0');
INSERT INTO `k_location` VALUES ('133', '芜湖市', '12', '1', '0');
INSERT INTO `k_location` VALUES ('134', '蚌埠市', '12', '1', '0');
INSERT INTO `k_location` VALUES ('135', '淮南市', '12', '1', '0');
INSERT INTO `k_location` VALUES ('136', '马鞍山市', '12', '1', '0');
INSERT INTO `k_location` VALUES ('137', '淮北市', '12', '1', '0');
INSERT INTO `k_location` VALUES ('138', '铜陵市', '12', '1', '0');
INSERT INTO `k_location` VALUES ('139', '安庆市', '12', '1', '0');
INSERT INTO `k_location` VALUES ('140', '黄山市', '12', '1', '0');
INSERT INTO `k_location` VALUES ('141', '滁州市', '12', '1', '0');
INSERT INTO `k_location` VALUES ('142', '阜阳市', '12', '1', '0');
INSERT INTO `k_location` VALUES ('143', '宿州市', '12', '1', '0');
INSERT INTO `k_location` VALUES ('144', '六安市', '12', '1', '0');
INSERT INTO `k_location` VALUES ('145', '亳州市', '12', '1', '0');
INSERT INTO `k_location` VALUES ('146', '池州市', '12', '1', '0');
INSERT INTO `k_location` VALUES ('147', '宣城市', '12', '1', '0');
INSERT INTO `k_location` VALUES ('148', '福州市', '13', '1', '0');
INSERT INTO `k_location` VALUES ('149', '厦门市', '13', '1', '0');
INSERT INTO `k_location` VALUES ('150', '莆田市', '13', '1', '0');
INSERT INTO `k_location` VALUES ('151', '三明市', '13', '1', '0');
INSERT INTO `k_location` VALUES ('152', '泉州市', '13', '1', '0');
INSERT INTO `k_location` VALUES ('153', '漳州市', '13', '1', '0');
INSERT INTO `k_location` VALUES ('154', '南平市', '13', '1', '0');
INSERT INTO `k_location` VALUES ('155', '龙岩市', '13', '1', '0');
INSERT INTO `k_location` VALUES ('156', '宁德市', '13', '1', '0');
INSERT INTO `k_location` VALUES ('157', '南昌市', '14', '1', '0');
INSERT INTO `k_location` VALUES ('158', '景德镇市', '14', '1', '0');
INSERT INTO `k_location` VALUES ('159', '萍乡市', '14', '1', '0');
INSERT INTO `k_location` VALUES ('160', '九江市', '14', '1', '0');
INSERT INTO `k_location` VALUES ('161', '新余市', '14', '1', '0');
INSERT INTO `k_location` VALUES ('162', '鹰潭市', '14', '1', '0');
INSERT INTO `k_location` VALUES ('163', '赣州市', '14', '1', '0');
INSERT INTO `k_location` VALUES ('164', '吉安市', '14', '1', '0');
INSERT INTO `k_location` VALUES ('165', '宜春市', '14', '1', '0');
INSERT INTO `k_location` VALUES ('166', '抚州市', '14', '1', '0');
INSERT INTO `k_location` VALUES ('167', '上饶市', '14', '1', '0');
INSERT INTO `k_location` VALUES ('168', '济南市', '15', '1', '0');
INSERT INTO `k_location` VALUES ('169', '青岛市', '15', '1', '0');
INSERT INTO `k_location` VALUES ('170', '淄博市', '15', '1', '0');
INSERT INTO `k_location` VALUES ('171', '枣庄市', '15', '1', '0');
INSERT INTO `k_location` VALUES ('172', '东营市', '15', '1', '0');
INSERT INTO `k_location` VALUES ('173', '烟台市', '15', '1', '0');
INSERT INTO `k_location` VALUES ('174', '潍坊市', '15', '1', '0');
INSERT INTO `k_location` VALUES ('175', '济宁市', '15', '1', '0');
INSERT INTO `k_location` VALUES ('176', '泰安市', '15', '1', '0');
INSERT INTO `k_location` VALUES ('177', '威海市', '15', '1', '0');
INSERT INTO `k_location` VALUES ('178', '日照市', '15', '1', '0');
INSERT INTO `k_location` VALUES ('179', '莱芜市', '15', '1', '0');
INSERT INTO `k_location` VALUES ('180', '临沂市', '15', '1', '0');
INSERT INTO `k_location` VALUES ('181', '德州市', '15', '1', '0');
INSERT INTO `k_location` VALUES ('182', '聊城市', '15', '1', '0');
INSERT INTO `k_location` VALUES ('183', '滨州市', '15', '1', '0');
INSERT INTO `k_location` VALUES ('184', '菏泽市', '15', '1', '0');
INSERT INTO `k_location` VALUES ('185', '郑州市', '16', '1', '0');
INSERT INTO `k_location` VALUES ('186', '开封市', '16', '1', '0');
INSERT INTO `k_location` VALUES ('187', '洛阳市', '16', '1', '0');
INSERT INTO `k_location` VALUES ('188', '平顶山市', '16', '1', '0');
INSERT INTO `k_location` VALUES ('189', '安阳市', '16', '1', '0');
INSERT INTO `k_location` VALUES ('190', '鹤壁市', '16', '1', '0');
INSERT INTO `k_location` VALUES ('191', '新乡市', '16', '1', '0');
INSERT INTO `k_location` VALUES ('192', '焦作市', '16', '1', '0');
INSERT INTO `k_location` VALUES ('193', '濮阳市', '16', '1', '0');
INSERT INTO `k_location` VALUES ('194', '许昌市', '16', '1', '0');
INSERT INTO `k_location` VALUES ('195', '漯河市', '16', '1', '0');
INSERT INTO `k_location` VALUES ('196', '三门峡市', '16', '1', '0');
INSERT INTO `k_location` VALUES ('197', '南阳市', '16', '1', '0');
INSERT INTO `k_location` VALUES ('198', '商丘市', '16', '1', '0');
INSERT INTO `k_location` VALUES ('199', '信阳市', '16', '1', '0');
INSERT INTO `k_location` VALUES ('200', '周口市', '16', '1', '0');
INSERT INTO `k_location` VALUES ('201', '驻马店市', '16', '1', '0');
INSERT INTO `k_location` VALUES ('202', '省直辖县级行政区划', '16', '1', '0');
INSERT INTO `k_location` VALUES ('203', '武汉市', '17', '1', '0');
INSERT INTO `k_location` VALUES ('204', '黄石市', '17', '1', '0');
INSERT INTO `k_location` VALUES ('205', '十堰市', '17', '1', '0');
INSERT INTO `k_location` VALUES ('206', '宜昌市', '17', '1', '0');
INSERT INTO `k_location` VALUES ('207', '襄阳市', '17', '1', '0');
INSERT INTO `k_location` VALUES ('208', '鄂州市', '17', '1', '0');
INSERT INTO `k_location` VALUES ('209', '荆门市', '17', '1', '0');
INSERT INTO `k_location` VALUES ('210', '孝感市', '17', '1', '0');
INSERT INTO `k_location` VALUES ('211', '荆州市', '17', '1', '0');
INSERT INTO `k_location` VALUES ('212', '黄冈市', '17', '1', '0');
INSERT INTO `k_location` VALUES ('213', '咸宁市', '17', '1', '0');
INSERT INTO `k_location` VALUES ('214', '随州市', '17', '1', '0');
INSERT INTO `k_location` VALUES ('215', '恩施土家族苗族自治州', '17', '1', '0');
INSERT INTO `k_location` VALUES ('216', '省直辖县级行政区划', '17', '1', '0');
INSERT INTO `k_location` VALUES ('217', '长沙市', '18', '1', '0');
INSERT INTO `k_location` VALUES ('218', '株洲市', '18', '1', '0');
INSERT INTO `k_location` VALUES ('219', '湘潭市', '18', '1', '0');
INSERT INTO `k_location` VALUES ('220', '衡阳市', '18', '1', '0');
INSERT INTO `k_location` VALUES ('221', '邵阳市', '18', '1', '0');
INSERT INTO `k_location` VALUES ('222', '岳阳市', '18', '1', '0');
INSERT INTO `k_location` VALUES ('223', '常德市', '18', '1', '0');
INSERT INTO `k_location` VALUES ('224', '张家界市', '18', '1', '0');
INSERT INTO `k_location` VALUES ('225', '益阳市', '18', '1', '0');
INSERT INTO `k_location` VALUES ('226', '郴州市', '18', '1', '0');
INSERT INTO `k_location` VALUES ('227', '永州市', '18', '1', '0');
INSERT INTO `k_location` VALUES ('228', '怀化市', '18', '1', '0');
INSERT INTO `k_location` VALUES ('229', '娄底市', '18', '1', '0');
INSERT INTO `k_location` VALUES ('230', '湘西土家族苗族自治州', '18', '1', '0');
INSERT INTO `k_location` VALUES ('231', '广州市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('232', '韶关市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('233', '深圳市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('234', '珠海市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('235', '汕头市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('236', '佛山市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('237', '江门市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('238', '湛江市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('239', '茂名市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('240', '肇庆市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('241', '惠州市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('242', '梅州市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('243', '汕尾市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('244', '河源市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('245', '阳江市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('246', '清远市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('247', '东莞市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('248', '中山市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('249', '潮州市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('250', '揭阳市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('251', '云浮市', '19', '1', '0');
INSERT INTO `k_location` VALUES ('252', '南宁市', '20', '1', '0');
INSERT INTO `k_location` VALUES ('253', '柳州市', '20', '1', '0');
INSERT INTO `k_location` VALUES ('254', '桂林市', '20', '1', '0');
INSERT INTO `k_location` VALUES ('255', '梧州市', '20', '1', '0');
INSERT INTO `k_location` VALUES ('256', '北海市', '20', '1', '0');
INSERT INTO `k_location` VALUES ('257', '防城港市', '20', '1', '0');
INSERT INTO `k_location` VALUES ('258', '钦州市', '20', '1', '0');
INSERT INTO `k_location` VALUES ('259', '贵港市', '20', '1', '0');
INSERT INTO `k_location` VALUES ('260', '玉林市', '20', '1', '0');
INSERT INTO `k_location` VALUES ('261', '百色市', '20', '1', '0');
INSERT INTO `k_location` VALUES ('262', '贺州市', '20', '1', '0');
INSERT INTO `k_location` VALUES ('263', '河池市', '20', '1', '0');
INSERT INTO `k_location` VALUES ('264', '来宾市', '20', '1', '0');
INSERT INTO `k_location` VALUES ('265', '崇左市', '20', '1', '0');
INSERT INTO `k_location` VALUES ('266', '海口市', '21', '1', '0');
INSERT INTO `k_location` VALUES ('267', '三亚市', '21', '1', '0');
INSERT INTO `k_location` VALUES ('268', '三沙市', '21', '1', '0');
INSERT INTO `k_location` VALUES ('269', '省直辖县级行政区划', '21', '1', '0');
INSERT INTO `k_location` VALUES ('270', '重庆市', '22', '1', '0');
INSERT INTO `k_location` VALUES ('271', '成都市', '23', '1', '0');
INSERT INTO `k_location` VALUES ('272', '自贡市', '23', '1', '0');
INSERT INTO `k_location` VALUES ('273', '攀枝花市', '23', '1', '0');
INSERT INTO `k_location` VALUES ('274', '泸州市', '23', '1', '0');
INSERT INTO `k_location` VALUES ('275', '德阳市', '23', '1', '0');
INSERT INTO `k_location` VALUES ('276', '绵阳市', '23', '1', '0');
INSERT INTO `k_location` VALUES ('277', '广元市', '23', '1', '0');
INSERT INTO `k_location` VALUES ('278', '遂宁市', '23', '1', '0');
INSERT INTO `k_location` VALUES ('279', '内江市', '23', '1', '0');
INSERT INTO `k_location` VALUES ('280', '乐山市', '23', '1', '0');
INSERT INTO `k_location` VALUES ('281', '南充市', '23', '1', '0');
INSERT INTO `k_location` VALUES ('282', '眉山市', '23', '1', '0');
INSERT INTO `k_location` VALUES ('283', '宜宾市', '23', '1', '0');
INSERT INTO `k_location` VALUES ('284', '广安市', '23', '1', '0');
INSERT INTO `k_location` VALUES ('285', '达州市', '23', '1', '0');
INSERT INTO `k_location` VALUES ('286', '雅安市', '23', '1', '0');
INSERT INTO `k_location` VALUES ('287', '巴中市', '23', '1', '0');
INSERT INTO `k_location` VALUES ('288', '资阳市', '23', '1', '0');
INSERT INTO `k_location` VALUES ('289', '阿坝藏族羌族自治州', '23', '1', '0');
INSERT INTO `k_location` VALUES ('290', '甘孜藏族自治州', '23', '1', '0');
INSERT INTO `k_location` VALUES ('291', '凉山彝族自治州', '23', '1', '0');
INSERT INTO `k_location` VALUES ('292', '贵阳市', '24', '1', '0');
INSERT INTO `k_location` VALUES ('293', '六盘水市', '24', '1', '0');
INSERT INTO `k_location` VALUES ('294', '遵义市', '24', '1', '0');
INSERT INTO `k_location` VALUES ('295', '安顺市', '24', '1', '0');
INSERT INTO `k_location` VALUES ('296', '毕节市', '24', '1', '0');
INSERT INTO `k_location` VALUES ('297', '铜仁市', '24', '1', '0');
INSERT INTO `k_location` VALUES ('298', '黔西南布依族苗族自治州', '24', '1', '0');
INSERT INTO `k_location` VALUES ('299', '黔东南苗族侗族自治州', '24', '1', '0');
INSERT INTO `k_location` VALUES ('300', '黔南布依族苗族自治州', '24', '1', '0');
INSERT INTO `k_location` VALUES ('301', '昆明市', '25', '1', '0');
INSERT INTO `k_location` VALUES ('302', '曲靖市', '25', '1', '0');
INSERT INTO `k_location` VALUES ('303', '玉溪市', '25', '1', '0');
INSERT INTO `k_location` VALUES ('304', '保山市', '25', '1', '0');
INSERT INTO `k_location` VALUES ('305', '昭通市', '25', '1', '0');
INSERT INTO `k_location` VALUES ('306', '丽江市', '25', '1', '0');
INSERT INTO `k_location` VALUES ('307', '普洱市', '25', '1', '0');
INSERT INTO `k_location` VALUES ('308', '临沧市', '25', '1', '0');
INSERT INTO `k_location` VALUES ('309', '楚雄彝族自治州', '25', '1', '0');
INSERT INTO `k_location` VALUES ('310', '红河哈尼族彝族自治州', '25', '1', '0');
INSERT INTO `k_location` VALUES ('311', '文山壮族苗族自治州', '25', '1', '0');
INSERT INTO `k_location` VALUES ('312', '西双版纳傣族自治州', '25', '1', '0');
INSERT INTO `k_location` VALUES ('313', '大理白族自治州', '25', '1', '0');
INSERT INTO `k_location` VALUES ('314', '德宏傣族景颇族自治州', '25', '1', '0');
INSERT INTO `k_location` VALUES ('315', '怒江傈僳族自治州', '25', '1', '0');
INSERT INTO `k_location` VALUES ('316', '迪庆藏族自治州', '25', '1', '0');
INSERT INTO `k_location` VALUES ('317', '拉萨市', '26', '1', '0');
INSERT INTO `k_location` VALUES ('318', '日喀则市', '26', '1', '0');
INSERT INTO `k_location` VALUES ('319', '昌都地区', '26', '1', '0');
INSERT INTO `k_location` VALUES ('320', '山南地区', '26', '1', '0');
INSERT INTO `k_location` VALUES ('321', '那曲地区', '26', '1', '0');
INSERT INTO `k_location` VALUES ('322', '阿里地区', '26', '1', '0');
INSERT INTO `k_location` VALUES ('323', '林芝地区', '26', '1', '0');
INSERT INTO `k_location` VALUES ('324', '西安市', '27', '1', '0');
INSERT INTO `k_location` VALUES ('325', '铜川市', '27', '1', '0');
INSERT INTO `k_location` VALUES ('326', '宝鸡市', '27', '1', '0');
INSERT INTO `k_location` VALUES ('327', '咸阳市', '27', '1', '0');
INSERT INTO `k_location` VALUES ('328', '渭南市', '27', '1', '0');
INSERT INTO `k_location` VALUES ('329', '延安市', '27', '1', '0');
INSERT INTO `k_location` VALUES ('330', '汉中市', '27', '1', '0');
INSERT INTO `k_location` VALUES ('331', '榆林市', '27', '1', '0');
INSERT INTO `k_location` VALUES ('332', '安康市', '27', '1', '0');
INSERT INTO `k_location` VALUES ('333', '商洛市', '27', '1', '0');
INSERT INTO `k_location` VALUES ('334', '兰州市', '28', '1', '0');
INSERT INTO `k_location` VALUES ('335', '嘉峪关市', '28', '1', '0');
INSERT INTO `k_location` VALUES ('336', '金昌市', '28', '1', '0');
INSERT INTO `k_location` VALUES ('337', '白银市', '28', '1', '0');
INSERT INTO `k_location` VALUES ('338', '天水市', '28', '1', '0');
INSERT INTO `k_location` VALUES ('339', '武威市', '28', '1', '0');
INSERT INTO `k_location` VALUES ('340', '张掖市', '28', '1', '0');
INSERT INTO `k_location` VALUES ('341', '平凉市', '28', '1', '0');
INSERT INTO `k_location` VALUES ('342', '酒泉市', '28', '1', '0');
INSERT INTO `k_location` VALUES ('343', '庆阳市', '28', '1', '0');
INSERT INTO `k_location` VALUES ('344', '定西市', '28', '1', '0');
INSERT INTO `k_location` VALUES ('345', '陇南市', '28', '1', '0');
INSERT INTO `k_location` VALUES ('346', '临夏回族自治州', '28', '1', '0');
INSERT INTO `k_location` VALUES ('347', '甘南藏族自治州', '28', '1', '0');
INSERT INTO `k_location` VALUES ('348', '西宁市', '29', '1', '0');
INSERT INTO `k_location` VALUES ('349', '海东市', '29', '1', '0');
INSERT INTO `k_location` VALUES ('350', '海北藏族自治州', '29', '1', '0');
INSERT INTO `k_location` VALUES ('351', '黄南藏族自治州', '29', '1', '0');
INSERT INTO `k_location` VALUES ('352', '海南藏族自治州', '29', '1', '0');
INSERT INTO `k_location` VALUES ('353', '果洛藏族自治州', '29', '1', '0');
INSERT INTO `k_location` VALUES ('354', '玉树藏族自治州', '29', '1', '0');
INSERT INTO `k_location` VALUES ('355', '海西蒙古族藏族自治州', '29', '1', '0');
INSERT INTO `k_location` VALUES ('356', '银川市', '30', '1', '0');
INSERT INTO `k_location` VALUES ('357', '石嘴山市', '30', '1', '0');
INSERT INTO `k_location` VALUES ('358', '吴忠市', '30', '1', '0');
INSERT INTO `k_location` VALUES ('359', '固原市', '30', '1', '0');
INSERT INTO `k_location` VALUES ('360', '中卫市', '30', '1', '0');
INSERT INTO `k_location` VALUES ('361', '乌鲁木齐市', '31', '1', '0');
INSERT INTO `k_location` VALUES ('362', '克拉玛依市', '31', '1', '0');
INSERT INTO `k_location` VALUES ('363', '吐鲁番地区', '31', '1', '0');
INSERT INTO `k_location` VALUES ('364', '哈密地区', '31', '1', '0');
INSERT INTO `k_location` VALUES ('365', '昌吉回族自治州', '31', '1', '0');
INSERT INTO `k_location` VALUES ('366', '博尔塔拉蒙古自治州', '31', '1', '0');
INSERT INTO `k_location` VALUES ('367', '巴音郭楞蒙古自治州', '31', '1', '0');
INSERT INTO `k_location` VALUES ('368', '阿克苏地区', '31', '1', '0');
INSERT INTO `k_location` VALUES ('369', '克孜勒苏柯尔克孜自治州', '31', '1', '0');
INSERT INTO `k_location` VALUES ('370', '喀什地区', '31', '1', '0');
INSERT INTO `k_location` VALUES ('371', '和田地区', '31', '1', '0');
INSERT INTO `k_location` VALUES ('372', '伊犁哈萨克自治州', '31', '1', '0');
INSERT INTO `k_location` VALUES ('373', '塔城地区', '31', '1', '0');
INSERT INTO `k_location` VALUES ('374', '阿勒泰地区', '31', '1', '0');
INSERT INTO `k_location` VALUES ('375', '石河子市', '31', '1', '0');
INSERT INTO `k_location` VALUES ('376', '阿拉尔市', '31', '1', '0');
INSERT INTO `k_location` VALUES ('377', '图木舒克市', '31', '1', '0');
INSERT INTO `k_location` VALUES ('378', '五家渠市', '31', '1', '0');
INSERT INTO `k_location` VALUES ('379', '东城区', '35', '2', '0');
INSERT INTO `k_location` VALUES ('380', '西城区', '35', '2', '0');
INSERT INTO `k_location` VALUES ('381', '朝阳区', '35', '2', '0');
INSERT INTO `k_location` VALUES ('382', '丰台区', '35', '2', '0');
INSERT INTO `k_location` VALUES ('383', '石景山区', '35', '2', '0');
INSERT INTO `k_location` VALUES ('384', '海淀区', '35', '2', '0');
INSERT INTO `k_location` VALUES ('385', '门头沟区', '35', '2', '0');
INSERT INTO `k_location` VALUES ('386', '房山区', '35', '2', '0');
INSERT INTO `k_location` VALUES ('387', '通州区', '35', '2', '0');
INSERT INTO `k_location` VALUES ('388', '顺义区', '35', '2', '0');
INSERT INTO `k_location` VALUES ('389', '昌平区', '35', '2', '0');
INSERT INTO `k_location` VALUES ('390', '大兴区', '35', '2', '0');
INSERT INTO `k_location` VALUES ('391', '怀柔区', '35', '2', '0');
INSERT INTO `k_location` VALUES ('392', '平谷区', '35', '2', '0');
INSERT INTO `k_location` VALUES ('393', '密云县', '35', '2', '0');
INSERT INTO `k_location` VALUES ('394', '延庆县', '35', '2', '0');
INSERT INTO `k_location` VALUES ('395', '和平区', '36', '2', '0');
INSERT INTO `k_location` VALUES ('396', '河东区', '36', '2', '0');
INSERT INTO `k_location` VALUES ('397', '河西区', '36', '2', '0');
INSERT INTO `k_location` VALUES ('398', '南开区', '36', '2', '0');
INSERT INTO `k_location` VALUES ('399', '河北区', '36', '2', '0');
INSERT INTO `k_location` VALUES ('400', '红桥区', '36', '2', '0');
INSERT INTO `k_location` VALUES ('401', '东丽区', '36', '2', '0');
INSERT INTO `k_location` VALUES ('402', '西青区', '36', '2', '0');
INSERT INTO `k_location` VALUES ('403', '津南区', '36', '2', '0');
INSERT INTO `k_location` VALUES ('404', '北辰区', '36', '2', '0');
INSERT INTO `k_location` VALUES ('405', '武清区', '36', '2', '0');
INSERT INTO `k_location` VALUES ('406', '宝坻区', '36', '2', '0');
INSERT INTO `k_location` VALUES ('407', '滨海新区', '36', '2', '0');
INSERT INTO `k_location` VALUES ('408', '宁河县', '36', '2', '0');
INSERT INTO `k_location` VALUES ('409', '静海县', '36', '2', '0');
INSERT INTO `k_location` VALUES ('410', '蓟县', '36', '2', '0');
INSERT INTO `k_location` VALUES ('411', '长安区', '37', '2', '0');
INSERT INTO `k_location` VALUES ('412', '桥西区', '37', '2', '0');
INSERT INTO `k_location` VALUES ('413', '新华区', '37', '2', '0');
INSERT INTO `k_location` VALUES ('414', '井陉矿区', '37', '2', '0');
INSERT INTO `k_location` VALUES ('415', '裕华区', '37', '2', '0');
INSERT INTO `k_location` VALUES ('416', '藁城区', '37', '2', '0');
INSERT INTO `k_location` VALUES ('417', '鹿泉区', '37', '2', '0');
INSERT INTO `k_location` VALUES ('418', '栾城区', '37', '2', '0');
INSERT INTO `k_location` VALUES ('419', '井陉县', '37', '2', '0');
INSERT INTO `k_location` VALUES ('420', '正定县', '37', '2', '0');
INSERT INTO `k_location` VALUES ('421', '行唐县', '37', '2', '0');
INSERT INTO `k_location` VALUES ('422', '灵寿县', '37', '2', '0');
INSERT INTO `k_location` VALUES ('423', '高邑县', '37', '2', '0');
INSERT INTO `k_location` VALUES ('424', '深泽县', '37', '2', '0');
INSERT INTO `k_location` VALUES ('425', '赞皇县', '37', '2', '0');
INSERT INTO `k_location` VALUES ('426', '无极县', '37', '2', '0');
INSERT INTO `k_location` VALUES ('427', '平山县', '37', '2', '0');
INSERT INTO `k_location` VALUES ('428', '元氏县', '37', '2', '0');
INSERT INTO `k_location` VALUES ('429', '赵县', '37', '2', '0');
INSERT INTO `k_location` VALUES ('430', '辛集市', '37', '2', '0');
INSERT INTO `k_location` VALUES ('431', '晋州市', '37', '2', '0');
INSERT INTO `k_location` VALUES ('432', '新乐市', '37', '2', '0');
INSERT INTO `k_location` VALUES ('433', '路南区', '38', '2', '0');
INSERT INTO `k_location` VALUES ('434', '路北区', '38', '2', '0');
INSERT INTO `k_location` VALUES ('435', '古冶区', '38', '2', '0');
INSERT INTO `k_location` VALUES ('436', '开平区', '38', '2', '0');
INSERT INTO `k_location` VALUES ('437', '丰南区', '38', '2', '0');
INSERT INTO `k_location` VALUES ('438', '丰润区', '38', '2', '0');
INSERT INTO `k_location` VALUES ('439', '曹妃甸区', '38', '2', '0');
INSERT INTO `k_location` VALUES ('440', '滦县', '38', '2', '0');
INSERT INTO `k_location` VALUES ('441', '滦南县', '38', '2', '0');
INSERT INTO `k_location` VALUES ('442', '乐亭县', '38', '2', '0');
INSERT INTO `k_location` VALUES ('443', '迁西县', '38', '2', '0');
INSERT INTO `k_location` VALUES ('444', '玉田县', '38', '2', '0');
INSERT INTO `k_location` VALUES ('445', '遵化市', '38', '2', '0');
INSERT INTO `k_location` VALUES ('446', '迁安市', '38', '2', '0');
INSERT INTO `k_location` VALUES ('447', '海港区', '39', '2', '0');
INSERT INTO `k_location` VALUES ('448', '山海关区', '39', '2', '0');
INSERT INTO `k_location` VALUES ('449', '北戴河区', '39', '2', '0');
INSERT INTO `k_location` VALUES ('450', '青龙满族自治县', '39', '2', '0');
INSERT INTO `k_location` VALUES ('451', '昌黎县', '39', '2', '0');
INSERT INTO `k_location` VALUES ('452', '抚宁县', '39', '2', '0');
INSERT INTO `k_location` VALUES ('453', '卢龙县', '39', '2', '0');
INSERT INTO `k_location` VALUES ('454', '邯山区', '40', '2', '0');
INSERT INTO `k_location` VALUES ('455', '丛台区', '40', '2', '0');
INSERT INTO `k_location` VALUES ('456', '复兴区', '40', '2', '0');
INSERT INTO `k_location` VALUES ('457', '峰峰矿区', '40', '2', '0');
INSERT INTO `k_location` VALUES ('458', '邯郸县', '40', '2', '0');
INSERT INTO `k_location` VALUES ('459', '临漳县', '40', '2', '0');
INSERT INTO `k_location` VALUES ('460', '成安县', '40', '2', '0');
INSERT INTO `k_location` VALUES ('461', '大名县', '40', '2', '0');
INSERT INTO `k_location` VALUES ('462', '涉县', '40', '2', '0');
INSERT INTO `k_location` VALUES ('463', '磁县', '40', '2', '0');
INSERT INTO `k_location` VALUES ('464', '肥乡县', '40', '2', '0');
INSERT INTO `k_location` VALUES ('465', '永年县', '40', '2', '0');
INSERT INTO `k_location` VALUES ('466', '邱县', '40', '2', '0');
INSERT INTO `k_location` VALUES ('467', '鸡泽县', '40', '2', '0');
INSERT INTO `k_location` VALUES ('468', '广平县', '40', '2', '0');
INSERT INTO `k_location` VALUES ('469', '馆陶县', '40', '2', '0');
INSERT INTO `k_location` VALUES ('470', '魏县', '40', '2', '0');
INSERT INTO `k_location` VALUES ('471', '曲周县', '40', '2', '0');
INSERT INTO `k_location` VALUES ('472', '武安市', '40', '2', '0');
INSERT INTO `k_location` VALUES ('473', '桥东区', '41', '2', '0');
INSERT INTO `k_location` VALUES ('474', '桥西区', '41', '2', '0');
INSERT INTO `k_location` VALUES ('475', '邢台县', '41', '2', '0');
INSERT INTO `k_location` VALUES ('476', '临城县', '41', '2', '0');
INSERT INTO `k_location` VALUES ('477', '内丘县', '41', '2', '0');
INSERT INTO `k_location` VALUES ('478', '柏乡县', '41', '2', '0');
INSERT INTO `k_location` VALUES ('479', '隆尧县', '41', '2', '0');
INSERT INTO `k_location` VALUES ('480', '任县', '41', '2', '0');
INSERT INTO `k_location` VALUES ('481', '南和县', '41', '2', '0');
INSERT INTO `k_location` VALUES ('482', '宁晋县', '41', '2', '0');
INSERT INTO `k_location` VALUES ('483', '巨鹿县', '41', '2', '0');
INSERT INTO `k_location` VALUES ('484', '新河县', '41', '2', '0');
INSERT INTO `k_location` VALUES ('485', '广宗县', '41', '2', '0');
INSERT INTO `k_location` VALUES ('486', '平乡县', '41', '2', '0');
INSERT INTO `k_location` VALUES ('487', '威县', '41', '2', '0');
INSERT INTO `k_location` VALUES ('488', '清河县', '41', '2', '0');
INSERT INTO `k_location` VALUES ('489', '临西县', '41', '2', '0');
INSERT INTO `k_location` VALUES ('490', '南宫市', '41', '2', '0');
INSERT INTO `k_location` VALUES ('491', '沙河市', '41', '2', '0');
INSERT INTO `k_location` VALUES ('492', '新市区', '42', '2', '0');
INSERT INTO `k_location` VALUES ('493', '北市区', '42', '2', '0');
INSERT INTO `k_location` VALUES ('494', '南市区', '42', '2', '0');
INSERT INTO `k_location` VALUES ('495', '满城县', '42', '2', '0');
INSERT INTO `k_location` VALUES ('496', '清苑县', '42', '2', '0');
INSERT INTO `k_location` VALUES ('497', '涞水县', '42', '2', '0');
INSERT INTO `k_location` VALUES ('498', '阜平县', '42', '2', '0');
INSERT INTO `k_location` VALUES ('499', '徐水县', '42', '2', '0');
INSERT INTO `k_location` VALUES ('500', '定兴县', '42', '2', '0');
INSERT INTO `k_location` VALUES ('501', '唐县', '42', '2', '0');
INSERT INTO `k_location` VALUES ('502', '高阳县', '42', '2', '0');
INSERT INTO `k_location` VALUES ('503', '容城县', '42', '2', '0');
INSERT INTO `k_location` VALUES ('504', '涞源县', '42', '2', '0');
INSERT INTO `k_location` VALUES ('505', '望都县', '42', '2', '0');
INSERT INTO `k_location` VALUES ('506', '安新县', '42', '2', '0');
INSERT INTO `k_location` VALUES ('507', '易县', '42', '2', '0');
INSERT INTO `k_location` VALUES ('508', '曲阳县', '42', '2', '0');
INSERT INTO `k_location` VALUES ('509', '蠡县', '42', '2', '0');
INSERT INTO `k_location` VALUES ('510', '顺平县', '42', '2', '0');
INSERT INTO `k_location` VALUES ('511', '博野县', '42', '2', '0');
INSERT INTO `k_location` VALUES ('512', '雄县', '42', '2', '0');
INSERT INTO `k_location` VALUES ('513', '涿州市', '42', '2', '0');
INSERT INTO `k_location` VALUES ('514', '定州市', '42', '2', '0');
INSERT INTO `k_location` VALUES ('515', '安国市', '42', '2', '0');
INSERT INTO `k_location` VALUES ('516', '高碑店市', '42', '2', '0');
INSERT INTO `k_location` VALUES ('517', '桥东区', '43', '2', '0');
INSERT INTO `k_location` VALUES ('518', '桥西区', '43', '2', '0');
INSERT INTO `k_location` VALUES ('519', '宣化区', '43', '2', '0');
INSERT INTO `k_location` VALUES ('520', '下花园区', '43', '2', '0');
INSERT INTO `k_location` VALUES ('521', '宣化县', '43', '2', '0');
INSERT INTO `k_location` VALUES ('522', '张北县', '43', '2', '0');
INSERT INTO `k_location` VALUES ('523', '康保县', '43', '2', '0');
INSERT INTO `k_location` VALUES ('524', '沽源县', '43', '2', '0');
INSERT INTO `k_location` VALUES ('525', '尚义县', '43', '2', '0');
INSERT INTO `k_location` VALUES ('526', '蔚县', '43', '2', '0');
INSERT INTO `k_location` VALUES ('527', '阳原县', '43', '2', '0');
INSERT INTO `k_location` VALUES ('528', '怀安县', '43', '2', '0');
INSERT INTO `k_location` VALUES ('529', '万全县', '43', '2', '0');
INSERT INTO `k_location` VALUES ('530', '怀来县', '43', '2', '0');
INSERT INTO `k_location` VALUES ('531', '涿鹿县', '43', '2', '0');
INSERT INTO `k_location` VALUES ('532', '赤城县', '43', '2', '0');
INSERT INTO `k_location` VALUES ('533', '崇礼县', '43', '2', '0');
INSERT INTO `k_location` VALUES ('534', '双桥区', '44', '2', '0');
INSERT INTO `k_location` VALUES ('535', '双滦区', '44', '2', '0');
INSERT INTO `k_location` VALUES ('536', '鹰手营子矿区', '44', '2', '0');
INSERT INTO `k_location` VALUES ('537', '承德县', '44', '2', '0');
INSERT INTO `k_location` VALUES ('538', '兴隆县', '44', '2', '0');
INSERT INTO `k_location` VALUES ('539', '平泉县', '44', '2', '0');
INSERT INTO `k_location` VALUES ('540', '滦平县', '44', '2', '0');
INSERT INTO `k_location` VALUES ('541', '隆化县', '44', '2', '0');
INSERT INTO `k_location` VALUES ('542', '丰宁满族自治县', '44', '2', '0');
INSERT INTO `k_location` VALUES ('543', '宽城满族自治县', '44', '2', '0');
INSERT INTO `k_location` VALUES ('544', '围场满族蒙古族自治县', '44', '2', '0');
INSERT INTO `k_location` VALUES ('545', '新华区', '45', '2', '0');
INSERT INTO `k_location` VALUES ('546', '运河区', '45', '2', '0');
INSERT INTO `k_location` VALUES ('547', '沧县', '45', '2', '0');
INSERT INTO `k_location` VALUES ('548', '青县', '45', '2', '0');
INSERT INTO `k_location` VALUES ('549', '东光县', '45', '2', '0');
INSERT INTO `k_location` VALUES ('550', '海兴县', '45', '2', '0');
INSERT INTO `k_location` VALUES ('551', '盐山县', '45', '2', '0');
INSERT INTO `k_location` VALUES ('552', '肃宁县', '45', '2', '0');
INSERT INTO `k_location` VALUES ('553', '南皮县', '45', '2', '0');
INSERT INTO `k_location` VALUES ('554', '吴桥县', '45', '2', '0');
INSERT INTO `k_location` VALUES ('555', '献县', '45', '2', '0');
INSERT INTO `k_location` VALUES ('556', '孟村回族自治县', '45', '2', '0');
INSERT INTO `k_location` VALUES ('557', '泊头市', '45', '2', '0');
INSERT INTO `k_location` VALUES ('558', '任丘市', '45', '2', '0');
INSERT INTO `k_location` VALUES ('559', '黄骅市', '45', '2', '0');
INSERT INTO `k_location` VALUES ('560', '河间市', '45', '2', '0');
INSERT INTO `k_location` VALUES ('561', '安次区', '46', '2', '0');
INSERT INTO `k_location` VALUES ('562', '广阳区', '46', '2', '0');
INSERT INTO `k_location` VALUES ('563', '固安县', '46', '2', '0');
INSERT INTO `k_location` VALUES ('564', '永清县', '46', '2', '0');
INSERT INTO `k_location` VALUES ('565', '香河县', '46', '2', '0');
INSERT INTO `k_location` VALUES ('566', '大城县', '46', '2', '0');
INSERT INTO `k_location` VALUES ('567', '文安县', '46', '2', '0');
INSERT INTO `k_location` VALUES ('568', '大厂回族自治县', '46', '2', '0');
INSERT INTO `k_location` VALUES ('569', '霸州市', '46', '2', '0');
INSERT INTO `k_location` VALUES ('570', '三河市', '46', '2', '0');
INSERT INTO `k_location` VALUES ('571', '桃城区', '47', '2', '0');
INSERT INTO `k_location` VALUES ('572', '枣强县', '47', '2', '0');
INSERT INTO `k_location` VALUES ('573', '武邑县', '47', '2', '0');
INSERT INTO `k_location` VALUES ('574', '武强县', '47', '2', '0');
INSERT INTO `k_location` VALUES ('575', '饶阳县', '47', '2', '0');
INSERT INTO `k_location` VALUES ('576', '安平县', '47', '2', '0');
INSERT INTO `k_location` VALUES ('577', '故城县', '47', '2', '0');
INSERT INTO `k_location` VALUES ('578', '景县', '47', '2', '0');
INSERT INTO `k_location` VALUES ('579', '阜城县', '47', '2', '0');
INSERT INTO `k_location` VALUES ('580', '冀州市', '47', '2', '0');
INSERT INTO `k_location` VALUES ('581', '深州市', '47', '2', '0');
INSERT INTO `k_location` VALUES ('582', '小店区', '48', '2', '0');
INSERT INTO `k_location` VALUES ('583', '迎泽区', '48', '2', '0');
INSERT INTO `k_location` VALUES ('584', '杏花岭区', '48', '2', '0');
INSERT INTO `k_location` VALUES ('585', '尖草坪区', '48', '2', '0');
INSERT INTO `k_location` VALUES ('586', '万柏林区', '48', '2', '0');
INSERT INTO `k_location` VALUES ('587', '晋源区', '48', '2', '0');
INSERT INTO `k_location` VALUES ('588', '清徐县', '48', '2', '0');
INSERT INTO `k_location` VALUES ('589', '阳曲县', '48', '2', '0');
INSERT INTO `k_location` VALUES ('590', '娄烦县', '48', '2', '0');
INSERT INTO `k_location` VALUES ('591', '古交市', '48', '2', '0');
INSERT INTO `k_location` VALUES ('592', '城区', '49', '2', '0');
INSERT INTO `k_location` VALUES ('593', '矿区', '49', '2', '0');
INSERT INTO `k_location` VALUES ('594', '南郊区', '49', '2', '0');
INSERT INTO `k_location` VALUES ('595', '新荣区', '49', '2', '0');
INSERT INTO `k_location` VALUES ('596', '阳高县', '49', '2', '0');
INSERT INTO `k_location` VALUES ('597', '天镇县', '49', '2', '0');
INSERT INTO `k_location` VALUES ('598', '广灵县', '49', '2', '0');
INSERT INTO `k_location` VALUES ('599', '灵丘县', '49', '2', '0');
INSERT INTO `k_location` VALUES ('600', '浑源县', '49', '2', '0');
INSERT INTO `k_location` VALUES ('601', '左云县', '49', '2', '0');
INSERT INTO `k_location` VALUES ('602', '大同县', '49', '2', '0');
INSERT INTO `k_location` VALUES ('603', '城区', '50', '2', '0');
INSERT INTO `k_location` VALUES ('604', '矿区', '50', '2', '0');
INSERT INTO `k_location` VALUES ('605', '郊区', '50', '2', '0');
INSERT INTO `k_location` VALUES ('606', '平定县', '50', '2', '0');
INSERT INTO `k_location` VALUES ('607', '盂县', '50', '2', '0');
INSERT INTO `k_location` VALUES ('608', '城区', '51', '2', '0');
INSERT INTO `k_location` VALUES ('609', '郊区', '51', '2', '0');
INSERT INTO `k_location` VALUES ('610', '长治县', '51', '2', '0');
INSERT INTO `k_location` VALUES ('611', '襄垣县', '51', '2', '0');
INSERT INTO `k_location` VALUES ('612', '屯留县', '51', '2', '0');
INSERT INTO `k_location` VALUES ('613', '平顺县', '51', '2', '0');
INSERT INTO `k_location` VALUES ('614', '黎城县', '51', '2', '0');
INSERT INTO `k_location` VALUES ('615', '壶关县', '51', '2', '0');
INSERT INTO `k_location` VALUES ('616', '长子县', '51', '2', '0');
INSERT INTO `k_location` VALUES ('617', '武乡县', '51', '2', '0');
INSERT INTO `k_location` VALUES ('618', '沁县', '51', '2', '0');
INSERT INTO `k_location` VALUES ('619', '沁源县', '51', '2', '0');
INSERT INTO `k_location` VALUES ('620', '潞城市', '51', '2', '0');
INSERT INTO `k_location` VALUES ('621', '城区', '52', '2', '0');
INSERT INTO `k_location` VALUES ('622', '沁水县', '52', '2', '0');
INSERT INTO `k_location` VALUES ('623', '阳城县', '52', '2', '0');
INSERT INTO `k_location` VALUES ('624', '陵川县', '52', '2', '0');
INSERT INTO `k_location` VALUES ('625', '泽州县', '52', '2', '0');
INSERT INTO `k_location` VALUES ('626', '高平市', '52', '2', '0');
INSERT INTO `k_location` VALUES ('627', '朔城区', '53', '2', '0');
INSERT INTO `k_location` VALUES ('628', '平鲁区', '53', '2', '0');
INSERT INTO `k_location` VALUES ('629', '山阴县', '53', '2', '0');
INSERT INTO `k_location` VALUES ('630', '应县', '53', '2', '0');
INSERT INTO `k_location` VALUES ('631', '右玉县', '53', '2', '0');
INSERT INTO `k_location` VALUES ('632', '怀仁县', '53', '2', '0');
INSERT INTO `k_location` VALUES ('633', '榆次区', '54', '2', '0');
INSERT INTO `k_location` VALUES ('634', '榆社县', '54', '2', '0');
INSERT INTO `k_location` VALUES ('635', '左权县', '54', '2', '0');
INSERT INTO `k_location` VALUES ('636', '和顺县', '54', '2', '0');
INSERT INTO `k_location` VALUES ('637', '昔阳县', '54', '2', '0');
INSERT INTO `k_location` VALUES ('638', '寿阳县', '54', '2', '0');
INSERT INTO `k_location` VALUES ('639', '太谷县', '54', '2', '0');
INSERT INTO `k_location` VALUES ('640', '祁县', '54', '2', '0');
INSERT INTO `k_location` VALUES ('641', '平遥县', '54', '2', '0');
INSERT INTO `k_location` VALUES ('642', '灵石县', '54', '2', '0');
INSERT INTO `k_location` VALUES ('643', '介休市', '54', '2', '0');
INSERT INTO `k_location` VALUES ('644', '盐湖区', '55', '2', '0');
INSERT INTO `k_location` VALUES ('645', '临猗县', '55', '2', '0');
INSERT INTO `k_location` VALUES ('646', '万荣县', '55', '2', '0');
INSERT INTO `k_location` VALUES ('647', '闻喜县', '55', '2', '0');
INSERT INTO `k_location` VALUES ('648', '稷山县', '55', '2', '0');
INSERT INTO `k_location` VALUES ('649', '新绛县', '55', '2', '0');
INSERT INTO `k_location` VALUES ('650', '绛县', '55', '2', '0');
INSERT INTO `k_location` VALUES ('651', '垣曲县', '55', '2', '0');
INSERT INTO `k_location` VALUES ('652', '夏县', '55', '2', '0');
INSERT INTO `k_location` VALUES ('653', '平陆县', '55', '2', '0');
INSERT INTO `k_location` VALUES ('654', '芮城县', '55', '2', '0');
INSERT INTO `k_location` VALUES ('655', '永济市', '55', '2', '0');
INSERT INTO `k_location` VALUES ('656', '河津市', '55', '2', '0');
INSERT INTO `k_location` VALUES ('657', '忻府区', '56', '2', '0');
INSERT INTO `k_location` VALUES ('658', '定襄县', '56', '2', '0');
INSERT INTO `k_location` VALUES ('659', '五台县', '56', '2', '0');
INSERT INTO `k_location` VALUES ('660', '代县', '56', '2', '0');
INSERT INTO `k_location` VALUES ('661', '繁峙县', '56', '2', '0');
INSERT INTO `k_location` VALUES ('662', '宁武县', '56', '2', '0');
INSERT INTO `k_location` VALUES ('663', '静乐县', '56', '2', '0');
INSERT INTO `k_location` VALUES ('664', '神池县', '56', '2', '0');
INSERT INTO `k_location` VALUES ('665', '五寨县', '56', '2', '0');
INSERT INTO `k_location` VALUES ('666', '岢岚县', '56', '2', '0');
INSERT INTO `k_location` VALUES ('667', '河曲县', '56', '2', '0');
INSERT INTO `k_location` VALUES ('668', '保德县', '56', '2', '0');
INSERT INTO `k_location` VALUES ('669', '偏关县', '56', '2', '0');
INSERT INTO `k_location` VALUES ('670', '原平市', '56', '2', '0');
INSERT INTO `k_location` VALUES ('671', '尧都区', '57', '2', '0');
INSERT INTO `k_location` VALUES ('672', '曲沃县', '57', '2', '0');
INSERT INTO `k_location` VALUES ('673', '翼城县', '57', '2', '0');
INSERT INTO `k_location` VALUES ('674', '襄汾县', '57', '2', '0');
INSERT INTO `k_location` VALUES ('675', '洪洞县', '57', '2', '0');
INSERT INTO `k_location` VALUES ('676', '古县', '57', '2', '0');
INSERT INTO `k_location` VALUES ('677', '安泽县', '57', '2', '0');
INSERT INTO `k_location` VALUES ('678', '浮山县', '57', '2', '0');
INSERT INTO `k_location` VALUES ('679', '吉县', '57', '2', '0');
INSERT INTO `k_location` VALUES ('680', '乡宁县', '57', '2', '0');
INSERT INTO `k_location` VALUES ('681', '大宁县', '57', '2', '0');
INSERT INTO `k_location` VALUES ('682', '隰县', '57', '2', '0');
INSERT INTO `k_location` VALUES ('683', '永和县', '57', '2', '0');
INSERT INTO `k_location` VALUES ('684', '蒲县', '57', '2', '0');
INSERT INTO `k_location` VALUES ('685', '汾西县', '57', '2', '0');
INSERT INTO `k_location` VALUES ('686', '侯马市', '57', '2', '0');
INSERT INTO `k_location` VALUES ('687', '霍州市', '57', '2', '0');
INSERT INTO `k_location` VALUES ('688', '离石区', '58', '2', '0');
INSERT INTO `k_location` VALUES ('689', '文水县', '58', '2', '0');
INSERT INTO `k_location` VALUES ('690', '交城县', '58', '2', '0');
INSERT INTO `k_location` VALUES ('691', '兴县', '58', '2', '0');
INSERT INTO `k_location` VALUES ('692', '临县', '58', '2', '0');
INSERT INTO `k_location` VALUES ('693', '柳林县', '58', '2', '0');
INSERT INTO `k_location` VALUES ('694', '石楼县', '58', '2', '0');
INSERT INTO `k_location` VALUES ('695', '岚县', '58', '2', '0');
INSERT INTO `k_location` VALUES ('696', '方山县', '58', '2', '0');
INSERT INTO `k_location` VALUES ('697', '中阳县', '58', '2', '0');
INSERT INTO `k_location` VALUES ('698', '交口县', '58', '2', '0');
INSERT INTO `k_location` VALUES ('699', '孝义市', '58', '2', '0');
INSERT INTO `k_location` VALUES ('700', '汾阳市', '58', '2', '0');
INSERT INTO `k_location` VALUES ('701', '新城区', '59', '2', '0');
INSERT INTO `k_location` VALUES ('702', '回民区', '59', '2', '0');
INSERT INTO `k_location` VALUES ('703', '玉泉区', '59', '2', '0');
INSERT INTO `k_location` VALUES ('704', '赛罕区', '59', '2', '0');
INSERT INTO `k_location` VALUES ('705', '土默特左旗', '59', '2', '0');
INSERT INTO `k_location` VALUES ('706', '托克托县', '59', '2', '0');
INSERT INTO `k_location` VALUES ('707', '和林格尔县', '59', '2', '0');
INSERT INTO `k_location` VALUES ('708', '清水河县', '59', '2', '0');
INSERT INTO `k_location` VALUES ('709', '武川县', '59', '2', '0');
INSERT INTO `k_location` VALUES ('710', '东河区', '60', '2', '0');
INSERT INTO `k_location` VALUES ('711', '昆都仑区', '60', '2', '0');
INSERT INTO `k_location` VALUES ('712', '青山区', '60', '2', '0');
INSERT INTO `k_location` VALUES ('713', '石拐区', '60', '2', '0');
INSERT INTO `k_location` VALUES ('714', '白云鄂博矿区', '60', '2', '0');
INSERT INTO `k_location` VALUES ('715', '九原区', '60', '2', '0');
INSERT INTO `k_location` VALUES ('716', '土默特右旗', '60', '2', '0');
INSERT INTO `k_location` VALUES ('717', '固阳县', '60', '2', '0');
INSERT INTO `k_location` VALUES ('718', '达尔罕茂明安联合旗', '60', '2', '0');
INSERT INTO `k_location` VALUES ('719', '海勃湾区', '61', '2', '0');
INSERT INTO `k_location` VALUES ('720', '海南区', '61', '2', '0');
INSERT INTO `k_location` VALUES ('721', '乌达区', '61', '2', '0');
INSERT INTO `k_location` VALUES ('722', '红山区', '62', '2', '0');
INSERT INTO `k_location` VALUES ('723', '元宝山区', '62', '2', '0');
INSERT INTO `k_location` VALUES ('724', '松山区', '62', '2', '0');
INSERT INTO `k_location` VALUES ('725', '阿鲁科尔沁旗', '62', '2', '0');
INSERT INTO `k_location` VALUES ('726', '巴林左旗', '62', '2', '0');
INSERT INTO `k_location` VALUES ('727', '巴林右旗', '62', '2', '0');
INSERT INTO `k_location` VALUES ('728', '林西县', '62', '2', '0');
INSERT INTO `k_location` VALUES ('729', '克什克腾旗', '62', '2', '0');
INSERT INTO `k_location` VALUES ('730', '翁牛特旗', '62', '2', '0');
INSERT INTO `k_location` VALUES ('731', '喀喇沁旗', '62', '2', '0');
INSERT INTO `k_location` VALUES ('732', '宁城县', '62', '2', '0');
INSERT INTO `k_location` VALUES ('733', '敖汉旗', '62', '2', '0');
INSERT INTO `k_location` VALUES ('734', '科尔沁区', '63', '2', '0');
INSERT INTO `k_location` VALUES ('735', '科尔沁左翼中旗', '63', '2', '0');
INSERT INTO `k_location` VALUES ('736', '科尔沁左翼后旗', '63', '2', '0');
INSERT INTO `k_location` VALUES ('737', '开鲁县', '63', '2', '0');
INSERT INTO `k_location` VALUES ('738', '库伦旗', '63', '2', '0');
INSERT INTO `k_location` VALUES ('739', '奈曼旗', '63', '2', '0');
INSERT INTO `k_location` VALUES ('740', '扎鲁特旗', '63', '2', '0');
INSERT INTO `k_location` VALUES ('741', '霍林郭勒市', '63', '2', '0');
INSERT INTO `k_location` VALUES ('742', '东胜区', '64', '2', '0');
INSERT INTO `k_location` VALUES ('743', '达拉特旗', '64', '2', '0');
INSERT INTO `k_location` VALUES ('744', '准格尔旗', '64', '2', '0');
INSERT INTO `k_location` VALUES ('745', '鄂托克前旗', '64', '2', '0');
INSERT INTO `k_location` VALUES ('746', '鄂托克旗', '64', '2', '0');
INSERT INTO `k_location` VALUES ('747', '杭锦旗', '64', '2', '0');
INSERT INTO `k_location` VALUES ('748', '乌审旗', '64', '2', '0');
INSERT INTO `k_location` VALUES ('749', '伊金霍洛旗', '64', '2', '0');
INSERT INTO `k_location` VALUES ('750', '海拉尔区', '65', '2', '0');
INSERT INTO `k_location` VALUES ('751', '扎赉诺尔区', '65', '2', '0');
INSERT INTO `k_location` VALUES ('752', '阿荣旗', '65', '2', '0');
INSERT INTO `k_location` VALUES ('753', '莫力达瓦达斡尔族自治旗', '65', '2', '0');
INSERT INTO `k_location` VALUES ('754', '鄂伦春自治旗', '65', '2', '0');
INSERT INTO `k_location` VALUES ('755', '鄂温克族自治旗', '65', '2', '0');
INSERT INTO `k_location` VALUES ('756', '陈巴尔虎旗', '65', '2', '0');
INSERT INTO `k_location` VALUES ('757', '新巴尔虎左旗', '65', '2', '0');
INSERT INTO `k_location` VALUES ('758', '新巴尔虎右旗', '65', '2', '0');
INSERT INTO `k_location` VALUES ('759', '满洲里市', '65', '2', '0');
INSERT INTO `k_location` VALUES ('760', '牙克石市', '65', '2', '0');
INSERT INTO `k_location` VALUES ('761', '扎兰屯市', '65', '2', '0');
INSERT INTO `k_location` VALUES ('762', '额尔古纳市', '65', '2', '0');
INSERT INTO `k_location` VALUES ('763', '根河市', '65', '2', '0');
INSERT INTO `k_location` VALUES ('764', '临河区', '66', '2', '0');
INSERT INTO `k_location` VALUES ('765', '五原县', '66', '2', '0');
INSERT INTO `k_location` VALUES ('766', '磴口县', '66', '2', '0');
INSERT INTO `k_location` VALUES ('767', '乌拉特前旗', '66', '2', '0');
INSERT INTO `k_location` VALUES ('768', '乌拉特中旗', '66', '2', '0');
INSERT INTO `k_location` VALUES ('769', '乌拉特后旗', '66', '2', '0');
INSERT INTO `k_location` VALUES ('770', '杭锦后旗', '66', '2', '0');
INSERT INTO `k_location` VALUES ('771', '集宁区', '67', '2', '0');
INSERT INTO `k_location` VALUES ('772', '卓资县', '67', '2', '0');
INSERT INTO `k_location` VALUES ('773', '化德县', '67', '2', '0');
INSERT INTO `k_location` VALUES ('774', '商都县', '67', '2', '0');
INSERT INTO `k_location` VALUES ('775', '兴和县', '67', '2', '0');
INSERT INTO `k_location` VALUES ('776', '凉城县', '67', '2', '0');
INSERT INTO `k_location` VALUES ('777', '察哈尔右翼前旗', '67', '2', '0');
INSERT INTO `k_location` VALUES ('778', '察哈尔右翼中旗', '67', '2', '0');
INSERT INTO `k_location` VALUES ('779', '察哈尔右翼后旗', '67', '2', '0');
INSERT INTO `k_location` VALUES ('780', '四子王旗', '67', '2', '0');
INSERT INTO `k_location` VALUES ('781', '丰镇市', '67', '2', '0');
INSERT INTO `k_location` VALUES ('782', '乌兰浩特市', '68', '2', '0');
INSERT INTO `k_location` VALUES ('783', '阿尔山市', '68', '2', '0');
INSERT INTO `k_location` VALUES ('784', '科尔沁右翼前旗', '68', '2', '0');
INSERT INTO `k_location` VALUES ('785', '科尔沁右翼中旗', '68', '2', '0');
INSERT INTO `k_location` VALUES ('786', '扎赉特旗', '68', '2', '0');
INSERT INTO `k_location` VALUES ('787', '突泉县', '68', '2', '0');
INSERT INTO `k_location` VALUES ('788', '二连浩特市', '69', '2', '0');
INSERT INTO `k_location` VALUES ('789', '锡林浩特市', '69', '2', '0');
INSERT INTO `k_location` VALUES ('790', '阿巴嘎旗', '69', '2', '0');
INSERT INTO `k_location` VALUES ('791', '苏尼特左旗', '69', '2', '0');
INSERT INTO `k_location` VALUES ('792', '苏尼特右旗', '69', '2', '0');
INSERT INTO `k_location` VALUES ('793', '东乌珠穆沁旗', '69', '2', '0');
INSERT INTO `k_location` VALUES ('794', '西乌珠穆沁旗', '69', '2', '0');
INSERT INTO `k_location` VALUES ('795', '太仆寺旗', '69', '2', '0');
INSERT INTO `k_location` VALUES ('796', '镶黄旗', '69', '2', '0');
INSERT INTO `k_location` VALUES ('797', '正镶白旗', '69', '2', '0');
INSERT INTO `k_location` VALUES ('798', '正蓝旗', '69', '2', '0');
INSERT INTO `k_location` VALUES ('799', '多伦县', '69', '2', '0');
INSERT INTO `k_location` VALUES ('800', '阿拉善左旗', '70', '2', '0');
INSERT INTO `k_location` VALUES ('801', '阿拉善右旗', '70', '2', '0');
INSERT INTO `k_location` VALUES ('802', '额济纳旗', '70', '2', '0');
INSERT INTO `k_location` VALUES ('803', '和平区', '71', '2', '0');
INSERT INTO `k_location` VALUES ('804', '沈河区', '71', '2', '0');
INSERT INTO `k_location` VALUES ('805', '大东区', '71', '2', '0');
INSERT INTO `k_location` VALUES ('806', '皇姑区', '71', '2', '0');
INSERT INTO `k_location` VALUES ('807', '铁西区', '71', '2', '0');
INSERT INTO `k_location` VALUES ('808', '苏家屯区', '71', '2', '0');
INSERT INTO `k_location` VALUES ('809', '浑南区', '71', '2', '0');
INSERT INTO `k_location` VALUES ('810', '沈北新区', '71', '2', '0');
INSERT INTO `k_location` VALUES ('811', '于洪区', '71', '2', '0');
INSERT INTO `k_location` VALUES ('812', '辽中县', '71', '2', '0');
INSERT INTO `k_location` VALUES ('813', '康平县', '71', '2', '0');
INSERT INTO `k_location` VALUES ('814', '法库县', '71', '2', '0');
INSERT INTO `k_location` VALUES ('815', '新民市', '71', '2', '0');
INSERT INTO `k_location` VALUES ('816', '中山区', '72', '2', '0');
INSERT INTO `k_location` VALUES ('817', '西岗区', '72', '2', '0');
INSERT INTO `k_location` VALUES ('818', '沙河口区', '72', '2', '0');
INSERT INTO `k_location` VALUES ('819', '甘井子区', '72', '2', '0');
INSERT INTO `k_location` VALUES ('820', '旅顺口区', '72', '2', '0');
INSERT INTO `k_location` VALUES ('821', '金州区', '72', '2', '0');
INSERT INTO `k_location` VALUES ('822', '长海县', '72', '2', '0');
INSERT INTO `k_location` VALUES ('823', '瓦房店市', '72', '2', '0');
INSERT INTO `k_location` VALUES ('824', '普兰店市', '72', '2', '0');
INSERT INTO `k_location` VALUES ('825', '庄河市', '72', '2', '0');
INSERT INTO `k_location` VALUES ('826', '铁东区', '73', '2', '0');
INSERT INTO `k_location` VALUES ('827', '铁西区', '73', '2', '0');
INSERT INTO `k_location` VALUES ('828', '立山区', '73', '2', '0');
INSERT INTO `k_location` VALUES ('829', '千山区', '73', '2', '0');
INSERT INTO `k_location` VALUES ('830', '台安县', '73', '2', '0');
INSERT INTO `k_location` VALUES ('831', '岫岩满族自治县', '73', '2', '0');
INSERT INTO `k_location` VALUES ('832', '海城市', '73', '2', '0');
INSERT INTO `k_location` VALUES ('833', '新抚区', '74', '2', '0');
INSERT INTO `k_location` VALUES ('834', '东洲区', '74', '2', '0');
INSERT INTO `k_location` VALUES ('835', '望花区', '74', '2', '0');
INSERT INTO `k_location` VALUES ('836', '顺城区', '74', '2', '0');
INSERT INTO `k_location` VALUES ('837', '抚顺县', '74', '2', '0');
INSERT INTO `k_location` VALUES ('838', '新宾满族自治县', '74', '2', '0');
INSERT INTO `k_location` VALUES ('839', '清原满族自治县', '74', '2', '0');
INSERT INTO `k_location` VALUES ('840', '平山区', '75', '2', '0');
INSERT INTO `k_location` VALUES ('841', '溪湖区', '75', '2', '0');
INSERT INTO `k_location` VALUES ('842', '明山区', '75', '2', '0');
INSERT INTO `k_location` VALUES ('843', '南芬区', '75', '2', '0');
INSERT INTO `k_location` VALUES ('844', '本溪满族自治县', '75', '2', '0');
INSERT INTO `k_location` VALUES ('845', '桓仁满族自治县', '75', '2', '0');
INSERT INTO `k_location` VALUES ('846', '元宝区', '76', '2', '0');
INSERT INTO `k_location` VALUES ('847', '振兴区', '76', '2', '0');
INSERT INTO `k_location` VALUES ('848', '振安区', '76', '2', '0');
INSERT INTO `k_location` VALUES ('849', '宽甸满族自治县', '76', '2', '0');
INSERT INTO `k_location` VALUES ('850', '东港市', '76', '2', '0');
INSERT INTO `k_location` VALUES ('851', '凤城市', '76', '2', '0');
INSERT INTO `k_location` VALUES ('852', '古塔区', '77', '2', '0');
INSERT INTO `k_location` VALUES ('853', '凌河区', '77', '2', '0');
INSERT INTO `k_location` VALUES ('854', '太和区', '77', '2', '0');
INSERT INTO `k_location` VALUES ('855', '黑山县', '77', '2', '0');
INSERT INTO `k_location` VALUES ('856', '义县', '77', '2', '0');
INSERT INTO `k_location` VALUES ('857', '凌海市', '77', '2', '0');
INSERT INTO `k_location` VALUES ('858', '北镇市', '77', '2', '0');
INSERT INTO `k_location` VALUES ('859', '站前区', '78', '2', '0');
INSERT INTO `k_location` VALUES ('860', '西市区', '78', '2', '0');
INSERT INTO `k_location` VALUES ('861', '鲅鱼圈区', '78', '2', '0');
INSERT INTO `k_location` VALUES ('862', '老边区', '78', '2', '0');
INSERT INTO `k_location` VALUES ('863', '盖州市', '78', '2', '0');
INSERT INTO `k_location` VALUES ('864', '大石桥市', '78', '2', '0');
INSERT INTO `k_location` VALUES ('865', '海州区', '79', '2', '0');
INSERT INTO `k_location` VALUES ('866', '新邱区', '79', '2', '0');
INSERT INTO `k_location` VALUES ('867', '太平区', '79', '2', '0');
INSERT INTO `k_location` VALUES ('868', '清河门区', '79', '2', '0');
INSERT INTO `k_location` VALUES ('869', '细河区', '79', '2', '0');
INSERT INTO `k_location` VALUES ('870', '阜新蒙古族自治县', '79', '2', '0');
INSERT INTO `k_location` VALUES ('871', '彰武县', '79', '2', '0');
INSERT INTO `k_location` VALUES ('872', '白塔区', '80', '2', '0');
INSERT INTO `k_location` VALUES ('873', '文圣区', '80', '2', '0');
INSERT INTO `k_location` VALUES ('874', '宏伟区', '80', '2', '0');
INSERT INTO `k_location` VALUES ('875', '弓长岭区', '80', '2', '0');
INSERT INTO `k_location` VALUES ('876', '太子河区', '80', '2', '0');
INSERT INTO `k_location` VALUES ('877', '辽阳县', '80', '2', '0');
INSERT INTO `k_location` VALUES ('878', '灯塔市', '80', '2', '0');
INSERT INTO `k_location` VALUES ('879', '双台子区', '81', '2', '0');
INSERT INTO `k_location` VALUES ('880', '兴隆台区', '81', '2', '0');
INSERT INTO `k_location` VALUES ('881', '大洼县', '81', '2', '0');
INSERT INTO `k_location` VALUES ('882', '盘山县', '81', '2', '0');
INSERT INTO `k_location` VALUES ('883', '银州区', '82', '2', '0');
INSERT INTO `k_location` VALUES ('884', '清河区', '82', '2', '0');
INSERT INTO `k_location` VALUES ('885', '铁岭县', '82', '2', '0');
INSERT INTO `k_location` VALUES ('886', '西丰县', '82', '2', '0');
INSERT INTO `k_location` VALUES ('887', '昌图县', '82', '2', '0');
INSERT INTO `k_location` VALUES ('888', '调兵山市', '82', '2', '0');
INSERT INTO `k_location` VALUES ('889', '开原市', '82', '2', '0');
INSERT INTO `k_location` VALUES ('890', '双塔区', '83', '2', '0');
INSERT INTO `k_location` VALUES ('891', '龙城区', '83', '2', '0');
INSERT INTO `k_location` VALUES ('892', '朝阳县', '83', '2', '0');
INSERT INTO `k_location` VALUES ('893', '建平县', '83', '2', '0');
INSERT INTO `k_location` VALUES ('894', '喀喇沁左翼蒙古族自治县', '83', '2', '0');
INSERT INTO `k_location` VALUES ('895', '北票市', '83', '2', '0');
INSERT INTO `k_location` VALUES ('896', '凌源市', '83', '2', '0');
INSERT INTO `k_location` VALUES ('897', '连山区', '84', '2', '0');
INSERT INTO `k_location` VALUES ('898', '龙港区', '84', '2', '0');
INSERT INTO `k_location` VALUES ('899', '南票区', '84', '2', '0');
INSERT INTO `k_location` VALUES ('900', '绥中县', '84', '2', '0');
INSERT INTO `k_location` VALUES ('901', '建昌县', '84', '2', '0');
INSERT INTO `k_location` VALUES ('902', '兴城市', '84', '2', '0');
INSERT INTO `k_location` VALUES ('903', '南关区', '85', '2', '0');
INSERT INTO `k_location` VALUES ('904', '宽城区', '85', '2', '0');
INSERT INTO `k_location` VALUES ('905', '朝阳区', '85', '2', '0');
INSERT INTO `k_location` VALUES ('906', '二道区', '85', '2', '0');
INSERT INTO `k_location` VALUES ('907', '绿园区', '85', '2', '0');
INSERT INTO `k_location` VALUES ('908', '双阳区', '85', '2', '0');
INSERT INTO `k_location` VALUES ('909', '九台区', '85', '2', '0');
INSERT INTO `k_location` VALUES ('910', '农安县', '85', '2', '0');
INSERT INTO `k_location` VALUES ('911', '榆树市', '85', '2', '0');
INSERT INTO `k_location` VALUES ('912', '德惠市', '85', '2', '0');
INSERT INTO `k_location` VALUES ('913', '昌邑区', '86', '2', '0');
INSERT INTO `k_location` VALUES ('914', '龙潭区', '86', '2', '0');
INSERT INTO `k_location` VALUES ('915', '船营区', '86', '2', '0');
INSERT INTO `k_location` VALUES ('916', '丰满区', '86', '2', '0');
INSERT INTO `k_location` VALUES ('917', '永吉县', '86', '2', '0');
INSERT INTO `k_location` VALUES ('918', '蛟河市', '86', '2', '0');
INSERT INTO `k_location` VALUES ('919', '桦甸市', '86', '2', '0');
INSERT INTO `k_location` VALUES ('920', '舒兰市', '86', '2', '0');
INSERT INTO `k_location` VALUES ('921', '磐石市', '86', '2', '0');
INSERT INTO `k_location` VALUES ('922', '铁西区', '87', '2', '0');
INSERT INTO `k_location` VALUES ('923', '铁东区', '87', '2', '0');
INSERT INTO `k_location` VALUES ('924', '梨树县', '87', '2', '0');
INSERT INTO `k_location` VALUES ('925', '伊通满族自治县', '87', '2', '0');
INSERT INTO `k_location` VALUES ('926', '公主岭市', '87', '2', '0');
INSERT INTO `k_location` VALUES ('927', '双辽市', '87', '2', '0');
INSERT INTO `k_location` VALUES ('928', '龙山区', '88', '2', '0');
INSERT INTO `k_location` VALUES ('929', '西安区', '88', '2', '0');
INSERT INTO `k_location` VALUES ('930', '东丰县', '88', '2', '0');
INSERT INTO `k_location` VALUES ('931', '东辽县', '88', '2', '0');
INSERT INTO `k_location` VALUES ('932', '东昌区', '89', '2', '0');
INSERT INTO `k_location` VALUES ('933', '二道江区', '89', '2', '0');
INSERT INTO `k_location` VALUES ('934', '通化县', '89', '2', '0');
INSERT INTO `k_location` VALUES ('935', '辉南县', '89', '2', '0');
INSERT INTO `k_location` VALUES ('936', '柳河县', '89', '2', '0');
INSERT INTO `k_location` VALUES ('937', '梅河口市', '89', '2', '0');
INSERT INTO `k_location` VALUES ('938', '集安市', '89', '2', '0');
INSERT INTO `k_location` VALUES ('939', '浑江区', '90', '2', '0');
INSERT INTO `k_location` VALUES ('940', '江源区', '90', '2', '0');
INSERT INTO `k_location` VALUES ('941', '抚松县', '90', '2', '0');
INSERT INTO `k_location` VALUES ('942', '靖宇县', '90', '2', '0');
INSERT INTO `k_location` VALUES ('943', '长白朝鲜族自治县', '90', '2', '0');
INSERT INTO `k_location` VALUES ('944', '临江市', '90', '2', '0');
INSERT INTO `k_location` VALUES ('945', '宁江区', '91', '2', '0');
INSERT INTO `k_location` VALUES ('946', '前郭尔罗斯蒙古族自治县', '91', '2', '0');
INSERT INTO `k_location` VALUES ('947', '长岭县', '91', '2', '0');
INSERT INTO `k_location` VALUES ('948', '乾安县', '91', '2', '0');
INSERT INTO `k_location` VALUES ('949', '扶余市', '91', '2', '0');
INSERT INTO `k_location` VALUES ('950', '洮北区', '92', '2', '0');
INSERT INTO `k_location` VALUES ('951', '镇赉县', '92', '2', '0');
INSERT INTO `k_location` VALUES ('952', '通榆县', '92', '2', '0');
INSERT INTO `k_location` VALUES ('953', '洮南市', '92', '2', '0');
INSERT INTO `k_location` VALUES ('954', '大安市', '92', '2', '0');
INSERT INTO `k_location` VALUES ('955', '延吉市', '93', '2', '0');
INSERT INTO `k_location` VALUES ('956', '图们市', '93', '2', '0');
INSERT INTO `k_location` VALUES ('957', '敦化市', '93', '2', '0');
INSERT INTO `k_location` VALUES ('958', '珲春市', '93', '2', '0');
INSERT INTO `k_location` VALUES ('959', '龙井市', '93', '2', '0');
INSERT INTO `k_location` VALUES ('960', '和龙市', '93', '2', '0');
INSERT INTO `k_location` VALUES ('961', '汪清县', '93', '2', '0');
INSERT INTO `k_location` VALUES ('962', '安图县', '93', '2', '0');
INSERT INTO `k_location` VALUES ('963', '道里区', '94', '2', '0');
INSERT INTO `k_location` VALUES ('964', '南岗区', '94', '2', '0');
INSERT INTO `k_location` VALUES ('965', '道外区', '94', '2', '0');
INSERT INTO `k_location` VALUES ('966', '平房区', '94', '2', '0');
INSERT INTO `k_location` VALUES ('967', '松北区', '94', '2', '0');
INSERT INTO `k_location` VALUES ('968', '香坊区', '94', '2', '0');
INSERT INTO `k_location` VALUES ('969', '呼兰区', '94', '2', '0');
INSERT INTO `k_location` VALUES ('970', '阿城区', '94', '2', '0');
INSERT INTO `k_location` VALUES ('971', '依兰县', '94', '2', '0');
INSERT INTO `k_location` VALUES ('972', '方正县', '94', '2', '0');
INSERT INTO `k_location` VALUES ('973', '宾县', '94', '2', '0');
INSERT INTO `k_location` VALUES ('974', '巴彦县', '94', '2', '0');
INSERT INTO `k_location` VALUES ('975', '木兰县', '94', '2', '0');
INSERT INTO `k_location` VALUES ('976', '通河县', '94', '2', '0');
INSERT INTO `k_location` VALUES ('977', '延寿县', '94', '2', '0');
INSERT INTO `k_location` VALUES ('978', '双城市', '94', '2', '0');
INSERT INTO `k_location` VALUES ('979', '尚志市', '94', '2', '0');
INSERT INTO `k_location` VALUES ('980', '五常市', '94', '2', '0');
INSERT INTO `k_location` VALUES ('981', '龙沙区', '95', '2', '0');
INSERT INTO `k_location` VALUES ('982', '建华区', '95', '2', '0');
INSERT INTO `k_location` VALUES ('983', '铁锋区', '95', '2', '0');
INSERT INTO `k_location` VALUES ('984', '昂昂溪区', '95', '2', '0');
INSERT INTO `k_location` VALUES ('985', '富拉尔基区', '95', '2', '0');
INSERT INTO `k_location` VALUES ('986', '碾子山区', '95', '2', '0');
INSERT INTO `k_location` VALUES ('987', '梅里斯达斡尔族区', '95', '2', '0');
INSERT INTO `k_location` VALUES ('988', '龙江县', '95', '2', '0');
INSERT INTO `k_location` VALUES ('989', '依安县', '95', '2', '0');
INSERT INTO `k_location` VALUES ('990', '泰来县', '95', '2', '0');
INSERT INTO `k_location` VALUES ('991', '甘南县', '95', '2', '0');
INSERT INTO `k_location` VALUES ('992', '富裕县', '95', '2', '0');
INSERT INTO `k_location` VALUES ('993', '克山县', '95', '2', '0');
INSERT INTO `k_location` VALUES ('994', '克东县', '95', '2', '0');
INSERT INTO `k_location` VALUES ('995', '拜泉县', '95', '2', '0');
INSERT INTO `k_location` VALUES ('996', '讷河市', '95', '2', '0');
INSERT INTO `k_location` VALUES ('997', '鸡冠区', '96', '2', '0');
INSERT INTO `k_location` VALUES ('998', '恒山区', '96', '2', '0');
INSERT INTO `k_location` VALUES ('999', '滴道区', '96', '2', '0');
INSERT INTO `k_location` VALUES ('1000', '梨树区', '96', '2', '0');
INSERT INTO `k_location` VALUES ('1001', '城子河区', '96', '2', '0');
INSERT INTO `k_location` VALUES ('1002', '麻山区', '96', '2', '0');
INSERT INTO `k_location` VALUES ('1003', '鸡东县', '96', '2', '0');
INSERT INTO `k_location` VALUES ('1004', '虎林市', '96', '2', '0');
INSERT INTO `k_location` VALUES ('1005', '密山市', '96', '2', '0');
INSERT INTO `k_location` VALUES ('1006', '向阳区', '97', '2', '0');
INSERT INTO `k_location` VALUES ('1007', '工农区', '97', '2', '0');
INSERT INTO `k_location` VALUES ('1008', '南山区', '97', '2', '0');
INSERT INTO `k_location` VALUES ('1009', '兴安区', '97', '2', '0');
INSERT INTO `k_location` VALUES ('1010', '东山区', '97', '2', '0');
INSERT INTO `k_location` VALUES ('1011', '兴山区', '97', '2', '0');
INSERT INTO `k_location` VALUES ('1012', '萝北县', '97', '2', '0');
INSERT INTO `k_location` VALUES ('1013', '绥滨县', '97', '2', '0');
INSERT INTO `k_location` VALUES ('1014', '尖山区', '98', '2', '0');
INSERT INTO `k_location` VALUES ('1015', '岭东区', '98', '2', '0');
INSERT INTO `k_location` VALUES ('1016', '四方台区', '98', '2', '0');
INSERT INTO `k_location` VALUES ('1017', '宝山区', '98', '2', '0');
INSERT INTO `k_location` VALUES ('1018', '集贤县', '98', '2', '0');
INSERT INTO `k_location` VALUES ('1019', '友谊县', '98', '2', '0');
INSERT INTO `k_location` VALUES ('1020', '宝清县', '98', '2', '0');
INSERT INTO `k_location` VALUES ('1021', '饶河县', '98', '2', '0');
INSERT INTO `k_location` VALUES ('1022', '萨尔图区', '99', '2', '0');
INSERT INTO `k_location` VALUES ('1023', '龙凤区', '99', '2', '0');
INSERT INTO `k_location` VALUES ('1024', '让胡路区', '99', '2', '0');
INSERT INTO `k_location` VALUES ('1025', '红岗区', '99', '2', '0');
INSERT INTO `k_location` VALUES ('1026', '大同区', '99', '2', '0');
INSERT INTO `k_location` VALUES ('1027', '肇州县', '99', '2', '0');
INSERT INTO `k_location` VALUES ('1028', '肇源县', '99', '2', '0');
INSERT INTO `k_location` VALUES ('1029', '林甸县', '99', '2', '0');
INSERT INTO `k_location` VALUES ('1030', '杜尔伯特蒙古族自治县', '99', '2', '0');
INSERT INTO `k_location` VALUES ('1031', '伊春区', '100', '2', '0');
INSERT INTO `k_location` VALUES ('1032', '南岔区', '100', '2', '0');
INSERT INTO `k_location` VALUES ('1033', '友好区', '100', '2', '0');
INSERT INTO `k_location` VALUES ('1034', '西林区', '100', '2', '0');
INSERT INTO `k_location` VALUES ('1035', '翠峦区', '100', '2', '0');
INSERT INTO `k_location` VALUES ('1036', '新青区', '100', '2', '0');
INSERT INTO `k_location` VALUES ('1037', '美溪区', '100', '2', '0');
INSERT INTO `k_location` VALUES ('1038', '金山屯区', '100', '2', '0');
INSERT INTO `k_location` VALUES ('1039', '五营区', '100', '2', '0');
INSERT INTO `k_location` VALUES ('1040', '乌马河区', '100', '2', '0');
INSERT INTO `k_location` VALUES ('1041', '汤旺河区', '100', '2', '0');
INSERT INTO `k_location` VALUES ('1042', '带岭区', '100', '2', '0');
INSERT INTO `k_location` VALUES ('1043', '乌伊岭区', '100', '2', '0');
INSERT INTO `k_location` VALUES ('1044', '红星区', '100', '2', '0');
INSERT INTO `k_location` VALUES ('1045', '上甘岭区', '100', '2', '0');
INSERT INTO `k_location` VALUES ('1046', '嘉荫县', '100', '2', '0');
INSERT INTO `k_location` VALUES ('1047', '铁力市', '100', '2', '0');
INSERT INTO `k_location` VALUES ('1048', '向阳区', '101', '2', '0');
INSERT INTO `k_location` VALUES ('1049', '前进区', '101', '2', '0');
INSERT INTO `k_location` VALUES ('1050', '东风区', '101', '2', '0');
INSERT INTO `k_location` VALUES ('1051', '郊区', '101', '2', '0');
INSERT INTO `k_location` VALUES ('1052', '桦南县', '101', '2', '0');
INSERT INTO `k_location` VALUES ('1053', '桦川县', '101', '2', '0');
INSERT INTO `k_location` VALUES ('1054', '汤原县', '101', '2', '0');
INSERT INTO `k_location` VALUES ('1055', '抚远县', '101', '2', '0');
INSERT INTO `k_location` VALUES ('1056', '同江市', '101', '2', '0');
INSERT INTO `k_location` VALUES ('1057', '富锦市', '101', '2', '0');
INSERT INTO `k_location` VALUES ('1058', '新兴区', '102', '2', '0');
INSERT INTO `k_location` VALUES ('1059', '桃山区', '102', '2', '0');
INSERT INTO `k_location` VALUES ('1060', '茄子河区', '102', '2', '0');
INSERT INTO `k_location` VALUES ('1061', '勃利县', '102', '2', '0');
INSERT INTO `k_location` VALUES ('1062', '东安区', '103', '2', '0');
INSERT INTO `k_location` VALUES ('1063', '阳明区', '103', '2', '0');
INSERT INTO `k_location` VALUES ('1064', '爱民区', '103', '2', '0');
INSERT INTO `k_location` VALUES ('1065', '西安区', '103', '2', '0');
INSERT INTO `k_location` VALUES ('1066', '东宁县', '103', '2', '0');
INSERT INTO `k_location` VALUES ('1067', '林口县', '103', '2', '0');
INSERT INTO `k_location` VALUES ('1068', '绥芬河市', '103', '2', '0');
INSERT INTO `k_location` VALUES ('1069', '海林市', '103', '2', '0');
INSERT INTO `k_location` VALUES ('1070', '宁安市', '103', '2', '0');
INSERT INTO `k_location` VALUES ('1071', '穆棱市', '103', '2', '0');
INSERT INTO `k_location` VALUES ('1072', '爱辉区', '104', '2', '0');
INSERT INTO `k_location` VALUES ('1073', '嫩江县', '104', '2', '0');
INSERT INTO `k_location` VALUES ('1074', '逊克县', '104', '2', '0');
INSERT INTO `k_location` VALUES ('1075', '孙吴县', '104', '2', '0');
INSERT INTO `k_location` VALUES ('1076', '北安市', '104', '2', '0');
INSERT INTO `k_location` VALUES ('1077', '五大连池市', '104', '2', '0');
INSERT INTO `k_location` VALUES ('1078', '北林区', '105', '2', '0');
INSERT INTO `k_location` VALUES ('1079', '望奎县', '105', '2', '0');
INSERT INTO `k_location` VALUES ('1080', '兰西县', '105', '2', '0');
INSERT INTO `k_location` VALUES ('1081', '青冈县', '105', '2', '0');
INSERT INTO `k_location` VALUES ('1082', '庆安县', '105', '2', '0');
INSERT INTO `k_location` VALUES ('1083', '明水县', '105', '2', '0');
INSERT INTO `k_location` VALUES ('1084', '绥棱县', '105', '2', '0');
INSERT INTO `k_location` VALUES ('1085', '安达市', '105', '2', '0');
INSERT INTO `k_location` VALUES ('1086', '肇东市', '105', '2', '0');
INSERT INTO `k_location` VALUES ('1087', '海伦市', '105', '2', '0');
INSERT INTO `k_location` VALUES ('1088', '呼玛县', '106', '2', '0');
INSERT INTO `k_location` VALUES ('1089', '塔河县', '106', '2', '0');
INSERT INTO `k_location` VALUES ('1090', '漠河县', '106', '2', '0');
INSERT INTO `k_location` VALUES ('1091', '黄浦区', '107', '2', '0');
INSERT INTO `k_location` VALUES ('1092', '徐汇区', '107', '2', '0');
INSERT INTO `k_location` VALUES ('1093', '长宁区', '107', '2', '0');
INSERT INTO `k_location` VALUES ('1094', '静安区', '107', '2', '0');
INSERT INTO `k_location` VALUES ('1095', '普陀区', '107', '2', '0');
INSERT INTO `k_location` VALUES ('1096', '闸北区', '107', '2', '0');
INSERT INTO `k_location` VALUES ('1097', '虹口区', '107', '2', '0');
INSERT INTO `k_location` VALUES ('1098', '杨浦区', '107', '2', '0');
INSERT INTO `k_location` VALUES ('1099', '闵行区', '107', '2', '0');
INSERT INTO `k_location` VALUES ('1100', '宝山区', '107', '2', '0');
INSERT INTO `k_location` VALUES ('1101', '嘉定区', '107', '2', '0');
INSERT INTO `k_location` VALUES ('1102', '浦东新区', '107', '2', '0');
INSERT INTO `k_location` VALUES ('1103', '金山区', '107', '2', '0');
INSERT INTO `k_location` VALUES ('1104', '松江区', '107', '2', '0');
INSERT INTO `k_location` VALUES ('1105', '青浦区', '107', '2', '0');
INSERT INTO `k_location` VALUES ('1106', '奉贤区', '107', '2', '0');
INSERT INTO `k_location` VALUES ('1107', '崇明县', '107', '2', '0');
INSERT INTO `k_location` VALUES ('1108', '玄武区', '108', '2', '0');
INSERT INTO `k_location` VALUES ('1109', '秦淮区', '108', '2', '0');
INSERT INTO `k_location` VALUES ('1110', '建邺区', '108', '2', '0');
INSERT INTO `k_location` VALUES ('1111', '鼓楼区', '108', '2', '0');
INSERT INTO `k_location` VALUES ('1112', '浦口区', '108', '2', '0');
INSERT INTO `k_location` VALUES ('1113', '栖霞区', '108', '2', '0');
INSERT INTO `k_location` VALUES ('1114', '雨花台区', '108', '2', '0');
INSERT INTO `k_location` VALUES ('1115', '江宁区', '108', '2', '0');
INSERT INTO `k_location` VALUES ('1116', '六合区', '108', '2', '0');
INSERT INTO `k_location` VALUES ('1117', '溧水区', '108', '2', '0');
INSERT INTO `k_location` VALUES ('1118', '高淳区', '108', '2', '0');
INSERT INTO `k_location` VALUES ('1119', '崇安区', '109', '2', '0');
INSERT INTO `k_location` VALUES ('1120', '南长区', '109', '2', '0');
INSERT INTO `k_location` VALUES ('1121', '北塘区', '109', '2', '0');
INSERT INTO `k_location` VALUES ('1122', '锡山区', '109', '2', '0');
INSERT INTO `k_location` VALUES ('1123', '惠山区', '109', '2', '0');
INSERT INTO `k_location` VALUES ('1124', '滨湖区', '109', '2', '0');
INSERT INTO `k_location` VALUES ('1125', '江阴市', '109', '2', '0');
INSERT INTO `k_location` VALUES ('1126', '宜兴市', '109', '2', '0');
INSERT INTO `k_location` VALUES ('1127', '鼓楼区', '110', '2', '0');
INSERT INTO `k_location` VALUES ('1128', '云龙区', '110', '2', '0');
INSERT INTO `k_location` VALUES ('1129', '贾汪区', '110', '2', '0');
INSERT INTO `k_location` VALUES ('1130', '泉山区', '110', '2', '0');
INSERT INTO `k_location` VALUES ('1131', '铜山区', '110', '2', '0');
INSERT INTO `k_location` VALUES ('1132', '丰县', '110', '2', '0');
INSERT INTO `k_location` VALUES ('1133', '沛县', '110', '2', '0');
INSERT INTO `k_location` VALUES ('1134', '睢宁县', '110', '2', '0');
INSERT INTO `k_location` VALUES ('1135', '新沂市', '110', '2', '0');
INSERT INTO `k_location` VALUES ('1136', '邳州市', '110', '2', '0');
INSERT INTO `k_location` VALUES ('1137', '天宁区', '111', '2', '0');
INSERT INTO `k_location` VALUES ('1138', '钟楼区', '111', '2', '0');
INSERT INTO `k_location` VALUES ('1139', '戚墅堰区', '111', '2', '0');
INSERT INTO `k_location` VALUES ('1140', '新北区', '111', '2', '0');
INSERT INTO `k_location` VALUES ('1141', '武进区', '111', '2', '0');
INSERT INTO `k_location` VALUES ('1142', '溧阳市', '111', '2', '0');
INSERT INTO `k_location` VALUES ('1143', '金坛市', '111', '2', '0');
INSERT INTO `k_location` VALUES ('1144', '虎丘区', '112', '2', '0');
INSERT INTO `k_location` VALUES ('1145', '吴中区', '112', '2', '0');
INSERT INTO `k_location` VALUES ('1146', '相城区', '112', '2', '0');
INSERT INTO `k_location` VALUES ('1147', '姑苏区', '112', '2', '0');
INSERT INTO `k_location` VALUES ('1148', '吴江区', '112', '2', '0');
INSERT INTO `k_location` VALUES ('1149', '常熟市', '112', '2', '0');
INSERT INTO `k_location` VALUES ('1150', '张家港市', '112', '2', '0');
INSERT INTO `k_location` VALUES ('1151', '昆山市', '112', '2', '0');
INSERT INTO `k_location` VALUES ('1152', '太仓市', '112', '2', '0');
INSERT INTO `k_location` VALUES ('1153', '崇川区', '113', '2', '0');
INSERT INTO `k_location` VALUES ('1154', '港闸区', '113', '2', '0');
INSERT INTO `k_location` VALUES ('1155', '通州区', '113', '2', '0');
INSERT INTO `k_location` VALUES ('1156', '海安县', '113', '2', '0');
INSERT INTO `k_location` VALUES ('1157', '如东县', '113', '2', '0');
INSERT INTO `k_location` VALUES ('1158', '启东市', '113', '2', '0');
INSERT INTO `k_location` VALUES ('1159', '如皋市', '113', '2', '0');
INSERT INTO `k_location` VALUES ('1160', '海门市', '113', '2', '0');
INSERT INTO `k_location` VALUES ('1161', '连云区', '114', '2', '0');
INSERT INTO `k_location` VALUES ('1162', '海州区', '114', '2', '0');
INSERT INTO `k_location` VALUES ('1163', '赣榆区', '114', '2', '0');
INSERT INTO `k_location` VALUES ('1164', '东海县', '114', '2', '0');
INSERT INTO `k_location` VALUES ('1165', '灌云县', '114', '2', '0');
INSERT INTO `k_location` VALUES ('1166', '灌南县', '114', '2', '0');
INSERT INTO `k_location` VALUES ('1167', '清河区', '115', '2', '0');
INSERT INTO `k_location` VALUES ('1168', '淮安区', '115', '2', '0');
INSERT INTO `k_location` VALUES ('1169', '淮阴区', '115', '2', '0');
INSERT INTO `k_location` VALUES ('1170', '清浦区', '115', '2', '0');
INSERT INTO `k_location` VALUES ('1171', '涟水县', '115', '2', '0');
INSERT INTO `k_location` VALUES ('1172', '洪泽县', '115', '2', '0');
INSERT INTO `k_location` VALUES ('1173', '盱眙县', '115', '2', '0');
INSERT INTO `k_location` VALUES ('1174', '金湖县', '115', '2', '0');
INSERT INTO `k_location` VALUES ('1175', '亭湖区', '116', '2', '0');
INSERT INTO `k_location` VALUES ('1176', '盐都区', '116', '2', '0');
INSERT INTO `k_location` VALUES ('1177', '响水县', '116', '2', '0');
INSERT INTO `k_location` VALUES ('1178', '滨海县', '116', '2', '0');
INSERT INTO `k_location` VALUES ('1179', '阜宁县', '116', '2', '0');
INSERT INTO `k_location` VALUES ('1180', '射阳县', '116', '2', '0');
INSERT INTO `k_location` VALUES ('1181', '建湖县', '116', '2', '0');
INSERT INTO `k_location` VALUES ('1182', '东台市', '116', '2', '0');
INSERT INTO `k_location` VALUES ('1183', '大丰市', '116', '2', '0');
INSERT INTO `k_location` VALUES ('1184', '广陵区', '117', '2', '0');
INSERT INTO `k_location` VALUES ('1185', '邗江区', '117', '2', '0');
INSERT INTO `k_location` VALUES ('1186', '江都区', '117', '2', '0');
INSERT INTO `k_location` VALUES ('1187', '宝应县', '117', '2', '0');
INSERT INTO `k_location` VALUES ('1188', '仪征市', '117', '2', '0');
INSERT INTO `k_location` VALUES ('1189', '高邮市', '117', '2', '0');
INSERT INTO `k_location` VALUES ('1190', '京口区', '118', '2', '0');
INSERT INTO `k_location` VALUES ('1191', '润州区', '118', '2', '0');
INSERT INTO `k_location` VALUES ('1192', '丹徒区', '118', '2', '0');
INSERT INTO `k_location` VALUES ('1193', '丹阳市', '118', '2', '0');
INSERT INTO `k_location` VALUES ('1194', '扬中市', '118', '2', '0');
INSERT INTO `k_location` VALUES ('1195', '句容市', '118', '2', '0');
INSERT INTO `k_location` VALUES ('1196', '海陵区', '119', '2', '0');
INSERT INTO `k_location` VALUES ('1197', '高港区', '119', '2', '0');
INSERT INTO `k_location` VALUES ('1198', '姜堰区', '119', '2', '0');
INSERT INTO `k_location` VALUES ('1199', '兴化市', '119', '2', '0');
INSERT INTO `k_location` VALUES ('1200', '靖江市', '119', '2', '0');
INSERT INTO `k_location` VALUES ('1201', '泰兴市', '119', '2', '0');
INSERT INTO `k_location` VALUES ('1202', '宿城区', '120', '2', '0');
INSERT INTO `k_location` VALUES ('1203', '宿豫区', '120', '2', '0');
INSERT INTO `k_location` VALUES ('1204', '沭阳县', '120', '2', '0');
INSERT INTO `k_location` VALUES ('1205', '泗阳县', '120', '2', '0');
INSERT INTO `k_location` VALUES ('1206', '泗洪县', '120', '2', '0');
INSERT INTO `k_location` VALUES ('1207', '上城区', '121', '2', '0');
INSERT INTO `k_location` VALUES ('1208', '下城区', '121', '2', '0');
INSERT INTO `k_location` VALUES ('1209', '江干区', '121', '2', '0');
INSERT INTO `k_location` VALUES ('1210', '拱墅区', '121', '2', '0');
INSERT INTO `k_location` VALUES ('1211', '西湖区', '121', '2', '0');
INSERT INTO `k_location` VALUES ('1212', '滨江区', '121', '2', '0');
INSERT INTO `k_location` VALUES ('1213', '萧山区', '121', '2', '0');
INSERT INTO `k_location` VALUES ('1214', '余杭区', '121', '2', '0');
INSERT INTO `k_location` VALUES ('1215', '桐庐县', '121', '2', '0');
INSERT INTO `k_location` VALUES ('1216', '淳安县', '121', '2', '0');
INSERT INTO `k_location` VALUES ('1217', '建德市', '121', '2', '0');
INSERT INTO `k_location` VALUES ('1218', '富阳市', '121', '2', '0');
INSERT INTO `k_location` VALUES ('1219', '临安市', '121', '2', '0');
INSERT INTO `k_location` VALUES ('1220', '海曙区', '122', '2', '0');
INSERT INTO `k_location` VALUES ('1221', '江东区', '122', '2', '0');
INSERT INTO `k_location` VALUES ('1222', '江北区', '122', '2', '0');
INSERT INTO `k_location` VALUES ('1223', '北仑区', '122', '2', '0');
INSERT INTO `k_location` VALUES ('1224', '镇海区', '122', '2', '0');
INSERT INTO `k_location` VALUES ('1225', '鄞州区', '122', '2', '0');
INSERT INTO `k_location` VALUES ('1226', '象山县', '122', '2', '0');
INSERT INTO `k_location` VALUES ('1227', '宁海县', '122', '2', '0');
INSERT INTO `k_location` VALUES ('1228', '余姚市', '122', '2', '0');
INSERT INTO `k_location` VALUES ('1229', '慈溪市', '122', '2', '0');
INSERT INTO `k_location` VALUES ('1230', '奉化市', '122', '2', '0');
INSERT INTO `k_location` VALUES ('1231', '鹿城区', '123', '2', '0');
INSERT INTO `k_location` VALUES ('1232', '龙湾区', '123', '2', '0');
INSERT INTO `k_location` VALUES ('1233', '瓯海区', '123', '2', '0');
INSERT INTO `k_location` VALUES ('1234', '洞头县', '123', '2', '0');
INSERT INTO `k_location` VALUES ('1235', '永嘉县', '123', '2', '0');
INSERT INTO `k_location` VALUES ('1236', '平阳县', '123', '2', '0');
INSERT INTO `k_location` VALUES ('1237', '苍南县', '123', '2', '0');
INSERT INTO `k_location` VALUES ('1238', '文成县', '123', '2', '0');
INSERT INTO `k_location` VALUES ('1239', '泰顺县', '123', '2', '0');
INSERT INTO `k_location` VALUES ('1240', '瑞安市', '123', '2', '0');
INSERT INTO `k_location` VALUES ('1241', '乐清市', '123', '2', '0');
INSERT INTO `k_location` VALUES ('1242', '南湖区', '124', '2', '0');
INSERT INTO `k_location` VALUES ('1243', '秀洲区', '124', '2', '0');
INSERT INTO `k_location` VALUES ('1244', '嘉善县', '124', '2', '0');
INSERT INTO `k_location` VALUES ('1245', '海盐县', '124', '2', '0');
INSERT INTO `k_location` VALUES ('1246', '海宁市', '124', '2', '0');
INSERT INTO `k_location` VALUES ('1247', '平湖市', '124', '2', '0');
INSERT INTO `k_location` VALUES ('1248', '桐乡市', '124', '2', '0');
INSERT INTO `k_location` VALUES ('1249', '吴兴区', '125', '2', '0');
INSERT INTO `k_location` VALUES ('1250', '南浔区', '125', '2', '0');
INSERT INTO `k_location` VALUES ('1251', '德清县', '125', '2', '0');
INSERT INTO `k_location` VALUES ('1252', '长兴县', '125', '2', '0');
INSERT INTO `k_location` VALUES ('1253', '安吉县', '125', '2', '0');
INSERT INTO `k_location` VALUES ('1254', '越城区', '126', '2', '0');
INSERT INTO `k_location` VALUES ('1255', '柯桥区', '126', '2', '0');
INSERT INTO `k_location` VALUES ('1256', '上虞区', '126', '2', '0');
INSERT INTO `k_location` VALUES ('1257', '新昌县', '126', '2', '0');
INSERT INTO `k_location` VALUES ('1258', '诸暨市', '126', '2', '0');
INSERT INTO `k_location` VALUES ('1259', '嵊州市', '126', '2', '0');
INSERT INTO `k_location` VALUES ('1260', '婺城区', '127', '2', '0');
INSERT INTO `k_location` VALUES ('1261', '金东区', '127', '2', '0');
INSERT INTO `k_location` VALUES ('1262', '武义县', '127', '2', '0');
INSERT INTO `k_location` VALUES ('1263', '浦江县', '127', '2', '0');
INSERT INTO `k_location` VALUES ('1264', '磐安县', '127', '2', '0');
INSERT INTO `k_location` VALUES ('1265', '兰溪市', '127', '2', '0');
INSERT INTO `k_location` VALUES ('1266', '义乌市', '127', '2', '0');
INSERT INTO `k_location` VALUES ('1267', '东阳市', '127', '2', '0');
INSERT INTO `k_location` VALUES ('1268', '永康市', '127', '2', '0');
INSERT INTO `k_location` VALUES ('1269', '柯城区', '128', '2', '0');
INSERT INTO `k_location` VALUES ('1270', '衢江区', '128', '2', '0');
INSERT INTO `k_location` VALUES ('1271', '常山县', '128', '2', '0');
INSERT INTO `k_location` VALUES ('1272', '开化县', '128', '2', '0');
INSERT INTO `k_location` VALUES ('1273', '龙游县', '128', '2', '0');
INSERT INTO `k_location` VALUES ('1274', '江山市', '128', '2', '0');
INSERT INTO `k_location` VALUES ('1275', '定海区', '129', '2', '0');
INSERT INTO `k_location` VALUES ('1276', '普陀区', '129', '2', '0');
INSERT INTO `k_location` VALUES ('1277', '岱山县', '129', '2', '0');
INSERT INTO `k_location` VALUES ('1278', '嵊泗县', '129', '2', '0');
INSERT INTO `k_location` VALUES ('1279', '椒江区', '130', '2', '0');
INSERT INTO `k_location` VALUES ('1280', '黄岩区', '130', '2', '0');
INSERT INTO `k_location` VALUES ('1281', '路桥区', '130', '2', '0');
INSERT INTO `k_location` VALUES ('1282', '玉环县', '130', '2', '0');
INSERT INTO `k_location` VALUES ('1283', '三门县', '130', '2', '0');
INSERT INTO `k_location` VALUES ('1284', '天台县', '130', '2', '0');
INSERT INTO `k_location` VALUES ('1285', '仙居县', '130', '2', '0');
INSERT INTO `k_location` VALUES ('1286', '温岭市', '130', '2', '0');
INSERT INTO `k_location` VALUES ('1287', '临海市', '130', '2', '0');
INSERT INTO `k_location` VALUES ('1288', '莲都区', '131', '2', '0');
INSERT INTO `k_location` VALUES ('1289', '青田县', '131', '2', '0');
INSERT INTO `k_location` VALUES ('1290', '缙云县', '131', '2', '0');
INSERT INTO `k_location` VALUES ('1291', '遂昌县', '131', '2', '0');
INSERT INTO `k_location` VALUES ('1292', '松阳县', '131', '2', '0');
INSERT INTO `k_location` VALUES ('1293', '云和县', '131', '2', '0');
INSERT INTO `k_location` VALUES ('1294', '庆元县', '131', '2', '0');
INSERT INTO `k_location` VALUES ('1295', '景宁畲族自治县', '131', '2', '0');
INSERT INTO `k_location` VALUES ('1296', '龙泉市', '131', '2', '0');
INSERT INTO `k_location` VALUES ('1297', '瑶海区', '132', '2', '0');
INSERT INTO `k_location` VALUES ('1298', '庐阳区', '132', '2', '0');
INSERT INTO `k_location` VALUES ('1299', '蜀山区', '132', '2', '0');
INSERT INTO `k_location` VALUES ('1300', '包河区', '132', '2', '0');
INSERT INTO `k_location` VALUES ('1301', '长丰县', '132', '2', '0');
INSERT INTO `k_location` VALUES ('1302', '肥东县', '132', '2', '0');
INSERT INTO `k_location` VALUES ('1303', '肥西县', '132', '2', '0');
INSERT INTO `k_location` VALUES ('1304', '庐江县', '132', '2', '0');
INSERT INTO `k_location` VALUES ('1305', '巢湖市', '132', '2', '0');
INSERT INTO `k_location` VALUES ('1306', '镜湖区', '133', '2', '0');
INSERT INTO `k_location` VALUES ('1307', '弋江区', '133', '2', '0');
INSERT INTO `k_location` VALUES ('1308', '鸠江区', '133', '2', '0');
INSERT INTO `k_location` VALUES ('1309', '三山区', '133', '2', '0');
INSERT INTO `k_location` VALUES ('1310', '芜湖县', '133', '2', '0');
INSERT INTO `k_location` VALUES ('1311', '繁昌县', '133', '2', '0');
INSERT INTO `k_location` VALUES ('1312', '南陵县', '133', '2', '0');
INSERT INTO `k_location` VALUES ('1313', '无为县', '133', '2', '0');
INSERT INTO `k_location` VALUES ('1314', '龙子湖区', '134', '2', '0');
INSERT INTO `k_location` VALUES ('1315', '蚌山区', '134', '2', '0');
INSERT INTO `k_location` VALUES ('1316', '禹会区', '134', '2', '0');
INSERT INTO `k_location` VALUES ('1317', '淮上区', '134', '2', '0');
INSERT INTO `k_location` VALUES ('1318', '怀远县', '134', '2', '0');
INSERT INTO `k_location` VALUES ('1319', '五河县', '134', '2', '0');
INSERT INTO `k_location` VALUES ('1320', '固镇县', '134', '2', '0');
INSERT INTO `k_location` VALUES ('1321', '大通区', '135', '2', '0');
INSERT INTO `k_location` VALUES ('1322', '田家庵区', '135', '2', '0');
INSERT INTO `k_location` VALUES ('1323', '谢家集区', '135', '2', '0');
INSERT INTO `k_location` VALUES ('1324', '八公山区', '135', '2', '0');
INSERT INTO `k_location` VALUES ('1325', '潘集区', '135', '2', '0');
INSERT INTO `k_location` VALUES ('1326', '凤台县', '135', '2', '0');
INSERT INTO `k_location` VALUES ('1327', '花山区', '136', '2', '0');
INSERT INTO `k_location` VALUES ('1328', '雨山区', '136', '2', '0');
INSERT INTO `k_location` VALUES ('1329', '博望区', '136', '2', '0');
INSERT INTO `k_location` VALUES ('1330', '当涂县', '136', '2', '0');
INSERT INTO `k_location` VALUES ('1331', '含山县', '136', '2', '0');
INSERT INTO `k_location` VALUES ('1332', '和县', '136', '2', '0');
INSERT INTO `k_location` VALUES ('1333', '杜集区', '137', '2', '0');
INSERT INTO `k_location` VALUES ('1334', '相山区', '137', '2', '0');
INSERT INTO `k_location` VALUES ('1335', '烈山区', '137', '2', '0');
INSERT INTO `k_location` VALUES ('1336', '濉溪县', '137', '2', '0');
INSERT INTO `k_location` VALUES ('1337', '铜官山区', '138', '2', '0');
INSERT INTO `k_location` VALUES ('1338', '狮子山区', '138', '2', '0');
INSERT INTO `k_location` VALUES ('1339', '郊区', '138', '2', '0');
INSERT INTO `k_location` VALUES ('1340', '铜陵县', '138', '2', '0');
INSERT INTO `k_location` VALUES ('1341', '迎江区', '139', '2', '0');
INSERT INTO `k_location` VALUES ('1342', '大观区', '139', '2', '0');
INSERT INTO `k_location` VALUES ('1343', '宜秀区', '139', '2', '0');
INSERT INTO `k_location` VALUES ('1344', '怀宁县', '139', '2', '0');
INSERT INTO `k_location` VALUES ('1345', '枞阳县', '139', '2', '0');
INSERT INTO `k_location` VALUES ('1346', '潜山县', '139', '2', '0');
INSERT INTO `k_location` VALUES ('1347', '太湖县', '139', '2', '0');
INSERT INTO `k_location` VALUES ('1348', '宿松县', '139', '2', '0');
INSERT INTO `k_location` VALUES ('1349', '望江县', '139', '2', '0');
INSERT INTO `k_location` VALUES ('1350', '岳西县', '139', '2', '0');
INSERT INTO `k_location` VALUES ('1351', '桐城市', '139', '2', '0');
INSERT INTO `k_location` VALUES ('1352', '屯溪区', '140', '2', '0');
INSERT INTO `k_location` VALUES ('1353', '黄山区', '140', '2', '0');
INSERT INTO `k_location` VALUES ('1354', '徽州区', '140', '2', '0');
INSERT INTO `k_location` VALUES ('1355', '歙县', '140', '2', '0');
INSERT INTO `k_location` VALUES ('1356', '休宁县', '140', '2', '0');
INSERT INTO `k_location` VALUES ('1357', '黟县', '140', '2', '0');
INSERT INTO `k_location` VALUES ('1358', '祁门县', '140', '2', '0');
INSERT INTO `k_location` VALUES ('1359', '琅琊区', '141', '2', '0');
INSERT INTO `k_location` VALUES ('1360', '南谯区', '141', '2', '0');
INSERT INTO `k_location` VALUES ('1361', '来安县', '141', '2', '0');
INSERT INTO `k_location` VALUES ('1362', '全椒县', '141', '2', '0');
INSERT INTO `k_location` VALUES ('1363', '定远县', '141', '2', '0');
INSERT INTO `k_location` VALUES ('1364', '凤阳县', '141', '2', '0');
INSERT INTO `k_location` VALUES ('1365', '天长市', '141', '2', '0');
INSERT INTO `k_location` VALUES ('1366', '明光市', '141', '2', '0');
INSERT INTO `k_location` VALUES ('1367', '颍州区', '142', '2', '0');
INSERT INTO `k_location` VALUES ('1368', '颍东区', '142', '2', '0');
INSERT INTO `k_location` VALUES ('1369', '颍泉区', '142', '2', '0');
INSERT INTO `k_location` VALUES ('1370', '临泉县', '142', '2', '0');
INSERT INTO `k_location` VALUES ('1371', '太和县', '142', '2', '0');
INSERT INTO `k_location` VALUES ('1372', '阜南县', '142', '2', '0');
INSERT INTO `k_location` VALUES ('1373', '颍上县', '142', '2', '0');
INSERT INTO `k_location` VALUES ('1374', '界首市', '142', '2', '0');
INSERT INTO `k_location` VALUES ('1375', '埇桥区', '143', '2', '0');
INSERT INTO `k_location` VALUES ('1376', '砀山县', '143', '2', '0');
INSERT INTO `k_location` VALUES ('1377', '萧县', '143', '2', '0');
INSERT INTO `k_location` VALUES ('1378', '灵璧县', '143', '2', '0');
INSERT INTO `k_location` VALUES ('1379', '泗县', '143', '2', '0');
INSERT INTO `k_location` VALUES ('1380', '金安区', '144', '2', '0');
INSERT INTO `k_location` VALUES ('1381', '裕安区', '144', '2', '0');
INSERT INTO `k_location` VALUES ('1382', '寿县', '144', '2', '0');
INSERT INTO `k_location` VALUES ('1383', '霍邱县', '144', '2', '0');
INSERT INTO `k_location` VALUES ('1384', '舒城县', '144', '2', '0');
INSERT INTO `k_location` VALUES ('1385', '金寨县', '144', '2', '0');
INSERT INTO `k_location` VALUES ('1386', '霍山县', '144', '2', '0');
INSERT INTO `k_location` VALUES ('1387', '谯城区', '145', '2', '0');
INSERT INTO `k_location` VALUES ('1388', '涡阳县', '145', '2', '0');
INSERT INTO `k_location` VALUES ('1389', '蒙城县', '145', '2', '0');
INSERT INTO `k_location` VALUES ('1390', '利辛县', '145', '2', '0');
INSERT INTO `k_location` VALUES ('1391', '贵池区', '146', '2', '0');
INSERT INTO `k_location` VALUES ('1392', '东至县', '146', '2', '0');
INSERT INTO `k_location` VALUES ('1393', '石台县', '146', '2', '0');
INSERT INTO `k_location` VALUES ('1394', '青阳县', '146', '2', '0');
INSERT INTO `k_location` VALUES ('1395', '宣州区', '147', '2', '0');
INSERT INTO `k_location` VALUES ('1396', '郎溪县', '147', '2', '0');
INSERT INTO `k_location` VALUES ('1397', '广德县', '147', '2', '0');
INSERT INTO `k_location` VALUES ('1398', '泾县', '147', '2', '0');
INSERT INTO `k_location` VALUES ('1399', '绩溪县', '147', '2', '0');
INSERT INTO `k_location` VALUES ('1400', '旌德县', '147', '2', '0');
INSERT INTO `k_location` VALUES ('1401', '宁国市', '147', '2', '0');
INSERT INTO `k_location` VALUES ('1402', '鼓楼区', '148', '2', '0');
INSERT INTO `k_location` VALUES ('1403', '台江区', '148', '2', '0');
INSERT INTO `k_location` VALUES ('1404', '仓山区', '148', '2', '0');
INSERT INTO `k_location` VALUES ('1405', '马尾区', '148', '2', '0');
INSERT INTO `k_location` VALUES ('1406', '晋安区', '148', '2', '0');
INSERT INTO `k_location` VALUES ('1407', '闽侯县', '148', '2', '0');
INSERT INTO `k_location` VALUES ('1408', '连江县', '148', '2', '0');
INSERT INTO `k_location` VALUES ('1409', '罗源县', '148', '2', '0');
INSERT INTO `k_location` VALUES ('1410', '闽清县', '148', '2', '0');
INSERT INTO `k_location` VALUES ('1411', '永泰县', '148', '2', '0');
INSERT INTO `k_location` VALUES ('1412', '平潭县', '148', '2', '0');
INSERT INTO `k_location` VALUES ('1413', '福清市', '148', '2', '0');
INSERT INTO `k_location` VALUES ('1414', '长乐市', '148', '2', '0');
INSERT INTO `k_location` VALUES ('1415', '思明区', '149', '2', '0');
INSERT INTO `k_location` VALUES ('1416', '海沧区', '149', '2', '0');
INSERT INTO `k_location` VALUES ('1417', '湖里区', '149', '2', '0');
INSERT INTO `k_location` VALUES ('1418', '集美区', '149', '2', '0');
INSERT INTO `k_location` VALUES ('1419', '同安区', '149', '2', '0');
INSERT INTO `k_location` VALUES ('1420', '翔安区', '149', '2', '0');
INSERT INTO `k_location` VALUES ('1421', '城厢区', '150', '2', '0');
INSERT INTO `k_location` VALUES ('1422', '涵江区', '150', '2', '0');
INSERT INTO `k_location` VALUES ('1423', '荔城区', '150', '2', '0');
INSERT INTO `k_location` VALUES ('1424', '秀屿区', '150', '2', '0');
INSERT INTO `k_location` VALUES ('1425', '仙游县', '150', '2', '0');
INSERT INTO `k_location` VALUES ('1426', '梅列区', '151', '2', '0');
INSERT INTO `k_location` VALUES ('1427', '三元区', '151', '2', '0');
INSERT INTO `k_location` VALUES ('1428', '明溪县', '151', '2', '0');
INSERT INTO `k_location` VALUES ('1429', '清流县', '151', '2', '0');
INSERT INTO `k_location` VALUES ('1430', '宁化县', '151', '2', '0');
INSERT INTO `k_location` VALUES ('1431', '大田县', '151', '2', '0');
INSERT INTO `k_location` VALUES ('1432', '尤溪县', '151', '2', '0');
INSERT INTO `k_location` VALUES ('1433', '沙县', '151', '2', '0');
INSERT INTO `k_location` VALUES ('1434', '将乐县', '151', '2', '0');
INSERT INTO `k_location` VALUES ('1435', '泰宁县', '151', '2', '0');
INSERT INTO `k_location` VALUES ('1436', '建宁县', '151', '2', '0');
INSERT INTO `k_location` VALUES ('1437', '永安市', '151', '2', '0');
INSERT INTO `k_location` VALUES ('1438', '鲤城区', '152', '2', '0');
INSERT INTO `k_location` VALUES ('1439', '丰泽区', '152', '2', '0');
INSERT INTO `k_location` VALUES ('1440', '洛江区', '152', '2', '0');
INSERT INTO `k_location` VALUES ('1441', '泉港区', '152', '2', '0');
INSERT INTO `k_location` VALUES ('1442', '惠安县', '152', '2', '0');
INSERT INTO `k_location` VALUES ('1443', '安溪县', '152', '2', '0');
INSERT INTO `k_location` VALUES ('1444', '永春县', '152', '2', '0');
INSERT INTO `k_location` VALUES ('1445', '德化县', '152', '2', '0');
INSERT INTO `k_location` VALUES ('1446', '金门县', '152', '2', '0');
INSERT INTO `k_location` VALUES ('1447', '石狮市', '152', '2', '0');
INSERT INTO `k_location` VALUES ('1448', '晋江市', '152', '2', '0');
INSERT INTO `k_location` VALUES ('1449', '南安市', '152', '2', '0');
INSERT INTO `k_location` VALUES ('1450', '芗城区', '153', '2', '0');
INSERT INTO `k_location` VALUES ('1451', '龙文区', '153', '2', '0');
INSERT INTO `k_location` VALUES ('1452', '云霄县', '153', '2', '0');
INSERT INTO `k_location` VALUES ('1453', '漳浦县', '153', '2', '0');
INSERT INTO `k_location` VALUES ('1454', '诏安县', '153', '2', '0');
INSERT INTO `k_location` VALUES ('1455', '长泰县', '153', '2', '0');
INSERT INTO `k_location` VALUES ('1456', '东山县', '153', '2', '0');
INSERT INTO `k_location` VALUES ('1457', '南靖县', '153', '2', '0');
INSERT INTO `k_location` VALUES ('1458', '平和县', '153', '2', '0');
INSERT INTO `k_location` VALUES ('1459', '华安县', '153', '2', '0');
INSERT INTO `k_location` VALUES ('1460', '龙海市', '153', '2', '0');
INSERT INTO `k_location` VALUES ('1461', '延平区', '154', '2', '0');
INSERT INTO `k_location` VALUES ('1462', '顺昌县', '154', '2', '0');
INSERT INTO `k_location` VALUES ('1463', '浦城县', '154', '2', '0');
INSERT INTO `k_location` VALUES ('1464', '光泽县', '154', '2', '0');
INSERT INTO `k_location` VALUES ('1465', '松溪县', '154', '2', '0');
INSERT INTO `k_location` VALUES ('1466', '政和县', '154', '2', '0');
INSERT INTO `k_location` VALUES ('1467', '邵武市', '154', '2', '0');
INSERT INTO `k_location` VALUES ('1468', '武夷山市', '154', '2', '0');
INSERT INTO `k_location` VALUES ('1469', '建瓯市', '154', '2', '0');
INSERT INTO `k_location` VALUES ('1470', '建阳市', '154', '2', '0');
INSERT INTO `k_location` VALUES ('1471', '新罗区', '155', '2', '0');
INSERT INTO `k_location` VALUES ('1472', '长汀县', '155', '2', '0');
INSERT INTO `k_location` VALUES ('1473', '永定县', '155', '2', '0');
INSERT INTO `k_location` VALUES ('1474', '上杭县', '155', '2', '0');
INSERT INTO `k_location` VALUES ('1475', '武平县', '155', '2', '0');
INSERT INTO `k_location` VALUES ('1476', '连城县', '155', '2', '0');
INSERT INTO `k_location` VALUES ('1477', '漳平市', '155', '2', '0');
INSERT INTO `k_location` VALUES ('1478', '蕉城区', '156', '2', '0');
INSERT INTO `k_location` VALUES ('1479', '霞浦县', '156', '2', '0');
INSERT INTO `k_location` VALUES ('1480', '古田县', '156', '2', '0');
INSERT INTO `k_location` VALUES ('1481', '屏南县', '156', '2', '0');
INSERT INTO `k_location` VALUES ('1482', '寿宁县', '156', '2', '0');
INSERT INTO `k_location` VALUES ('1483', '周宁县', '156', '2', '0');
INSERT INTO `k_location` VALUES ('1484', '柘荣县', '156', '2', '0');
INSERT INTO `k_location` VALUES ('1485', '福安市', '156', '2', '0');
INSERT INTO `k_location` VALUES ('1486', '福鼎市', '156', '2', '0');
INSERT INTO `k_location` VALUES ('1487', '东湖区', '157', '2', '0');
INSERT INTO `k_location` VALUES ('1488', '西湖区', '157', '2', '0');
INSERT INTO `k_location` VALUES ('1489', '青云谱区', '157', '2', '0');
INSERT INTO `k_location` VALUES ('1490', '湾里区', '157', '2', '0');
INSERT INTO `k_location` VALUES ('1491', '青山湖区', '157', '2', '0');
INSERT INTO `k_location` VALUES ('1492', '南昌县', '157', '2', '0');
INSERT INTO `k_location` VALUES ('1493', '新建县', '157', '2', '0');
INSERT INTO `k_location` VALUES ('1494', '安义县', '157', '2', '0');
INSERT INTO `k_location` VALUES ('1495', '进贤县', '157', '2', '0');
INSERT INTO `k_location` VALUES ('1496', '昌江区', '158', '2', '0');
INSERT INTO `k_location` VALUES ('1497', '珠山区', '158', '2', '0');
INSERT INTO `k_location` VALUES ('1498', '浮梁县', '158', '2', '0');
INSERT INTO `k_location` VALUES ('1499', '乐平市', '158', '2', '0');
INSERT INTO `k_location` VALUES ('1500', '安源区', '159', '2', '0');
INSERT INTO `k_location` VALUES ('1501', '湘东区', '159', '2', '0');
INSERT INTO `k_location` VALUES ('1502', '莲花县', '159', '2', '0');
INSERT INTO `k_location` VALUES ('1503', '上栗县', '159', '2', '0');
INSERT INTO `k_location` VALUES ('1504', '芦溪县', '159', '2', '0');
INSERT INTO `k_location` VALUES ('1505', '庐山区', '160', '2', '0');
INSERT INTO `k_location` VALUES ('1506', '浔阳区', '160', '2', '0');
INSERT INTO `k_location` VALUES ('1507', '九江县', '160', '2', '0');
INSERT INTO `k_location` VALUES ('1508', '武宁县', '160', '2', '0');
INSERT INTO `k_location` VALUES ('1509', '修水县', '160', '2', '0');
INSERT INTO `k_location` VALUES ('1510', '永修县', '160', '2', '0');
INSERT INTO `k_location` VALUES ('1511', '德安县', '160', '2', '0');
INSERT INTO `k_location` VALUES ('1512', '星子县', '160', '2', '0');
INSERT INTO `k_location` VALUES ('1513', '都昌县', '160', '2', '0');
INSERT INTO `k_location` VALUES ('1514', '湖口县', '160', '2', '0');
INSERT INTO `k_location` VALUES ('1515', '彭泽县', '160', '2', '0');
INSERT INTO `k_location` VALUES ('1516', '瑞昌市', '160', '2', '0');
INSERT INTO `k_location` VALUES ('1517', '共青城市', '160', '2', '0');
INSERT INTO `k_location` VALUES ('1518', '渝水区', '161', '2', '0');
INSERT INTO `k_location` VALUES ('1519', '分宜县', '161', '2', '0');
INSERT INTO `k_location` VALUES ('1520', '月湖区', '162', '2', '0');
INSERT INTO `k_location` VALUES ('1521', '余江县', '162', '2', '0');
INSERT INTO `k_location` VALUES ('1522', '贵溪市', '162', '2', '0');
INSERT INTO `k_location` VALUES ('1523', '章贡区', '163', '2', '0');
INSERT INTO `k_location` VALUES ('1524', '南康区', '163', '2', '0');
INSERT INTO `k_location` VALUES ('1525', '赣县', '163', '2', '0');
INSERT INTO `k_location` VALUES ('1526', '信丰县', '163', '2', '0');
INSERT INTO `k_location` VALUES ('1527', '大余县', '163', '2', '0');
INSERT INTO `k_location` VALUES ('1528', '上犹县', '163', '2', '0');
INSERT INTO `k_location` VALUES ('1529', '崇义县', '163', '2', '0');
INSERT INTO `k_location` VALUES ('1530', '安远县', '163', '2', '0');
INSERT INTO `k_location` VALUES ('1531', '龙南县', '163', '2', '0');
INSERT INTO `k_location` VALUES ('1532', '定南县', '163', '2', '0');
INSERT INTO `k_location` VALUES ('1533', '全南县', '163', '2', '0');
INSERT INTO `k_location` VALUES ('1534', '宁都县', '163', '2', '0');
INSERT INTO `k_location` VALUES ('1535', '于都县', '163', '2', '0');
INSERT INTO `k_location` VALUES ('1536', '兴国县', '163', '2', '0');
INSERT INTO `k_location` VALUES ('1537', '会昌县', '163', '2', '0');
INSERT INTO `k_location` VALUES ('1538', '寻乌县', '163', '2', '0');
INSERT INTO `k_location` VALUES ('1539', '石城县', '163', '2', '0');
INSERT INTO `k_location` VALUES ('1540', '瑞金市', '163', '2', '0');
INSERT INTO `k_location` VALUES ('1541', '吉州区', '164', '2', '0');
INSERT INTO `k_location` VALUES ('1542', '青原区', '164', '2', '0');
INSERT INTO `k_location` VALUES ('1543', '吉安县', '164', '2', '0');
INSERT INTO `k_location` VALUES ('1544', '吉水县', '164', '2', '0');
INSERT INTO `k_location` VALUES ('1545', '峡江县', '164', '2', '0');
INSERT INTO `k_location` VALUES ('1546', '新干县', '164', '2', '0');
INSERT INTO `k_location` VALUES ('1547', '永丰县', '164', '2', '0');
INSERT INTO `k_location` VALUES ('1548', '泰和县', '164', '2', '0');
INSERT INTO `k_location` VALUES ('1549', '遂川县', '164', '2', '0');
INSERT INTO `k_location` VALUES ('1550', '万安县', '164', '2', '0');
INSERT INTO `k_location` VALUES ('1551', '安福县', '164', '2', '0');
INSERT INTO `k_location` VALUES ('1552', '永新县', '164', '2', '0');
INSERT INTO `k_location` VALUES ('1553', '井冈山市', '164', '2', '0');
INSERT INTO `k_location` VALUES ('1554', '袁州区', '165', '2', '0');
INSERT INTO `k_location` VALUES ('1555', '奉新县', '165', '2', '0');
INSERT INTO `k_location` VALUES ('1556', '万载县', '165', '2', '0');
INSERT INTO `k_location` VALUES ('1557', '上高县', '165', '2', '0');
INSERT INTO `k_location` VALUES ('1558', '宜丰县', '165', '2', '0');
INSERT INTO `k_location` VALUES ('1559', '靖安县', '165', '2', '0');
INSERT INTO `k_location` VALUES ('1560', '铜鼓县', '165', '2', '0');
INSERT INTO `k_location` VALUES ('1561', '丰城市', '165', '2', '0');
INSERT INTO `k_location` VALUES ('1562', '樟树市', '165', '2', '0');
INSERT INTO `k_location` VALUES ('1563', '高安市', '165', '2', '0');
INSERT INTO `k_location` VALUES ('1564', '临川区', '166', '2', '0');
INSERT INTO `k_location` VALUES ('1565', '南城县', '166', '2', '0');
INSERT INTO `k_location` VALUES ('1566', '黎川县', '166', '2', '0');
INSERT INTO `k_location` VALUES ('1567', '南丰县', '166', '2', '0');
INSERT INTO `k_location` VALUES ('1568', '崇仁县', '166', '2', '0');
INSERT INTO `k_location` VALUES ('1569', '乐安县', '166', '2', '0');
INSERT INTO `k_location` VALUES ('1570', '宜黄县', '166', '2', '0');
INSERT INTO `k_location` VALUES ('1571', '金溪县', '166', '2', '0');
INSERT INTO `k_location` VALUES ('1572', '资溪县', '166', '2', '0');
INSERT INTO `k_location` VALUES ('1573', '东乡县', '166', '2', '0');
INSERT INTO `k_location` VALUES ('1574', '广昌县', '166', '2', '0');
INSERT INTO `k_location` VALUES ('1575', '信州区', '167', '2', '0');
INSERT INTO `k_location` VALUES ('1576', '上饶县', '167', '2', '0');
INSERT INTO `k_location` VALUES ('1577', '广丰县', '167', '2', '0');
INSERT INTO `k_location` VALUES ('1578', '玉山县', '167', '2', '0');
INSERT INTO `k_location` VALUES ('1579', '铅山县', '167', '2', '0');
INSERT INTO `k_location` VALUES ('1580', '横峰县', '167', '2', '0');
INSERT INTO `k_location` VALUES ('1581', '弋阳县', '167', '2', '0');
INSERT INTO `k_location` VALUES ('1582', '余干县', '167', '2', '0');
INSERT INTO `k_location` VALUES ('1583', '鄱阳县', '167', '2', '0');
INSERT INTO `k_location` VALUES ('1584', '万年县', '167', '2', '0');
INSERT INTO `k_location` VALUES ('1585', '婺源县', '167', '2', '0');
INSERT INTO `k_location` VALUES ('1586', '德兴市', '167', '2', '0');
INSERT INTO `k_location` VALUES ('1587', '历下区', '168', '2', '0');
INSERT INTO `k_location` VALUES ('1588', '市中区', '168', '2', '0');
INSERT INTO `k_location` VALUES ('1589', '槐荫区', '168', '2', '0');
INSERT INTO `k_location` VALUES ('1590', '天桥区', '168', '2', '0');
INSERT INTO `k_location` VALUES ('1591', '历城区', '168', '2', '0');
INSERT INTO `k_location` VALUES ('1592', '长清区', '168', '2', '0');
INSERT INTO `k_location` VALUES ('1593', '平阴县', '168', '2', '0');
INSERT INTO `k_location` VALUES ('1594', '济阳县', '168', '2', '0');
INSERT INTO `k_location` VALUES ('1595', '商河县', '168', '2', '0');
INSERT INTO `k_location` VALUES ('1596', '章丘市', '168', '2', '0');
INSERT INTO `k_location` VALUES ('1597', '市南区', '169', '2', '0');
INSERT INTO `k_location` VALUES ('1598', '市北区', '169', '2', '0');
INSERT INTO `k_location` VALUES ('1599', '黄岛区', '169', '2', '0');
INSERT INTO `k_location` VALUES ('1600', '崂山区', '169', '2', '0');
INSERT INTO `k_location` VALUES ('1601', '李沧区', '169', '2', '0');
INSERT INTO `k_location` VALUES ('1602', '城阳区', '169', '2', '0');
INSERT INTO `k_location` VALUES ('1603', '胶州市', '169', '2', '0');
INSERT INTO `k_location` VALUES ('1604', '即墨市', '169', '2', '0');
INSERT INTO `k_location` VALUES ('1605', '平度市', '169', '2', '0');
INSERT INTO `k_location` VALUES ('1606', '莱西市', '169', '2', '0');
INSERT INTO `k_location` VALUES ('1607', '淄川区', '170', '2', '0');
INSERT INTO `k_location` VALUES ('1608', '张店区', '170', '2', '0');
INSERT INTO `k_location` VALUES ('1609', '博山区', '170', '2', '0');
INSERT INTO `k_location` VALUES ('1610', '临淄区', '170', '2', '0');
INSERT INTO `k_location` VALUES ('1611', '周村区', '170', '2', '0');
INSERT INTO `k_location` VALUES ('1612', '桓台县', '170', '2', '0');
INSERT INTO `k_location` VALUES ('1613', '高青县', '170', '2', '0');
INSERT INTO `k_location` VALUES ('1614', '沂源县', '170', '2', '0');
INSERT INTO `k_location` VALUES ('1615', '市中区', '171', '2', '0');
INSERT INTO `k_location` VALUES ('1616', '薛城区', '171', '2', '0');
INSERT INTO `k_location` VALUES ('1617', '峄城区', '171', '2', '0');
INSERT INTO `k_location` VALUES ('1618', '台儿庄区', '171', '2', '0');
INSERT INTO `k_location` VALUES ('1619', '山亭区', '171', '2', '0');
INSERT INTO `k_location` VALUES ('1620', '滕州市', '171', '2', '0');
INSERT INTO `k_location` VALUES ('1621', '东营区', '172', '2', '0');
INSERT INTO `k_location` VALUES ('1622', '河口区', '172', '2', '0');
INSERT INTO `k_location` VALUES ('1623', '垦利县', '172', '2', '0');
INSERT INTO `k_location` VALUES ('1624', '利津县', '172', '2', '0');
INSERT INTO `k_location` VALUES ('1625', '广饶县', '172', '2', '0');
INSERT INTO `k_location` VALUES ('1626', '芝罘区', '173', '2', '0');
INSERT INTO `k_location` VALUES ('1627', '福山区', '173', '2', '0');
INSERT INTO `k_location` VALUES ('1628', '牟平区', '173', '2', '0');
INSERT INTO `k_location` VALUES ('1629', '莱山区', '173', '2', '0');
INSERT INTO `k_location` VALUES ('1630', '长岛县', '173', '2', '0');
INSERT INTO `k_location` VALUES ('1631', '龙口市', '173', '2', '0');
INSERT INTO `k_location` VALUES ('1632', '莱阳市', '173', '2', '0');
INSERT INTO `k_location` VALUES ('1633', '莱州市', '173', '2', '0');
INSERT INTO `k_location` VALUES ('1634', '蓬莱市', '173', '2', '0');
INSERT INTO `k_location` VALUES ('1635', '招远市', '173', '2', '0');
INSERT INTO `k_location` VALUES ('1636', '栖霞市', '173', '2', '0');
INSERT INTO `k_location` VALUES ('1637', '海阳市', '173', '2', '0');
INSERT INTO `k_location` VALUES ('1638', '潍城区', '174', '2', '0');
INSERT INTO `k_location` VALUES ('1639', '寒亭区', '174', '2', '0');
INSERT INTO `k_location` VALUES ('1640', '坊子区', '174', '2', '0');
INSERT INTO `k_location` VALUES ('1641', '奎文区', '174', '2', '0');
INSERT INTO `k_location` VALUES ('1642', '临朐县', '174', '2', '0');
INSERT INTO `k_location` VALUES ('1643', '昌乐县', '174', '2', '0');
INSERT INTO `k_location` VALUES ('1644', '青州市', '174', '2', '0');
INSERT INTO `k_location` VALUES ('1645', '诸城市', '174', '2', '0');
INSERT INTO `k_location` VALUES ('1646', '寿光市', '174', '2', '0');
INSERT INTO `k_location` VALUES ('1647', '安丘市', '174', '2', '0');
INSERT INTO `k_location` VALUES ('1648', '高密市', '174', '2', '0');
INSERT INTO `k_location` VALUES ('1649', '昌邑市', '174', '2', '0');
INSERT INTO `k_location` VALUES ('1650', '任城区', '175', '2', '0');
INSERT INTO `k_location` VALUES ('1651', '兖州区', '175', '2', '0');
INSERT INTO `k_location` VALUES ('1652', '微山县', '175', '2', '0');
INSERT INTO `k_location` VALUES ('1653', '鱼台县', '175', '2', '0');
INSERT INTO `k_location` VALUES ('1654', '金乡县', '175', '2', '0');
INSERT INTO `k_location` VALUES ('1655', '嘉祥县', '175', '2', '0');
INSERT INTO `k_location` VALUES ('1656', '汶上县', '175', '2', '0');
INSERT INTO `k_location` VALUES ('1657', '泗水县', '175', '2', '0');
INSERT INTO `k_location` VALUES ('1658', '梁山县', '175', '2', '0');
INSERT INTO `k_location` VALUES ('1659', '曲阜市', '175', '2', '0');
INSERT INTO `k_location` VALUES ('1660', '邹城市', '175', '2', '0');
INSERT INTO `k_location` VALUES ('1661', '泰山区', '176', '2', '0');
INSERT INTO `k_location` VALUES ('1662', '岱岳区', '176', '2', '0');
INSERT INTO `k_location` VALUES ('1663', '宁阳县', '176', '2', '0');
INSERT INTO `k_location` VALUES ('1664', '东平县', '176', '2', '0');
INSERT INTO `k_location` VALUES ('1665', '新泰市', '176', '2', '0');
INSERT INTO `k_location` VALUES ('1666', '肥城市', '176', '2', '0');
INSERT INTO `k_location` VALUES ('1667', '环翠区', '177', '2', '0');
INSERT INTO `k_location` VALUES ('1668', '文登区', '177', '2', '0');
INSERT INTO `k_location` VALUES ('1669', '荣成市', '177', '2', '0');
INSERT INTO `k_location` VALUES ('1670', '乳山市', '177', '2', '0');
INSERT INTO `k_location` VALUES ('1671', '东港区', '178', '2', '0');
INSERT INTO `k_location` VALUES ('1672', '岚山区', '178', '2', '0');
INSERT INTO `k_location` VALUES ('1673', '五莲县', '178', '2', '0');
INSERT INTO `k_location` VALUES ('1674', '莒县', '178', '2', '0');
INSERT INTO `k_location` VALUES ('1675', '莱城区', '179', '2', '0');
INSERT INTO `k_location` VALUES ('1676', '钢城区', '179', '2', '0');
INSERT INTO `k_location` VALUES ('1677', '兰山区', '180', '2', '0');
INSERT INTO `k_location` VALUES ('1678', '罗庄区', '180', '2', '0');
INSERT INTO `k_location` VALUES ('1679', '河东区', '180', '2', '0');
INSERT INTO `k_location` VALUES ('1680', '沂南县', '180', '2', '0');
INSERT INTO `k_location` VALUES ('1681', '郯城县', '180', '2', '0');
INSERT INTO `k_location` VALUES ('1682', '沂水县', '180', '2', '0');
INSERT INTO `k_location` VALUES ('1683', '兰陵县', '180', '2', '0');
INSERT INTO `k_location` VALUES ('1684', '费县', '180', '2', '0');
INSERT INTO `k_location` VALUES ('1685', '平邑县', '180', '2', '0');
INSERT INTO `k_location` VALUES ('1686', '莒南县', '180', '2', '0');
INSERT INTO `k_location` VALUES ('1687', '蒙阴县', '180', '2', '0');
INSERT INTO `k_location` VALUES ('1688', '临沭县', '180', '2', '0');
INSERT INTO `k_location` VALUES ('1689', '德城区', '181', '2', '0');
INSERT INTO `k_location` VALUES ('1690', '陵城区', '181', '2', '0');
INSERT INTO `k_location` VALUES ('1691', '宁津县', '181', '2', '0');
INSERT INTO `k_location` VALUES ('1692', '庆云县', '181', '2', '0');
INSERT INTO `k_location` VALUES ('1693', '临邑县', '181', '2', '0');
INSERT INTO `k_location` VALUES ('1694', '齐河县', '181', '2', '0');
INSERT INTO `k_location` VALUES ('1695', '平原县', '181', '2', '0');
INSERT INTO `k_location` VALUES ('1696', '夏津县', '181', '2', '0');
INSERT INTO `k_location` VALUES ('1697', '武城县', '181', '2', '0');
INSERT INTO `k_location` VALUES ('1698', '乐陵市', '181', '2', '0');
INSERT INTO `k_location` VALUES ('1699', '禹城市', '181', '2', '0');
INSERT INTO `k_location` VALUES ('1700', '东昌府区', '182', '2', '0');
INSERT INTO `k_location` VALUES ('1701', '阳谷县', '182', '2', '0');
INSERT INTO `k_location` VALUES ('1702', '莘县', '182', '2', '0');
INSERT INTO `k_location` VALUES ('1703', '茌平县', '182', '2', '0');
INSERT INTO `k_location` VALUES ('1704', '东阿县', '182', '2', '0');
INSERT INTO `k_location` VALUES ('1705', '冠县', '182', '2', '0');
INSERT INTO `k_location` VALUES ('1706', '高唐县', '182', '2', '0');
INSERT INTO `k_location` VALUES ('1707', '临清市', '182', '2', '0');
INSERT INTO `k_location` VALUES ('1708', '滨城区', '183', '2', '0');
INSERT INTO `k_location` VALUES ('1709', '沾化区', '183', '2', '0');
INSERT INTO `k_location` VALUES ('1710', '惠民县', '183', '2', '0');
INSERT INTO `k_location` VALUES ('1711', '阳信县', '183', '2', '0');
INSERT INTO `k_location` VALUES ('1712', '无棣县', '183', '2', '0');
INSERT INTO `k_location` VALUES ('1713', '博兴县', '183', '2', '0');
INSERT INTO `k_location` VALUES ('1714', '邹平县', '183', '2', '0');
INSERT INTO `k_location` VALUES ('1715', '牡丹区', '184', '2', '0');
INSERT INTO `k_location` VALUES ('1716', '曹县', '184', '2', '0');
INSERT INTO `k_location` VALUES ('1717', '单县', '184', '2', '0');
INSERT INTO `k_location` VALUES ('1718', '成武县', '184', '2', '0');
INSERT INTO `k_location` VALUES ('1719', '巨野县', '184', '2', '0');
INSERT INTO `k_location` VALUES ('1720', '郓城县', '184', '2', '0');
INSERT INTO `k_location` VALUES ('1721', '鄄城县', '184', '2', '0');
INSERT INTO `k_location` VALUES ('1722', '定陶县', '184', '2', '0');
INSERT INTO `k_location` VALUES ('1723', '东明县', '184', '2', '0');
INSERT INTO `k_location` VALUES ('1724', '中原区', '185', '2', '0');
INSERT INTO `k_location` VALUES ('1725', '二七区', '185', '2', '0');
INSERT INTO `k_location` VALUES ('1726', '管城回族区', '185', '2', '0');
INSERT INTO `k_location` VALUES ('1727', '金水区', '185', '2', '0');
INSERT INTO `k_location` VALUES ('1728', '上街区', '185', '2', '0');
INSERT INTO `k_location` VALUES ('1729', '惠济区', '185', '2', '0');
INSERT INTO `k_location` VALUES ('1730', '中牟县', '185', '2', '0');
INSERT INTO `k_location` VALUES ('1731', '巩义市', '185', '2', '0');
INSERT INTO `k_location` VALUES ('1732', '荥阳市', '185', '2', '0');
INSERT INTO `k_location` VALUES ('1733', '新密市', '185', '2', '0');
INSERT INTO `k_location` VALUES ('1734', '新郑市', '185', '2', '0');
INSERT INTO `k_location` VALUES ('1735', '登封市', '185', '2', '0');
INSERT INTO `k_location` VALUES ('1736', '龙亭区', '186', '2', '0');
INSERT INTO `k_location` VALUES ('1737', '顺河回族区', '186', '2', '0');
INSERT INTO `k_location` VALUES ('1738', '鼓楼区', '186', '2', '0');
INSERT INTO `k_location` VALUES ('1739', '禹王台区', '186', '2', '0');
INSERT INTO `k_location` VALUES ('1740', '金明区', '186', '2', '0');
INSERT INTO `k_location` VALUES ('1741', '杞县', '186', '2', '0');
INSERT INTO `k_location` VALUES ('1742', '通许县', '186', '2', '0');
INSERT INTO `k_location` VALUES ('1743', '尉氏县', '186', '2', '0');
INSERT INTO `k_location` VALUES ('1744', '开封县', '186', '2', '0');
INSERT INTO `k_location` VALUES ('1745', '兰考县', '186', '2', '0');
INSERT INTO `k_location` VALUES ('1746', '老城区', '187', '2', '0');
INSERT INTO `k_location` VALUES ('1747', '西工区', '187', '2', '0');
INSERT INTO `k_location` VALUES ('1748', '瀍河回族区', '187', '2', '0');
INSERT INTO `k_location` VALUES ('1749', '涧西区', '187', '2', '0');
INSERT INTO `k_location` VALUES ('1750', '吉利区', '187', '2', '0');
INSERT INTO `k_location` VALUES ('1751', '洛龙区', '187', '2', '0');
INSERT INTO `k_location` VALUES ('1752', '孟津县', '187', '2', '0');
INSERT INTO `k_location` VALUES ('1753', '新安县', '187', '2', '0');
INSERT INTO `k_location` VALUES ('1754', '栾川县', '187', '2', '0');
INSERT INTO `k_location` VALUES ('1755', '嵩县', '187', '2', '0');
INSERT INTO `k_location` VALUES ('1756', '汝阳县', '187', '2', '0');
INSERT INTO `k_location` VALUES ('1757', '宜阳县', '187', '2', '0');
INSERT INTO `k_location` VALUES ('1758', '洛宁县', '187', '2', '0');
INSERT INTO `k_location` VALUES ('1759', '伊川县', '187', '2', '0');
INSERT INTO `k_location` VALUES ('1760', '偃师市', '187', '2', '0');
INSERT INTO `k_location` VALUES ('1761', '新华区', '188', '2', '0');
INSERT INTO `k_location` VALUES ('1762', '卫东区', '188', '2', '0');
INSERT INTO `k_location` VALUES ('1763', '石龙区', '188', '2', '0');
INSERT INTO `k_location` VALUES ('1764', '湛河区', '188', '2', '0');
INSERT INTO `k_location` VALUES ('1765', '宝丰县', '188', '2', '0');
INSERT INTO `k_location` VALUES ('1766', '叶县', '188', '2', '0');
INSERT INTO `k_location` VALUES ('1767', '鲁山县', '188', '2', '0');
INSERT INTO `k_location` VALUES ('1768', '郏县', '188', '2', '0');
INSERT INTO `k_location` VALUES ('1769', '舞钢市', '188', '2', '0');
INSERT INTO `k_location` VALUES ('1770', '汝州市', '188', '2', '0');
INSERT INTO `k_location` VALUES ('1771', '文峰区', '189', '2', '0');
INSERT INTO `k_location` VALUES ('1772', '北关区', '189', '2', '0');
INSERT INTO `k_location` VALUES ('1773', '殷都区', '189', '2', '0');
INSERT INTO `k_location` VALUES ('1774', '龙安区', '189', '2', '0');
INSERT INTO `k_location` VALUES ('1775', '安阳县', '189', '2', '0');
INSERT INTO `k_location` VALUES ('1776', '汤阴县', '189', '2', '0');
INSERT INTO `k_location` VALUES ('1777', '滑县', '189', '2', '0');
INSERT INTO `k_location` VALUES ('1778', '内黄县', '189', '2', '0');
INSERT INTO `k_location` VALUES ('1779', '林州市', '189', '2', '0');
INSERT INTO `k_location` VALUES ('1780', '鹤山区', '190', '2', '0');
INSERT INTO `k_location` VALUES ('1781', '山城区', '190', '2', '0');
INSERT INTO `k_location` VALUES ('1782', '淇滨区', '190', '2', '0');
INSERT INTO `k_location` VALUES ('1783', '浚县', '190', '2', '0');
INSERT INTO `k_location` VALUES ('1784', '淇县', '190', '2', '0');
INSERT INTO `k_location` VALUES ('1785', '红旗区', '191', '2', '0');
INSERT INTO `k_location` VALUES ('1786', '卫滨区', '191', '2', '0');
INSERT INTO `k_location` VALUES ('1787', '凤泉区', '191', '2', '0');
INSERT INTO `k_location` VALUES ('1788', '牧野区', '191', '2', '0');
INSERT INTO `k_location` VALUES ('1789', '新乡县', '191', '2', '0');
INSERT INTO `k_location` VALUES ('1790', '获嘉县', '191', '2', '0');
INSERT INTO `k_location` VALUES ('1791', '原阳县', '191', '2', '0');
INSERT INTO `k_location` VALUES ('1792', '延津县', '191', '2', '0');
INSERT INTO `k_location` VALUES ('1793', '封丘县', '191', '2', '0');
INSERT INTO `k_location` VALUES ('1794', '长垣县', '191', '2', '0');
INSERT INTO `k_location` VALUES ('1795', '卫辉市', '191', '2', '0');
INSERT INTO `k_location` VALUES ('1796', '辉县市', '191', '2', '0');
INSERT INTO `k_location` VALUES ('1797', '解放区', '192', '2', '0');
INSERT INTO `k_location` VALUES ('1798', '中站区', '192', '2', '0');
INSERT INTO `k_location` VALUES ('1799', '马村区', '192', '2', '0');
INSERT INTO `k_location` VALUES ('1800', '山阳区', '192', '2', '0');
INSERT INTO `k_location` VALUES ('1801', '修武县', '192', '2', '0');
INSERT INTO `k_location` VALUES ('1802', '博爱县', '192', '2', '0');
INSERT INTO `k_location` VALUES ('1803', '武陟县', '192', '2', '0');
INSERT INTO `k_location` VALUES ('1804', '温县', '192', '2', '0');
INSERT INTO `k_location` VALUES ('1805', '沁阳市', '192', '2', '0');
INSERT INTO `k_location` VALUES ('1806', '孟州市', '192', '2', '0');
INSERT INTO `k_location` VALUES ('1807', '华龙区', '193', '2', '0');
INSERT INTO `k_location` VALUES ('1808', '清丰县', '193', '2', '0');
INSERT INTO `k_location` VALUES ('1809', '南乐县', '193', '2', '0');
INSERT INTO `k_location` VALUES ('1810', '范县', '193', '2', '0');
INSERT INTO `k_location` VALUES ('1811', '台前县', '193', '2', '0');
INSERT INTO `k_location` VALUES ('1812', '濮阳县', '193', '2', '0');
INSERT INTO `k_location` VALUES ('1813', '魏都区', '194', '2', '0');
INSERT INTO `k_location` VALUES ('1814', '许昌县', '194', '2', '0');
INSERT INTO `k_location` VALUES ('1815', '鄢陵县', '194', '2', '0');
INSERT INTO `k_location` VALUES ('1816', '襄城县', '194', '2', '0');
INSERT INTO `k_location` VALUES ('1817', '禹州市', '194', '2', '0');
INSERT INTO `k_location` VALUES ('1818', '长葛市', '194', '2', '0');
INSERT INTO `k_location` VALUES ('1819', '源汇区', '195', '2', '0');
INSERT INTO `k_location` VALUES ('1820', '郾城区', '195', '2', '0');
INSERT INTO `k_location` VALUES ('1821', '召陵区', '195', '2', '0');
INSERT INTO `k_location` VALUES ('1822', '舞阳县', '195', '2', '0');
INSERT INTO `k_location` VALUES ('1823', '临颍县', '195', '2', '0');
INSERT INTO `k_location` VALUES ('1824', '湖滨区', '196', '2', '0');
INSERT INTO `k_location` VALUES ('1825', '渑池县', '196', '2', '0');
INSERT INTO `k_location` VALUES ('1826', '陕县', '196', '2', '0');
INSERT INTO `k_location` VALUES ('1827', '卢氏县', '196', '2', '0');
INSERT INTO `k_location` VALUES ('1828', '义马市', '196', '2', '0');
INSERT INTO `k_location` VALUES ('1829', '灵宝市', '196', '2', '0');
INSERT INTO `k_location` VALUES ('1830', '宛城区', '197', '2', '0');
INSERT INTO `k_location` VALUES ('1831', '卧龙区', '197', '2', '0');
INSERT INTO `k_location` VALUES ('1832', '南召县', '197', '2', '0');
INSERT INTO `k_location` VALUES ('1833', '方城县', '197', '2', '0');
INSERT INTO `k_location` VALUES ('1834', '西峡县', '197', '2', '0');
INSERT INTO `k_location` VALUES ('1835', '镇平县', '197', '2', '0');
INSERT INTO `k_location` VALUES ('1836', '内乡县', '197', '2', '0');
INSERT INTO `k_location` VALUES ('1837', '淅川县', '197', '2', '0');
INSERT INTO `k_location` VALUES ('1838', '社旗县', '197', '2', '0');
INSERT INTO `k_location` VALUES ('1839', '唐河县', '197', '2', '0');
INSERT INTO `k_location` VALUES ('1840', '新野县', '197', '2', '0');
INSERT INTO `k_location` VALUES ('1841', '桐柏县', '197', '2', '0');
INSERT INTO `k_location` VALUES ('1842', '邓州市', '197', '2', '0');
INSERT INTO `k_location` VALUES ('1843', '梁园区', '198', '2', '0');
INSERT INTO `k_location` VALUES ('1844', '睢阳区', '198', '2', '0');
INSERT INTO `k_location` VALUES ('1845', '民权县', '198', '2', '0');
INSERT INTO `k_location` VALUES ('1846', '睢县', '198', '2', '0');
INSERT INTO `k_location` VALUES ('1847', '宁陵县', '198', '2', '0');
INSERT INTO `k_location` VALUES ('1848', '柘城县', '198', '2', '0');
INSERT INTO `k_location` VALUES ('1849', '虞城县', '198', '2', '0');
INSERT INTO `k_location` VALUES ('1850', '夏邑县', '198', '2', '0');
INSERT INTO `k_location` VALUES ('1851', '永城市', '198', '2', '0');
INSERT INTO `k_location` VALUES ('1852', '浉河区', '199', '2', '0');
INSERT INTO `k_location` VALUES ('1853', '平桥区', '199', '2', '0');
INSERT INTO `k_location` VALUES ('1854', '罗山县', '199', '2', '0');
INSERT INTO `k_location` VALUES ('1855', '光山县', '199', '2', '0');
INSERT INTO `k_location` VALUES ('1856', '新县', '199', '2', '0');
INSERT INTO `k_location` VALUES ('1857', '商城县', '199', '2', '0');
INSERT INTO `k_location` VALUES ('1858', '固始县', '199', '2', '0');
INSERT INTO `k_location` VALUES ('1859', '潢川县', '199', '2', '0');
INSERT INTO `k_location` VALUES ('1860', '淮滨县', '199', '2', '0');
INSERT INTO `k_location` VALUES ('1861', '息县', '199', '2', '0');
INSERT INTO `k_location` VALUES ('1862', '川汇区', '200', '2', '0');
INSERT INTO `k_location` VALUES ('1863', '扶沟县', '200', '2', '0');
INSERT INTO `k_location` VALUES ('1864', '西华县', '200', '2', '0');
INSERT INTO `k_location` VALUES ('1865', '商水县', '200', '2', '0');
INSERT INTO `k_location` VALUES ('1866', '沈丘县', '200', '2', '0');
INSERT INTO `k_location` VALUES ('1867', '郸城县', '200', '2', '0');
INSERT INTO `k_location` VALUES ('1868', '淮阳县', '200', '2', '0');
INSERT INTO `k_location` VALUES ('1869', '太康县', '200', '2', '0');
INSERT INTO `k_location` VALUES ('1870', '鹿邑县', '200', '2', '0');
INSERT INTO `k_location` VALUES ('1871', '项城市', '200', '2', '0');
INSERT INTO `k_location` VALUES ('1872', '驿城区', '201', '2', '0');
INSERT INTO `k_location` VALUES ('1873', '西平县', '201', '2', '0');
INSERT INTO `k_location` VALUES ('1874', '上蔡县', '201', '2', '0');
INSERT INTO `k_location` VALUES ('1875', '平舆县', '201', '2', '0');
INSERT INTO `k_location` VALUES ('1876', '正阳县', '201', '2', '0');
INSERT INTO `k_location` VALUES ('1877', '确山县', '201', '2', '0');
INSERT INTO `k_location` VALUES ('1878', '泌阳县', '201', '2', '0');
INSERT INTO `k_location` VALUES ('1879', '汝南县', '201', '2', '0');
INSERT INTO `k_location` VALUES ('1880', '遂平县', '201', '2', '0');
INSERT INTO `k_location` VALUES ('1881', '新蔡县', '201', '2', '0');
INSERT INTO `k_location` VALUES ('1882', '济源市', '202', '2', '0');
INSERT INTO `k_location` VALUES ('1883', '江岸区', '203', '2', '0');
INSERT INTO `k_location` VALUES ('1884', '江汉区', '203', '2', '0');
INSERT INTO `k_location` VALUES ('1885', '硚口区', '203', '2', '0');
INSERT INTO `k_location` VALUES ('1886', '汉阳区', '203', '2', '0');
INSERT INTO `k_location` VALUES ('1887', '武昌区', '203', '2', '0');
INSERT INTO `k_location` VALUES ('1888', '青山区', '203', '2', '0');
INSERT INTO `k_location` VALUES ('1889', '洪山区', '203', '2', '0');
INSERT INTO `k_location` VALUES ('1890', '东西湖区', '203', '2', '0');
INSERT INTO `k_location` VALUES ('1891', '汉南区', '203', '2', '0');
INSERT INTO `k_location` VALUES ('1892', '蔡甸区', '203', '2', '0');
INSERT INTO `k_location` VALUES ('1893', '江夏区', '203', '2', '0');
INSERT INTO `k_location` VALUES ('1894', '黄陂区', '203', '2', '0');
INSERT INTO `k_location` VALUES ('1895', '新洲区', '203', '2', '0');
INSERT INTO `k_location` VALUES ('1896', '黄石港区', '204', '2', '0');
INSERT INTO `k_location` VALUES ('1897', '西塞山区', '204', '2', '0');
INSERT INTO `k_location` VALUES ('1898', '下陆区', '204', '2', '0');
INSERT INTO `k_location` VALUES ('1899', '铁山区', '204', '2', '0');
INSERT INTO `k_location` VALUES ('1900', '阳新县', '204', '2', '0');
INSERT INTO `k_location` VALUES ('1901', '大冶市', '204', '2', '0');
INSERT INTO `k_location` VALUES ('1902', '茅箭区', '205', '2', '0');
INSERT INTO `k_location` VALUES ('1903', '张湾区', '205', '2', '0');
INSERT INTO `k_location` VALUES ('1904', '郧阳区', '205', '2', '0');
INSERT INTO `k_location` VALUES ('1905', '郧西县', '205', '2', '0');
INSERT INTO `k_location` VALUES ('1906', '竹山县', '205', '2', '0');
INSERT INTO `k_location` VALUES ('1907', '竹溪县', '205', '2', '0');
INSERT INTO `k_location` VALUES ('1908', '房县', '205', '2', '0');
INSERT INTO `k_location` VALUES ('1909', '丹江口市', '205', '2', '0');
INSERT INTO `k_location` VALUES ('1910', '西陵区', '206', '2', '0');
INSERT INTO `k_location` VALUES ('1911', '伍家岗区', '206', '2', '0');
INSERT INTO `k_location` VALUES ('1912', '点军区', '206', '2', '0');
INSERT INTO `k_location` VALUES ('1913', '猇亭区', '206', '2', '0');
INSERT INTO `k_location` VALUES ('1914', '夷陵区', '206', '2', '0');
INSERT INTO `k_location` VALUES ('1915', '远安县', '206', '2', '0');
INSERT INTO `k_location` VALUES ('1916', '兴山县', '206', '2', '0');
INSERT INTO `k_location` VALUES ('1917', '秭归县', '206', '2', '0');
INSERT INTO `k_location` VALUES ('1918', '长阳土家族自治县', '206', '2', '0');
INSERT INTO `k_location` VALUES ('1919', '五峰土家族自治县', '206', '2', '0');
INSERT INTO `k_location` VALUES ('1920', '宜都市', '206', '2', '0');
INSERT INTO `k_location` VALUES ('1921', '当阳市', '206', '2', '0');
INSERT INTO `k_location` VALUES ('1922', '枝江市', '206', '2', '0');
INSERT INTO `k_location` VALUES ('1923', '襄城区', '207', '2', '0');
INSERT INTO `k_location` VALUES ('1924', '樊城区', '207', '2', '0');
INSERT INTO `k_location` VALUES ('1925', '襄州区', '207', '2', '0');
INSERT INTO `k_location` VALUES ('1926', '南漳县', '207', '2', '0');
INSERT INTO `k_location` VALUES ('1927', '谷城县', '207', '2', '0');
INSERT INTO `k_location` VALUES ('1928', '保康县', '207', '2', '0');
INSERT INTO `k_location` VALUES ('1929', '老河口市', '207', '2', '0');
INSERT INTO `k_location` VALUES ('1930', '枣阳市', '207', '2', '0');
INSERT INTO `k_location` VALUES ('1931', '宜城市', '207', '2', '0');
INSERT INTO `k_location` VALUES ('1932', '梁子湖区', '208', '2', '0');
INSERT INTO `k_location` VALUES ('1933', '华容区', '208', '2', '0');
INSERT INTO `k_location` VALUES ('1934', '鄂城区', '208', '2', '0');
INSERT INTO `k_location` VALUES ('1935', '东宝区', '209', '2', '0');
INSERT INTO `k_location` VALUES ('1936', '掇刀区', '209', '2', '0');
INSERT INTO `k_location` VALUES ('1937', '京山县', '209', '2', '0');
INSERT INTO `k_location` VALUES ('1938', '沙洋县', '209', '2', '0');
INSERT INTO `k_location` VALUES ('1939', '钟祥市', '209', '2', '0');
INSERT INTO `k_location` VALUES ('1940', '孝南区', '210', '2', '0');
INSERT INTO `k_location` VALUES ('1941', '孝昌县', '210', '2', '0');
INSERT INTO `k_location` VALUES ('1942', '大悟县', '210', '2', '0');
INSERT INTO `k_location` VALUES ('1943', '云梦县', '210', '2', '0');
INSERT INTO `k_location` VALUES ('1944', '应城市', '210', '2', '0');
INSERT INTO `k_location` VALUES ('1945', '安陆市', '210', '2', '0');
INSERT INTO `k_location` VALUES ('1946', '汉川市', '210', '2', '0');
INSERT INTO `k_location` VALUES ('1947', '沙市区', '211', '2', '0');
INSERT INTO `k_location` VALUES ('1948', '荆州区', '211', '2', '0');
INSERT INTO `k_location` VALUES ('1949', '公安县', '211', '2', '0');
INSERT INTO `k_location` VALUES ('1950', '监利县', '211', '2', '0');
INSERT INTO `k_location` VALUES ('1951', '江陵县', '211', '2', '0');
INSERT INTO `k_location` VALUES ('1952', '石首市', '211', '2', '0');
INSERT INTO `k_location` VALUES ('1953', '洪湖市', '211', '2', '0');
INSERT INTO `k_location` VALUES ('1954', '松滋市', '211', '2', '0');
INSERT INTO `k_location` VALUES ('1955', '黄州区', '212', '2', '0');
INSERT INTO `k_location` VALUES ('1956', '团风县', '212', '2', '0');
INSERT INTO `k_location` VALUES ('1957', '红安县', '212', '2', '0');
INSERT INTO `k_location` VALUES ('1958', '罗田县', '212', '2', '0');
INSERT INTO `k_location` VALUES ('1959', '英山县', '212', '2', '0');
INSERT INTO `k_location` VALUES ('1960', '浠水县', '212', '2', '0');
INSERT INTO `k_location` VALUES ('1961', '蕲春县', '212', '2', '0');
INSERT INTO `k_location` VALUES ('1962', '黄梅县', '212', '2', '0');
INSERT INTO `k_location` VALUES ('1963', '麻城市', '212', '2', '0');
INSERT INTO `k_location` VALUES ('1964', '武穴市', '212', '2', '0');
INSERT INTO `k_location` VALUES ('1965', '咸安区', '213', '2', '0');
INSERT INTO `k_location` VALUES ('1966', '嘉鱼县', '213', '2', '0');
INSERT INTO `k_location` VALUES ('1967', '通城县', '213', '2', '0');
INSERT INTO `k_location` VALUES ('1968', '崇阳县', '213', '2', '0');
INSERT INTO `k_location` VALUES ('1969', '通山县', '213', '2', '0');
INSERT INTO `k_location` VALUES ('1970', '赤壁市', '213', '2', '0');
INSERT INTO `k_location` VALUES ('1971', '曾都区', '214', '2', '0');
INSERT INTO `k_location` VALUES ('1972', '随县', '214', '2', '0');
INSERT INTO `k_location` VALUES ('1973', '广水市', '214', '2', '0');
INSERT INTO `k_location` VALUES ('1974', '恩施市', '215', '2', '0');
INSERT INTO `k_location` VALUES ('1975', '利川市', '215', '2', '0');
INSERT INTO `k_location` VALUES ('1976', '建始县', '215', '2', '0');
INSERT INTO `k_location` VALUES ('1977', '巴东县', '215', '2', '0');
INSERT INTO `k_location` VALUES ('1978', '宣恩县', '215', '2', '0');
INSERT INTO `k_location` VALUES ('1979', '咸丰县', '215', '2', '0');
INSERT INTO `k_location` VALUES ('1980', '来凤县', '215', '2', '0');
INSERT INTO `k_location` VALUES ('1981', '鹤峰县', '215', '2', '0');
INSERT INTO `k_location` VALUES ('1982', '仙桃市', '216', '2', '0');
INSERT INTO `k_location` VALUES ('1983', '潜江市', '216', '2', '0');
INSERT INTO `k_location` VALUES ('1984', '天门市', '216', '2', '0');
INSERT INTO `k_location` VALUES ('1985', '神农架林区', '216', '2', '0');
INSERT INTO `k_location` VALUES ('1986', '芙蓉区', '217', '2', '0');
INSERT INTO `k_location` VALUES ('1987', '天心区', '217', '2', '0');
INSERT INTO `k_location` VALUES ('1988', '岳麓区', '217', '2', '0');
INSERT INTO `k_location` VALUES ('1989', '开福区', '217', '2', '0');
INSERT INTO `k_location` VALUES ('1990', '雨花区', '217', '2', '0');
INSERT INTO `k_location` VALUES ('1991', '望城区', '217', '2', '0');
INSERT INTO `k_location` VALUES ('1992', '长沙县', '217', '2', '0');
INSERT INTO `k_location` VALUES ('1993', '宁乡县', '217', '2', '0');
INSERT INTO `k_location` VALUES ('1994', '浏阳市', '217', '2', '0');
INSERT INTO `k_location` VALUES ('1995', '荷塘区', '218', '2', '0');
INSERT INTO `k_location` VALUES ('1996', '芦淞区', '218', '2', '0');
INSERT INTO `k_location` VALUES ('1997', '石峰区', '218', '2', '0');
INSERT INTO `k_location` VALUES ('1998', '天元区', '218', '2', '0');
INSERT INTO `k_location` VALUES ('1999', '株洲县', '218', '2', '0');
INSERT INTO `k_location` VALUES ('2000', '攸县', '218', '2', '0');
INSERT INTO `k_location` VALUES ('2001', '茶陵县', '218', '2', '0');
INSERT INTO `k_location` VALUES ('2002', '炎陵县', '218', '2', '0');
INSERT INTO `k_location` VALUES ('2003', '醴陵市', '218', '2', '0');
INSERT INTO `k_location` VALUES ('2004', '雨湖区', '219', '2', '0');
INSERT INTO `k_location` VALUES ('2005', '岳塘区', '219', '2', '0');
INSERT INTO `k_location` VALUES ('2006', '湘潭县', '219', '2', '0');
INSERT INTO `k_location` VALUES ('2007', '湘乡市', '219', '2', '0');
INSERT INTO `k_location` VALUES ('2008', '韶山市', '219', '2', '0');
INSERT INTO `k_location` VALUES ('2009', '珠晖区', '220', '2', '0');
INSERT INTO `k_location` VALUES ('2010', '雁峰区', '220', '2', '0');
INSERT INTO `k_location` VALUES ('2011', '石鼓区', '220', '2', '0');
INSERT INTO `k_location` VALUES ('2012', '蒸湘区', '220', '2', '0');
INSERT INTO `k_location` VALUES ('2013', '南岳区', '220', '2', '0');
INSERT INTO `k_location` VALUES ('2014', '衡阳县', '220', '2', '0');
INSERT INTO `k_location` VALUES ('2015', '衡南县', '220', '2', '0');
INSERT INTO `k_location` VALUES ('2016', '衡山县', '220', '2', '0');
INSERT INTO `k_location` VALUES ('2017', '衡东县', '220', '2', '0');
INSERT INTO `k_location` VALUES ('2018', '祁东县', '220', '2', '0');
INSERT INTO `k_location` VALUES ('2019', '耒阳市', '220', '2', '0');
INSERT INTO `k_location` VALUES ('2020', '常宁市', '220', '2', '0');
INSERT INTO `k_location` VALUES ('2021', '双清区', '221', '2', '0');
INSERT INTO `k_location` VALUES ('2022', '大祥区', '221', '2', '0');
INSERT INTO `k_location` VALUES ('2023', '北塔区', '221', '2', '0');
INSERT INTO `k_location` VALUES ('2024', '邵东县', '221', '2', '0');
INSERT INTO `k_location` VALUES ('2025', '新邵县', '221', '2', '0');
INSERT INTO `k_location` VALUES ('2026', '邵阳县', '221', '2', '0');
INSERT INTO `k_location` VALUES ('2027', '隆回县', '221', '2', '0');
INSERT INTO `k_location` VALUES ('2028', '洞口县', '221', '2', '0');
INSERT INTO `k_location` VALUES ('2029', '绥宁县', '221', '2', '0');
INSERT INTO `k_location` VALUES ('2030', '新宁县', '221', '2', '0');
INSERT INTO `k_location` VALUES ('2031', '城步苗族自治县', '221', '2', '0');
INSERT INTO `k_location` VALUES ('2032', '武冈市', '221', '2', '0');
INSERT INTO `k_location` VALUES ('2033', '岳阳楼区', '222', '2', '0');
INSERT INTO `k_location` VALUES ('2034', '云溪区', '222', '2', '0');
INSERT INTO `k_location` VALUES ('2035', '君山区', '222', '2', '0');
INSERT INTO `k_location` VALUES ('2036', '岳阳县', '222', '2', '0');
INSERT INTO `k_location` VALUES ('2037', '华容县', '222', '2', '0');
INSERT INTO `k_location` VALUES ('2038', '湘阴县', '222', '2', '0');
INSERT INTO `k_location` VALUES ('2039', '平江县', '222', '2', '0');
INSERT INTO `k_location` VALUES ('2040', '汨罗市', '222', '2', '0');
INSERT INTO `k_location` VALUES ('2041', '临湘市', '222', '2', '0');
INSERT INTO `k_location` VALUES ('2042', '武陵区', '223', '2', '0');
INSERT INTO `k_location` VALUES ('2043', '鼎城区', '223', '2', '0');
INSERT INTO `k_location` VALUES ('2044', '安乡县', '223', '2', '0');
INSERT INTO `k_location` VALUES ('2045', '汉寿县', '223', '2', '0');
INSERT INTO `k_location` VALUES ('2046', '澧县', '223', '2', '0');
INSERT INTO `k_location` VALUES ('2047', '临澧县', '223', '2', '0');
INSERT INTO `k_location` VALUES ('2048', '桃源县', '223', '2', '0');
INSERT INTO `k_location` VALUES ('2049', '石门县', '223', '2', '0');
INSERT INTO `k_location` VALUES ('2050', '津市市', '223', '2', '0');
INSERT INTO `k_location` VALUES ('2051', '永定区', '224', '2', '0');
INSERT INTO `k_location` VALUES ('2052', '武陵源区', '224', '2', '0');
INSERT INTO `k_location` VALUES ('2053', '慈利县', '224', '2', '0');
INSERT INTO `k_location` VALUES ('2054', '桑植县', '224', '2', '0');
INSERT INTO `k_location` VALUES ('2055', '资阳区', '225', '2', '0');
INSERT INTO `k_location` VALUES ('2056', '赫山区', '225', '2', '0');
INSERT INTO `k_location` VALUES ('2057', '南县', '225', '2', '0');
INSERT INTO `k_location` VALUES ('2058', '桃江县', '225', '2', '0');
INSERT INTO `k_location` VALUES ('2059', '安化县', '225', '2', '0');
INSERT INTO `k_location` VALUES ('2060', '沅江市', '225', '2', '0');
INSERT INTO `k_location` VALUES ('2061', '北湖区', '226', '2', '0');
INSERT INTO `k_location` VALUES ('2062', '苏仙区', '226', '2', '0');
INSERT INTO `k_location` VALUES ('2063', '桂阳县', '226', '2', '0');
INSERT INTO `k_location` VALUES ('2064', '宜章县', '226', '2', '0');
INSERT INTO `k_location` VALUES ('2065', '永兴县', '226', '2', '0');
INSERT INTO `k_location` VALUES ('2066', '嘉禾县', '226', '2', '0');
INSERT INTO `k_location` VALUES ('2067', '临武县', '226', '2', '0');
INSERT INTO `k_location` VALUES ('2068', '汝城县', '226', '2', '0');
INSERT INTO `k_location` VALUES ('2069', '桂东县', '226', '2', '0');
INSERT INTO `k_location` VALUES ('2070', '安仁县', '226', '2', '0');
INSERT INTO `k_location` VALUES ('2071', '资兴市', '226', '2', '0');
INSERT INTO `k_location` VALUES ('2072', '零陵区', '227', '2', '0');
INSERT INTO `k_location` VALUES ('2073', '冷水滩区', '227', '2', '0');
INSERT INTO `k_location` VALUES ('2074', '祁阳县', '227', '2', '0');
INSERT INTO `k_location` VALUES ('2075', '东安县', '227', '2', '0');
INSERT INTO `k_location` VALUES ('2076', '双牌县', '227', '2', '0');
INSERT INTO `k_location` VALUES ('2077', '道县', '227', '2', '0');
INSERT INTO `k_location` VALUES ('2078', '江永县', '227', '2', '0');
INSERT INTO `k_location` VALUES ('2079', '宁远县', '227', '2', '0');
INSERT INTO `k_location` VALUES ('2080', '蓝山县', '227', '2', '0');
INSERT INTO `k_location` VALUES ('2081', '新田县', '227', '2', '0');
INSERT INTO `k_location` VALUES ('2082', '江华瑶族自治县', '227', '2', '0');
INSERT INTO `k_location` VALUES ('2083', '鹤城区', '228', '2', '0');
INSERT INTO `k_location` VALUES ('2084', '中方县', '228', '2', '0');
INSERT INTO `k_location` VALUES ('2085', '沅陵县', '228', '2', '0');
INSERT INTO `k_location` VALUES ('2086', '辰溪县', '228', '2', '0');
INSERT INTO `k_location` VALUES ('2087', '溆浦县', '228', '2', '0');
INSERT INTO `k_location` VALUES ('2088', '会同县', '228', '2', '0');
INSERT INTO `k_location` VALUES ('2089', '麻阳苗族自治县', '228', '2', '0');
INSERT INTO `k_location` VALUES ('2090', '新晃侗族自治县', '228', '2', '0');
INSERT INTO `k_location` VALUES ('2091', '芷江侗族自治县', '228', '2', '0');
INSERT INTO `k_location` VALUES ('2092', '靖州苗族侗族自治县', '228', '2', '0');
INSERT INTO `k_location` VALUES ('2093', '通道侗族自治县', '228', '2', '0');
INSERT INTO `k_location` VALUES ('2094', '洪江市', '228', '2', '0');
INSERT INTO `k_location` VALUES ('2095', '娄星区', '229', '2', '0');
INSERT INTO `k_location` VALUES ('2096', '双峰县', '229', '2', '0');
INSERT INTO `k_location` VALUES ('2097', '新化县', '229', '2', '0');
INSERT INTO `k_location` VALUES ('2098', '冷水江市', '229', '2', '0');
INSERT INTO `k_location` VALUES ('2099', '涟源市', '229', '2', '0');
INSERT INTO `k_location` VALUES ('2100', '吉首市', '230', '2', '0');
INSERT INTO `k_location` VALUES ('2101', '泸溪县', '230', '2', '0');
INSERT INTO `k_location` VALUES ('2102', '凤凰县', '230', '2', '0');
INSERT INTO `k_location` VALUES ('2103', '花垣县', '230', '2', '0');
INSERT INTO `k_location` VALUES ('2104', '保靖县', '230', '2', '0');
INSERT INTO `k_location` VALUES ('2105', '古丈县', '230', '2', '0');
INSERT INTO `k_location` VALUES ('2106', '永顺县', '230', '2', '0');
INSERT INTO `k_location` VALUES ('2107', '龙山县', '230', '2', '0');
INSERT INTO `k_location` VALUES ('2108', '荔湾区', '231', '2', '0');
INSERT INTO `k_location` VALUES ('2109', '越秀区', '231', '2', '0');
INSERT INTO `k_location` VALUES ('2110', '海珠区', '231', '2', '0');
INSERT INTO `k_location` VALUES ('2111', '天河区', '231', '2', '0');
INSERT INTO `k_location` VALUES ('2112', '白云区', '231', '2', '0');
INSERT INTO `k_location` VALUES ('2113', '黄埔区', '231', '2', '0');
INSERT INTO `k_location` VALUES ('2114', '番禺区', '231', '2', '0');
INSERT INTO `k_location` VALUES ('2115', '花都区', '231', '2', '0');
INSERT INTO `k_location` VALUES ('2116', '南沙区', '231', '2', '0');
INSERT INTO `k_location` VALUES ('2117', '萝岗区', '231', '2', '0');
INSERT INTO `k_location` VALUES ('2118', '从化区', '231', '2', '0');
INSERT INTO `k_location` VALUES ('2119', '增城区', '231', '2', '0');
INSERT INTO `k_location` VALUES ('2120', '武江区', '232', '2', '0');
INSERT INTO `k_location` VALUES ('2121', '浈江区', '232', '2', '0');
INSERT INTO `k_location` VALUES ('2122', '曲江区', '232', '2', '0');
INSERT INTO `k_location` VALUES ('2123', '始兴县', '232', '2', '0');
INSERT INTO `k_location` VALUES ('2124', '仁化县', '232', '2', '0');
INSERT INTO `k_location` VALUES ('2125', '翁源县', '232', '2', '0');
INSERT INTO `k_location` VALUES ('2126', '乳源瑶族自治县', '232', '2', '0');
INSERT INTO `k_location` VALUES ('2127', '新丰县', '232', '2', '0');
INSERT INTO `k_location` VALUES ('2128', '乐昌市', '232', '2', '0');
INSERT INTO `k_location` VALUES ('2129', '南雄市', '232', '2', '0');
INSERT INTO `k_location` VALUES ('2130', '罗湖区', '233', '2', '0');
INSERT INTO `k_location` VALUES ('2131', '福田区', '233', '2', '0');
INSERT INTO `k_location` VALUES ('2132', '南山区', '233', '2', '0');
INSERT INTO `k_location` VALUES ('2133', '宝安区', '233', '2', '0');
INSERT INTO `k_location` VALUES ('2134', '龙岗区', '233', '2', '0');
INSERT INTO `k_location` VALUES ('2135', '盐田区', '233', '2', '0');
INSERT INTO `k_location` VALUES ('2136', '香洲区', '234', '2', '0');
INSERT INTO `k_location` VALUES ('2137', '斗门区', '234', '2', '0');
INSERT INTO `k_location` VALUES ('2138', '金湾区', '234', '2', '0');
INSERT INTO `k_location` VALUES ('2139', '龙湖区', '235', '2', '0');
INSERT INTO `k_location` VALUES ('2140', '金平区', '235', '2', '0');
INSERT INTO `k_location` VALUES ('2141', '濠江区', '235', '2', '0');
INSERT INTO `k_location` VALUES ('2142', '潮阳区', '235', '2', '0');
INSERT INTO `k_location` VALUES ('2143', '潮南区', '235', '2', '0');
INSERT INTO `k_location` VALUES ('2144', '澄海区', '235', '2', '0');
INSERT INTO `k_location` VALUES ('2145', '南澳县', '235', '2', '0');
INSERT INTO `k_location` VALUES ('2146', '禅城区', '236', '2', '0');
INSERT INTO `k_location` VALUES ('2147', '南海区', '236', '2', '0');
INSERT INTO `k_location` VALUES ('2148', '顺德区', '236', '2', '0');
INSERT INTO `k_location` VALUES ('2149', '三水区', '236', '2', '0');
INSERT INTO `k_location` VALUES ('2150', '高明区', '236', '2', '0');
INSERT INTO `k_location` VALUES ('2151', '蓬江区', '237', '2', '0');
INSERT INTO `k_location` VALUES ('2152', '江海区', '237', '2', '0');
INSERT INTO `k_location` VALUES ('2153', '新会区', '237', '2', '0');
INSERT INTO `k_location` VALUES ('2154', '台山市', '237', '2', '0');
INSERT INTO `k_location` VALUES ('2155', '开平市', '237', '2', '0');
INSERT INTO `k_location` VALUES ('2156', '鹤山市', '237', '2', '0');
INSERT INTO `k_location` VALUES ('2157', '恩平市', '237', '2', '0');
INSERT INTO `k_location` VALUES ('2158', '赤坎区', '238', '2', '0');
INSERT INTO `k_location` VALUES ('2159', '霞山区', '238', '2', '0');
INSERT INTO `k_location` VALUES ('2160', '坡头区', '238', '2', '0');
INSERT INTO `k_location` VALUES ('2161', '麻章区', '238', '2', '0');
INSERT INTO `k_location` VALUES ('2162', '遂溪县', '238', '2', '0');
INSERT INTO `k_location` VALUES ('2163', '徐闻县', '238', '2', '0');
INSERT INTO `k_location` VALUES ('2164', '廉江市', '238', '2', '0');
INSERT INTO `k_location` VALUES ('2165', '雷州市', '238', '2', '0');
INSERT INTO `k_location` VALUES ('2166', '吴川市', '238', '2', '0');
INSERT INTO `k_location` VALUES ('2167', '茂南区', '239', '2', '0');
INSERT INTO `k_location` VALUES ('2168', '电白区', '239', '2', '0');
INSERT INTO `k_location` VALUES ('2169', '高州市', '239', '2', '0');
INSERT INTO `k_location` VALUES ('2170', '化州市', '239', '2', '0');
INSERT INTO `k_location` VALUES ('2171', '信宜市', '239', '2', '0');
INSERT INTO `k_location` VALUES ('2172', '端州区', '240', '2', '0');
INSERT INTO `k_location` VALUES ('2173', '鼎湖区', '240', '2', '0');
INSERT INTO `k_location` VALUES ('2174', '广宁县', '240', '2', '0');
INSERT INTO `k_location` VALUES ('2175', '怀集县', '240', '2', '0');
INSERT INTO `k_location` VALUES ('2176', '封开县', '240', '2', '0');
INSERT INTO `k_location` VALUES ('2177', '德庆县', '240', '2', '0');
INSERT INTO `k_location` VALUES ('2178', '高要市', '240', '2', '0');
INSERT INTO `k_location` VALUES ('2179', '四会市', '240', '2', '0');
INSERT INTO `k_location` VALUES ('2180', '惠城区', '241', '2', '0');
INSERT INTO `k_location` VALUES ('2181', '惠阳区', '241', '2', '0');
INSERT INTO `k_location` VALUES ('2182', '博罗县', '241', '2', '0');
INSERT INTO `k_location` VALUES ('2183', '惠东县', '241', '2', '0');
INSERT INTO `k_location` VALUES ('2184', '龙门县', '241', '2', '0');
INSERT INTO `k_location` VALUES ('2185', '梅江区', '242', '2', '0');
INSERT INTO `k_location` VALUES ('2186', '梅县区', '242', '2', '0');
INSERT INTO `k_location` VALUES ('2187', '大埔县', '242', '2', '0');
INSERT INTO `k_location` VALUES ('2188', '丰顺县', '242', '2', '0');
INSERT INTO `k_location` VALUES ('2189', '五华县', '242', '2', '0');
INSERT INTO `k_location` VALUES ('2190', '平远县', '242', '2', '0');
INSERT INTO `k_location` VALUES ('2191', '蕉岭县', '242', '2', '0');
INSERT INTO `k_location` VALUES ('2192', '兴宁市', '242', '2', '0');
INSERT INTO `k_location` VALUES ('2193', '城区', '243', '2', '0');
INSERT INTO `k_location` VALUES ('2194', '海丰县', '243', '2', '0');
INSERT INTO `k_location` VALUES ('2195', '陆河县', '243', '2', '0');
INSERT INTO `k_location` VALUES ('2196', '陆丰市', '243', '2', '0');
INSERT INTO `k_location` VALUES ('2197', '源城区', '244', '2', '0');
INSERT INTO `k_location` VALUES ('2198', '紫金县', '244', '2', '0');
INSERT INTO `k_location` VALUES ('2199', '龙川县', '244', '2', '0');
INSERT INTO `k_location` VALUES ('2200', '连平县', '244', '2', '0');
INSERT INTO `k_location` VALUES ('2201', '和平县', '244', '2', '0');
INSERT INTO `k_location` VALUES ('2202', '东源县', '244', '2', '0');
INSERT INTO `k_location` VALUES ('2203', '江城区', '245', '2', '0');
INSERT INTO `k_location` VALUES ('2204', '阳西县', '245', '2', '0');
INSERT INTO `k_location` VALUES ('2205', '阳东县', '245', '2', '0');
INSERT INTO `k_location` VALUES ('2206', '阳春市', '245', '2', '0');
INSERT INTO `k_location` VALUES ('2207', '清城区', '246', '2', '0');
INSERT INTO `k_location` VALUES ('2208', '清新区', '246', '2', '0');
INSERT INTO `k_location` VALUES ('2209', '佛冈县', '246', '2', '0');
INSERT INTO `k_location` VALUES ('2210', '阳山县', '246', '2', '0');
INSERT INTO `k_location` VALUES ('2211', '连山壮族瑶族自治县', '246', '2', '0');
INSERT INTO `k_location` VALUES ('2212', '连南瑶族自治县', '246', '2', '0');
INSERT INTO `k_location` VALUES ('2213', '英德市', '246', '2', '0');
INSERT INTO `k_location` VALUES ('2214', '连州市', '246', '2', '0');
INSERT INTO `k_location` VALUES ('2215', '湘桥区', '249', '2', '0');
INSERT INTO `k_location` VALUES ('2216', '潮安区', '249', '2', '0');
INSERT INTO `k_location` VALUES ('2217', '饶平县', '249', '2', '0');
INSERT INTO `k_location` VALUES ('2218', '榕城区', '250', '2', '0');
INSERT INTO `k_location` VALUES ('2219', '揭东区', '250', '2', '0');
INSERT INTO `k_location` VALUES ('2220', '揭西县', '250', '2', '0');
INSERT INTO `k_location` VALUES ('2221', '惠来县', '250', '2', '0');
INSERT INTO `k_location` VALUES ('2222', '普宁市', '250', '2', '0');
INSERT INTO `k_location` VALUES ('2223', '云城区', '251', '2', '0');
INSERT INTO `k_location` VALUES ('2224', '云安区', '251', '2', '0');
INSERT INTO `k_location` VALUES ('2225', '新兴县', '251', '2', '0');
INSERT INTO `k_location` VALUES ('2226', '郁南县', '251', '2', '0');
INSERT INTO `k_location` VALUES ('2227', '罗定市', '251', '2', '0');
INSERT INTO `k_location` VALUES ('2228', '兴宁区', '252', '2', '0');
INSERT INTO `k_location` VALUES ('2229', '青秀区', '252', '2', '0');
INSERT INTO `k_location` VALUES ('2230', '江南区', '252', '2', '0');
INSERT INTO `k_location` VALUES ('2231', '西乡塘区', '252', '2', '0');
INSERT INTO `k_location` VALUES ('2232', '良庆区', '252', '2', '0');
INSERT INTO `k_location` VALUES ('2233', '邕宁区', '252', '2', '0');
INSERT INTO `k_location` VALUES ('2234', '武鸣县', '252', '2', '0');
INSERT INTO `k_location` VALUES ('2235', '隆安县', '252', '2', '0');
INSERT INTO `k_location` VALUES ('2236', '马山县', '252', '2', '0');
INSERT INTO `k_location` VALUES ('2237', '上林县', '252', '2', '0');
INSERT INTO `k_location` VALUES ('2238', '宾阳县', '252', '2', '0');
INSERT INTO `k_location` VALUES ('2239', '横县', '252', '2', '0');
INSERT INTO `k_location` VALUES ('2240', '城中区', '253', '2', '0');
INSERT INTO `k_location` VALUES ('2241', '鱼峰区', '253', '2', '0');
INSERT INTO `k_location` VALUES ('2242', '柳南区', '253', '2', '0');
INSERT INTO `k_location` VALUES ('2243', '柳北区', '253', '2', '0');
INSERT INTO `k_location` VALUES ('2244', '柳江县', '253', '2', '0');
INSERT INTO `k_location` VALUES ('2245', '柳城县', '253', '2', '0');
INSERT INTO `k_location` VALUES ('2246', '鹿寨县', '253', '2', '0');
INSERT INTO `k_location` VALUES ('2247', '融安县', '253', '2', '0');
INSERT INTO `k_location` VALUES ('2248', '融水苗族自治县', '253', '2', '0');
INSERT INTO `k_location` VALUES ('2249', '三江侗族自治县', '253', '2', '0');
INSERT INTO `k_location` VALUES ('2250', '秀峰区', '254', '2', '0');
INSERT INTO `k_location` VALUES ('2251', '叠彩区', '254', '2', '0');
INSERT INTO `k_location` VALUES ('2252', '象山区', '254', '2', '0');
INSERT INTO `k_location` VALUES ('2253', '七星区', '254', '2', '0');
INSERT INTO `k_location` VALUES ('2254', '雁山区', '254', '2', '0');
INSERT INTO `k_location` VALUES ('2255', '临桂区', '254', '2', '0');
INSERT INTO `k_location` VALUES ('2256', '阳朔县', '254', '2', '0');
INSERT INTO `k_location` VALUES ('2257', '灵川县', '254', '2', '0');
INSERT INTO `k_location` VALUES ('2258', '全州县', '254', '2', '0');
INSERT INTO `k_location` VALUES ('2259', '兴安县', '254', '2', '0');
INSERT INTO `k_location` VALUES ('2260', '永福县', '254', '2', '0');
INSERT INTO `k_location` VALUES ('2261', '灌阳县', '254', '2', '0');
INSERT INTO `k_location` VALUES ('2262', '龙胜各族自治县', '254', '2', '0');
INSERT INTO `k_location` VALUES ('2263', '资源县', '254', '2', '0');
INSERT INTO `k_location` VALUES ('2264', '平乐县', '254', '2', '0');
INSERT INTO `k_location` VALUES ('2265', '荔浦县', '254', '2', '0');
INSERT INTO `k_location` VALUES ('2266', '恭城瑶族自治县', '254', '2', '0');
INSERT INTO `k_location` VALUES ('2267', '万秀区', '255', '2', '0');
INSERT INTO `k_location` VALUES ('2268', '长洲区', '255', '2', '0');
INSERT INTO `k_location` VALUES ('2269', '龙圩区', '255', '2', '0');
INSERT INTO `k_location` VALUES ('2270', '苍梧县', '255', '2', '0');
INSERT INTO `k_location` VALUES ('2271', '藤县', '255', '2', '0');
INSERT INTO `k_location` VALUES ('2272', '蒙山县', '255', '2', '0');
INSERT INTO `k_location` VALUES ('2273', '岑溪市', '255', '2', '0');
INSERT INTO `k_location` VALUES ('2274', '海城区', '256', '2', '0');
INSERT INTO `k_location` VALUES ('2275', '银海区', '256', '2', '0');
INSERT INTO `k_location` VALUES ('2276', '铁山港区', '256', '2', '0');
INSERT INTO `k_location` VALUES ('2277', '合浦县', '256', '2', '0');
INSERT INTO `k_location` VALUES ('2278', '港口区', '257', '2', '0');
INSERT INTO `k_location` VALUES ('2279', '防城区', '257', '2', '0');
INSERT INTO `k_location` VALUES ('2280', '上思县', '257', '2', '0');
INSERT INTO `k_location` VALUES ('2281', '东兴市', '257', '2', '0');
INSERT INTO `k_location` VALUES ('2282', '钦南区', '258', '2', '0');
INSERT INTO `k_location` VALUES ('2283', '钦北区', '258', '2', '0');
INSERT INTO `k_location` VALUES ('2284', '灵山县', '258', '2', '0');
INSERT INTO `k_location` VALUES ('2285', '浦北县', '258', '2', '0');
INSERT INTO `k_location` VALUES ('2286', '港北区', '259', '2', '0');
INSERT INTO `k_location` VALUES ('2287', '港南区', '259', '2', '0');
INSERT INTO `k_location` VALUES ('2288', '覃塘区', '259', '2', '0');
INSERT INTO `k_location` VALUES ('2289', '平南县', '259', '2', '0');
INSERT INTO `k_location` VALUES ('2290', '桂平市', '259', '2', '0');
INSERT INTO `k_location` VALUES ('2291', '玉州区', '260', '2', '0');
INSERT INTO `k_location` VALUES ('2292', '福绵区', '260', '2', '0');
INSERT INTO `k_location` VALUES ('2293', '容县', '260', '2', '0');
INSERT INTO `k_location` VALUES ('2294', '陆川县', '260', '2', '0');
INSERT INTO `k_location` VALUES ('2295', '博白县', '260', '2', '0');
INSERT INTO `k_location` VALUES ('2296', '兴业县', '260', '2', '0');
INSERT INTO `k_location` VALUES ('2297', '北流市', '260', '2', '0');
INSERT INTO `k_location` VALUES ('2298', '右江区', '261', '2', '0');
INSERT INTO `k_location` VALUES ('2299', '田阳县', '261', '2', '0');
INSERT INTO `k_location` VALUES ('2300', '田东县', '261', '2', '0');
INSERT INTO `k_location` VALUES ('2301', '平果县', '261', '2', '0');
INSERT INTO `k_location` VALUES ('2302', '德保县', '261', '2', '0');
INSERT INTO `k_location` VALUES ('2303', '靖西县', '261', '2', '0');
INSERT INTO `k_location` VALUES ('2304', '那坡县', '261', '2', '0');
INSERT INTO `k_location` VALUES ('2305', '凌云县', '261', '2', '0');
INSERT INTO `k_location` VALUES ('2306', '乐业县', '261', '2', '0');
INSERT INTO `k_location` VALUES ('2307', '田林县', '261', '2', '0');
INSERT INTO `k_location` VALUES ('2308', '西林县', '261', '2', '0');
INSERT INTO `k_location` VALUES ('2309', '隆林各族自治县', '261', '2', '0');
INSERT INTO `k_location` VALUES ('2310', '八步区', '262', '2', '0');
INSERT INTO `k_location` VALUES ('2311', '昭平县', '262', '2', '0');
INSERT INTO `k_location` VALUES ('2312', '钟山县', '262', '2', '0');
INSERT INTO `k_location` VALUES ('2313', '富川瑶族自治县', '262', '2', '0');
INSERT INTO `k_location` VALUES ('2314', '金城江区', '263', '2', '0');
INSERT INTO `k_location` VALUES ('2315', '南丹县', '263', '2', '0');
INSERT INTO `k_location` VALUES ('2316', '天峨县', '263', '2', '0');
INSERT INTO `k_location` VALUES ('2317', '凤山县', '263', '2', '0');
INSERT INTO `k_location` VALUES ('2318', '东兰县', '263', '2', '0');
INSERT INTO `k_location` VALUES ('2319', '罗城仫佬族自治县', '263', '2', '0');
INSERT INTO `k_location` VALUES ('2320', '环江毛南族自治县', '263', '2', '0');
INSERT INTO `k_location` VALUES ('2321', '巴马瑶族自治县', '263', '2', '0');
INSERT INTO `k_location` VALUES ('2322', '都安瑶族自治县', '263', '2', '0');
INSERT INTO `k_location` VALUES ('2323', '大化瑶族自治县', '263', '2', '0');
INSERT INTO `k_location` VALUES ('2324', '宜州市', '263', '2', '0');
INSERT INTO `k_location` VALUES ('2325', '兴宾区', '264', '2', '0');
INSERT INTO `k_location` VALUES ('2326', '忻城县', '264', '2', '0');
INSERT INTO `k_location` VALUES ('2327', '象州县', '264', '2', '0');
INSERT INTO `k_location` VALUES ('2328', '武宣县', '264', '2', '0');
INSERT INTO `k_location` VALUES ('2329', '金秀瑶族自治县', '264', '2', '0');
INSERT INTO `k_location` VALUES ('2330', '合山市', '264', '2', '0');
INSERT INTO `k_location` VALUES ('2331', '江州区', '265', '2', '0');
INSERT INTO `k_location` VALUES ('2332', '扶绥县', '265', '2', '0');
INSERT INTO `k_location` VALUES ('2333', '宁明县', '265', '2', '0');
INSERT INTO `k_location` VALUES ('2334', '龙州县', '265', '2', '0');
INSERT INTO `k_location` VALUES ('2335', '大新县', '265', '2', '0');
INSERT INTO `k_location` VALUES ('2336', '天等县', '265', '2', '0');
INSERT INTO `k_location` VALUES ('2337', '凭祥市', '265', '2', '0');
INSERT INTO `k_location` VALUES ('2338', '秀英区', '266', '2', '0');
INSERT INTO `k_location` VALUES ('2339', '龙华区', '266', '2', '0');
INSERT INTO `k_location` VALUES ('2340', '琼山区', '266', '2', '0');
INSERT INTO `k_location` VALUES ('2341', '美兰区', '266', '2', '0');
INSERT INTO `k_location` VALUES ('2342', '海棠区', '267', '2', '0');
INSERT INTO `k_location` VALUES ('2343', '吉阳区', '267', '2', '0');
INSERT INTO `k_location` VALUES ('2344', '天涯区', '267', '2', '0');
INSERT INTO `k_location` VALUES ('2345', '崖州区', '267', '2', '0');
INSERT INTO `k_location` VALUES ('2346', '五指山市', '269', '2', '0');
INSERT INTO `k_location` VALUES ('2347', '琼海市', '269', '2', '0');
INSERT INTO `k_location` VALUES ('2348', '儋州市', '269', '2', '0');
INSERT INTO `k_location` VALUES ('2349', '文昌市', '269', '2', '0');
INSERT INTO `k_location` VALUES ('2350', '万宁市', '269', '2', '0');
INSERT INTO `k_location` VALUES ('2351', '东方市', '269', '2', '0');
INSERT INTO `k_location` VALUES ('2352', '定安县', '269', '2', '0');
INSERT INTO `k_location` VALUES ('2353', '屯昌县', '269', '2', '0');
INSERT INTO `k_location` VALUES ('2354', '澄迈县', '269', '2', '0');
INSERT INTO `k_location` VALUES ('2355', '临高县', '269', '2', '0');
INSERT INTO `k_location` VALUES ('2356', '白沙黎族自治县', '269', '2', '0');
INSERT INTO `k_location` VALUES ('2357', '昌江黎族自治县', '269', '2', '0');
INSERT INTO `k_location` VALUES ('2358', '乐东黎族自治县', '269', '2', '0');
INSERT INTO `k_location` VALUES ('2359', '陵水黎族自治县', '269', '2', '0');
INSERT INTO `k_location` VALUES ('2360', '保亭黎族苗族自治县', '269', '2', '0');
INSERT INTO `k_location` VALUES ('2361', '琼中黎族苗族自治县', '269', '2', '0');
INSERT INTO `k_location` VALUES ('2362', '万州区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2363', '涪陵区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2364', '渝中区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2365', '大渡口区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2366', '江北区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2367', '沙坪坝区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2368', '九龙坡区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2369', '南岸区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2370', '北碚区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2371', '綦江区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2372', '大足区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2373', '渝北区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2374', '巴南区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2375', '黔江区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2376', '长寿区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2377', '江津区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2378', '合川区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2379', '永川区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2380', '南川区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2381', '璧山区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2382', '铜梁区', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2383', '潼南县', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2384', '荣昌县', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2385', '梁平县', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2386', '城口县', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2387', '丰都县', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2388', '垫江县', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2389', '武隆县', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2390', '忠县', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2391', '开县', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2392', '云阳县', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2393', '奉节县', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2394', '巫山县', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2395', '巫溪县', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2396', '石柱土家族自治县', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2397', '秀山土家族苗族自治县', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2398', '酉阳土家族苗族自治县', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2399', '彭水苗族土家族自治县', '270', '2', '0');
INSERT INTO `k_location` VALUES ('2400', '锦江区', '271', '2', '0');
INSERT INTO `k_location` VALUES ('2401', '青羊区', '271', '2', '0');
INSERT INTO `k_location` VALUES ('2402', '金牛区', '271', '2', '0');
INSERT INTO `k_location` VALUES ('2403', '武侯区', '271', '2', '0');
INSERT INTO `k_location` VALUES ('2404', '成华区', '271', '2', '0');
INSERT INTO `k_location` VALUES ('2405', '龙泉驿区', '271', '2', '0');
INSERT INTO `k_location` VALUES ('2406', '青白江区', '271', '2', '0');
INSERT INTO `k_location` VALUES ('2407', '新都区', '271', '2', '0');
INSERT INTO `k_location` VALUES ('2408', '温江区', '271', '2', '0');
INSERT INTO `k_location` VALUES ('2409', '金堂县', '271', '2', '0');
INSERT INTO `k_location` VALUES ('2410', '双流县', '271', '2', '0');
INSERT INTO `k_location` VALUES ('2411', '郫县', '271', '2', '0');
INSERT INTO `k_location` VALUES ('2412', '大邑县', '271', '2', '0');
INSERT INTO `k_location` VALUES ('2413', '蒲江县', '271', '2', '0');
INSERT INTO `k_location` VALUES ('2414', '新津县', '271', '2', '0');
INSERT INTO `k_location` VALUES ('2415', '都江堰市', '271', '2', '0');
INSERT INTO `k_location` VALUES ('2416', '彭州市', '271', '2', '0');
INSERT INTO `k_location` VALUES ('2417', '邛崃市', '271', '2', '0');
INSERT INTO `k_location` VALUES ('2418', '崇州市', '271', '2', '0');
INSERT INTO `k_location` VALUES ('2419', '自流井区', '272', '2', '0');
INSERT INTO `k_location` VALUES ('2420', '贡井区', '272', '2', '0');
INSERT INTO `k_location` VALUES ('2421', '大安区', '272', '2', '0');
INSERT INTO `k_location` VALUES ('2422', '沿滩区', '272', '2', '0');
INSERT INTO `k_location` VALUES ('2423', '荣县', '272', '2', '0');
INSERT INTO `k_location` VALUES ('2424', '富顺县', '272', '2', '0');
INSERT INTO `k_location` VALUES ('2425', '东区', '273', '2', '0');
INSERT INTO `k_location` VALUES ('2426', '西区', '273', '2', '0');
INSERT INTO `k_location` VALUES ('2427', '仁和区', '273', '2', '0');
INSERT INTO `k_location` VALUES ('2428', '米易县', '273', '2', '0');
INSERT INTO `k_location` VALUES ('2429', '盐边县', '273', '2', '0');
INSERT INTO `k_location` VALUES ('2430', '江阳区', '274', '2', '0');
INSERT INTO `k_location` VALUES ('2431', '纳溪区', '274', '2', '0');
INSERT INTO `k_location` VALUES ('2432', '龙马潭区', '274', '2', '0');
INSERT INTO `k_location` VALUES ('2433', '泸县', '274', '2', '0');
INSERT INTO `k_location` VALUES ('2434', '合江县', '274', '2', '0');
INSERT INTO `k_location` VALUES ('2435', '叙永县', '274', '2', '0');
INSERT INTO `k_location` VALUES ('2436', '古蔺县', '274', '2', '0');
INSERT INTO `k_location` VALUES ('2437', '旌阳区', '275', '2', '0');
INSERT INTO `k_location` VALUES ('2438', '中江县', '275', '2', '0');
INSERT INTO `k_location` VALUES ('2439', '罗江县', '275', '2', '0');
INSERT INTO `k_location` VALUES ('2440', '广汉市', '275', '2', '0');
INSERT INTO `k_location` VALUES ('2441', '什邡市', '275', '2', '0');
INSERT INTO `k_location` VALUES ('2442', '绵竹市', '275', '2', '0');
INSERT INTO `k_location` VALUES ('2443', '涪城区', '276', '2', '0');
INSERT INTO `k_location` VALUES ('2444', '游仙区', '276', '2', '0');
INSERT INTO `k_location` VALUES ('2445', '三台县', '276', '2', '0');
INSERT INTO `k_location` VALUES ('2446', '盐亭县', '276', '2', '0');
INSERT INTO `k_location` VALUES ('2447', '安县', '276', '2', '0');
INSERT INTO `k_location` VALUES ('2448', '梓潼县', '276', '2', '0');
INSERT INTO `k_location` VALUES ('2449', '北川羌族自治县', '276', '2', '0');
INSERT INTO `k_location` VALUES ('2450', '平武县', '276', '2', '0');
INSERT INTO `k_location` VALUES ('2451', '江油市', '276', '2', '0');
INSERT INTO `k_location` VALUES ('2452', '利州区', '277', '2', '0');
INSERT INTO `k_location` VALUES ('2453', '昭化区', '277', '2', '0');
INSERT INTO `k_location` VALUES ('2454', '朝天区', '277', '2', '0');
INSERT INTO `k_location` VALUES ('2455', '旺苍县', '277', '2', '0');
INSERT INTO `k_location` VALUES ('2456', '青川县', '277', '2', '0');
INSERT INTO `k_location` VALUES ('2457', '剑阁县', '277', '2', '0');
INSERT INTO `k_location` VALUES ('2458', '苍溪县', '277', '2', '0');
INSERT INTO `k_location` VALUES ('2459', '船山区', '278', '2', '0');
INSERT INTO `k_location` VALUES ('2460', '安居区', '278', '2', '0');
INSERT INTO `k_location` VALUES ('2461', '蓬溪县', '278', '2', '0');
INSERT INTO `k_location` VALUES ('2462', '射洪县', '278', '2', '0');
INSERT INTO `k_location` VALUES ('2463', '大英县', '278', '2', '0');
INSERT INTO `k_location` VALUES ('2464', '市中区', '279', '2', '0');
INSERT INTO `k_location` VALUES ('2465', '东兴区', '279', '2', '0');
INSERT INTO `k_location` VALUES ('2466', '威远县', '279', '2', '0');
INSERT INTO `k_location` VALUES ('2467', '资中县', '279', '2', '0');
INSERT INTO `k_location` VALUES ('2468', '隆昌县', '279', '2', '0');
INSERT INTO `k_location` VALUES ('2469', '市中区', '280', '2', '0');
INSERT INTO `k_location` VALUES ('2470', '沙湾区', '280', '2', '0');
INSERT INTO `k_location` VALUES ('2471', '五通桥区', '280', '2', '0');
INSERT INTO `k_location` VALUES ('2472', '金口河区', '280', '2', '0');
INSERT INTO `k_location` VALUES ('2473', '犍为县', '280', '2', '0');
INSERT INTO `k_location` VALUES ('2474', '井研县', '280', '2', '0');
INSERT INTO `k_location` VALUES ('2475', '夹江县', '280', '2', '0');
INSERT INTO `k_location` VALUES ('2476', '沐川县', '280', '2', '0');
INSERT INTO `k_location` VALUES ('2477', '峨边彝族自治县', '280', '2', '0');
INSERT INTO `k_location` VALUES ('2478', '马边彝族自治县', '280', '2', '0');
INSERT INTO `k_location` VALUES ('2479', '峨眉山市', '280', '2', '0');
INSERT INTO `k_location` VALUES ('2480', '顺庆区', '281', '2', '0');
INSERT INTO `k_location` VALUES ('2481', '高坪区', '281', '2', '0');
INSERT INTO `k_location` VALUES ('2482', '嘉陵区', '281', '2', '0');
INSERT INTO `k_location` VALUES ('2483', '南部县', '281', '2', '0');
INSERT INTO `k_location` VALUES ('2484', '营山县', '281', '2', '0');
INSERT INTO `k_location` VALUES ('2485', '蓬安县', '281', '2', '0');
INSERT INTO `k_location` VALUES ('2486', '仪陇县', '281', '2', '0');
INSERT INTO `k_location` VALUES ('2487', '西充县', '281', '2', '0');
INSERT INTO `k_location` VALUES ('2488', '阆中市', '281', '2', '0');
INSERT INTO `k_location` VALUES ('2489', '东坡区', '282', '2', '0');
INSERT INTO `k_location` VALUES ('2490', '仁寿县', '282', '2', '0');
INSERT INTO `k_location` VALUES ('2491', '彭山县', '282', '2', '0');
INSERT INTO `k_location` VALUES ('2492', '洪雅县', '282', '2', '0');
INSERT INTO `k_location` VALUES ('2493', '丹棱县', '282', '2', '0');
INSERT INTO `k_location` VALUES ('2494', '青神县', '282', '2', '0');
INSERT INTO `k_location` VALUES ('2495', '翠屏区', '283', '2', '0');
INSERT INTO `k_location` VALUES ('2496', '南溪区', '283', '2', '0');
INSERT INTO `k_location` VALUES ('2497', '宜宾县', '283', '2', '0');
INSERT INTO `k_location` VALUES ('2498', '江安县', '283', '2', '0');
INSERT INTO `k_location` VALUES ('2499', '长宁县', '283', '2', '0');
INSERT INTO `k_location` VALUES ('2500', '高县', '283', '2', '0');
INSERT INTO `k_location` VALUES ('2501', '珙县', '283', '2', '0');
INSERT INTO `k_location` VALUES ('2502', '筠连县', '283', '2', '0');
INSERT INTO `k_location` VALUES ('2503', '兴文县', '283', '2', '0');
INSERT INTO `k_location` VALUES ('2504', '屏山县', '283', '2', '0');
INSERT INTO `k_location` VALUES ('2505', '广安区', '284', '2', '0');
INSERT INTO `k_location` VALUES ('2506', '前锋区', '284', '2', '0');
INSERT INTO `k_location` VALUES ('2507', '岳池县', '284', '2', '0');
INSERT INTO `k_location` VALUES ('2508', '武胜县', '284', '2', '0');
INSERT INTO `k_location` VALUES ('2509', '邻水县', '284', '2', '0');
INSERT INTO `k_location` VALUES ('2510', '华蓥市', '284', '2', '0');
INSERT INTO `k_location` VALUES ('2511', '通川区', '285', '2', '0');
INSERT INTO `k_location` VALUES ('2512', '达川区', '285', '2', '0');
INSERT INTO `k_location` VALUES ('2513', '宣汉县', '285', '2', '0');
INSERT INTO `k_location` VALUES ('2514', '开江县', '285', '2', '0');
INSERT INTO `k_location` VALUES ('2515', '大竹县', '285', '2', '0');
INSERT INTO `k_location` VALUES ('2516', '渠县', '285', '2', '0');
INSERT INTO `k_location` VALUES ('2517', '万源市', '285', '2', '0');
INSERT INTO `k_location` VALUES ('2518', '雨城区', '286', '2', '0');
INSERT INTO `k_location` VALUES ('2519', '名山区', '286', '2', '0');
INSERT INTO `k_location` VALUES ('2520', '荥经县', '286', '2', '0');
INSERT INTO `k_location` VALUES ('2521', '汉源县', '286', '2', '0');
INSERT INTO `k_location` VALUES ('2522', '石棉县', '286', '2', '0');
INSERT INTO `k_location` VALUES ('2523', '天全县', '286', '2', '0');
INSERT INTO `k_location` VALUES ('2524', '芦山县', '286', '2', '0');
INSERT INTO `k_location` VALUES ('2525', '宝兴县', '286', '2', '0');
INSERT INTO `k_location` VALUES ('2526', '巴州区', '287', '2', '0');
INSERT INTO `k_location` VALUES ('2527', '恩阳区', '287', '2', '0');
INSERT INTO `k_location` VALUES ('2528', '通江县', '287', '2', '0');
INSERT INTO `k_location` VALUES ('2529', '南江县', '287', '2', '0');
INSERT INTO `k_location` VALUES ('2530', '平昌县', '287', '2', '0');
INSERT INTO `k_location` VALUES ('2531', '雁江区', '288', '2', '0');
INSERT INTO `k_location` VALUES ('2532', '安岳县', '288', '2', '0');
INSERT INTO `k_location` VALUES ('2533', '乐至县', '288', '2', '0');
INSERT INTO `k_location` VALUES ('2534', '简阳市', '288', '2', '0');
INSERT INTO `k_location` VALUES ('2535', '汶川县', '289', '2', '0');
INSERT INTO `k_location` VALUES ('2536', '理县', '289', '2', '0');
INSERT INTO `k_location` VALUES ('2537', '茂县', '289', '2', '0');
INSERT INTO `k_location` VALUES ('2538', '松潘县', '289', '2', '0');
INSERT INTO `k_location` VALUES ('2539', '九寨沟县', '289', '2', '0');
INSERT INTO `k_location` VALUES ('2540', '金川县', '289', '2', '0');
INSERT INTO `k_location` VALUES ('2541', '小金县', '289', '2', '0');
INSERT INTO `k_location` VALUES ('2542', '黑水县', '289', '2', '0');
INSERT INTO `k_location` VALUES ('2543', '马尔康县', '289', '2', '0');
INSERT INTO `k_location` VALUES ('2544', '壤塘县', '289', '2', '0');
INSERT INTO `k_location` VALUES ('2545', '阿坝县', '289', '2', '0');
INSERT INTO `k_location` VALUES ('2546', '若尔盖县', '289', '2', '0');
INSERT INTO `k_location` VALUES ('2547', '红原县', '289', '2', '0');
INSERT INTO `k_location` VALUES ('2548', '康定县', '290', '2', '0');
INSERT INTO `k_location` VALUES ('2549', '泸定县', '290', '2', '0');
INSERT INTO `k_location` VALUES ('2550', '丹巴县', '290', '2', '0');
INSERT INTO `k_location` VALUES ('2551', '九龙县', '290', '2', '0');
INSERT INTO `k_location` VALUES ('2552', '雅江县', '290', '2', '0');
INSERT INTO `k_location` VALUES ('2553', '道孚县', '290', '2', '0');
INSERT INTO `k_location` VALUES ('2554', '炉霍县', '290', '2', '0');
INSERT INTO `k_location` VALUES ('2555', '甘孜县', '290', '2', '0');
INSERT INTO `k_location` VALUES ('2556', '新龙县', '290', '2', '0');
INSERT INTO `k_location` VALUES ('2557', '德格县', '290', '2', '0');
INSERT INTO `k_location` VALUES ('2558', '白玉县', '290', '2', '0');
INSERT INTO `k_location` VALUES ('2559', '石渠县', '290', '2', '0');
INSERT INTO `k_location` VALUES ('2560', '色达县', '290', '2', '0');
INSERT INTO `k_location` VALUES ('2561', '理塘县', '290', '2', '0');
INSERT INTO `k_location` VALUES ('2562', '巴塘县', '290', '2', '0');
INSERT INTO `k_location` VALUES ('2563', '乡城县', '290', '2', '0');
INSERT INTO `k_location` VALUES ('2564', '稻城县', '290', '2', '0');
INSERT INTO `k_location` VALUES ('2565', '得荣县', '290', '2', '0');
INSERT INTO `k_location` VALUES ('2566', '西昌市', '291', '2', '0');
INSERT INTO `k_location` VALUES ('2567', '木里藏族自治县', '291', '2', '0');
INSERT INTO `k_location` VALUES ('2568', '盐源县', '291', '2', '0');
INSERT INTO `k_location` VALUES ('2569', '德昌县', '291', '2', '0');
INSERT INTO `k_location` VALUES ('2570', '会理县', '291', '2', '0');
INSERT INTO `k_location` VALUES ('2571', '会东县', '291', '2', '0');
INSERT INTO `k_location` VALUES ('2572', '宁南县', '291', '2', '0');
INSERT INTO `k_location` VALUES ('2573', '普格县', '291', '2', '0');
INSERT INTO `k_location` VALUES ('2574', '布拖县', '291', '2', '0');
INSERT INTO `k_location` VALUES ('2575', '金阳县', '291', '2', '0');
INSERT INTO `k_location` VALUES ('2576', '昭觉县', '291', '2', '0');
INSERT INTO `k_location` VALUES ('2577', '喜德县', '291', '2', '0');
INSERT INTO `k_location` VALUES ('2578', '冕宁县', '291', '2', '0');
INSERT INTO `k_location` VALUES ('2579', '越西县', '291', '2', '0');
INSERT INTO `k_location` VALUES ('2580', '甘洛县', '291', '2', '0');
INSERT INTO `k_location` VALUES ('2581', '美姑县', '291', '2', '0');
INSERT INTO `k_location` VALUES ('2582', '雷波县', '291', '2', '0');
INSERT INTO `k_location` VALUES ('2583', '南明区', '292', '2', '0');
INSERT INTO `k_location` VALUES ('2584', '云岩区', '292', '2', '0');
INSERT INTO `k_location` VALUES ('2585', '花溪区', '292', '2', '0');
INSERT INTO `k_location` VALUES ('2586', '乌当区', '292', '2', '0');
INSERT INTO `k_location` VALUES ('2587', '白云区', '292', '2', '0');
INSERT INTO `k_location` VALUES ('2588', '观山湖区', '292', '2', '0');
INSERT INTO `k_location` VALUES ('2589', '开阳县', '292', '2', '0');
INSERT INTO `k_location` VALUES ('2590', '息烽县', '292', '2', '0');
INSERT INTO `k_location` VALUES ('2591', '修文县', '292', '2', '0');
INSERT INTO `k_location` VALUES ('2592', '清镇市', '292', '2', '0');
INSERT INTO `k_location` VALUES ('2593', '钟山区', '293', '2', '0');
INSERT INTO `k_location` VALUES ('2594', '六枝特区', '293', '2', '0');
INSERT INTO `k_location` VALUES ('2595', '水城县', '293', '2', '0');
INSERT INTO `k_location` VALUES ('2596', '盘县', '293', '2', '0');
INSERT INTO `k_location` VALUES ('2597', '红花岗区', '294', '2', '0');
INSERT INTO `k_location` VALUES ('2598', '汇川区', '294', '2', '0');
INSERT INTO `k_location` VALUES ('2599', '遵义县', '294', '2', '0');
INSERT INTO `k_location` VALUES ('2600', '桐梓县', '294', '2', '0');
INSERT INTO `k_location` VALUES ('2601', '绥阳县', '294', '2', '0');
INSERT INTO `k_location` VALUES ('2602', '正安县', '294', '2', '0');
INSERT INTO `k_location` VALUES ('2603', '道真仡佬族苗族自治县', '294', '2', '0');
INSERT INTO `k_location` VALUES ('2604', '务川仡佬族苗族自治县', '294', '2', '0');
INSERT INTO `k_location` VALUES ('2605', '凤冈县', '294', '2', '0');
INSERT INTO `k_location` VALUES ('2606', '湄潭县', '294', '2', '0');
INSERT INTO `k_location` VALUES ('2607', '余庆县', '294', '2', '0');
INSERT INTO `k_location` VALUES ('2608', '习水县', '294', '2', '0');
INSERT INTO `k_location` VALUES ('2609', '赤水市', '294', '2', '0');
INSERT INTO `k_location` VALUES ('2610', '仁怀市', '294', '2', '0');
INSERT INTO `k_location` VALUES ('2611', '西秀区', '295', '2', '0');
INSERT INTO `k_location` VALUES ('2612', '平坝县', '295', '2', '0');
INSERT INTO `k_location` VALUES ('2613', '普定县', '295', '2', '0');
INSERT INTO `k_location` VALUES ('2614', '镇宁布依族苗族自治县', '295', '2', '0');
INSERT INTO `k_location` VALUES ('2615', '关岭布依族苗族自治县', '295', '2', '0');
INSERT INTO `k_location` VALUES ('2616', '紫云苗族布依族自治县', '295', '2', '0');
INSERT INTO `k_location` VALUES ('2617', '七星关区', '296', '2', '0');
INSERT INTO `k_location` VALUES ('2618', '大方县', '296', '2', '0');
INSERT INTO `k_location` VALUES ('2619', '黔西县', '296', '2', '0');
INSERT INTO `k_location` VALUES ('2620', '金沙县', '296', '2', '0');
INSERT INTO `k_location` VALUES ('2621', '织金县', '296', '2', '0');
INSERT INTO `k_location` VALUES ('2622', '纳雍县', '296', '2', '0');
INSERT INTO `k_location` VALUES ('2623', '威宁彝族回族苗族自治县', '296', '2', '0');
INSERT INTO `k_location` VALUES ('2624', '赫章县', '296', '2', '0');
INSERT INTO `k_location` VALUES ('2625', '碧江区', '297', '2', '0');
INSERT INTO `k_location` VALUES ('2626', '万山区', '297', '2', '0');
INSERT INTO `k_location` VALUES ('2627', '江口县', '297', '2', '0');
INSERT INTO `k_location` VALUES ('2628', '玉屏侗族自治县', '297', '2', '0');
INSERT INTO `k_location` VALUES ('2629', '石阡县', '297', '2', '0');
INSERT INTO `k_location` VALUES ('2630', '思南县', '297', '2', '0');
INSERT INTO `k_location` VALUES ('2631', '印江土家族苗族自治县', '297', '2', '0');
INSERT INTO `k_location` VALUES ('2632', '德江县', '297', '2', '0');
INSERT INTO `k_location` VALUES ('2633', '沿河土家族自治县', '297', '2', '0');
INSERT INTO `k_location` VALUES ('2634', '松桃苗族自治县', '297', '2', '0');
INSERT INTO `k_location` VALUES ('2635', '兴义市', '298', '2', '0');
INSERT INTO `k_location` VALUES ('2636', '兴仁县', '298', '2', '0');
INSERT INTO `k_location` VALUES ('2637', '普安县', '298', '2', '0');
INSERT INTO `k_location` VALUES ('2638', '晴隆县', '298', '2', '0');
INSERT INTO `k_location` VALUES ('2639', '贞丰县', '298', '2', '0');
INSERT INTO `k_location` VALUES ('2640', '望谟县', '298', '2', '0');
INSERT INTO `k_location` VALUES ('2641', '册亨县', '298', '2', '0');
INSERT INTO `k_location` VALUES ('2642', '安龙县', '298', '2', '0');
INSERT INTO `k_location` VALUES ('2643', '凯里市', '299', '2', '0');
INSERT INTO `k_location` VALUES ('2644', '黄平县', '299', '2', '0');
INSERT INTO `k_location` VALUES ('2645', '施秉县', '299', '2', '0');
INSERT INTO `k_location` VALUES ('2646', '三穗县', '299', '2', '0');
INSERT INTO `k_location` VALUES ('2647', '镇远县', '299', '2', '0');
INSERT INTO `k_location` VALUES ('2648', '岑巩县', '299', '2', '0');
INSERT INTO `k_location` VALUES ('2649', '天柱县', '299', '2', '0');
INSERT INTO `k_location` VALUES ('2650', '锦屏县', '299', '2', '0');
INSERT INTO `k_location` VALUES ('2651', '剑河县', '299', '2', '0');
INSERT INTO `k_location` VALUES ('2652', '台江县', '299', '2', '0');
INSERT INTO `k_location` VALUES ('2653', '黎平县', '299', '2', '0');
INSERT INTO `k_location` VALUES ('2654', '榕江县', '299', '2', '0');
INSERT INTO `k_location` VALUES ('2655', '从江县', '299', '2', '0');
INSERT INTO `k_location` VALUES ('2656', '雷山县', '299', '2', '0');
INSERT INTO `k_location` VALUES ('2657', '麻江县', '299', '2', '0');
INSERT INTO `k_location` VALUES ('2658', '丹寨县', '299', '2', '0');
INSERT INTO `k_location` VALUES ('2659', '都匀市', '300', '2', '0');
INSERT INTO `k_location` VALUES ('2660', '福泉市', '300', '2', '0');
INSERT INTO `k_location` VALUES ('2661', '荔波县', '300', '2', '0');
INSERT INTO `k_location` VALUES ('2662', '贵定县', '300', '2', '0');
INSERT INTO `k_location` VALUES ('2663', '瓮安县', '300', '2', '0');
INSERT INTO `k_location` VALUES ('2664', '独山县', '300', '2', '0');
INSERT INTO `k_location` VALUES ('2665', '平塘县', '300', '2', '0');
INSERT INTO `k_location` VALUES ('2666', '罗甸县', '300', '2', '0');
INSERT INTO `k_location` VALUES ('2667', '长顺县', '300', '2', '0');
INSERT INTO `k_location` VALUES ('2668', '龙里县', '300', '2', '0');
INSERT INTO `k_location` VALUES ('2669', '惠水县', '300', '2', '0');
INSERT INTO `k_location` VALUES ('2670', '三都水族自治县', '300', '2', '0');
INSERT INTO `k_location` VALUES ('2671', '五华区', '301', '2', '0');
INSERT INTO `k_location` VALUES ('2672', '盘龙区', '301', '2', '0');
INSERT INTO `k_location` VALUES ('2673', '官渡区', '301', '2', '0');
INSERT INTO `k_location` VALUES ('2674', '西山区', '301', '2', '0');
INSERT INTO `k_location` VALUES ('2675', '东川区', '301', '2', '0');
INSERT INTO `k_location` VALUES ('2676', '呈贡区', '301', '2', '0');
INSERT INTO `k_location` VALUES ('2677', '晋宁县', '301', '2', '0');
INSERT INTO `k_location` VALUES ('2678', '富民县', '301', '2', '0');
INSERT INTO `k_location` VALUES ('2679', '宜良县', '301', '2', '0');
INSERT INTO `k_location` VALUES ('2680', '石林彝族自治县', '301', '2', '0');
INSERT INTO `k_location` VALUES ('2681', '嵩明县', '301', '2', '0');
INSERT INTO `k_location` VALUES ('2682', '禄劝彝族苗族自治县', '301', '2', '0');
INSERT INTO `k_location` VALUES ('2683', '寻甸回族彝族自治县', '301', '2', '0');
INSERT INTO `k_location` VALUES ('2684', '安宁市', '301', '2', '0');
INSERT INTO `k_location` VALUES ('2685', '麒麟区', '302', '2', '0');
INSERT INTO `k_location` VALUES ('2686', '马龙县', '302', '2', '0');
INSERT INTO `k_location` VALUES ('2687', '陆良县', '302', '2', '0');
INSERT INTO `k_location` VALUES ('2688', '师宗县', '302', '2', '0');
INSERT INTO `k_location` VALUES ('2689', '罗平县', '302', '2', '0');
INSERT INTO `k_location` VALUES ('2690', '富源县', '302', '2', '0');
INSERT INTO `k_location` VALUES ('2691', '会泽县', '302', '2', '0');
INSERT INTO `k_location` VALUES ('2692', '沾益县', '302', '2', '0');
INSERT INTO `k_location` VALUES ('2693', '宣威市', '302', '2', '0');
INSERT INTO `k_location` VALUES ('2694', '红塔区', '303', '2', '0');
INSERT INTO `k_location` VALUES ('2695', '江川县', '303', '2', '0');
INSERT INTO `k_location` VALUES ('2696', '澄江县', '303', '2', '0');
INSERT INTO `k_location` VALUES ('2697', '通海县', '303', '2', '0');
INSERT INTO `k_location` VALUES ('2698', '华宁县', '303', '2', '0');
INSERT INTO `k_location` VALUES ('2699', '易门县', '303', '2', '0');
INSERT INTO `k_location` VALUES ('2700', '峨山彝族自治县', '303', '2', '0');
INSERT INTO `k_location` VALUES ('2701', '新平彝族傣族自治县', '303', '2', '0');
INSERT INTO `k_location` VALUES ('2702', '元江哈尼族彝族傣族自治县', '303', '2', '0');
INSERT INTO `k_location` VALUES ('2703', '隆阳区', '304', '2', '0');
INSERT INTO `k_location` VALUES ('2704', '施甸县', '304', '2', '0');
INSERT INTO `k_location` VALUES ('2705', '腾冲县', '304', '2', '0');
INSERT INTO `k_location` VALUES ('2706', '龙陵县', '304', '2', '0');
INSERT INTO `k_location` VALUES ('2707', '昌宁县', '304', '2', '0');
INSERT INTO `k_location` VALUES ('2708', '昭阳区', '305', '2', '0');
INSERT INTO `k_location` VALUES ('2709', '鲁甸县', '305', '2', '0');
INSERT INTO `k_location` VALUES ('2710', '巧家县', '305', '2', '0');
INSERT INTO `k_location` VALUES ('2711', '盐津县', '305', '2', '0');
INSERT INTO `k_location` VALUES ('2712', '大关县', '305', '2', '0');
INSERT INTO `k_location` VALUES ('2713', '永善县', '305', '2', '0');
INSERT INTO `k_location` VALUES ('2714', '绥江县', '305', '2', '0');
INSERT INTO `k_location` VALUES ('2715', '镇雄县', '305', '2', '0');
INSERT INTO `k_location` VALUES ('2716', '彝良县', '305', '2', '0');
INSERT INTO `k_location` VALUES ('2717', '威信县', '305', '2', '0');
INSERT INTO `k_location` VALUES ('2718', '水富县', '305', '2', '0');
INSERT INTO `k_location` VALUES ('2719', '古城区', '306', '2', '0');
INSERT INTO `k_location` VALUES ('2720', '玉龙纳西族自治县', '306', '2', '0');
INSERT INTO `k_location` VALUES ('2721', '永胜县', '306', '2', '0');
INSERT INTO `k_location` VALUES ('2722', '华坪县', '306', '2', '0');
INSERT INTO `k_location` VALUES ('2723', '宁蒗彝族自治县', '306', '2', '0');
INSERT INTO `k_location` VALUES ('2724', '思茅区', '307', '2', '0');
INSERT INTO `k_location` VALUES ('2725', '宁洱哈尼族彝族自治县', '307', '2', '0');
INSERT INTO `k_location` VALUES ('2726', '墨江哈尼族自治县', '307', '2', '0');
INSERT INTO `k_location` VALUES ('2727', '景东彝族自治县', '307', '2', '0');
INSERT INTO `k_location` VALUES ('2728', '景谷傣族彝族自治县', '307', '2', '0');
INSERT INTO `k_location` VALUES ('2729', '镇沅彝族哈尼族拉祜族自治县', '307', '2', '0');
INSERT INTO `k_location` VALUES ('2730', '江城哈尼族彝族自治县', '307', '2', '0');
INSERT INTO `k_location` VALUES ('2731', '孟连傣族拉祜族佤族自治县', '307', '2', '0');
INSERT INTO `k_location` VALUES ('2732', '澜沧拉祜族自治县', '307', '2', '0');
INSERT INTO `k_location` VALUES ('2733', '西盟佤族自治县', '307', '2', '0');
INSERT INTO `k_location` VALUES ('2734', '临翔区', '308', '2', '0');
INSERT INTO `k_location` VALUES ('2735', '凤庆县', '308', '2', '0');
INSERT INTO `k_location` VALUES ('2736', '云县', '308', '2', '0');
INSERT INTO `k_location` VALUES ('2737', '永德县', '308', '2', '0');
INSERT INTO `k_location` VALUES ('2738', '镇康县', '308', '2', '0');
INSERT INTO `k_location` VALUES ('2739', '双江拉祜族佤族布朗族傣族自治县', '308', '2', '0');
INSERT INTO `k_location` VALUES ('2740', '耿马傣族佤族自治县', '308', '2', '0');
INSERT INTO `k_location` VALUES ('2741', '沧源佤族自治县', '308', '2', '0');
INSERT INTO `k_location` VALUES ('2742', '楚雄市', '309', '2', '0');
INSERT INTO `k_location` VALUES ('2743', '双柏县', '309', '2', '0');
INSERT INTO `k_location` VALUES ('2744', '牟定县', '309', '2', '0');
INSERT INTO `k_location` VALUES ('2745', '南华县', '309', '2', '0');
INSERT INTO `k_location` VALUES ('2746', '姚安县', '309', '2', '0');
INSERT INTO `k_location` VALUES ('2747', '大姚县', '309', '2', '0');
INSERT INTO `k_location` VALUES ('2748', '永仁县', '309', '2', '0');
INSERT INTO `k_location` VALUES ('2749', '元谋县', '309', '2', '0');
INSERT INTO `k_location` VALUES ('2750', '武定县', '309', '2', '0');
INSERT INTO `k_location` VALUES ('2751', '禄丰县', '309', '2', '0');
INSERT INTO `k_location` VALUES ('2752', '个旧市', '310', '2', '0');
INSERT INTO `k_location` VALUES ('2753', '开远市', '310', '2', '0');
INSERT INTO `k_location` VALUES ('2754', '蒙自市', '310', '2', '0');
INSERT INTO `k_location` VALUES ('2755', '弥勒市', '310', '2', '0');
INSERT INTO `k_location` VALUES ('2756', '屏边苗族自治县', '310', '2', '0');
INSERT INTO `k_location` VALUES ('2757', '建水县', '310', '2', '0');
INSERT INTO `k_location` VALUES ('2758', '石屏县', '310', '2', '0');
INSERT INTO `k_location` VALUES ('2759', '泸西县', '310', '2', '0');
INSERT INTO `k_location` VALUES ('2760', '元阳县', '310', '2', '0');
INSERT INTO `k_location` VALUES ('2761', '红河县', '310', '2', '0');
INSERT INTO `k_location` VALUES ('2762', '金平苗族瑶族傣族自治县', '310', '2', '0');
INSERT INTO `k_location` VALUES ('2763', '绿春县', '310', '2', '0');
INSERT INTO `k_location` VALUES ('2764', '河口瑶族自治县', '310', '2', '0');
INSERT INTO `k_location` VALUES ('2765', '文山市', '311', '2', '0');
INSERT INTO `k_location` VALUES ('2766', '砚山县', '311', '2', '0');
INSERT INTO `k_location` VALUES ('2767', '西畴县', '311', '2', '0');
INSERT INTO `k_location` VALUES ('2768', '麻栗坡县', '311', '2', '0');
INSERT INTO `k_location` VALUES ('2769', '马关县', '311', '2', '0');
INSERT INTO `k_location` VALUES ('2770', '丘北县', '311', '2', '0');
INSERT INTO `k_location` VALUES ('2771', '广南县', '311', '2', '0');
INSERT INTO `k_location` VALUES ('2772', '富宁县', '311', '2', '0');
INSERT INTO `k_location` VALUES ('2773', '景洪市', '312', '2', '0');
INSERT INTO `k_location` VALUES ('2774', '勐海县', '312', '2', '0');
INSERT INTO `k_location` VALUES ('2775', '勐腊县', '312', '2', '0');
INSERT INTO `k_location` VALUES ('2776', '大理市', '313', '2', '0');
INSERT INTO `k_location` VALUES ('2777', '漾濞彝族自治县', '313', '2', '0');
INSERT INTO `k_location` VALUES ('2778', '祥云县', '313', '2', '0');
INSERT INTO `k_location` VALUES ('2779', '宾川县', '313', '2', '0');
INSERT INTO `k_location` VALUES ('2780', '弥渡县', '313', '2', '0');
INSERT INTO `k_location` VALUES ('2781', '南涧彝族自治县', '313', '2', '0');
INSERT INTO `k_location` VALUES ('2782', '巍山彝族回族自治县', '313', '2', '0');
INSERT INTO `k_location` VALUES ('2783', '永平县', '313', '2', '0');
INSERT INTO `k_location` VALUES ('2784', '云龙县', '313', '2', '0');
INSERT INTO `k_location` VALUES ('2785', '洱源县', '313', '2', '0');
INSERT INTO `k_location` VALUES ('2786', '剑川县', '313', '2', '0');
INSERT INTO `k_location` VALUES ('2787', '鹤庆县', '313', '2', '0');
INSERT INTO `k_location` VALUES ('2788', '瑞丽市', '314', '2', '0');
INSERT INTO `k_location` VALUES ('2789', '芒市', '314', '2', '0');
INSERT INTO `k_location` VALUES ('2790', '梁河县', '314', '2', '0');
INSERT INTO `k_location` VALUES ('2791', '盈江县', '314', '2', '0');
INSERT INTO `k_location` VALUES ('2792', '陇川县', '314', '2', '0');
INSERT INTO `k_location` VALUES ('2793', '泸水县', '315', '2', '0');
INSERT INTO `k_location` VALUES ('2794', '福贡县', '315', '2', '0');
INSERT INTO `k_location` VALUES ('2795', '贡山独龙族怒族自治县', '315', '2', '0');
INSERT INTO `k_location` VALUES ('2796', '兰坪白族普米族自治县', '315', '2', '0');
INSERT INTO `k_location` VALUES ('2797', '香格里拉县', '316', '2', '0');
INSERT INTO `k_location` VALUES ('2798', '德钦县', '316', '2', '0');
INSERT INTO `k_location` VALUES ('2799', '维西傈僳族自治县', '316', '2', '0');
INSERT INTO `k_location` VALUES ('2800', '城关区', '317', '2', '0');
INSERT INTO `k_location` VALUES ('2801', '林周县', '317', '2', '0');
INSERT INTO `k_location` VALUES ('2802', '当雄县', '317', '2', '0');
INSERT INTO `k_location` VALUES ('2803', '尼木县', '317', '2', '0');
INSERT INTO `k_location` VALUES ('2804', '曲水县', '317', '2', '0');
INSERT INTO `k_location` VALUES ('2805', '堆龙德庆县', '317', '2', '0');
INSERT INTO `k_location` VALUES ('2806', '达孜县', '317', '2', '0');
INSERT INTO `k_location` VALUES ('2807', '墨竹工卡县', '317', '2', '0');
INSERT INTO `k_location` VALUES ('2808', '桑珠孜区', '318', '2', '0');
INSERT INTO `k_location` VALUES ('2809', '南木林县', '318', '2', '0');
INSERT INTO `k_location` VALUES ('2810', '江孜县', '318', '2', '0');
INSERT INTO `k_location` VALUES ('2811', '定日县', '318', '2', '0');
INSERT INTO `k_location` VALUES ('2812', '萨迦县', '318', '2', '0');
INSERT INTO `k_location` VALUES ('2813', '拉孜县', '318', '2', '0');
INSERT INTO `k_location` VALUES ('2814', '昂仁县', '318', '2', '0');
INSERT INTO `k_location` VALUES ('2815', '谢通门县', '318', '2', '0');
INSERT INTO `k_location` VALUES ('2816', '白朗县', '318', '2', '0');
INSERT INTO `k_location` VALUES ('2817', '仁布县', '318', '2', '0');
INSERT INTO `k_location` VALUES ('2818', '康马县', '318', '2', '0');
INSERT INTO `k_location` VALUES ('2819', '定结县', '318', '2', '0');
INSERT INTO `k_location` VALUES ('2820', '仲巴县', '318', '2', '0');
INSERT INTO `k_location` VALUES ('2821', '亚东县', '318', '2', '0');
INSERT INTO `k_location` VALUES ('2822', '吉隆县', '318', '2', '0');
INSERT INTO `k_location` VALUES ('2823', '聂拉木县', '318', '2', '0');
INSERT INTO `k_location` VALUES ('2824', '萨嘎县', '318', '2', '0');
INSERT INTO `k_location` VALUES ('2825', '岗巴县', '318', '2', '0');
INSERT INTO `k_location` VALUES ('2826', '昌都县', '319', '2', '0');
INSERT INTO `k_location` VALUES ('2827', '江达县', '319', '2', '0');
INSERT INTO `k_location` VALUES ('2828', '贡觉县', '319', '2', '0');
INSERT INTO `k_location` VALUES ('2829', '类乌齐县', '319', '2', '0');
INSERT INTO `k_location` VALUES ('2830', '丁青县', '319', '2', '0');
INSERT INTO `k_location` VALUES ('2831', '察雅县', '319', '2', '0');
INSERT INTO `k_location` VALUES ('2832', '八宿县', '319', '2', '0');
INSERT INTO `k_location` VALUES ('2833', '左贡县', '319', '2', '0');
INSERT INTO `k_location` VALUES ('2834', '芒康县', '319', '2', '0');
INSERT INTO `k_location` VALUES ('2835', '洛隆县', '319', '2', '0');
INSERT INTO `k_location` VALUES ('2836', '边坝县', '319', '2', '0');
INSERT INTO `k_location` VALUES ('2837', '乃东县', '320', '2', '0');
INSERT INTO `k_location` VALUES ('2838', '扎囊县', '320', '2', '0');
INSERT INTO `k_location` VALUES ('2839', '贡嘎县', '320', '2', '0');
INSERT INTO `k_location` VALUES ('2840', '桑日县', '320', '2', '0');
INSERT INTO `k_location` VALUES ('2841', '琼结县', '320', '2', '0');
INSERT INTO `k_location` VALUES ('2842', '曲松县', '320', '2', '0');
INSERT INTO `k_location` VALUES ('2843', '措美县', '320', '2', '0');
INSERT INTO `k_location` VALUES ('2844', '洛扎县', '320', '2', '0');
INSERT INTO `k_location` VALUES ('2845', '加查县', '320', '2', '0');
INSERT INTO `k_location` VALUES ('2846', '隆子县', '320', '2', '0');
INSERT INTO `k_location` VALUES ('2847', '错那县', '320', '2', '0');
INSERT INTO `k_location` VALUES ('2848', '浪卡子县', '320', '2', '0');
INSERT INTO `k_location` VALUES ('2849', '那曲县', '321', '2', '0');
INSERT INTO `k_location` VALUES ('2850', '嘉黎县', '321', '2', '0');
INSERT INTO `k_location` VALUES ('2851', '比如县', '321', '2', '0');
INSERT INTO `k_location` VALUES ('2852', '聂荣县', '321', '2', '0');
INSERT INTO `k_location` VALUES ('2853', '安多县', '321', '2', '0');
INSERT INTO `k_location` VALUES ('2854', '申扎县', '321', '2', '0');
INSERT INTO `k_location` VALUES ('2855', '索县', '321', '2', '0');
INSERT INTO `k_location` VALUES ('2856', '班戈县', '321', '2', '0');
INSERT INTO `k_location` VALUES ('2857', '巴青县', '321', '2', '0');
INSERT INTO `k_location` VALUES ('2858', '尼玛县', '321', '2', '0');
INSERT INTO `k_location` VALUES ('2859', '双湖县', '321', '2', '0');
INSERT INTO `k_location` VALUES ('2860', '普兰县', '322', '2', '0');
INSERT INTO `k_location` VALUES ('2861', '札达县', '322', '2', '0');
INSERT INTO `k_location` VALUES ('2862', '噶尔县', '322', '2', '0');
INSERT INTO `k_location` VALUES ('2863', '日土县', '322', '2', '0');
INSERT INTO `k_location` VALUES ('2864', '革吉县', '322', '2', '0');
INSERT INTO `k_location` VALUES ('2865', '改则县', '322', '2', '0');
INSERT INTO `k_location` VALUES ('2866', '措勤县', '322', '2', '0');
INSERT INTO `k_location` VALUES ('2867', '林芝县', '323', '2', '0');
INSERT INTO `k_location` VALUES ('2868', '工布江达县', '323', '2', '0');
INSERT INTO `k_location` VALUES ('2869', '米林县', '323', '2', '0');
INSERT INTO `k_location` VALUES ('2870', '墨脱县', '323', '2', '0');
INSERT INTO `k_location` VALUES ('2871', '波密县', '323', '2', '0');
INSERT INTO `k_location` VALUES ('2872', '察隅县', '323', '2', '0');
INSERT INTO `k_location` VALUES ('2873', '朗县', '323', '2', '0');
INSERT INTO `k_location` VALUES ('2874', '新城区', '324', '2', '0');
INSERT INTO `k_location` VALUES ('2875', '碑林区', '324', '2', '0');
INSERT INTO `k_location` VALUES ('2876', '莲湖区', '324', '2', '0');
INSERT INTO `k_location` VALUES ('2877', '灞桥区', '324', '2', '0');
INSERT INTO `k_location` VALUES ('2878', '未央区', '324', '2', '0');
INSERT INTO `k_location` VALUES ('2879', '雁塔区', '324', '2', '0');
INSERT INTO `k_location` VALUES ('2880', '阎良区', '324', '2', '0');
INSERT INTO `k_location` VALUES ('2881', '临潼区', '324', '2', '0');
INSERT INTO `k_location` VALUES ('2882', '长安区', '324', '2', '0');
INSERT INTO `k_location` VALUES ('2883', '蓝田县', '324', '2', '0');
INSERT INTO `k_location` VALUES ('2884', '周至县', '324', '2', '0');
INSERT INTO `k_location` VALUES ('2885', '户县', '324', '2', '0');
INSERT INTO `k_location` VALUES ('2886', '高陵县', '324', '2', '0');
INSERT INTO `k_location` VALUES ('2887', '王益区', '325', '2', '0');
INSERT INTO `k_location` VALUES ('2888', '印台区', '325', '2', '0');
INSERT INTO `k_location` VALUES ('2889', '耀州区', '325', '2', '0');
INSERT INTO `k_location` VALUES ('2890', '宜君县', '325', '2', '0');
INSERT INTO `k_location` VALUES ('2891', '渭滨区', '326', '2', '0');
INSERT INTO `k_location` VALUES ('2892', '金台区', '326', '2', '0');
INSERT INTO `k_location` VALUES ('2893', '陈仓区', '326', '2', '0');
INSERT INTO `k_location` VALUES ('2894', '凤翔县', '326', '2', '0');
INSERT INTO `k_location` VALUES ('2895', '岐山县', '326', '2', '0');
INSERT INTO `k_location` VALUES ('2896', '扶风县', '326', '2', '0');
INSERT INTO `k_location` VALUES ('2897', '眉县', '326', '2', '0');
INSERT INTO `k_location` VALUES ('2898', '陇县', '326', '2', '0');
INSERT INTO `k_location` VALUES ('2899', '千阳县', '326', '2', '0');
INSERT INTO `k_location` VALUES ('2900', '麟游县', '326', '2', '0');
INSERT INTO `k_location` VALUES ('2901', '凤县', '326', '2', '0');
INSERT INTO `k_location` VALUES ('2902', '太白县', '326', '2', '0');
INSERT INTO `k_location` VALUES ('2903', '秦都区', '327', '2', '0');
INSERT INTO `k_location` VALUES ('2904', '杨陵区', '327', '2', '0');
INSERT INTO `k_location` VALUES ('2905', '渭城区', '327', '2', '0');
INSERT INTO `k_location` VALUES ('2906', '三原县', '327', '2', '0');
INSERT INTO `k_location` VALUES ('2907', '泾阳县', '327', '2', '0');
INSERT INTO `k_location` VALUES ('2908', '乾县', '327', '2', '0');
INSERT INTO `k_location` VALUES ('2909', '礼泉县', '327', '2', '0');
INSERT INTO `k_location` VALUES ('2910', '永寿县', '327', '2', '0');
INSERT INTO `k_location` VALUES ('2911', '彬县', '327', '2', '0');
INSERT INTO `k_location` VALUES ('2912', '长武县', '327', '2', '0');
INSERT INTO `k_location` VALUES ('2913', '旬邑县', '327', '2', '0');
INSERT INTO `k_location` VALUES ('2914', '淳化县', '327', '2', '0');
INSERT INTO `k_location` VALUES ('2915', '武功县', '327', '2', '0');
INSERT INTO `k_location` VALUES ('2916', '兴平市', '327', '2', '0');
INSERT INTO `k_location` VALUES ('2917', '临渭区', '328', '2', '0');
INSERT INTO `k_location` VALUES ('2918', '华县', '328', '2', '0');
INSERT INTO `k_location` VALUES ('2919', '潼关县', '328', '2', '0');
INSERT INTO `k_location` VALUES ('2920', '大荔县', '328', '2', '0');
INSERT INTO `k_location` VALUES ('2921', '合阳县', '328', '2', '0');
INSERT INTO `k_location` VALUES ('2922', '澄城县', '328', '2', '0');
INSERT INTO `k_location` VALUES ('2923', '蒲城县', '328', '2', '0');
INSERT INTO `k_location` VALUES ('2924', '白水县', '328', '2', '0');
INSERT INTO `k_location` VALUES ('2925', '富平县', '328', '2', '0');
INSERT INTO `k_location` VALUES ('2926', '韩城市', '328', '2', '0');
INSERT INTO `k_location` VALUES ('2927', '华阴市', '328', '2', '0');
INSERT INTO `k_location` VALUES ('2928', '宝塔区', '329', '2', '0');
INSERT INTO `k_location` VALUES ('2929', '延长县', '329', '2', '0');
INSERT INTO `k_location` VALUES ('2930', '延川县', '329', '2', '0');
INSERT INTO `k_location` VALUES ('2931', '子长县', '329', '2', '0');
INSERT INTO `k_location` VALUES ('2932', '安塞县', '329', '2', '0');
INSERT INTO `k_location` VALUES ('2933', '志丹县', '329', '2', '0');
INSERT INTO `k_location` VALUES ('2934', '吴起县', '329', '2', '0');
INSERT INTO `k_location` VALUES ('2935', '甘泉县', '329', '2', '0');
INSERT INTO `k_location` VALUES ('2936', '富县', '329', '2', '0');
INSERT INTO `k_location` VALUES ('2937', '洛川县', '329', '2', '0');
INSERT INTO `k_location` VALUES ('2938', '宜川县', '329', '2', '0');
INSERT INTO `k_location` VALUES ('2939', '黄龙县', '329', '2', '0');
INSERT INTO `k_location` VALUES ('2940', '黄陵县', '329', '2', '0');
INSERT INTO `k_location` VALUES ('2941', '汉台区', '330', '2', '0');
INSERT INTO `k_location` VALUES ('2942', '南郑县', '330', '2', '0');
INSERT INTO `k_location` VALUES ('2943', '城固县', '330', '2', '0');
INSERT INTO `k_location` VALUES ('2944', '洋县', '330', '2', '0');
INSERT INTO `k_location` VALUES ('2945', '西乡县', '330', '2', '0');
INSERT INTO `k_location` VALUES ('2946', '勉县', '330', '2', '0');
INSERT INTO `k_location` VALUES ('2947', '宁强县', '330', '2', '0');
INSERT INTO `k_location` VALUES ('2948', '略阳县', '330', '2', '0');
INSERT INTO `k_location` VALUES ('2949', '镇巴县', '330', '2', '0');
INSERT INTO `k_location` VALUES ('2950', '留坝县', '330', '2', '0');
INSERT INTO `k_location` VALUES ('2951', '佛坪县', '330', '2', '0');
INSERT INTO `k_location` VALUES ('2952', '榆阳区', '331', '2', '0');
INSERT INTO `k_location` VALUES ('2953', '神木县', '331', '2', '0');
INSERT INTO `k_location` VALUES ('2954', '府谷县', '331', '2', '0');
INSERT INTO `k_location` VALUES ('2955', '横山县', '331', '2', '0');
INSERT INTO `k_location` VALUES ('2956', '靖边县', '331', '2', '0');
INSERT INTO `k_location` VALUES ('2957', '定边县', '331', '2', '0');
INSERT INTO `k_location` VALUES ('2958', '绥德县', '331', '2', '0');
INSERT INTO `k_location` VALUES ('2959', '米脂县', '331', '2', '0');
INSERT INTO `k_location` VALUES ('2960', '佳县', '331', '2', '0');
INSERT INTO `k_location` VALUES ('2961', '吴堡县', '331', '2', '0');
INSERT INTO `k_location` VALUES ('2962', '清涧县', '331', '2', '0');
INSERT INTO `k_location` VALUES ('2963', '子洲县', '331', '2', '0');
INSERT INTO `k_location` VALUES ('2964', '汉滨区', '332', '2', '0');
INSERT INTO `k_location` VALUES ('2965', '汉阴县', '332', '2', '0');
INSERT INTO `k_location` VALUES ('2966', '石泉县', '332', '2', '0');
INSERT INTO `k_location` VALUES ('2967', '宁陕县', '332', '2', '0');
INSERT INTO `k_location` VALUES ('2968', '紫阳县', '332', '2', '0');
INSERT INTO `k_location` VALUES ('2969', '岚皋县', '332', '2', '0');
INSERT INTO `k_location` VALUES ('2970', '平利县', '332', '2', '0');
INSERT INTO `k_location` VALUES ('2971', '镇坪县', '332', '2', '0');
INSERT INTO `k_location` VALUES ('2972', '旬阳县', '332', '2', '0');
INSERT INTO `k_location` VALUES ('2973', '白河县', '332', '2', '0');
INSERT INTO `k_location` VALUES ('2974', '商州区', '333', '2', '0');
INSERT INTO `k_location` VALUES ('2975', '洛南县', '333', '2', '0');
INSERT INTO `k_location` VALUES ('2976', '丹凤县', '333', '2', '0');
INSERT INTO `k_location` VALUES ('2977', '商南县', '333', '2', '0');
INSERT INTO `k_location` VALUES ('2978', '山阳县', '333', '2', '0');
INSERT INTO `k_location` VALUES ('2979', '镇安县', '333', '2', '0');
INSERT INTO `k_location` VALUES ('2980', '柞水县', '333', '2', '0');
INSERT INTO `k_location` VALUES ('2981', '城关区', '334', '2', '0');
INSERT INTO `k_location` VALUES ('2982', '七里河区', '334', '2', '0');
INSERT INTO `k_location` VALUES ('2983', '西固区', '334', '2', '0');
INSERT INTO `k_location` VALUES ('2984', '安宁区', '334', '2', '0');
INSERT INTO `k_location` VALUES ('2985', '红古区', '334', '2', '0');
INSERT INTO `k_location` VALUES ('2986', '永登县', '334', '2', '0');
INSERT INTO `k_location` VALUES ('2987', '皋兰县', '334', '2', '0');
INSERT INTO `k_location` VALUES ('2988', '榆中县', '334', '2', '0');
INSERT INTO `k_location` VALUES ('2989', '金川区', '336', '2', '0');
INSERT INTO `k_location` VALUES ('2990', '永昌县', '336', '2', '0');
INSERT INTO `k_location` VALUES ('2991', '白银区', '337', '2', '0');
INSERT INTO `k_location` VALUES ('2992', '平川区', '337', '2', '0');
INSERT INTO `k_location` VALUES ('2993', '靖远县', '337', '2', '0');
INSERT INTO `k_location` VALUES ('2994', '会宁县', '337', '2', '0');
INSERT INTO `k_location` VALUES ('2995', '景泰县', '337', '2', '0');
INSERT INTO `k_location` VALUES ('2996', '秦州区', '338', '2', '0');
INSERT INTO `k_location` VALUES ('2997', '麦积区', '338', '2', '0');
INSERT INTO `k_location` VALUES ('2998', '清水县', '338', '2', '0');
INSERT INTO `k_location` VALUES ('2999', '秦安县', '338', '2', '0');
INSERT INTO `k_location` VALUES ('3000', '甘谷县', '338', '2', '0');
INSERT INTO `k_location` VALUES ('3001', '武山县', '338', '2', '0');
INSERT INTO `k_location` VALUES ('3002', '张家川回族自治县', '338', '2', '0');
INSERT INTO `k_location` VALUES ('3003', '凉州区', '339', '2', '0');
INSERT INTO `k_location` VALUES ('3004', '民勤县', '339', '2', '0');
INSERT INTO `k_location` VALUES ('3005', '古浪县', '339', '2', '0');
INSERT INTO `k_location` VALUES ('3006', '天祝藏族自治县', '339', '2', '0');
INSERT INTO `k_location` VALUES ('3007', '甘州区', '340', '2', '0');
INSERT INTO `k_location` VALUES ('3008', '肃南裕固族自治县', '340', '2', '0');
INSERT INTO `k_location` VALUES ('3009', '民乐县', '340', '2', '0');
INSERT INTO `k_location` VALUES ('3010', '临泽县', '340', '2', '0');
INSERT INTO `k_location` VALUES ('3011', '高台县', '340', '2', '0');
INSERT INTO `k_location` VALUES ('3012', '山丹县', '340', '2', '0');
INSERT INTO `k_location` VALUES ('3013', '崆峒区', '341', '2', '0');
INSERT INTO `k_location` VALUES ('3014', '泾川县', '341', '2', '0');
INSERT INTO `k_location` VALUES ('3015', '灵台县', '341', '2', '0');
INSERT INTO `k_location` VALUES ('3016', '崇信县', '341', '2', '0');
INSERT INTO `k_location` VALUES ('3017', '华亭县', '341', '2', '0');
INSERT INTO `k_location` VALUES ('3018', '庄浪县', '341', '2', '0');
INSERT INTO `k_location` VALUES ('3019', '静宁县', '341', '2', '0');
INSERT INTO `k_location` VALUES ('3020', '肃州区', '342', '2', '0');
INSERT INTO `k_location` VALUES ('3021', '金塔县', '342', '2', '0');
INSERT INTO `k_location` VALUES ('3022', '瓜州县', '342', '2', '0');
INSERT INTO `k_location` VALUES ('3023', '肃北蒙古族自治县', '342', '2', '0');
INSERT INTO `k_location` VALUES ('3024', '阿克塞哈萨克族自治县', '342', '2', '0');
INSERT INTO `k_location` VALUES ('3025', '玉门市', '342', '2', '0');
INSERT INTO `k_location` VALUES ('3026', '敦煌市', '342', '2', '0');
INSERT INTO `k_location` VALUES ('3027', '西峰区', '343', '2', '0');
INSERT INTO `k_location` VALUES ('3028', '庆城县', '343', '2', '0');
INSERT INTO `k_location` VALUES ('3029', '环县', '343', '2', '0');
INSERT INTO `k_location` VALUES ('3030', '华池县', '343', '2', '0');
INSERT INTO `k_location` VALUES ('3031', '合水县', '343', '2', '0');
INSERT INTO `k_location` VALUES ('3032', '正宁县', '343', '2', '0');
INSERT INTO `k_location` VALUES ('3033', '宁县', '343', '2', '0');
INSERT INTO `k_location` VALUES ('3034', '镇原县', '343', '2', '0');
INSERT INTO `k_location` VALUES ('3035', '安定区', '344', '2', '0');
INSERT INTO `k_location` VALUES ('3036', '通渭县', '344', '2', '0');
INSERT INTO `k_location` VALUES ('3037', '陇西县', '344', '2', '0');
INSERT INTO `k_location` VALUES ('3038', '渭源县', '344', '2', '0');
INSERT INTO `k_location` VALUES ('3039', '临洮县', '344', '2', '0');
INSERT INTO `k_location` VALUES ('3040', '漳县', '344', '2', '0');
INSERT INTO `k_location` VALUES ('3041', '岷县', '344', '2', '0');
INSERT INTO `k_location` VALUES ('3042', '武都区', '345', '2', '0');
INSERT INTO `k_location` VALUES ('3043', '成县', '345', '2', '0');
INSERT INTO `k_location` VALUES ('3044', '文县', '345', '2', '0');
INSERT INTO `k_location` VALUES ('3045', '宕昌县', '345', '2', '0');
INSERT INTO `k_location` VALUES ('3046', '康县', '345', '2', '0');
INSERT INTO `k_location` VALUES ('3047', '西和县', '345', '2', '0');
INSERT INTO `k_location` VALUES ('3048', '礼县', '345', '2', '0');
INSERT INTO `k_location` VALUES ('3049', '徽县', '345', '2', '0');
INSERT INTO `k_location` VALUES ('3050', '两当县', '345', '2', '0');
INSERT INTO `k_location` VALUES ('3051', '临夏市', '346', '2', '0');
INSERT INTO `k_location` VALUES ('3052', '临夏县', '346', '2', '0');
INSERT INTO `k_location` VALUES ('3053', '康乐县', '346', '2', '0');
INSERT INTO `k_location` VALUES ('3054', '永靖县', '346', '2', '0');
INSERT INTO `k_location` VALUES ('3055', '广河县', '346', '2', '0');
INSERT INTO `k_location` VALUES ('3056', '和政县', '346', '2', '0');
INSERT INTO `k_location` VALUES ('3057', '东乡族自治县', '346', '2', '0');
INSERT INTO `k_location` VALUES ('3058', '积石山保安族东乡族撒拉族自治县', '346', '2', '0');
INSERT INTO `k_location` VALUES ('3059', '合作市', '347', '2', '0');
INSERT INTO `k_location` VALUES ('3060', '临潭县', '347', '2', '0');
INSERT INTO `k_location` VALUES ('3061', '卓尼县', '347', '2', '0');
INSERT INTO `k_location` VALUES ('3062', '舟曲县', '347', '2', '0');
INSERT INTO `k_location` VALUES ('3063', '迭部县', '347', '2', '0');
INSERT INTO `k_location` VALUES ('3064', '玛曲县', '347', '2', '0');
INSERT INTO `k_location` VALUES ('3065', '碌曲县', '347', '2', '0');
INSERT INTO `k_location` VALUES ('3066', '夏河县', '347', '2', '0');
INSERT INTO `k_location` VALUES ('3067', '城东区', '348', '2', '0');
INSERT INTO `k_location` VALUES ('3068', '城中区', '348', '2', '0');
INSERT INTO `k_location` VALUES ('3069', '城西区', '348', '2', '0');
INSERT INTO `k_location` VALUES ('3070', '城北区', '348', '2', '0');
INSERT INTO `k_location` VALUES ('3071', '大通回族土族自治县', '348', '2', '0');
INSERT INTO `k_location` VALUES ('3072', '湟中县', '348', '2', '0');
INSERT INTO `k_location` VALUES ('3073', '湟源县', '348', '2', '0');
INSERT INTO `k_location` VALUES ('3074', '乐都区', '349', '2', '0');
INSERT INTO `k_location` VALUES ('3075', '平安县', '349', '2', '0');
INSERT INTO `k_location` VALUES ('3076', '民和回族土族自治县', '349', '2', '0');
INSERT INTO `k_location` VALUES ('3077', '互助土族自治县', '349', '2', '0');
INSERT INTO `k_location` VALUES ('3078', '化隆回族自治县', '349', '2', '0');
INSERT INTO `k_location` VALUES ('3079', '循化撒拉族自治县', '349', '2', '0');
INSERT INTO `k_location` VALUES ('3080', '门源回族自治县', '350', '2', '0');
INSERT INTO `k_location` VALUES ('3081', '祁连县', '350', '2', '0');
INSERT INTO `k_location` VALUES ('3082', '海晏县', '350', '2', '0');
INSERT INTO `k_location` VALUES ('3083', '刚察县', '350', '2', '0');
INSERT INTO `k_location` VALUES ('3084', '同仁县', '351', '2', '0');
INSERT INTO `k_location` VALUES ('3085', '尖扎县', '351', '2', '0');
INSERT INTO `k_location` VALUES ('3086', '泽库县', '351', '2', '0');
INSERT INTO `k_location` VALUES ('3087', '河南蒙古族自治县', '351', '2', '0');
INSERT INTO `k_location` VALUES ('3088', '共和县', '352', '2', '0');
INSERT INTO `k_location` VALUES ('3089', '同德县', '352', '2', '0');
INSERT INTO `k_location` VALUES ('3090', '贵德县', '352', '2', '0');
INSERT INTO `k_location` VALUES ('3091', '兴海县', '352', '2', '0');
INSERT INTO `k_location` VALUES ('3092', '贵南县', '352', '2', '0');
INSERT INTO `k_location` VALUES ('3093', '玛沁县', '353', '2', '0');
INSERT INTO `k_location` VALUES ('3094', '班玛县', '353', '2', '0');
INSERT INTO `k_location` VALUES ('3095', '甘德县', '353', '2', '0');
INSERT INTO `k_location` VALUES ('3096', '达日县', '353', '2', '0');
INSERT INTO `k_location` VALUES ('3097', '久治县', '353', '2', '0');
INSERT INTO `k_location` VALUES ('3098', '玛多县', '353', '2', '0');
INSERT INTO `k_location` VALUES ('3099', '玉树市', '354', '2', '0');
INSERT INTO `k_location` VALUES ('3100', '杂多县', '354', '2', '0');
INSERT INTO `k_location` VALUES ('3101', '称多县', '354', '2', '0');
INSERT INTO `k_location` VALUES ('3102', '治多县', '354', '2', '0');
INSERT INTO `k_location` VALUES ('3103', '囊谦县', '354', '2', '0');
INSERT INTO `k_location` VALUES ('3104', '曲麻莱县', '354', '2', '0');
INSERT INTO `k_location` VALUES ('3105', '格尔木市', '355', '2', '0');
INSERT INTO `k_location` VALUES ('3106', '德令哈市', '355', '2', '0');
INSERT INTO `k_location` VALUES ('3107', '乌兰县', '355', '2', '0');
INSERT INTO `k_location` VALUES ('3108', '都兰县', '355', '2', '0');
INSERT INTO `k_location` VALUES ('3109', '天峻县', '355', '2', '0');
INSERT INTO `k_location` VALUES ('3110', '兴庆区', '356', '2', '0');
INSERT INTO `k_location` VALUES ('3111', '西夏区', '356', '2', '0');
INSERT INTO `k_location` VALUES ('3112', '金凤区', '356', '2', '0');
INSERT INTO `k_location` VALUES ('3113', '永宁县', '356', '2', '0');
INSERT INTO `k_location` VALUES ('3114', '贺兰县', '356', '2', '0');
INSERT INTO `k_location` VALUES ('3115', '灵武市', '356', '2', '0');
INSERT INTO `k_location` VALUES ('3116', '大武口区', '357', '2', '0');
INSERT INTO `k_location` VALUES ('3117', '惠农区', '357', '2', '0');
INSERT INTO `k_location` VALUES ('3118', '平罗县', '357', '2', '0');
INSERT INTO `k_location` VALUES ('3119', '利通区', '358', '2', '0');
INSERT INTO `k_location` VALUES ('3120', '红寺堡区', '358', '2', '0');
INSERT INTO `k_location` VALUES ('3121', '盐池县', '358', '2', '0');
INSERT INTO `k_location` VALUES ('3122', '同心县', '358', '2', '0');
INSERT INTO `k_location` VALUES ('3123', '青铜峡市', '358', '2', '0');
INSERT INTO `k_location` VALUES ('3124', '原州区', '359', '2', '0');
INSERT INTO `k_location` VALUES ('3125', '西吉县', '359', '2', '0');
INSERT INTO `k_location` VALUES ('3126', '隆德县', '359', '2', '0');
INSERT INTO `k_location` VALUES ('3127', '泾源县', '359', '2', '0');
INSERT INTO `k_location` VALUES ('3128', '彭阳县', '359', '2', '0');
INSERT INTO `k_location` VALUES ('3129', '沙坡头区', '360', '2', '0');
INSERT INTO `k_location` VALUES ('3130', '中宁县', '360', '2', '0');
INSERT INTO `k_location` VALUES ('3131', '海原县', '360', '2', '0');
INSERT INTO `k_location` VALUES ('3132', '天山区', '361', '2', '0');
INSERT INTO `k_location` VALUES ('3133', '沙依巴克区', '361', '2', '0');
INSERT INTO `k_location` VALUES ('3134', '新市区', '361', '2', '0');
INSERT INTO `k_location` VALUES ('3135', '水磨沟区', '361', '2', '0');
INSERT INTO `k_location` VALUES ('3136', '头屯河区', '361', '2', '0');
INSERT INTO `k_location` VALUES ('3137', '达坂城区', '361', '2', '0');
INSERT INTO `k_location` VALUES ('3138', '米东区', '361', '2', '0');
INSERT INTO `k_location` VALUES ('3139', '乌鲁木齐县', '361', '2', '0');
INSERT INTO `k_location` VALUES ('3140', '独山子区', '362', '2', '0');
INSERT INTO `k_location` VALUES ('3141', '克拉玛依区', '362', '2', '0');
INSERT INTO `k_location` VALUES ('3142', '白碱滩区', '362', '2', '0');
INSERT INTO `k_location` VALUES ('3143', '乌尔禾区', '362', '2', '0');
INSERT INTO `k_location` VALUES ('3144', '吐鲁番市', '363', '2', '0');
INSERT INTO `k_location` VALUES ('3145', '鄯善县', '363', '2', '0');
INSERT INTO `k_location` VALUES ('3146', '托克逊县', '363', '2', '0');
INSERT INTO `k_location` VALUES ('3147', '哈密市', '364', '2', '0');
INSERT INTO `k_location` VALUES ('3148', '巴里坤哈萨克自治县', '364', '2', '0');
INSERT INTO `k_location` VALUES ('3149', '伊吾县', '364', '2', '0');
INSERT INTO `k_location` VALUES ('3150', '昌吉市', '365', '2', '0');
INSERT INTO `k_location` VALUES ('3151', '阜康市', '365', '2', '0');
INSERT INTO `k_location` VALUES ('3152', '呼图壁县', '365', '2', '0');
INSERT INTO `k_location` VALUES ('3153', '玛纳斯县', '365', '2', '0');
INSERT INTO `k_location` VALUES ('3154', '奇台县', '365', '2', '0');
INSERT INTO `k_location` VALUES ('3155', '吉木萨尔县', '365', '2', '0');
INSERT INTO `k_location` VALUES ('3156', '木垒哈萨克自治县', '365', '2', '0');
INSERT INTO `k_location` VALUES ('3157', '博乐市', '366', '2', '0');
INSERT INTO `k_location` VALUES ('3158', '阿拉山口市', '366', '2', '0');
INSERT INTO `k_location` VALUES ('3159', '精河县', '366', '2', '0');
INSERT INTO `k_location` VALUES ('3160', '温泉县', '366', '2', '0');
INSERT INTO `k_location` VALUES ('3161', '库尔勒市', '367', '2', '0');
INSERT INTO `k_location` VALUES ('3162', '轮台县', '367', '2', '0');
INSERT INTO `k_location` VALUES ('3163', '尉犁县', '367', '2', '0');
INSERT INTO `k_location` VALUES ('3164', '若羌县', '367', '2', '0');
INSERT INTO `k_location` VALUES ('3165', '且末县', '367', '2', '0');
INSERT INTO `k_location` VALUES ('3166', '焉耆回族自治县', '367', '2', '0');
INSERT INTO `k_location` VALUES ('3167', '和静县', '367', '2', '0');
INSERT INTO `k_location` VALUES ('3168', '和硕县', '367', '2', '0');
INSERT INTO `k_location` VALUES ('3169', '博湖县', '367', '2', '0');
INSERT INTO `k_location` VALUES ('3170', '阿克苏市', '368', '2', '0');
INSERT INTO `k_location` VALUES ('3171', '温宿县', '368', '2', '0');
INSERT INTO `k_location` VALUES ('3172', '库车县', '368', '2', '0');
INSERT INTO `k_location` VALUES ('3173', '沙雅县', '368', '2', '0');
INSERT INTO `k_location` VALUES ('3174', '新和县', '368', '2', '0');
INSERT INTO `k_location` VALUES ('3175', '拜城县', '368', '2', '0');
INSERT INTO `k_location` VALUES ('3176', '乌什县', '368', '2', '0');
INSERT INTO `k_location` VALUES ('3177', '阿瓦提县', '368', '2', '0');
INSERT INTO `k_location` VALUES ('3178', '柯坪县', '368', '2', '0');
INSERT INTO `k_location` VALUES ('3179', '阿图什市', '369', '2', '0');
INSERT INTO `k_location` VALUES ('3180', '阿克陶县', '369', '2', '0');
INSERT INTO `k_location` VALUES ('3181', '阿合奇县', '369', '2', '0');
INSERT INTO `k_location` VALUES ('3182', '乌恰县', '369', '2', '0');
INSERT INTO `k_location` VALUES ('3183', '喀什市', '370', '2', '0');
INSERT INTO `k_location` VALUES ('3184', '疏附县', '370', '2', '0');
INSERT INTO `k_location` VALUES ('3185', '疏勒县', '370', '2', '0');
INSERT INTO `k_location` VALUES ('3186', '英吉沙县', '370', '2', '0');
INSERT INTO `k_location` VALUES ('3187', '泽普县', '370', '2', '0');
INSERT INTO `k_location` VALUES ('3188', '莎车县', '370', '2', '0');
INSERT INTO `k_location` VALUES ('3189', '叶城县', '370', '2', '0');
INSERT INTO `k_location` VALUES ('3190', '麦盖提县', '370', '2', '0');
INSERT INTO `k_location` VALUES ('3191', '岳普湖县', '370', '2', '0');
INSERT INTO `k_location` VALUES ('3192', '伽师县', '370', '2', '0');
INSERT INTO `k_location` VALUES ('3193', '巴楚县', '370', '2', '0');
INSERT INTO `k_location` VALUES ('3194', '塔什库尔干塔吉克自治县', '370', '2', '0');
INSERT INTO `k_location` VALUES ('3195', '和田市', '371', '2', '0');
INSERT INTO `k_location` VALUES ('3196', '和田县', '371', '2', '0');
INSERT INTO `k_location` VALUES ('3197', '墨玉县', '371', '2', '0');
INSERT INTO `k_location` VALUES ('3198', '皮山县', '371', '2', '0');
INSERT INTO `k_location` VALUES ('3199', '洛浦县', '371', '2', '0');
INSERT INTO `k_location` VALUES ('3200', '策勒县', '371', '2', '0');
INSERT INTO `k_location` VALUES ('3201', '于田县', '371', '2', '0');
INSERT INTO `k_location` VALUES ('3202', '民丰县', '371', '2', '0');
INSERT INTO `k_location` VALUES ('3203', '伊宁市', '372', '2', '0');
INSERT INTO `k_location` VALUES ('3204', '奎屯市', '372', '2', '0');
INSERT INTO `k_location` VALUES ('3205', '伊宁县', '372', '2', '0');
INSERT INTO `k_location` VALUES ('3206', '察布查尔锡伯自治县', '372', '2', '0');
INSERT INTO `k_location` VALUES ('3207', '霍城县', '372', '2', '0');
INSERT INTO `k_location` VALUES ('3208', '巩留县', '372', '2', '0');
INSERT INTO `k_location` VALUES ('3209', '新源县', '372', '2', '0');
INSERT INTO `k_location` VALUES ('3210', '昭苏县', '372', '2', '0');
INSERT INTO `k_location` VALUES ('3211', '特克斯县', '372', '2', '0');
INSERT INTO `k_location` VALUES ('3212', '尼勒克县', '372', '2', '0');
INSERT INTO `k_location` VALUES ('3213', '塔城市', '373', '2', '0');
INSERT INTO `k_location` VALUES ('3214', '乌苏市', '373', '2', '0');
INSERT INTO `k_location` VALUES ('3215', '额敏县', '373', '2', '0');
INSERT INTO `k_location` VALUES ('3216', '沙湾县', '373', '2', '0');
INSERT INTO `k_location` VALUES ('3217', '托里县', '373', '2', '0');
INSERT INTO `k_location` VALUES ('3218', '裕民县', '373', '2', '0');
INSERT INTO `k_location` VALUES ('3219', '和布克赛尔蒙古自治县', '373', '2', '0');
INSERT INTO `k_location` VALUES ('3220', '阿勒泰市', '374', '2', '0');
INSERT INTO `k_location` VALUES ('3221', '布尔津县', '374', '2', '0');
INSERT INTO `k_location` VALUES ('3222', '富蕴县', '374', '2', '0');
INSERT INTO `k_location` VALUES ('3223', '福海县', '374', '2', '0');
INSERT INTO `k_location` VALUES ('3224', '哈巴河县', '374', '2', '0');
INSERT INTO `k_location` VALUES ('3225', '青河县', '374', '2', '0');
INSERT INTO `k_location` VALUES ('3226', '吉木乃县', '374', '2', '0');
INSERT INTO `k_location` VALUES ('3227', '台湾', '32', '1', '0');
INSERT INTO `k_location` VALUES ('3228', '香港', '33', '1', '0');
INSERT INTO `k_location` VALUES ('3229', '澳门', '34', '1', '0');
INSERT INTO `k_location` VALUES ('3230', '台湾', '3227', '2', '0');
INSERT INTO `k_location` VALUES ('3231', '香港', '3228', '2', '0');
INSERT INTO `k_location` VALUES ('3232', '澳门', '3229', '2', '0');
INSERT INTO `k_location` VALUES ('3233', '东莞市', '247', '2', '0');
INSERT INTO `k_location` VALUES ('3234', '中山市', '248', '2', '0');
INSERT INTO `k_location` VALUES ('3235', '三沙市', '268', '2', '0');
INSERT INTO `k_location` VALUES ('3236', '嘉峪关市', '335', '2', '0');
INSERT INTO `k_location` VALUES ('3237', '石河子市', '375', '2', '0');
INSERT INTO `k_location` VALUES ('3238', '阿拉尔市', '376', '2', '0');
INSERT INTO `k_location` VALUES ('3239', '图木舒克市', '377', '2', '0');
INSERT INTO `k_location` VALUES ('3240', '五家渠市', '378', '2', '0');

-- ----------------------------
-- Table structure for k_student
-- ----------------------------
DROP TABLE IF EXISTS `k_student`;
CREATE TABLE `k_student` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '姓名',
  `headpic` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `province_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '省级行政区id。k_location(ID)',
  `city_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '地级行政区id。k_location(ID)',
  `district_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '区县ID',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `school_name` varchar(64) NOT NULL DEFAULT '' COMMENT '学校名称',
  `teacher_name` varchar(64) NOT NULL DEFAULT '' COMMENT '班主任名称',
  `teacher_cell` char(11) NOT NULL DEFAULT '' COMMENT '班主任手机',
  `id_card` varchar(32) NOT NULL DEFAULT '' COMMENT '身份证',
  `cell` char(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `tags` varchar(255) NOT NULL DEFAULT '' COMMENT '学员类型',
  `level` tinyint(1) NOT NULL DEFAULT '1' COMMENT '级别 1:幼儿园,2:小学,3:初中,4:高中',
  `grate` tinyint(1) NOT NULL DEFAULT '1' COMMENT ' 0:一年级',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1:有效 0:无效 ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `k_company_student`;
CREATE TABLE `k_company_student` (
`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
`company_id` varchar(40) NOT NULL DEFAULT '0' COMMENT '公司id',
`student_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '学生id',
`status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1:有效 0:无效 ',
`created_at` timestamp NULL DEFAULT NULL,
`updated_at` timestamp NULL DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of k_student
-- ----------------------------
INSERT INTO `k_student` VALUES ('1', 'd52c7720-cc04-11e6-957e-93b8c2689162', '2', '2', '1234', '', '4', '49', '593', '12341@1234.com', '134', '1234', '1234', '1234', '1234', '', '1', '2016-12-28 20:16:54', '2016-12-28 20:16:54');

-- ----------------------------
-- Table structure for k_sudent_orderlesson
-- ----------------------------
DROP TABLE IF EXISTS `k_sudent_orderlesson`;
CREATE TABLE `k_sudent_orderlesson` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(40) NOT NULL DEFAULT '0' COMMENT '公司id',
  `student_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '学生id',
  `lesson_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '课程id',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1:已预定 0:无效  2:已完成',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of k_sudent_orderlesson
-- ----------------------------

-- ----------------------------
-- Table structure for k_teacher
-- ----------------------------
DROP TABLE IF EXISTS `k_teacher`;
CREATE TABLE `k_teacher` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '姓名',
  `headpic` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `province_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '省级行政区id。k_location(ID)',
  `city_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '地级行政区id。k_location(ID)',
  `district_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '区县ID',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `id_card` varchar(32) NOT NULL DEFAULT '' COMMENT '身份证',
  `cell` char(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `subject` varchar(255) NOT NULL DEFAULT '' COMMENT '教师类型 0:英语老师',
  `tags` varchar(255) NOT NULL DEFAULT '' COMMENT '阶段 1小学',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1:有效 0:无效 ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `k_company_teacher`;
CREATE TABLE `k_company_teacher` (
`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
`company_id` varchar(40) NOT NULL DEFAULT '0' COMMENT '公司id',
`teacher_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '教师id',
`status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1:有效 0:无效 ',
`created_at` timestamp NULL DEFAULT NULL,
`updated_at` timestamp NULL DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
-- ----------------------------
-- Records of k_teacher
-- ----------------------------
INSERT INTO `k_teacher` VALUES ('3', 'df1b6ea0-c9ba-11e6-af4d-bd3315b73cb3', '2345', 'df1b6ea0-c9ba-11e6-af4d-bd3315b73cb3/teacher/headpic/3c0d8a97b94895d6f56fa0dee1957efa.jpeg', '1', '35', '380', '2345', '2435', '2345', '1', '1', '1', '2016-12-26 05:40:31', '2016-12-27 06:48:26');
INSERT INTO `k_teacher` VALUES ('4', 'df1b6ea0-c9ba-11e6-af4d-bd3315b73cb3', '1234', 'df1b6ea0-c9ba-11e6-af4d-bd3315b73cb3/teacher/headpic/e2435c2aa8f7795d52479dfbf1984cba.jpeg', '1', '35', '380', '1234123412341234', '1234', '1234', '3', '2', '1', '2016-12-27 01:41:44', '2016-12-27 02:04:24');
INSERT INTO `k_teacher` VALUES ('5', 'df1b6ea0-c9ba-11e6-af4d-bd3315b73cb3', '4567', 'df1b6ea0-c9ba-11e6-af4d-bd3315b73cb3/teacher/headpic/627de66f409fc26ce9118912b3e9d8a0.jpeg', '2', '36', '396', '4567', '4567', '4567', '1', '1', '1', '2016-12-27 02:05:47', '2016-12-27 02:06:14');
INSERT INTO `k_teacher` VALUES ('6', 'd52c7720-cc04-11e6-957e-93b8c2689162', '测试2', 'http://localhost:8000/storage/d52c7720-cc04-11e6-957e-93b8c2689162/teacher/headpic/4d6984d144adeb5dbd3813056f8dee5f.jpeg', '4', '49', '595', '1234', '1234', '1234', '4', '4', '1', '2016-12-27 09:18:34', '2016-12-27 13:04:42');
INSERT INTO `k_teacher` VALUES ('7', 'd52c7720-cc04-11e6-957e-93b8c2689162', '1234', 'http://localhost:8000/storage/d52c7720-cc04-11e6-957e-93b8c2689162/teacher/headpic/e2435c2aa8f7795d52479dfbf1984cba.jpeg', '6', '74', '837', '1234', '1234', 'wqer', '1', '3', '1', '2016-12-27 09:25:22', '2016-12-27 09:25:22');

-- ----------------------------
-- Table structure for k_teacher_subject
-- ----------------------------
DROP TABLE IF EXISTS `k_teacher_subject`;
CREATE TABLE `k_teacher_subject` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of k_teacher_subject
-- ----------------------------
INSERT INTO `k_teacher_subject` VALUES ('1', '语文');
INSERT INTO `k_teacher_subject` VALUES ('2', '数学');
INSERT INTO `k_teacher_subject` VALUES ('3', '英语');
INSERT INTO `k_teacher_subject` VALUES ('4', '美术');
INSERT INTO `k_teacher_subject` VALUES ('5', '其他');
INSERT INTO `k_teacher_subject` VALUES ('6', '音乐');

-- ----------------------------
-- Table structure for k_teacher_tag
-- ----------------------------
DROP TABLE IF EXISTS `k_teacher_tag`;
CREATE TABLE `k_teacher_tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of k_teacher_tag
-- ----------------------------
INSERT INTO `k_teacher_tag` VALUES ('1', '小学');
INSERT INTO `k_teacher_tag` VALUES ('2', '初中');
INSERT INTO `k_teacher_tag` VALUES ('3', '高中');
INSERT INTO `k_teacher_tag` VALUES ('4', '幼儿园');
INSERT INTO `k_teacher_tag` VALUES ('5', '培训机构');

-- ----------------------------
-- Table structure for k_wechat_user
-- ----------------------------
DROP TABLE IF EXISTS `k_wechat_user`;
CREATE TABLE `k_wechat_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL COMMENT 'z_user id',
  `subscribe` tinyint(1) unsigned NOT NULL COMMENT '用户是否订阅该公众号标识，值为0时，代表此用户没有关注该公众号，拉取不到其余信息。',
  `openid` varchar(32) NOT NULL COMMENT '用户的标识，对当前公众号唯一',
  `nickname` varchar(100) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `city` varchar(100) NOT NULL DEFAULT '',
  `country` varchar(100) NOT NULL DEFAULT '',
  `province` varchar(100) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '' COMMENT '用户的语言，简体中文为zh_CN',
  `headimgurl` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像，最后一个数值代表正方形头像大小（有0、46、64、96、132数值可选，0代表640*640正方形头像），用户没有头像时该项为空。若用户更换头像，原有头像URL将失效。',
  `subscribe_time` int(11) unsigned NOT NULL COMMENT '用户关注时间，为时间戳。如果用户曾多次关注，则取最后关注时间',
  `remark` varchar(255) NOT NULL COMMENT '公众号运营者对粉丝的备注，公众号运营者可在微信公众平台用户管理界面对粉丝添加备注',
  `groupid` int(11) unsigned NOT NULL COMMENT '用户所在的分组ID',
  `privilege` varchar(255) NOT NULL DEFAULT '' COMMENT 'json:微信特权',
  `unionid` varchar(32) NOT NULL DEFAULT '' COMMENT 'UnionID机制',
  `wx_app_id` varchar(255) NOT NULL DEFAULT '',
  `role_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1:普通账号,2：医生账号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_z_wechat_user_openid` (`openid`,`wx_app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of k_wechat_user
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_11_10_033438_create_admin_users_table', '1');
INSERT INTO `migrations` VALUES ('4', '2016_11_10_034922_create_admin_permissions_table', '1');
INSERT INTO `migrations` VALUES ('5', '2016_11_10_034952_create_admin_roles_table', '1');
INSERT INTO `migrations` VALUES ('6', '2016_11_10_035417_create_admin_role_user_table', '1');
INSERT INTO `migrations` VALUES ('7', '2016_11_10_035534_create_admin_permission_role_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '134', 'manager@manager.com', '$2y$10$ptJ4ka.u5m4UXR/0CKuAsO026O9m8pNHNuBTAKy6VxFOIW1PQ2u5C', null, '2017-01-08 12:05:00', '2017-01-08 12:05:00');

-- ----------------------------
-- Table structure for z_opt_log
-- ----------------------------
DROP TABLE IF EXISTS `z_opt_log`;
CREATE TABLE `z_opt_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` tinyint(1) NOT NULL COMMENT '0:STAFF 1:PRO 2:USER 3:API 4:Wechat',
  `url` varchar(50) NOT NULL,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '使用者ID',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '使用者登录名',
  `create_at` datetime NOT NULL COMMENT '创建时间',
  `ip` char(15) NOT NULL COMMENT 'ip地址',
  `sql_content` mediumtext NOT NULL COMMENT 'sql文',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:操作log 2:db_log',
  `message` mediumtext NOT NULL COMMENT '消息内容',
  `log_level` varchar(5) NOT NULL COMMENT '等级。DEBUG INFO WARN ERROR FATAL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2313 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of z_opt_log
-- ----------------------------
