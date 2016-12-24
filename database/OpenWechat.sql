/*
Navicat MySQL Data Transfer

Source Server         : 192.168.10.14
Source Server Version : 50712
Source Host           : 192.168.10.14:3306
Source Database       : OpenWechat

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-11-18 18:20:39
*/


-- ----------------------------
-- Table structure for company
-- ----------------------------

-- ----------------------------
-- Table structure for `z_company`
-- 公司一览表
-- ----------------------------
DROP TABLE IF EXISTS `k_company`;
CREATE TABLE `z_company` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name` varchar(255) NOT NULL  COMMENT '公司名',
`business_licence` varchar(255) NOT NULL COMMENT '营业执照',
`business_entity` varchar(255) NOT NULL COMMENT '企业法人',
`id_card` varchar(255) NOT NULL COMMENT '身份证',
`status`  tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态。1:有效 0:无' ,
`created_at` timestamp NULL DEFAULT NULL,
`updated_at` timestamp NULL DEFAULT NULL,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB AUTO_INCREMENT=1;


-- ----------------------------
-- Table structure for `z_opt_log`
-- 服务器端各站点的操作日志及DB访问日志表
-- ----------------------------
DROP TABLE IF EXISTS `z_opt_log`;
CREATE TABLE `z_opt_log` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`log_type`  tinyint(1) NOT NULL COMMENT '0:STAFF 1:PRO 2:USER 3:API 4:Wechat' ,
`url`  varchar(50)  NOT NULL ,
`user_id`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '使用者ID' ,
`user_name`  varchar(20) NOT NULL DEFAULT '' COMMENT '使用者登录名' ,
`create_at`  datetime NOT NULL COMMENT '创建时间' ,
`ip`  char(15)  NOT NULL COMMENT 'ip地址' ,
`sql_content`  mediumtext  NOT NULL COMMENT 'sql文' ,
`status`  tinyint(1) NOT NULL DEFAULT 1 COMMENT '1:操作log 2:db_log' ,
`message`  mediumtext  NOT NULL COMMENT '消息内容' ,
`log_level`  varchar(5) NOT NULL COMMENT '等级。DEBUG INFO WARN ERROR FATAL' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
AUTO_INCREMENT=1;