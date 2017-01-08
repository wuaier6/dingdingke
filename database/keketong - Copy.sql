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
-- Table structure for k_lesson_tag
-- ----------------------------
DROP TABLE IF EXISTS `k_lesson_tag`;
CREATE TABLE `k_lesson_tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(40) NOT NULL DEFAULT '0' COMMENT '公司id',
  `name` varchar(64) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1:必须 0:选修 ',
  `pid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上级ID。0:最上级' ,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1:有效 0:无效 ',
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



-- ----------------------------
-- Table structure for k_company_tag
-- ----------------------------
DROP TABLE IF EXISTS `k_sudent_orderlesson`;
CREATE TABLE `k_sudent_orderlesson` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(40) NOT NULL DEFAULT '0' COMMENT '公司id',
  `student_id`  int(11) unsigned NOT NULL DEFAULT '0' COMMENT '学生id',
  `lesson_id`  int(11) unsigned NOT NULL DEFAULT '0' COMMENT '课程id',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1:已预定 0:无效  2:已完成',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `k_wechat_user`;
CREATE TABLE `k_wechat_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL COMMENT 'z_user id',
  `subscribe` tinyint(1) unsigned NOT NULL COMMENT '用户是否订阅该公众号标识，值为0时，代表此用户没有关注该公众号，拉取不到其余信息。',
  `openid` varchar(32)  NOT NULL COMMENT '用户的标识，对当前公众号唯一',
  `nickname` varchar(100) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `city` varchar(100)  NOT NULL DEFAULT '',
  `country` varchar(100)  NOT NULL DEFAULT '',
  `province` varchar(100) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '' COMMENT '用户的语言，简体中文为zh_CN',
  `headimgurl` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像，最后一个数值代表正方形头像大小（有0、46、64、96、132数值可选，0代表640*640正方形头像），用户没有头像时该项为空。若用户更换头像，原有头像URL将失效。',
  `subscribe_time` int(11) unsigned NOT NULL COMMENT '用户关注时间，为时间戳。如果用户曾多次关注，则取最后关注时间',
  `remark` varchar(255)  NOT NULL COMMENT '公众号运营者对粉丝的备注，公众号运营者可在微信公众平台用户管理界面对粉丝添加备注',
  `groupid` int(11) unsigned NOT NULL COMMENT '用户所在的分组ID',
  `privilege` varchar(255) NOT NULL DEFAULT '' COMMENT 'json:微信特权',
  `unionid` varchar(32) NOT NULL DEFAULT '' COMMENT 'UnionID机制',
  `wx_app_id` varchar(255) NOT NULL DEFAULT '' COMMENT '',
  `role_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1:普通账号,2：医生账号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_z_wechat_user_openid` (`openid`,`wx_app_id`)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `k_adminuser`;
CREATE TABLE `k_adminuser` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cell` char(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_email_unique` (`cell`),
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci