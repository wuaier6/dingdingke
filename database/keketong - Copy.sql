-- ----------------------------
-- Table structure for k_company_tag
-- ----------------------------
DROP TABLE IF EXISTS `k_teacher_tag`;
CREATE TABLE `k_teacher_tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of k_company_tag
-- ----------------------------
INSERT INTO `k_teacher_tag` VALUES ('1', '小学');
INSERT INTO `k_teacher_tag` VALUES ('2', '初中');
INSERT INTO `k_teacher_tag` VALUES ('3', '高中');
INSERT INTO `k_teacher_tag` VALUES ('4', '幼儿园');
INSERT INTO `k_teacher_tag` VALUES ('4', '培训机构');

-- ----------------------------
-- Table structure for k_company_tag
-- ----------------------------
DROP TABLE IF EXISTS `k_teacher_subject`;
CREATE TABLE `k_teacher_subject` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of k_company_tag
-- ----------------------------
INSERT INTO `k_teacher_subject` VALUES ('1', '语文');
INSERT INTO `k_teacher_subject` VALUES ('2', '数学');
INSERT INTO `k_teacher_subject` VALUES ('3', '英语');
INSERT INTO `k_teacher_subject` VALUES ('4', '美术');
INSERT INTO `k_teacher_subject` VALUES ('4', '音乐');
INSERT INTO `k_teacher_subject` VALUES ('4', '其他');

DROP TABLE IF EXISTS `k_teacher`;
CREATE TABLE `k_teacher` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(40) NOT NULL DEFAULT '0' COMMENT '公司id',
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;


-- ----------------------------
-- Table structure for k_company_tag
-- ----------------------------
DROP TABLE IF EXISTS `k_lesson_tag`;
CREATE TABLE `k_lesson_tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(40) NOT NULL DEFAULT '0' COMMENT '公司id',
  `name` varchar(64) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1:必须 0:选修 ',
  `pid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上级ID。0:最上级' ,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;



-- ----------------------------
-- Table structure for k_company_tag
-- ----------------------------
DROP TABLE IF EXISTS `k_lesson_room`;
CREATE TABLE `k_lesson_room` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(40) NOT NULL DEFAULT '0' COMMENT '公司id',
  `name` varchar(64) NOT NULL,
  `limit` tinyint(3) NOT NULL DEFAULT 0 COMMENT '限制人数',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;


-- ----------------------------
-- Table structure for k_company_tag
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;


-- ----------------------------
-- Table structure for k_company_tag
-- ----------------------------
DROP TABLE IF EXISTS `k_class_lesson`;
CREATE TABLE `k_class_lesson` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(40) NOT NULL DEFAULT '0' COMMENT '公司id',
  `class_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '班级',
  `lesson_tag_id`  int(11) unsigned NOT NULL DEFAULT '0' COMMENT '课程',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for k_company_tag
-- ----------------------------
DROP TABLE IF EXISTS `k_class_student`;
CREATE TABLE `k_class_student` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(40) NOT NULL DEFAULT '0' COMMENT '公司id',
  `class_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '班级',
  `student_id`  int(11) unsigned NOT NULL DEFAULT '0' COMMENT '学生id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;