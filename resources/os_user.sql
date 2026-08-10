/*
 Navicat Premium Data Transfer

 Source Server         : 10.65.1.18-教育开源
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : 10.65.1.18:3306
 Source Schema         : os_user

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 29/05/2026 07:33:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lecturer
-- ----------------------------
DROP TABLE IF EXISTS `lecturer`;
CREATE TABLE `lecturer`  (
  `id` bigint NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int NOT NULL DEFAULT 1 COMMENT '排序',
  `user_id` bigint NOT NULL DEFAULT 0 COMMENT '用户ID',
  `lecturer_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '讲师名称',
  `lecturer_mobile` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '讲师手机',
  `lecturer_position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '讲师职位',
  `lecturer_head` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '讲师头像',
  `introduce` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '简介',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '讲师信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lecturer
-- ----------------------------
INSERT INTO `lecturer` VALUES (1064776676173942786, '2018-11-20 15:44:14', '2024-06-04 11:34:16', 1, 1, 0, '领课', '13800138001', '提供在线教育解决方案', 'https://file.roncoos.com/education/education/765d471f0e314f64a7d35fc0b39295e0.png', '<p>领课网络（全称：广州市领课网络科技有限公司）作为一家软件科技企业，致力于为客户提供专业化的软件产品技术解决方案。公司成立于2016年，是通过国家认定的高新技术企业。核心软件产品有：在线教育系统、支付结算系统、会务系统、直播系统。以不断迭代创新的核心软件产品为基础，为客户提供高品质的教育系统定制开发服务、教育系统SaaS服务、支付结算系统开发服务、会务系统开发服务等。</p>');
INSERT INTO `lecturer` VALUES (1568540063406608386, '2022-09-10 18:01:07', '2024-06-04 11:34:16', 1, 2, 0, '冯老师', '18302045627', '开源作者', 'https://file.roncoos.com/eduos/public/62fa955324df46dba1e5070a4f4e8d46.jpg', '<p>领课网络（全称：广州市领课网络科技有限公司）作为一家软件科技企业，致力于为客户提供专业化的软件产品技术解决方案。公司成立于2016年，是通过国家认定的高新技术企业。核心软件产品有：在线教育系统、支付结算系统、会务系统、直播系统。以不断迭代创新的核心软件产品为基础，为客户提供高品质的教育系统定制开发服务、教育系统SaaS服务、支付结算系统开发服务、会务系统开发服务等。</p>');
INSERT INTO `lecturer` VALUES (1777962624010534913, '2024-04-10 15:31:37', '2024-06-04 11:35:32', 1, 11, 0, '领老师', '', '高级教授', 'https://file.roncoos.com/eduos/public/698e1428b3504c578513a562f964798f.png', '高级教授');
INSERT INTO `lecturer` VALUES (1777962742583508994, '2024-04-10 15:32:05', '2024-06-04 11:35:34', 1, 10, 0, '课老师', '', '高级教授', 'https://file.roncoos.com/eduos/public/44a23fe477444e7499a4b49ab65958d3.png', '高级教授');
INSERT INTO `lecturer` VALUES (1780426058052513793, '2024-04-17 10:40:25', '2024-06-04 11:35:35', 1, 9, 0, '周老师', '', '高级教授', 'https://file.roncoos.com/eduos/public/44a23fe477444e7499a4b49ab65958d3.png', '高级教授');
INSERT INTO `lecturer` VALUES (1788003539534069761, '2024-05-08 08:30:37', '2024-06-04 11:35:37', 1, 7, 0, '贺老师', '', '高级教授', 'https://file.roncoos.com/eduos/public/13295448419c4daeb4456f3d9b36097a.jpg', '高级教授');
INSERT INTO `lecturer` VALUES (1788003882493919233, '2024-05-08 08:31:59', '2024-06-04 11:35:38', 1, 8, 0, '熊老师', '', '高级教授', 'https://file.roncoos.com/eduos/public/1b28141678494ad98b7cd9451f78247c.jpg', '高级教授');
INSERT INTO `lecturer` VALUES (1791101374569783298, '2024-05-16 21:40:19', '2024-06-04 11:35:40', 1, 6, 0, '陈老师', '', '高级教授', 'https://file.roncoos.com/eduos/public/698e1428b3504c578513a562f964798f.png', '高级教授');
INSERT INTO `lecturer` VALUES (1791101427061497857, '2024-05-16 21:40:31', '2024-06-04 11:35:41', 1, 5, 0, '王老师', '', '高级教授', 'https://file.roncoos.com/eduos/public/44a23fe477444e7499a4b49ab65958d3.png', '高级教授');
INSERT INTO `lecturer` VALUES (1791101483214839810, '2024-05-16 21:40:45', '2024-06-04 11:35:43', 1, 3, 0, '李老师', '', '高级教授', 'https://file.roncoos.com/eduos/public/44a23fe477444e7499a4b49ab65958d3.png', '高级教授');
INSERT INTO `lecturer` VALUES (1791101556787126274, '2024-05-16 21:41:02', '2024-06-04 11:35:44', 1, 4, 0, '路老师', '', '高级教授', 'https://file.roncoos.com/eduos/public/1b28141678494ad98b7cd9451f78247c.jpg', '高级教授');

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg`  (
  `id` bigint NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int NOT NULL DEFAULT 1 COMMENT '排序',
  `msg_type` tinyint NOT NULL DEFAULT 1 COMMENT '短信类型(1系统消息,2其他)',
  `msg_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '短信标题',
  `msg_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '短信内容',
  `is_time_send` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否定时发送（1是，0否）',
  `send_time` datetime NULL DEFAULT NULL COMMENT '发送时间',
  `is_send` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否已发送(1是;0否)',
  `is_top` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否置顶(1是;0否)',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '站内信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of msg
-- ----------------------------

-- ----------------------------
-- Table structure for msg_user
-- ----------------------------
DROP TABLE IF EXISTS `msg_user`;
CREATE TABLE `msg_user`  (
  `id` bigint NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int NOT NULL DEFAULT 1 COMMENT '排序',
  `msg_id` bigint NOT NULL COMMENT '短信ID',
  `user_id` bigint NOT NULL DEFAULT 0 COMMENT '用户ID',
  `is_read` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否阅读(1是;0否)',
  `is_top` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否置顶(1是;0否)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '站内信用户记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of msg_user
-- ----------------------------

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `id` bigint NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `order_no` bigint NOT NULL COMMENT '订单号',
  `user_id` bigint NOT NULL COMMENT '下单用户编号',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '下单用户电话',
  `register_time` datetime NULL DEFAULT NULL COMMENT '下单用户注册时间',
  `course_id` bigint NOT NULL DEFAULT 0 COMMENT '课程ID',
  `ruling_price` decimal(11, 2) NULL DEFAULT NULL COMMENT '划线价',
  `course_price` decimal(11, 2) NULL DEFAULT NULL COMMENT '课程价格',
  `pay_type` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '支付方式：1微信支付，2支付宝支付',
  `order_status` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单状态：1待支付，2成功支付，3支付失败，4关闭支付',
  `remark_cus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户备注',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '后台备注',
  `pay_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '支付时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_order_no`(`order_no` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '订单信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_info
-- ----------------------------

-- ----------------------------
-- Table structure for order_pay
-- ----------------------------
DROP TABLE IF EXISTS `order_pay`;
CREATE TABLE `order_pay`  (
  `id` bigint NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `order_no` bigint NOT NULL COMMENT '订单号',
  `serial_number` bigint NOT NULL DEFAULT 0 COMMENT '流水号',
  `ruling_price` decimal(11, 2) NULL DEFAULT NULL COMMENT '划线价',
  `course_price` decimal(11, 2) NULL DEFAULT NULL COMMENT '课程价格',
  `pay_type` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '支付方式：1微信支付，2支付宝支付，3积分支付，4手工录单',
  `order_status` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单状态：1待支付，2成功支付，3支付失败，4已关闭，5已退款, 6订单解绑',
  `remark_cus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户备注',
  `pay_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '支付时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '订单支付信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_pay
-- ----------------------------

-- ----------------------------
-- Table structure for region
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region`  (
  `id` bigint UNSIGNED NOT NULL COMMENT '主键',
  `parent_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '父id',
  `level` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '级别',
  `province_code` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '区域编码（国标）',
  `center_lng` decimal(12, 9) NOT NULL COMMENT '中心经度',
  `center_lat` decimal(12, 9) NOT NULL COMMENT '中心维度',
  `province_id` int NOT NULL COMMENT '省Id',
  `province_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '省名称',
  `city_id` int NOT NULL COMMENT '市Id',
  `city_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '城市编码',
  `city_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '市名称',
  `region_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '区域名称',
  `district_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '区名称',
  `merger_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '全路径名称',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parent_id`(`parent_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '行政区域表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of region
-- ----------------------------

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log`  (
  `branch_id` bigint NOT NULL COMMENT 'branch transaction id',
  `xid` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'global transaction id',
  `context` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'undo_log context,such as serialization',
  `rollback_info` longblob NOT NULL COMMENT 'rollback info',
  `log_status` int NOT NULL COMMENT '0:normal status,1:defense status',
  `log_created` datetime(6) NOT NULL COMMENT 'create datetime',
  `log_modified` datetime(6) NOT NULL COMMENT 'modify datetime',
  UNIQUE INDEX `ux_undo_log`(`xid` ASC, `branch_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'AT transaction mode undo table' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of undo_log
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '手机号码',
  `mobile_salt` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码盐',
  `mobile_psw` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录密码',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `user_sex` tinyint UNSIGNED NULL DEFAULT 3 COMMENT '用户性别(1男，2女，3保密)',
  `user_age` date NULL DEFAULT NULL COMMENT '出生时间',
  `user_head` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户头像',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `union_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信唯一ID',
  `open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信OpenId',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '城市',
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '省份',
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '国家',
  `register_source` tinyint NULL DEFAULT 11 COMMENT '注册来源',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_mobile`(`mobile` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1592154504513572866, '2022-11-14 21:56:29', '2025-03-29 19:02:55', 1, '18302045627', '1b9506008f254e72b57866a330c890ee', 'c71b5d2df79a2cd53b749dbe93064e4644c88e32', '领课', 1, NULL, 'https://file.roncoos.com/education/education/593da653debb488088d7dc9ac4f4baa8.png', '18302045627(微信同号)，提供有偿指导', 'o-s341JjS5Yizb9u0tEO0uyejKro', 'oz5TU5v4b2X54TvIa6TuZHlMpgok', NULL, NULL, NULL, 13);
INSERT INTO `users` VALUES (1787687263620153345, '2024-05-07 11:33:51', '2024-05-07 11:33:51', 1, '13800138001', '543ad4d8a2a748a19600e1ef147a4063', '0b9e48fedea09ea7d6bddafde4bcdd2459567ad4', 'gcryujm5', 3, NULL, 'https://static.roncoos.com/lingke.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for users_account
-- ----------------------------
DROP TABLE IF EXISTS `users_account`;
CREATE TABLE `users_account`  (
  `id` bigint NOT NULL COMMENT '主键ID',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `available_amount` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '可用金额',
  `freeze_amount` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '冻结金额',
  `sign` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '防篡改值',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_userid`(`user_id` ASC) USING BTREE COMMENT '用户ID'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户账户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users_account
-- ----------------------------
INSERT INTO `users_account` VALUES (1769177339143495681, '2024-03-17 09:42:02', '2024-05-26 10:10:08', 1, 1592154504513572866, 931277.68, 0.00, '494b3f3cb269de4ce6315eac7df1879d');
INSERT INTO `users_account` VALUES (1787687263804702721, '2024-05-07 11:33:51', '2024-05-26 21:15:38', 1, 1787687263620153345, 1109.95, 0.00, 'b6a9bf9643dcf5d6a45a14bcaf9b0270');

-- ----------------------------
-- Table structure for users_account_consume
-- ----------------------------
DROP TABLE IF EXISTS `users_account_consume`;
CREATE TABLE `users_account_consume`  (
  `id` bigint NOT NULL COMMENT '主键ID',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `consume_type` tinyint NULL DEFAULT NULL COMMENT '消费类型(1支出，2收入)',
  `consume_amount` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '消费金额(支出负数，收入是正数)',
  `balance_amount` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '剩余金额',
  `order_no` bigint NULL DEFAULT NULL COMMENT '消费订单号',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户账户消费记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users_account_consume
-- ----------------------------

-- ----------------------------
-- Table structure for users_log
-- ----------------------------
DROP TABLE IF EXISTS `users_log`;
CREATE TABLE `users_log`  (
  `id` bigint NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `login_status` tinyint NOT NULL DEFAULT 1 COMMENT '登录状态(0失败，1成功，2注册)',
  `login_client` tinyint NOT NULL DEFAULT 1 COMMENT '登录客户端，参考枚举',
  `login_type` tinyint NOT NULL DEFAULT 1 COMMENT '登录方式，参考枚举',
  `login_ip` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录IP',
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '国家',
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '市',
  `browser` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '浏览器',
  `os` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作系统',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户注册登录日志' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users_log
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
