/*
Navicat MySQL Data Transfer

Source Server         : 本地mysql
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : rcs

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-06-23 09:57:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for rcs_ad
-- ----------------------------
DROP TABLE IF EXISTS `rcs_ad`;
CREATE TABLE `rcs_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `img_url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `jump_url` varchar(255) DEFAULT NULL COMMENT '跳转地址',
  `type` tinyint(255) DEFAULT '1' COMMENT '类型 1为首页banner图  2为友情链接',
  `status` tinyint(255) DEFAULT '1' COMMENT '状态  1为显示  2为隐藏',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='广告友链表';

-- ----------------------------
-- Records of rcs_ad
-- ----------------------------

-- ----------------------------
-- Table structure for rcs_admin
-- ----------------------------
DROP TABLE IF EXISTS `rcs_admin`;
CREATE TABLE `rcs_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级ID 默认为0',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '用户密码',
  `secret` varchar(255) NOT NULL COMMENT '密钥',
  `type` tinyint(255) NOT NULL DEFAULT '1' COMMENT '用户类型 (默认 为1)   1为受约束角色 0为超级管理员',
  `status` tinyint(255) NOT NULL DEFAULT '1' COMMENT '状态 0为禁用  1为启用',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台用户表';

-- ----------------------------
-- Records of rcs_admin
-- ----------------------------

-- ----------------------------
-- Table structure for rcs_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `rcs_admin_menu`;
CREATE TABLE `rcs_admin_menu` (
  `admin_id` int(11) NOT NULL COMMENT '后台用户ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台用户权限表';

-- ----------------------------
-- Records of rcs_admin_menu
-- ----------------------------

-- ----------------------------
-- Table structure for rcs_comment
-- ----------------------------
DROP TABLE IF EXISTS `rcs_comment`;
CREATE TABLE `rcs_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) DEFAULT NULL COMMENT '文章ID',
  `comment_man` varchar(100) DEFAULT NULL COMMENT '评论人',
  `comment_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '评论时间',
  `content` text COMMENT '评论内容',
  `is_top` bit(1) DEFAULT b'0' COMMENT '是否置顶   0为否 1为是',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源文章评论记录表';

-- ----------------------------
-- Records of rcs_comment
-- ----------------------------

-- ----------------------------
-- Table structure for rcs_config
-- ----------------------------
DROP TABLE IF EXISTS `rcs_config`;
CREATE TABLE `rcs_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webname` varchar(255) NOT NULL DEFAULT '' COMMENT '网站名称',
  `webnum` varchar(255) DEFAULT NULL COMMENT '网站备案号',
  `seokey` varchar(255) DEFAULT NULL COMMENT 'SEO关键字',
  `qq_num` int(20) DEFAULT NULL COMMENT 'QQ',
  `e_mail` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `announcement` text COMMENT '公告',
  `content` text COMMENT '关于我们',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='网站配置表';

-- ----------------------------
-- Records of rcs_config
-- ----------------------------

-- ----------------------------
-- Table structure for rcs_content
-- ----------------------------
DROP TABLE IF EXISTS `rcs_content`;
CREATE TABLE `rcs_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `label` varchar(255) DEFAULT NULL COMMENT '标签（关键字）',
  `release_man` varchar(100) DEFAULT NULL COMMENT '发布人',
  `release_time` date DEFAULT NULL COMMENT '发布时间',
  `resources_id` int(11) DEFAULT NULL COMMENT '下载资源ID',
  `click_num` int(11) DEFAULT NULL COMMENT '点击量(阅读量)',
  `is_top` bit(1) DEFAULT b'0' COMMENT '是否置顶 0为否  1为是',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源文章内容表';

-- ----------------------------
-- Records of rcs_content
-- ----------------------------

-- ----------------------------
-- Table structure for rcs_menu
-- ----------------------------
DROP TABLE IF EXISTS `rcs_menu`;
CREATE TABLE `rcs_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级ID  默认为0',
  `name` varchar(255) NOT NULL COMMENT '菜单名称',
  `icon` varchar(255) NOT NULL COMMENT '菜单图标',
  `url` varchar(255) NOT NULL COMMENT '菜单地址',
  `method` varchar(255) DEFAULT NULL COMMENT ' 限制请求方法，【get，post，put，delete】',
  `display` tinyint(255) NOT NULL DEFAULT '0' COMMENT '显示，【0隐藏，1显示】',
  `sort` int(255) NOT NULL DEFAULT '0' COMMENT '排序',
  `info` text COMMENT '描述',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of rcs_menu
-- ----------------------------

-- ----------------------------
-- Table structure for rcs_msg
-- ----------------------------
DROP TABLE IF EXISTS `rcs_msg`;
CREATE TABLE `rcs_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '留言名称',
  `content` text COMMENT '内容',
  `bbs_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '留言时间',
  `is_top` bit(1) DEFAULT b'0' COMMENT '是否置顶 0为否  1为是',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言内容表';

-- ----------------------------
-- Records of rcs_msg
-- ----------------------------

-- ----------------------------
-- Table structure for rcs_resources
-- ----------------------------
DROP TABLE IF EXISTS `rcs_resources`;
CREATE TABLE `rcs_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `infos` text COMMENT '描述',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='下载资源表';

-- ----------------------------
-- Records of rcs_resources
-- ----------------------------

-- ----------------------------
-- Table structure for rcs_user
-- ----------------------------
DROP TABLE IF EXISTS `rcs_user`;
CREATE TABLE `rcs_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '用户密码',
  `secret` varchar(255) NOT NULL COMMENT '密钥',
  `name` varchar(50) NOT NULL COMMENT '昵称',
  `number` int(11) DEFAULT NULL COMMENT '手机号',
  `realname` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex` tinyint(4) DEFAULT '0' COMMENT '性别  0为保密 1为男 2为女',
  `qq` int(20) DEFAULT NULL,
  `integral` int(11) DEFAULT NULL COMMENT '积分',
  `e_mail` varchar(100) NOT NULL COMMENT '邮箱',
  `sign` text COMMENT '签名',
  `content` text COMMENT '简介',
  `qq_key` varchar(255) DEFAULT NULL COMMENT 'QQkey(用作一键登录)',
  `login_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '登录时间',
  `login_ip` varchar(255) DEFAULT NULL COMMENT '登录IP',
  `status` bit(1) DEFAULT b'1' COMMENT '状态 1为启用  0为禁用',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of rcs_user
-- ----------------------------
