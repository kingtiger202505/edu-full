/*
 Navicat Premium Data Transfer

 Source Server         : 10.65.1.18-教育开源
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : 10.65.1.18:3306
 Source Schema         : os_course

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 29/05/2026 07:32:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` bigint NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int NOT NULL DEFAULT 1 COMMENT '排序',
  `parent_id` bigint NOT NULL DEFAULT 0 COMMENT '父分类ID',
  `category_type` tinyint NOT NULL DEFAULT 1 COMMENT '类型(1课程，2资源)',
  `category_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1080387521456295937, '2019-01-02 16:57:10', '2022-09-24 13:58:05', 1, 50, 0, 1, '职业 / 技能 / 培训', '一级');
INSERT INTO `category` VALUES (1080744766018883585, '2019-01-03 16:36:44', '2022-09-24 14:23:21', 1, 60, 0, 1, '工业 / 设计 / 技术', '一级');
INSERT INTO `category` VALUES (1080744807735431170, '2019-01-03 16:36:54', '2022-09-23 20:01:43', 1, 2, 1080744766018883585, 1, '现代汽车技术', '');
INSERT INTO `category` VALUES (1080747124211781634, '2019-01-03 16:46:06', '2022-09-24 13:53:08', 1, 20, 0, 1, '后端 / 前端 / 运维', '一级');
INSERT INTO `category` VALUES (1080747249965404161, '2019-01-03 16:46:36', '2022-09-23 19:57:38', 1, 1, 1080747124211781634, 1, '前端开发', '');
INSERT INTO `category` VALUES (1080748559775240194, '2019-01-03 16:51:48', '2022-09-23 20:01:47', 1, 3, 1080744766018883585, 1, '工业产品设计', '');
INSERT INTO `category` VALUES (1080750603160457217, '2019-01-03 16:59:56', '2024-03-12 20:50:25', 1, 15, 0, 1, '一级 / 二级 / 三级', '一级');
INSERT INTO `category` VALUES (1080750628284338178, '2019-01-03 17:00:02', '2019-01-03 17:00:02', 1, 1, 1080750603160457217, 1, '二级分类', '');
INSERT INTO `category` VALUES (1080752583811469314, '2019-01-03 17:07:48', '2022-09-23 20:01:26', 1, 1, 1080744766018883585, 1, '智能制造技术', '');
INSERT INTO `category` VALUES (1080756158205726721, '2019-01-03 17:22:00', '2024-05-15 12:32:11', 1, 10, 0, 1, '龙果开源项目', '开源项目');
INSERT INTO `category` VALUES (1080756229487923201, '2019-01-03 17:22:17', '2022-09-20 16:02:12', 1, 50, 1080756158205726721, 1, '龙果管理系统', '龙果管理系统');
INSERT INTO `category` VALUES (1080758871769419777, '2019-01-03 17:32:47', '2022-09-20 16:01:55', 1, 20, 1080756158205726721, 1, '龙果支付系统', '龙果支付系统');
INSERT INTO `category` VALUES (1080759411039473666, '2019-01-03 17:34:56', '2022-09-23 19:57:31', 1, 1, 1080747124211781634, 1, '后端开发', '');
INSERT INTO `category` VALUES (1248244148498632705, '2020-04-09 21:39:30', '2020-04-09 21:39:30', 1, 10, 1080756158205726721, 1, '领课教育系统', '领课教育系统');
INSERT INTO `category` VALUES (1248244366195593217, '2020-04-09 21:40:22', '2022-09-20 16:02:08', 1, 40, 1080756158205726721, 1, '龙果运维系统', '龙果运维系统');
INSERT INTO `category` VALUES (1248244730181488641, '2020-04-09 21:41:49', '2022-09-20 16:02:03', 1, 30, 1080756158205726721, 1, '龙果充值系统', '龙果充值系统');
INSERT INTO `category` VALUES (1248244972591288322, '2020-04-09 21:42:47', '2022-09-20 16:02:17', 1, 60, 1080756158205726721, 1, '龙果代码生成', '龙果代码生成');
INSERT INTO `category` VALUES (1248245231656669186, '2020-04-09 21:43:49', '2022-09-20 16:02:20', 1, 70, 1080756158205726721, 1, '龙果教程项目', '龙果教程项目');
INSERT INTO `category` VALUES (1248247216749449218, '2020-04-09 21:51:42', '2020-04-09 21:51:42', 1, 1, 1080750603160457217, 1, '二级分类', NULL);
INSERT INTO `category` VALUES (1248247230154444802, '2020-04-09 21:51:45', '2020-04-09 21:51:45', 1, 1, 1080750603160457217, 1, '二级分类', NULL);
INSERT INTO `category` VALUES (1248247267194343426, '2020-04-09 21:51:54', '2022-09-23 20:03:01', 1, 1, 1080387521456295937, 1, '岗位技能', NULL);
INSERT INTO `category` VALUES (1248247524271624193, '2020-04-09 21:52:55', '2022-09-23 19:57:54', 1, 1, 1080759411039473666, 1, 'Php', NULL);
INSERT INTO `category` VALUES (1248247537039085570, '2020-04-09 21:52:58', '2022-09-23 19:57:47', 1, 1, 1080759411039473666, 1, 'Java', NULL);
INSERT INTO `category` VALUES (1248248345805754369, '2020-04-09 21:56:11', '2022-09-20 16:02:24', 1, 80, 1080756158205726721, 1, '龙果集成项目', '龙果集成项目');
INSERT INTO `category` VALUES (1572865086661345282, '2022-09-22 16:27:13', '2022-09-23 19:58:10', 1, 1, 1080747249965404161, 1, 'Html', NULL);
INSERT INTO `category` VALUES (1573280583823491074, '2022-09-23 19:58:15', '2022-09-23 19:58:15', 1, 1, 1080747249965404161, 1, 'Vue', NULL);
INSERT INTO `category` VALUES (1573280633505021954, '2022-09-23 19:58:27', '2022-09-24 13:50:16', 1, 3, 1080747124211781634, 1, '测试运维', NULL);
INSERT INTO `category` VALUES (1573283013906759681, '2022-09-23 20:07:55', '2022-09-23 20:07:55', 1, 1, 1248247230154444802, 1, '三级分类', NULL);
INSERT INTO `category` VALUES (1573283036610527233, '2022-09-23 20:08:00', '2022-09-23 20:08:00', 1, 1, 1248247230154444802, 1, '三级分类', NULL);
INSERT INTO `category` VALUES (1573283054562148354, '2022-09-23 20:08:05', '2022-09-23 20:08:05', 1, 1, 1248247230154444802, 1, '三级分类', NULL);
INSERT INTO `category` VALUES (1573550086444613633, '2022-09-24 13:49:10', '2022-09-24 13:49:20', 1, 3, 1080759411039473666, 1, 'Go', NULL);
INSERT INTO `category` VALUES (1573550195932725249, '2022-09-24 13:49:36', '2022-09-24 13:49:36', 1, 3, 1080747249965404161, 1, 'Css', NULL);
INSERT INTO `category` VALUES (1573550409687040001, '2022-09-24 13:50:27', '2022-09-24 13:50:27', 1, 1, 1573280633505021954, 1, '测试', '1');
INSERT INTO `category` VALUES (1573550454209576962, '2022-09-24 13:50:38', '2022-09-24 13:50:38', 1, 2, 1573280633505021954, 1, '运维', '');
INSERT INTO `category` VALUES (1573550736201023490, '2022-09-24 13:51:45', '2022-09-24 13:51:45', 1, 1, 1248247216749449218, 1, '三级分类', NULL);
INSERT INTO `category` VALUES (1573550748003794945, '2022-09-24 13:51:48', '2022-09-24 13:51:48', 1, 1, 1248247216749449218, 1, '三级分类', NULL);
INSERT INTO `category` VALUES (1573550760246968321, '2022-09-24 13:51:51', '2022-09-24 13:51:51', 1, 1, 1248247216749449218, 1, '三级分类', NULL);
INSERT INTO `category` VALUES (1573550773303836674, '2022-09-24 13:51:54', '2022-09-24 13:51:54', 1, 1, 1080750628284338178, 1, '三级分类', NULL);
INSERT INTO `category` VALUES (1573550786167767042, '2022-09-24 13:51:57', '2022-09-24 13:51:57', 1, 1, 1080750628284338178, 1, '三级分类', NULL);
INSERT INTO `category` VALUES (1573550798519992322, '2022-09-24 13:52:00', '2022-09-24 13:52:00', 1, 1, 1080750628284338178, 1, '三级分类', NULL);
INSERT INTO `category` VALUES (1573552154337148929, '2022-09-24 13:57:23', '2022-09-24 13:57:23', 1, 2, 1080387521456295937, 1, '美容美发', NULL);
INSERT INTO `category` VALUES (1573552178374705153, '2022-09-24 13:57:29', '2022-09-24 13:57:29', 1, 1, 1080387521456295937, 1, '家政服务', '3');
INSERT INTO `category` VALUES (1575093300918087681, '2022-09-28 20:01:21', '2022-09-28 20:01:54', 1, 100, 0, 1, '市场 / 营销 / 产品', NULL);
INSERT INTO `category` VALUES (1575093505876946945, '2022-09-28 20:02:10', '2022-09-28 20:02:10', 1, 1, 1575093300918087681, 1, '市场', NULL);
INSERT INTO `category` VALUES (1575093528551354369, '2022-09-28 20:02:15', '2022-09-28 20:02:35', 1, 2, 1575093300918087681, 1, '营销', NULL);
INSERT INTO `category` VALUES (1575093546016436226, '2022-09-28 20:02:19', '2022-09-28 20:02:38', 1, 3, 1575093300918087681, 1, '产品', NULL);
INSERT INTO `category` VALUES (1753301364262375426, '2024-02-02 14:16:34', '2024-06-04 11:25:52', 1, 3, 0, 2, '图片', NULL);
INSERT INTO `category` VALUES (1757583250325336066, '2024-02-14 09:51:15', '2024-03-19 11:54:37', 1, 1, 1758829620004745218, 2, '123', NULL);
INSERT INTO `category` VALUES (1758778395158736897, '2024-02-17 17:00:20', '2024-03-19 11:53:55', 1, 3, 1757583288124403713, 2, '11', NULL);
INSERT INTO `category` VALUES (1758778448531255298, '2024-02-17 17:00:33', '2024-03-19 11:54:05', 1, 1, 1766700974586531842, 2, '222', NULL);
INSERT INTO `category` VALUES (1758829662916669442, '2024-02-17 20:24:03', '2024-03-19 11:54:37', 1, 2, 1758829620004745218, 2, '333', NULL);
INSERT INTO `category` VALUES (1766698535053496322, '2024-03-10 13:32:09', '2024-03-19 11:53:55', 1, 2, 1757583288124403713, 2, '3333', NULL);
INSERT INTO `category` VALUES (1766698753513820162, '2024-03-10 13:33:01', '2024-03-10 13:33:01', 1, 1, 1757583288124403713, 2, '444', NULL);
INSERT INTO `category` VALUES (1766698876528562178, '2024-03-10 13:33:30', '2024-03-10 13:33:30', 1, 1, 1753297185510854658, 2, '333', NULL);
INSERT INTO `category` VALUES (1766700937160757250, '2024-03-10 13:41:41', '2024-03-19 11:53:55', 1, 2, 1766698753513820162, 2, '4444', NULL);
INSERT INTO `category` VALUES (1769917782919557121, '2024-03-19 10:44:17', '2024-03-19 10:44:17', 1, 1, 1766698753513820162, 2, '333', NULL);
INSERT INTO `category` VALUES (1769920647041986561, '2024-03-19 10:55:40', '2024-03-19 10:55:40', 1, 1, 1766700937160757250, 2, '3333333333333333333333', NULL);
INSERT INTO `category` VALUES (1769923295371669505, '2024-03-19 11:06:11', '2024-03-19 11:06:11', 1, 1, 1769920647041986561, 2, 'eeee', NULL);
INSERT INTO `category` VALUES (1769923891587788801, '2024-03-19 11:08:34', '2024-03-19 11:08:34', 1, 1, 1758778395158736897, 2, '3333', NULL);
INSERT INTO `category` VALUES (1772983087241732098, '2024-03-27 21:44:43', '2024-04-10 21:01:53', 1, 1, 0, 2, '视频', NULL);
INSERT INTO `category` VALUES (1772983255387185154, '2024-03-27 21:45:23', '2024-06-04 11:25:52', 1, 2, 0, 2, '文档', NULL);
INSERT INTO `category` VALUES (1780411291065716737, '2024-04-17 09:41:44', '2024-04-17 09:41:44', 1, 17, 1780411241333854209, 1, '123', NULL);

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` bigint NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int NOT NULL DEFAULT 1 COMMENT '排序',
  `lecturer_id` bigint NOT NULL DEFAULT 0 COMMENT '讲师ID',
  `category_id` bigint NULL DEFAULT 0 COMMENT '分类ID',
  `course_name` varchar(126) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '课程名称',
  `course_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '课程封面',
  `introduce` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '课程简介',
  `is_free` tinyint NOT NULL DEFAULT 0 COMMENT '是否免费(1:免费，0:收费)',
  `ruling_price` decimal(11, 2) NULL DEFAULT NULL COMMENT '划线价',
  `course_price` decimal(11, 2) NULL DEFAULT NULL COMMENT '课程价格',
  `is_putaway` tinyint NOT NULL DEFAULT 1 COMMENT '是否上架(1:上架，0:下架)',
  `course_sort` int NOT NULL DEFAULT 0 COMMENT '课程排序(前端显示使用)',
  `count_buy` int NOT NULL DEFAULT 0 COMMENT '购买人数',
  `count_study` int NOT NULL DEFAULT 0 COMMENT '学习人数',
  `speed_double` tinyint NOT NULL DEFAULT 1 COMMENT '倍速播放(0关闭，1开启)',
  `speed_drag` tinyint NOT NULL DEFAULT 1 COMMENT '拖拽播放(0关闭，1开启)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '课程信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1080756535567257601, '2019-01-03 17:50:39', '2024-06-04 11:16:53', 1, 5, 1064776676173942786, 1080756229487923201, '龙果管理系统-领课教育系统（开源版）', 'http://static.roncoos.com/os/005.jpg', '<p>领课网络（全称：广州市领课网络科技有限公司）作为一家软件科技企业，致力于为客户提供专业化的软件产品技术解决方案。公司成立于2016年，是通过国家认定的高新技术企业。</p><p>核心软件产品有：在线教育系统、支付结算系统、会务系统、直播系统。以不断迭代创新的核心软件产品为基础，为客户提供高品质的教育系统定制开发服务、教育系统SaaS服务、支付结算系统开发服务、会务系统开发服务等。</p><p>领课团队拥有十多年的互联网软件产品技术研发经验，以产品技术创新为驱动，以高品质服务为宗旨，为企业提一站式数字化应用解决方案。</p>', 0, 0.99, 0.02, 1, 3, 3, 158, 1, 1);
INSERT INTO `course` VALUES (1080758482462511106, '2019-01-03 17:50:31', '2024-06-04 11:16:53', 1, 3, 1064776676173942786, 1248244366195593217, '龙果运维系统-领课教育系统（开源版）', 'http://static.roncoos.com/os/004.jpg', '<p>领课网络（全称：广州市领课网络科技有限公司）作为一家软件科技企业，致力于为客户提供专业化的软件产品技术解决方案。公司成立于2016年，是通过国家认定的高新技术企业。</p><p>核心软件产品有：在线教育系统、支付结算系统、会务系统、直播系统。以不断迭代创新的核心软件产品为基础，为客户提供高品质的教育系统定制开发服务、教育系统SaaS服务、支付结算系统开发服务、会务系统开发服务等。</p><p>领课团队拥有十多年的互联网软件产品技术研发经验，以产品技术创新为驱动，以高品质服务为宗旨，为企业提一站式数字化应用解决方案。</p>', 0, 0.01, 0.01, 1, 100, 4, 174, 1, 1);
INSERT INTO `course` VALUES (1080759102707798018, '2019-01-03 17:50:29', '2024-06-04 11:44:39', 1, 9, 1064776676173942786, 1080758871769419777, '龙果支付系统-领课教育系统（开源版）', 'http://static.roncoos.com/os/002.jpg', '<p>领课网络（全称：广州市领课网络科技有限公司）作为一家软件科技企业，致力于为客户提供专业化的软件产品技术解决方案。公司成立于2016年，是通过国家认定的高新技术企业。</p><p>核心软件产品有：在线教育系统、支付结算系统、会务系统、直播系统。以不断迭代创新的核心软件产品为基础，为客户提供高品质的教育系统定制开发服务、教育系统SaaS服务、支付结算系统开发服务、会务系统开发服务等。</p><p>领课团队拥有十多年的互联网软件产品技术研发经验，以产品技术创新为驱动，以高品质服务为宗旨，为企业提一站式数字化应用解决方案。</p>', 0, 300000.00, 300000.00, 1, 2, 0, 836, 1, 1);
INSERT INTO `course` VALUES (1080759557655564289, '2019-01-03 17:50:26', '2024-06-04 11:44:40', 1, 8, 1568540063406608386, 1248244148498632705, '领课教育系统-领课教育系统（开源版）', 'http://static.roncoos.com/os/001.jpg', '<p>领课网络（全称：广州市领课网络科技有限公司）作为一家软件科技企业，致力于为客户提供专业化的软件产品技术解决方案。公司成立于2016年，是通过国家认定的高新技术企业。</p><p>核心软件产品有：在线教育系统、支付结算系统、会务系统、直播系统。以不断迭代创新的核心软件产品为基础，为客户提供高品质的教育系统定制开发服务、教育系统SaaS服务、支付结算系统开发服务、会务系统开发服务等。</p><p>领课团队拥有十多年的互联网软件产品技术研发经验，以产品技术创新为驱动，以高品质服务为宗旨，为企业提一站式数字化应用解决方案。</p>', 0, 200000.00, 200000.00, 1, 1, 1025, 8889, 1, 1);
INSERT INTO `course` VALUES (1246446673697738753, '2020-04-13 10:54:22', '2024-06-04 11:16:53', 1, 7, 1568540063406608386, 1248244972591288322, '龙果代码生成-领课教育系统（开源版）', 'http://static.roncoos.com/os/008.jpg', '<p>领课网络（全称：广州市领课网络科技有限公司）作为一家软件科技企业，致力于为客户提供专业化的软件产品技术解决方案。公司成立于2016年，是通过国家认定的高新技术企业。</p><p>核心软件产品有：在线教育系统、支付结算系统、会务系统、直播系统。以不断迭代创新的核心软件产品为基础，为客户提供高品质的教育系统定制开发服务、教育系统SaaS服务、支付结算系统开发服务、会务系统开发服务等。</p><p>领课团队拥有十多年的互联网软件产品技术研发经验，以产品技术创新为驱动，以高品质服务为宗旨，为企业提一站式数字化应用解决方案。</p>', 0, 1.22, 0.01, 1, 10, 1, 1, 1, 1);
INSERT INTO `course` VALUES (1248473637832937473, '2020-04-13 10:54:19', '2024-06-04 11:44:42', 1, 4, 1064776676173942786, 1248245231656669186, '龙果教程项目-领课教育系统（开源版）', 'http://static.roncoos.com/os/007.jpg', '<p>领课网络（全称：广州市领课网络科技有限公司）作为一家软件科技企业，致力于为客户提供专业化的软件产品技术解决方案。公司成立于2016年，是通过国家认定的高新技术企业。</p><p>核心软件产品有：在线教育系统、支付结算系统、会务系统、直播系统。以不断迭代创新的核心软件产品为基础，为客户提供高品质的教育系统定制开发服务、教育系统SaaS服务、支付结算系统开发服务、会务系统开发服务等。</p><p>领课团队拥有十多年的互联网软件产品技术研发经验，以产品技术创新为驱动，以高品质服务为宗旨，为企业提一站式数字化应用解决方案。</p>', 0, 100.00, 0.01, 1, 3, 5, 5, 1, 1);
INSERT INTO `course` VALUES (1248882669827706881, '2020-04-13 10:54:16', '2024-06-04 11:44:43', 1, 2, 1064776676173942786, 1248248345805754369, '龙果集成项目-领课教育系统（开源版）', 'http://static.roncoos.com/os/006.jpg', '<p>领课网络（全称：广州市领课网络科技有限公司）作为一家软件科技企业，致力于为客户提供专业化的软件产品技术解决方案。公司成立于2016年，是通过国家认定的高新技术企业。</p><p>核心软件产品有：在线教育系统、支付结算系统、会务系统、直播系统。以不断迭代创新的核心软件产品为基础，为客户提供高品质的教育系统定制开发服务、教育系统SaaS服务、支付结算系统开发服务、会务系统开发服务等。</p><p>领课团队拥有十多年的互联网软件产品技术研发经验，以产品技术创新为驱动，以高品质服务为宗旨，为企业提一站式数字化应用解决方案。</p>', 0, 1.00, 0.01, 1, 1, 2, 2, 1, 0);
INSERT INTO `course` VALUES (1249286274804142081, '2020-04-13 10:43:59', '2024-06-04 11:16:53', 1, 6, 1064776676173942786, 1248244730181488641, '龙果充值系统-领课教育系统（开源版）', 'http://static.roncoos.com/os/003.jpg', '<p>领课网络（全称：广州市领课网络科技有限公司）作为一家软件科技企业，致力于为客户提供专业化的软件产品技术解决方案。公司成立于2016年，是通过国家认定的高新技术企业。</p><p>核心软件产品有：在线教育系统、支付结算系统、会务系统、直播系统。以不断迭代创新的核心软件产品为基础，为客户提供高品质的教育系统定制开发服务、教育系统SaaS服务、支付结算系统开发服务、会务系统开发服务等。</p><p>领课团队拥有十多年的互联网软件产品技术研发经验，以产品技术创新为驱动，以高品质服务为宗旨，为企业提一站式数字化应用解决方案。</p>', 0, 0.11, 0.11, 1, 100, 1, 1, 1, 1);
INSERT INTO `course` VALUES (1780049877671153666, '2024-04-16 09:45:37', '2024-06-04 11:56:19', 1, 1, 1064776676173942786, 1248244148498632705, '领课教育系统（开源版）', 'https://file.roncoos.com/eduos/public/4420791d6ae34006affc48292e6bb3f7.jpg', '<p>领课网络（全称：广州市领课网络科技有限公司）作为一家软件科技企业，致力于为客户提供专业化的软件产品技术解决方案。公司成立于2016年，是通过国家认定的高新技术企业。</p><p>核心软件产品有：在线教育系统、支付结算系统、会务系统、直播系统。以不断迭代创新的核心软件产品为基础，为客户提供高品质的教育系统定制开发服务、教育系统SaaS服务、支付结算系统开发服务、会务系统开发服务等。</p><p>领课团队拥有十多年的互联网软件产品技术研发经验，以产品技术创新为驱动，以高品质服务为宗旨，为企业提一站式数字化应用解决方案。<img src=\"https://file.roncoos.com/eduos/public/22f614b962e146ba94ff8d8b34985dfd.jpg\" alt=\"\" data-href=\"\" style=\"width: 100%;\"/></p>', 1, 0.00, 0.00, 1, 1, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for course_chapter
-- ----------------------------
DROP TABLE IF EXISTS `course_chapter`;
CREATE TABLE `course_chapter`  (
  `id` bigint NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int NOT NULL DEFAULT 1 COMMENT '排序',
  `course_id` bigint NOT NULL DEFAULT 0 COMMENT '课程ID',
  `chapter_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '章节名称',
  `chapter_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '章节描述',
  `is_free` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否免费(1免费，0收费)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '章节信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_chapter
-- ----------------------------
INSERT INTO `course_chapter` VALUES (1080756594904076290, '2019-01-03 17:50:39', '2019-01-03 17:50:39', 1, 1, 1080756535567257601, '第一章', NULL, 0);
INSERT INTO `course_chapter` VALUES (1568525966162083841, '2022-09-10 17:05:06', '2022-09-28 20:29:58', 1, 1, 1080758482462511106, '第二章', NULL, 1);
INSERT INTO `course_chapter` VALUES (1568526949114003457, '2022-09-10 17:09:01', '2022-09-28 20:29:53', 1, 1, 1080758482462511106, '第一章', NULL, 1);
INSERT INTO `course_chapter` VALUES (1568787966599450626, '2022-09-11 10:26:12', '2022-09-28 20:27:19', 1, 1, 1248473637832937473, '章节2', NULL, 1);
INSERT INTO `course_chapter` VALUES (1568787988535660546, '2022-09-11 10:26:17', '2022-09-28 20:27:48', 1, 2, 1248473637832937473, '章节3', NULL, 1);
INSERT INTO `course_chapter` VALUES (1568788006608916482, '2022-09-11 10:26:22', '2022-09-28 20:26:57', 1, 1, 1248473637832937473, '章节1', NULL, 1);
INSERT INTO `course_chapter` VALUES (1568790483920027649, '2022-09-11 10:36:12', '2022-09-28 20:31:01', 1, 1, 1246446673697738753, '第一章', NULL, 1);
INSERT INTO `course_chapter` VALUES (1569112587710316545, '2022-09-12 07:56:08', '2022-09-12 07:56:12', 1, 1, 1085453180200448002, '新手如何入门', NULL, 1);
INSERT INTO `course_chapter` VALUES (1569112697382977537, '2022-09-12 07:56:34', '2022-09-12 08:16:36', 1, 2, 1085453180200448002, '如何提高能力', NULL, 1);
INSERT INTO `course_chapter` VALUES (1572148158623907842, '2022-09-20 16:58:24', '2024-04-04 19:09:53', 1, 1, 1248882669827706881, '运营速成班', NULL, 1);
INSERT INTO `course_chapter` VALUES (1572845844297707522, '2022-09-22 15:10:46', '2024-06-04 11:45:39', 1, 1, 1080759102707798018, '第一章', NULL, 0);
INSERT INTO `course_chapter` VALUES (1572937287129464834, '2022-09-22 21:14:07', '2022-09-23 20:16:37', 1, 1, 1249286274804142081, '龙果充值', NULL, 1);
INSERT INTO `course_chapter` VALUES (1573286640792731650, '2022-09-23 20:22:20', '2024-04-13 21:44:14', 1, 2, 1080759557655564289, '如何搭建一套在线教育系统', NULL, 0);
INSERT INTO `course_chapter` VALUES (1574288285487964162, '2022-09-26 14:42:30', '2024-04-13 21:44:14', 1, 1, 1080759557655564289, '如何找到合适的在线教育系统', NULL, 1);
INSERT INTO `course_chapter` VALUES (1640903337124679682, '2023-03-29 10:26:56', '2024-06-04 11:45:42', 1, 1, 1640903265695682562, '第一章', NULL, 1);
INSERT INTO `course_chapter` VALUES (1640905892600860673, '2023-03-29 10:37:06', '2023-03-29 10:37:06', 1, 1, 1640905820483997697, '章1', NULL, 1);
INSERT INTO `course_chapter` VALUES (1640918458253299713, '2023-03-29 11:27:01', '2023-03-29 11:27:01', 1, 1, 1640918423964864514, '章1', NULL, 1);
INSERT INTO `course_chapter` VALUES (1640954713452171266, '2023-03-29 13:51:05', '2023-03-29 13:51:05', 1, 2, 1640925656291332097, '章2', NULL, 1);
INSERT INTO `course_chapter` VALUES (1768098557661814786, '2024-03-14 10:15:20', '2024-04-04 19:09:53', 1, 2, 1248882669827706881, '高级数据库集成学习', NULL, 1);
INSERT INTO `course_chapter` VALUES (1780049877927006210, '2024-04-16 09:45:37', '2024-04-16 09:45:37', 1, 1, 1780049877671153666, '默认', '第一章', 1);
INSERT INTO `course_chapter` VALUES (1780050899911118849, '2024-04-16 09:49:40', '2024-04-16 09:49:40', 1, 3, 1780049877671153666, '实操', NULL, 0);

-- ----------------------------
-- Table structure for course_chapter_period
-- ----------------------------
DROP TABLE IF EXISTS `course_chapter_period`;
CREATE TABLE `course_chapter_period`  (
  `id` bigint NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int NOT NULL DEFAULT 1 COMMENT '排序',
  `course_id` bigint NOT NULL DEFAULT 0 COMMENT '课程ID',
  `chapter_id` bigint NOT NULL DEFAULT 0 COMMENT '章节ID',
  `period_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '课时名称',
  `period_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课时描述',
  `is_free` tinyint NOT NULL DEFAULT 0 COMMENT '是否免费(1免费，0收费)',
  `resource_id` bigint NOT NULL DEFAULT 0 COMMENT '资源ID',
  `period_type` tinyint NOT NULL DEFAULT 10 COMMENT '课时类型',
  `live_id` bigint NOT NULL DEFAULT 0 COMMENT '直播ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '课时信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_chapter_period
-- ----------------------------
INSERT INTO `course_chapter_period` VALUES (1797835699991449602, '2024-06-04 11:40:07', '2024-06-04 11:40:07', 1, 1, 1780049877671153666, 1780049877927006210, '演示视频2.mp4', NULL, 0, 1570253224128118786, 10, 0);
INSERT INTO `course_chapter_period` VALUES (1797835713836847105, '2024-06-04 11:40:11', '2024-06-04 11:40:11', 1, 2, 1780049877671153666, 1780049877927006210, '点播私有化解决方案.docx', NULL, 0, 1787818748243173378, 10, 0);
INSERT INTO `course_chapter_period` VALUES (1797835722594553857, '2024-06-04 11:40:13', '2024-06-04 11:40:13', 1, 3, 1780049877671153666, 1780049877927006210, '教培系统 - 技术培训.pptx', NULL, 0, 1787821843081682946, 10, 0);
INSERT INTO `course_chapter_period` VALUES (1797835739334021121, '2024-06-04 11:40:17', '2024-06-04 11:40:17', 1, 4, 1780049877671153666, 1780049877927006210, '服务器资源.xlsx', NULL, 0, 1787821881505701890, 10, 0);
INSERT INTO `course_chapter_period` VALUES (1797835755624697858, '2024-06-04 11:40:20', '2024-06-04 11:40:20', 1, 1, 1780049877671153666, 1780050899911118849, '1000-企培.jpg', NULL, 0, 1797520766492991490, 10, 0);
INSERT INTO `course_chapter_period` VALUES (1797835762553688065, '2024-06-04 11:40:22', '2024-06-04 11:40:22', 1, 2, 1780049877671153666, 1780050899911118849, '1000-教培.jpg', NULL, 0, 1797525152845783041, 10, 0);

-- ----------------------------
-- Table structure for live
-- ----------------------------
DROP TABLE IF EXISTS `live`;
CREATE TABLE `live`  (
  `id` bigint NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int NOT NULL DEFAULT 1 COMMENT '排序',
  `lecturer_id` bigint NOT NULL DEFAULT 0 COMMENT '讲师ID',
  `live_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '直播名称',
  `live_introduce` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '直播介绍',
  `live_model` tinyint NOT NULL DEFAULT 1 COMMENT '直播模式',
  `live_delay` tinyint NOT NULL DEFAULT 1 COMMENT '直播延迟',
  `begin_time` datetime NULL DEFAULT NULL COMMENT '开播时间',
  `live_duration` int NULL DEFAULT 0 COMMENT '开播时长(单位：秒)',
  `live_status` tinyint NULL DEFAULT 1 COMMENT '直播状态',
  `live_platform` tinyint NULL DEFAULT NULL COMMENT '直播平台',
  `channel_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '频道号',
  `channel_pwd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '频道密码',
  `playback_save` tinyint NOT NULL DEFAULT 1 COMMENT '回放保存',
  `resource_id` bigint NULL DEFAULT 0 COMMENT '资源ID(回放视频)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '直播信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of live
-- ----------------------------

-- ----------------------------
-- Table structure for live_log
-- ----------------------------
DROP TABLE IF EXISTS `live_log`;
CREATE TABLE `live_log`  (
  `id` bigint NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `live_id` bigint NOT NULL DEFAULT 0 COMMENT '直播ID',
  `live_platform` tinyint NULL DEFAULT NULL COMMENT '直播平台',
  `live_status` tinyint NULL DEFAULT NULL COMMENT '直播状态',
  `channel_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '频道号',
  `session_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '场次ID',
  `start_time` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `playback_save` tinyint NOT NULL DEFAULT 1 COMMENT '回放保存',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '直播信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of live_log
-- ----------------------------

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource`  (
  `id` bigint NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int NOT NULL DEFAULT 1 COMMENT '排序',
  `category_id` bigint NULL DEFAULT 0 COMMENT '分类ID',
  `resource_name` varchar(126) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源名称',
  `resource_type` tinyint NOT NULL DEFAULT 1 COMMENT '资源类型(1:视频2:音频;3:文档)',
  `resource_size` bigint NOT NULL COMMENT '资源大小',
  `resource_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资源地址',
  `vod_platform` tinyint NULL DEFAULT NULL COMMENT '点播平台',
  `storage_platform` tinyint NULL DEFAULT NULL COMMENT '存储平台',
  `video_status` tinyint NULL DEFAULT 1 COMMENT '状态(1转码中，2成功，3失败)',
  `video_length` int NULL DEFAULT NULL COMMENT '音视频时长，单位秒',
  `video_vid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '银视频vid',
  `doc_page` int NULL DEFAULT 0 COMMENT '文档页数，单位页',
  `img_width` int UNSIGNED NULL DEFAULT 0 COMMENT '图片宽度',
  `img_height` int UNSIGNED NULL DEFAULT 0 COMMENT '图片高度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '课程视频信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES (1570253224128118786, '2022-09-15 11:28:37', '2024-05-14 15:25:19', 1, 20, 1772983087241732098, '演示视频2.mp4', 1, 15984462, NULL, 2, 1, 2, 79, 'b0906b1697d8e76da76bb6d1e9bb0057_b', NULL, 0, 0);
INSERT INTO `resource` VALUES (1570254977909227521, '2022-09-15 11:35:35', '2024-05-14 15:25:19', 1, 19, 1772983087241732098, '演示视频1.mp4', 1, 20463594, NULL, 2, 1, 2, 87, 'b0906b1697cf4e60e7aba3d25d999293_b', NULL, 0, 0);
INSERT INTO `resource` VALUES (1787818748243173378, '2024-05-07 20:16:20', '2024-06-04 11:26:01', 1, 10, 1772983255387185154, '点播私有化解决方案.docx', 3, 810202, 'https://file.roncoos.com/eduos/private/54d4c3d2adf74fe5a7484f57ae108984.docx', NULL, 2, 1, NULL, NULL, 2, 0, 0);
INSERT INTO `resource` VALUES (1787821843081682946, '2024-05-07 20:28:38', '2024-06-04 11:26:01', 1, 9, 1772983255387185154, '教培系统 - 技术培训.pptx', 3, 5932384, 'https://file.roncoos.com/eduos/private/5cbecb0b318348cba703639f2207a8d7.pptx', NULL, 2, 1, NULL, NULL, 12, 0, 0);
INSERT INTO `resource` VALUES (1787821881505701890, '2024-05-07 20:28:47', '2024-06-04 11:26:01', 1, 8, 1772983255387185154, '服务器资源.xlsx', 3, 10300, 'https://file.roncoos.com/eduos/private/ba235a21e6d54cb5932451e34b106b0f.xlsx', NULL, 2, 1, NULL, NULL, 1, 0, 0);
INSERT INTO `resource` VALUES (1797520766492991490, '2024-06-03 14:48:41', '2024-06-04 11:26:06', 1, 1, 1753301364262375426, '1000-企培.jpg', 4, 62586, 'https://file.roncoos.com/eduos/public/a2028d63cf7a45e19e55387976a1b72a.jpg', NULL, 2, 1, NULL, NULL, 0, 1265, 455);
INSERT INTO `resource` VALUES (1797525152845783041, '2024-06-03 15:06:07', '2024-06-04 11:26:06', 1, 1, 1753301364262375426, '1000-教培.jpg', 4, 69447, 'https://file.roncoos.com/eduos/public/22f614b962e146ba94ff8d8b34985dfd.jpg', NULL, 2, 1, NULL, NULL, 0, 1265, 455);

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
-- Table structure for user_course
-- ----------------------------
DROP TABLE IF EXISTS `user_course`;
CREATE TABLE `user_course`  (
  `id` bigint NOT NULL DEFAULT 2 COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int NOT NULL DEFAULT 1 COMMENT '排序',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `course_id` bigint NOT NULL DEFAULT 0 COMMENT '课程ID',
  `buy_type` tinyint NULL DEFAULT 1 COMMENT '购买类型(1支付，2免费)',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_course_id_user_no`(`course_id` ASC, `user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '课程用户关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_course
-- ----------------------------
INSERT INTO `user_course` VALUES (1793982014013198338, '2024-05-24 20:26:57', '2024-05-24 20:26:57', 1, 1, 1787687263620153345, 1793478851548041217, 1);
INSERT INTO `user_course` VALUES (1793985554991435778, '2024-05-24 20:41:01', '2024-05-24 20:41:01', 1, 1, 1787687263620153345, 1793177692090290177, 1);
INSERT INTO `user_course` VALUES (1794000659879735298, '2024-05-24 21:41:03', '2024-05-24 21:41:03', 1, 1, 1592154504513572866, 1793478851548041217, 1);
INSERT INTO `user_course` VALUES (1794002923524632577, '2024-05-24 21:50:02', '2024-05-24 21:50:02', 1, 1, 1592154504513572866, 1793177692090290177, 1);
INSERT INTO `user_course` VALUES (1794003996016553985, '2024-05-24 21:54:18', '2024-05-24 21:54:18', 1, 1, 1592154504513572866, 1246446673697738753, 0);
INSERT INTO `user_course` VALUES (1794207055460085762, '2024-05-25 11:21:11', '2024-05-25 11:21:11', 1, 1, 1794205937195732994, 1080759557655564289, 0);
INSERT INTO `user_course` VALUES (1794237547072892930, '2024-05-25 13:22:21', '2024-05-25 13:22:21', 1, 1, 1592154504513572866, 1788018009639608322, 1);
INSERT INTO `user_course` VALUES (1794278268228251650, '2024-05-25 16:04:09', '2024-05-25 16:04:09', 1, 1, 1592154504513572866, 1780049877671153666, 0);
INSERT INTO `user_course` VALUES (1794282817299066882, '2024-05-25 16:22:14', '2024-05-25 16:22:14', 1, 1, 1592154504513572866, 1248882669827706881, 1);
INSERT INTO `user_course` VALUES (1794358955757187074, '2024-05-25 21:24:47', '2024-05-25 21:24:47', 1, 1, 1592154504513572866, 1080756535567257601, 1);
INSERT INTO `user_course` VALUES (1794551565054554113, '2024-05-26 10:10:08', '2024-05-26 10:10:08', 1, 1, 1592154504513572866, 1248473637832937473, 1);
INSERT INTO `user_course` VALUES (1794719041369321474, '2024-05-26 21:15:38', '2024-05-26 21:15:38', 1, 1, 1787687263620153345, 1248882669827706881, 1);
INSERT INTO `user_course` VALUES (1796113705217548289, '2024-05-30 17:37:32', '2024-05-30 17:37:32', 1, 1, 1783011979805442050, 1788001788550569986, 0);

-- ----------------------------
-- Table structure for user_course_collect
-- ----------------------------
DROP TABLE IF EXISTS `user_course_collect`;
CREATE TABLE `user_course_collect`  (
  `id` bigint NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int NOT NULL DEFAULT 1 COMMENT '排序',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `course_id` bigint NOT NULL DEFAULT 0 COMMENT '课程ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '课程收藏' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_course_collect
-- ----------------------------
INSERT INTO `user_course_collect` VALUES (1768616880384253954, '2024-03-15 20:34:58', '2024-03-15 20:34:58', 1, 1, 1592154504513572866, 1080759557655564289);
INSERT INTO `user_course_collect` VALUES (1769541706192072705, '2024-03-18 09:49:53', '2024-03-18 09:49:53', 1, 1, 1592154504513572866, 1080758482462511106);
INSERT INTO `user_course_collect` VALUES (1782319212527706113, '2024-04-22 16:03:08', '2024-04-22 16:03:08', 1, 1, 1592154504513572866, 1249286274804142081);
INSERT INTO `user_course_collect` VALUES (1787688047497797633, '2024-05-07 11:36:58', '2024-05-07 11:36:58', 1, 1, 1787687263620153345, 1780049877671153666);
INSERT INTO `user_course_collect` VALUES (1789107243762843649, '2024-05-11 09:36:21', '2024-05-11 09:36:21', 1, 1, 1592154504513572866, 1080759102707798018);
INSERT INTO `user_course_collect` VALUES (1790628501715574786, '2024-05-15 14:21:17', '2024-05-15 14:21:17', 1, 1, 1783011979805442050, 1249286274804142081);
INSERT INTO `user_course_collect` VALUES (1790629044638867457, '2024-05-15 14:23:27', '2024-05-15 14:23:27', 1, 1, 1783011979805442050, 1080759557655564289);
INSERT INTO `user_course_collect` VALUES (1790634033717338114, '2024-05-15 14:43:16', '2024-05-15 14:43:16', 1, 1, 1783011979805442050, 1788001788550569986);
INSERT INTO `user_course_collect` VALUES (1791034429585661953, '2024-05-16 17:14:18', '2024-05-16 17:14:18', 1, 1, 1592154504513572866, 1790934216304910337);
INSERT INTO `user_course_collect` VALUES (1792451811923349506, '2024-05-20 15:06:28', '2024-05-20 15:06:28', 1, 1, 1792166062837620738, 1780049877671153666);
INSERT INTO `user_course_collect` VALUES (1793529115273482241, '2024-05-23 14:27:17', '2024-05-23 14:27:17', 1, 1, 1592154504513572866, 1248882669827706881);
INSERT INTO `user_course_collect` VALUES (1794165595624878082, '2024-05-25 08:36:26', '2024-05-25 08:36:26', 1, 1, 1783011979805442050, 1248882669827706881);
INSERT INTO `user_course_collect` VALUES (1794244279190859778, '2024-05-25 13:49:06', '2024-05-25 13:49:06', 1, 1, 1592154504513572866, 1246446673697738753);
INSERT INTO `user_course_collect` VALUES (1794920123328540673, '2024-05-27 10:34:40', '2024-05-27 10:34:40', 1, 1, 1792166062837620738, 1080759557655564289);
INSERT INTO `user_course_collect` VALUES (1794920441407778817, '2024-05-27 10:35:55', '2024-05-27 10:35:55', 1, 1, 1792166062837620738, 1248882669827706881);

-- ----------------------------
-- Table structure for user_course_comment
-- ----------------------------
DROP TABLE IF EXISTS `user_course_comment`;
CREATE TABLE `user_course_comment`  (
  `id` bigint NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int NOT NULL DEFAULT 1 COMMENT '排序',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `course_id` bigint NOT NULL DEFAULT 0 COMMENT '课程ID',
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论ID',
  `comment_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评论内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '课程评论' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_course_comment
-- ----------------------------
INSERT INTO `user_course_comment` VALUES (1768610540488237057, '2024-03-15 20:09:46', '2024-03-15 20:09:46', 1, 1, 1592154504513572866, 1080758482462511106, 0, '测试');
INSERT INTO `user_course_comment` VALUES (1772238534024904705, '2024-03-25 20:26:07', '2024-03-25 20:26:07', 1, 1, 1592154504513572866, 1248882669827706881, 0, '2112212');
INSERT INTO `user_course_comment` VALUES (1773349673765019650, '2024-03-28 22:01:24', '2024-03-28 22:01:24', 1, 1, 1592154504513572866, 1080756535567257601, 0, '333');
INSERT INTO `user_course_comment` VALUES (1773349778249326594, '2024-03-28 22:01:49', '2024-03-28 22:01:49', 1, 1, 1592154504513572866, 1080756535567257601, 0, '3333');
INSERT INTO `user_course_comment` VALUES (1774239188167794690, '2024-03-31 08:56:00', '2024-03-31 08:56:00', 1, 1, 1592154504513572866, 1246446673697738753, 0, '不错');
INSERT INTO `user_course_comment` VALUES (1774239201732173825, '2024-03-31 08:56:04', '2024-03-31 08:56:04', 1, 1, 1592154504513572866, 1246446673697738753, 0, '不错');
INSERT INTO `user_course_comment` VALUES (1783747690624016386, '2024-04-26 14:39:24', '2024-04-26 14:39:24', 1, 1, 1783011979805442050, 1080759102707798018, 0, 'ssss');
INSERT INTO `user_course_comment` VALUES (1783797078280986626, '2024-04-26 17:55:39', '2024-04-26 17:55:39', 1, 1, 1783011979805442050, 1248882669827706881, 0, 'dddd');
INSERT INTO `user_course_comment` VALUES (1783797648786022402, '2024-04-26 17:57:55', '2024-04-26 17:57:55', 1, 1, 1783011979805442050, 1248882669827706881, 0, 'ddddc');
INSERT INTO `user_course_comment` VALUES (1784047224998682626, '2024-04-27 10:29:39', '2024-04-27 10:29:39', 1, 1, 1783011979805442050, 1080759557655564289, 0, 'ddd');
INSERT INTO `user_course_comment` VALUES (1785161983701639169, '2024-04-30 12:19:18', '2024-04-30 12:19:18', 1, 1, 1783011979805442050, 1248882669827706881, 0, 'a');
INSERT INTO `user_course_comment` VALUES (1785206346574028802, '2024-04-30 15:15:35', '2024-04-30 15:15:35', 1, 1, 1783011979805442050, 1248882669827706881, 0, '测试');
INSERT INTO `user_course_comment` VALUES (1788011923603841026, '2024-05-08 09:03:56', '2024-05-08 09:03:56', 1, 1, 1592154504513572866, 1248473637832937473, 0, '领课网络（全称：广州市领课网络科技有限公司）作为一家软件科技企业，致力于为客户提供专业化的软件产品技术解决方案。公司成立于2016年，是通过国家认定的高新技术企业。核心软件产品有：在线教育系统、支付结算系统、会务系统、直播系统。以不断迭代创新的核心软件产品为基础，为客户提供高品质的教育系统定制开发服务、教育系统SaaS服务、支付结算系统开发服务、会务系统开发服务等。领课网络（全称：广州市领课网络科');
INSERT INTO `user_course_comment` VALUES (1788108422257958914, '2024-05-08 15:27:23', '2024-05-08 15:27:23', 1, 1, 1783011979805442050, 1248473637832937473, 0, '这个头像怎么那么抽象');
INSERT INTO `user_course_comment` VALUES (1788109269473812482, '2024-05-08 15:30:45', '2024-05-08 15:30:45', 1, 1, 1783011979805442050, 1248882669827706881, 0, '测试');
INSERT INTO `user_course_comment` VALUES (1788109845657935873, '2024-05-08 15:33:03', '2024-05-08 15:33:03', 1, 1, 1783011979805442050, 1248882669827706881, 0, '1111');
INSERT INTO `user_course_comment` VALUES (1789206423380570113, '2024-05-11 16:10:27', '2024-05-11 16:10:27', 1, 1, 1592154504513572866, 1249286274804142081, 0, 'ss');
INSERT INTO `user_course_comment` VALUES (1791398652115329025, '2024-05-17 17:21:35', '2024-05-17 17:21:35', 1, 1, 1783011979805442050, 0, 0, '11111111111');
INSERT INTO `user_course_comment` VALUES (1791398964783915009, '2024-05-17 17:22:50', '2024-05-17 17:22:50', 1, 1, 1783011979805442050, 0, 0, 'ddddd');
INSERT INTO `user_course_comment` VALUES (1791399839434711042, '2024-05-17 17:26:18', '2024-05-17 17:26:18', 1, 1, 1783011979805442050, 1248882669827706881, 0, 'ddddd');
INSERT INTO `user_course_comment` VALUES (1791823712714137601, '2024-05-18 21:30:38', '2024-05-18 21:30:38', 1, 1, 1783011979805442050, 0, 0, 'ddd');
INSERT INTO `user_course_comment` VALUES (1792358190310117377, '2024-05-20 08:54:27', '2024-05-20 08:54:27', 1, 1, 1783011979805442050, 1790934216304910337, 0, '测试');
INSERT INTO `user_course_comment` VALUES (1792361504036769794, '2024-05-20 09:07:37', '2024-05-20 09:07:37', 1, 1, 1783011979805442050, 0, 0, '1111');
INSERT INTO `user_course_comment` VALUES (1792363690779103234, '2024-05-20 09:16:19', '2024-05-20 09:16:19', 1, 1, 1783011979805442050, 1248882669827706881, 0, '测试');
INSERT INTO `user_course_comment` VALUES (1792366772875317250, '2024-05-20 09:28:33', '2024-05-20 09:28:33', 1, 1, 1783011979805442050, 0, 0, '测试');
INSERT INTO `user_course_comment` VALUES (1792368197399367682, '2024-05-20 09:34:13', '2024-05-20 09:34:13', 1, 1, 1783011979805442050, 0, 0, 'dddd');
INSERT INTO `user_course_comment` VALUES (1792451874800160769, '2024-05-20 15:06:43', '2024-05-20 15:06:43', 1, 1, 1792166062837620738, 1780049877671153666, 0, '123456');
INSERT INTO `user_course_comment` VALUES (1793973176128131074, '2024-05-24 19:51:50', '2024-05-24 19:51:50', 1, 1, 1592154504513572866, 1793177692090290177, 0, 'ce');
INSERT INTO `user_course_comment` VALUES (1793973203533713410, '2024-05-24 19:51:56', '2024-05-24 19:51:56', 1, 1, 1592154504513572866, 1793177692090290177, 0, 'cddd');
INSERT INTO `user_course_comment` VALUES (1793976747674456065, '2024-05-24 20:06:01', '2024-05-24 20:06:01', 1, 1, 1592154504513572866, 1793478851548041217, 0, '测试');
INSERT INTO `user_course_comment` VALUES (1794002865756483585, '2024-05-24 21:49:48', '2024-05-24 21:49:48', 1, 1, 1592154504513572866, 0, 0, '3333');
INSERT INTO `user_course_comment` VALUES (1794237087800799233, '2024-05-25 13:20:31', '2024-05-25 13:20:31', 1, 1, 1592154504513572866, 1788018009639608322, 0, '测');
INSERT INTO `user_course_comment` VALUES (1794920082492796929, '2024-05-27 10:34:30', '2024-05-27 10:34:30', 1, 1, 1792166062837620738, 1080759557655564289, 0, '111123');
INSERT INTO `user_course_comment` VALUES (1795336654889873410, '2024-05-28 14:09:48', '2024-05-28 14:09:48', 1, 1, 1783011979805442050, 1793478851548041217, 0, '测试');
INSERT INTO `user_course_comment` VALUES (1795336717011709953, '2024-05-28 14:10:03', '2024-05-28 14:10:03', 1, 1, 1783011979805442050, 1793478851548041217, 0, '测试');
INSERT INTO `user_course_comment` VALUES (1796056881437073409, '2024-05-30 13:51:44', '2024-05-30 13:51:44', 1, 1, 1592154504513572866, 0, 0, '测试');
INSERT INTO `user_course_comment` VALUES (1796056913179566081, '2024-05-30 13:51:51', '2024-05-30 13:51:51', 1, 1, 1592154504513572866, 0, 0, '哈哈');
INSERT INTO `user_course_comment` VALUES (1796057599795519490, '2024-05-30 13:54:35', '2024-05-30 13:54:35', 1, 1, 1592154504513572866, 1080756535567257601, 0, 'your');

-- ----------------------------
-- Table structure for user_study
-- ----------------------------
DROP TABLE IF EXISTS `user_study`;
CREATE TABLE `user_study`  (
  `id` bigint NOT NULL DEFAULT 0 COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `course_id` bigint NOT NULL DEFAULT 0 COMMENT '课程ID',
  `chapter_id` bigint NOT NULL DEFAULT 0 COMMENT '章节ID',
  `period_id` bigint NOT NULL DEFAULT 0 COMMENT '课时ID',
  `user_id` bigint NOT NULL DEFAULT 0 COMMENT '用户ID',
  `resource_type` tinyint NOT NULL DEFAULT 1 COMMENT '资源类型(1:视频2:音频;3:文档)',
  `current_duration` int NOT NULL DEFAULT 0 COMMENT '当前学习时长，单位秒',
  `current_page` int NOT NULL DEFAULT 0 COMMENT '当前学习页数，单位页',
  `progress` decimal(5, 2) NOT NULL DEFAULT 20.00 COMMENT '进度(百分比)',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_user_peroid`(`period_id` ASC, `user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '课程用户学习日志' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_study
-- ----------------------------
INSERT INTO `user_study` VALUES (1794715444757835778, '2024-05-26 21:01:20', '2024-05-30 10:43:11', 1080756535567257601, 1080756594904076290, 1066954337870966785, 1592154504513572866, 1, 3, 0, 3.60);
INSERT INTO `user_study` VALUES (1794919660961050626, '2024-05-27 10:32:49', '2024-05-27 10:32:54', 1080759557655564289, 1574288285487964162, 1574291623881318402, 1792166062837620738, 1, 79, 0, 100.00);
INSERT INTO `user_study` VALUES (1794919918520676353, '2024-05-27 10:33:51', '2024-05-27 10:33:51', 1080759557655564289, 1573286640792731650, 1790571185649639426, 1792166062837620738, 3, 0, 20, 100.00);
INSERT INTO `user_study` VALUES (1794942700289699841, '2024-05-27 12:04:22', '2024-05-27 12:04:26', 1248473637832937473, 1568788006608916482, 1575099815532032001, 1792166062837620738, 1, 87, 0, 100.00);
INSERT INTO `user_study` VALUES (1794942874349121537, '2024-05-27 12:05:04', '2024-05-27 12:05:08', 1080758482462511106, 1568526949114003457, 1572862534867775490, 1792166062837620738, 1, 87, 0, 100.00);
INSERT INTO `user_study` VALUES (1794942928812158977, '2024-05-27 12:05:17', '2024-05-27 12:05:20', 1249286274804142081, 1572937287129464834, 1572937320415461378, 1792166062837620738, 1, 87, 0, 100.00);
INSERT INTO `user_study` VALUES (1795617923527766018, '2024-05-29 08:47:28', '2024-05-29 08:47:28', 1788018009639608322, 1788018009849323521, 1788026532008157186, 1783011979805442050, 3, 0, 0, 0.00);
INSERT INTO `user_study` VALUES (1795619940010717186, '2024-05-29 08:55:29', '2024-05-29 08:55:29', 1249286274804142081, 1572937287129464834, 1572937320415461378, 1783011979805442050, 1, 0, 0, 0.00);
INSERT INTO `user_study` VALUES (1795625707086442497, '2024-05-29 09:18:24', '2024-05-29 09:18:43', 1246446673697738753, 1568790483920027649, 1568790507953389570, 1592154504513572866, 1, 87, 0, 8.61);
INSERT INTO `user_study` VALUES (1795626379387236354, '2024-05-29 09:21:04', '2024-05-30 10:43:11', 1248473637832937473, 1568788006608916482, 1575099815532032001, 1592154504513572866, 1, 1, 0, 2.01);
INSERT INTO `user_study` VALUES (1795626387729707009, '2024-05-29 09:21:06', '2024-05-29 09:21:06', 1248473637832937473, 1568787966599450626, 1568788221785100289, 1592154504513572866, 1, 87, 0, 1.76);
INSERT INTO `user_study` VALUES (1795626416469078018, '2024-05-29 09:21:13', '2024-05-29 09:21:13', 1248473637832937473, 1568787988535660546, 1575099996965040129, 1592154504513572866, 1, 87, 0, 7.67);
INSERT INTO `user_study` VALUES (1795626445212643329, '2024-05-29 09:21:20', '2024-05-29 09:21:20', 1248473637832937473, 1568787966599450626, 1568788236544856066, 1592154504513572866, 1, 79, 0, 5.92);
INSERT INTO `user_study` VALUES (1795744910099603457, '2024-05-29 17:12:04', '2024-05-29 17:12:04', 1788018009639608322, 1788018009849323521, 1788018032309821442, 1592154504513572866, 3, 0, 1, 100.00);
INSERT INTO `user_study` VALUES (1796056550196109313, '2024-05-30 13:50:25', '2024-05-30 14:01:01', 1080758482462511106, 1568526949114003457, 1572862534867775490, 1592154504513572866, 1, 8, 0, 100.00);
INSERT INTO `user_study` VALUES (1796056582412558338, '2024-05-30 13:50:33', '2024-05-30 14:00:52', 1080758482462511106, 1568525966162083841, 1572862508754038785, 1592154504513572866, 1, 14, 0, 100.00);
INSERT INTO `user_study` VALUES (1796113705288851457, '2024-05-30 17:37:32', '2024-05-30 17:37:32', 1788001788550569986, 1788001788923863042, 1788002100426432514, 1783011979805442050, 1, 0, 0, 0.00);
INSERT INTO `user_study` VALUES (1796113931181481985, '2024-05-30 17:38:26', '2024-05-30 17:38:26', 1788001788550569986, 1788001902014881793, 1788002169347235841, 1783011979805442050, 1, 0, 0, 0.00);
INSERT INTO `user_study` VALUES (1796114523287183361, '2024-05-30 17:40:47', '2024-05-31 09:23:01', 1788001788550569986, 1788001788923863042, 1788002057078300673, 1783011979805442050, 3, 0, 5, 100.00);
INSERT INTO `user_study` VALUES (1796351704371027970, '2024-05-31 09:23:15', '2024-05-31 09:23:15', 1788001788550569986, 1788001972173004801, 1788002209973264385, 1783011979805442050, 1, 0, 0, 0.00);
INSERT INTO `user_study` VALUES (1796359325937295361, '2024-05-31 09:53:32', '2024-05-31 09:53:32', 1080759557655564289, 1574288285487964162, 1574291623881318402, 1783011979805442050, 1, 0, 0, 0.00);

-- ----------------------------
-- Table structure for zone
-- ----------------------------
DROP TABLE IF EXISTS `zone`;
CREATE TABLE `zone`  (
  `id` bigint NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常;0:禁用)',
  `sort` int NOT NULL DEFAULT 1 COMMENT '排序',
  `zone_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '名称',
  `zone_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '专区' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of zone
-- ----------------------------
INSERT INTO `zone` VALUES (1014339060298440705, '2018-07-04 10:45:07', '2024-06-03 15:58:34', 1, 2, '热门课程', '每一门都是好课程');
INSERT INTO `zone` VALUES (1060472271471714305, '2018-11-08 18:02:24', '2024-06-03 15:58:34', 1, 1, '精品课程', '领课出品，皆是精品');

-- ----------------------------
-- Table structure for zone_course
-- ----------------------------
DROP TABLE IF EXISTS `zone_course`;
CREATE TABLE `zone_course`  (
  `id` bigint NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常;0:禁用)',
  `sort` int NOT NULL COMMENT '排序',
  `zone_id` bigint NOT NULL DEFAULT 0 COMMENT '专区编号',
  `course_id` bigint NOT NULL DEFAULT 0 COMMENT '课程ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '专区课程关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of zone_course
-- ----------------------------
INSERT INTO `zone_course` VALUES (1249532098754695170, '2020-04-13 10:57:22', '2024-05-10 20:47:03', 1, 6, 1060472271471714305, 1246446673697738753);
INSERT INTO `zone_course` VALUES (1249532114823073793, '2020-04-13 10:57:26', '2024-05-17 09:45:14', 1, 4, 1060472271471714305, 1248473637832937473);
INSERT INTO `zone_course` VALUES (1249532330120892418, '2020-04-13 10:58:17', '2024-05-10 10:31:38', 1, 2, 1060472271471714305, 1248882669827706881);
INSERT INTO `zone_course` VALUES (1569209824343764993, '2022-09-12 14:22:31', '2024-05-10 20:47:03', 1, 3, 1060472271471714305, 1080759102707798018);
INSERT INTO `zone_course` VALUES (1573288939711725570, '2022-09-23 20:31:28', '2024-05-10 20:47:03', 1, 1, 1060472271471714305, 1080759557655564289);
INSERT INTO `zone_course` VALUES (1573293377251803137, '2022-09-23 20:49:06', '2024-05-17 09:45:14', 1, 5, 1060472271471714305, 1249286274804142081);
INSERT INTO `zone_course` VALUES (1573568479549784066, '2022-09-24 15:02:15', '2024-05-10 20:47:03', 1, 7, 1060472271471714305, 1080758482462511106);
INSERT INTO `zone_course` VALUES (1573568633736593410, '2022-09-24 15:02:52', '2024-05-10 20:47:03', 1, 8, 1060472271471714305, 1080756535567257601);
INSERT INTO `zone_course` VALUES (1573569158418857986, '2022-09-24 15:04:57', '2024-04-17 22:22:03', 1, 3, 1014339060298440705, 1080759102707798018);
INSERT INTO `zone_course` VALUES (1573569185501478914, '2022-09-24 15:05:03', '2024-04-17 22:22:03', 1, 2, 1014339060298440705, 1249286274804142081);
INSERT INTO `zone_course` VALUES (1574292326934749186, '2022-09-26 14:58:34', '2024-03-29 22:16:57', 1, 1, 1014339060298440705, 1248882669827706881);
INSERT INTO `zone_course` VALUES (1790556552926748674, '2024-05-15 09:35:23', '2024-05-15 09:35:23', 1, 1, 0, 1788018009639608322);
INSERT INTO `zone_course` VALUES (1790556636473090050, '2024-05-15 09:35:43', '2024-05-15 09:35:43', 1, 1, 0, 1788001788550569986);
INSERT INTO `zone_course` VALUES (1790560947471015937, '2024-05-15 09:52:51', '2024-05-15 09:52:51', 1, 1, 0, 1788001788550569986);
INSERT INTO `zone_course` VALUES (1790563453940948994, '2024-05-15 10:02:49', '2024-05-15 10:02:49', 1, 1, 0, 1780049877671153666);

SET FOREIGN_KEY_CHECKS = 1;
