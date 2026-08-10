/*
 Navicat Premium Data Transfer

 Source Server         : 10.65.1.18-教育开源
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : 10.65.1.18:3306
 Source Schema         : os_system

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 29/05/2026 07:33:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` bigint NOT NULL COMMENT '主键ID',
  `sort` int NOT NULL DEFAULT 100 COMMENT '排序，默认值:100',
  `config_show` bit(1) NOT NULL DEFAULT b'1' COMMENT '配置展示(0:隐藏、1:显示)',
  `config_type` tinyint NOT NULL DEFAULT 1 COMMENT '配置类型(1:站点信息，2:系统信息、3:其他)',
  `content_type` tinyint NOT NULL DEFAULT 1 COMMENT '内容类型(1:文本、2:富文本、3图片、4布尔、5枚举)',
  `config_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '参数名称',
  `config_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '参数键名',
  `config_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '参数键值',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ak_configkey`(`config_key` ASC) USING BTREE COMMENT '参数键名'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统配置' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (101, 101, b'1', 1, 1, '网站域名', 'websiteDomain', 'http://localhost/', '网站主域名，注意以斜杠结尾', '2021-12-10 14:28:29', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (102, 102, b'1', 1, 1, '网站名称', 'websiteName', '领课教育系统', '网站名称', '2022-06-18 17:29:48', '2024-08-29 10:03:45');
INSERT INTO `sys_config` VALUES (103, 103, b'1', 1, 3, '网站LOGO', 'websiteLogo', 'https://static.roncoos.com/os/10.png', '网站LOGO带文字和图标，建议尺寸 510×108px', '2022-02-18 14:57:23', '2024-08-29 08:45:45');
INSERT INTO `sys_config` VALUES (104, 104, b'1', 1, 3, '网站ICON', 'websiteIcon', 'https://file.roncoos.com/education/education/3c55cc236d1c41e7825fe553606ebe6d.png', '网站ICON，建议尺寸 64×64px', '2022-02-18 14:55:47', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (105, 105, b'1', 1, 1, '网站描述', 'websiteDesc', '领课网络·为企业和培训机构在线培训提供一站式解决方案，包括录播、直播、班级、考试、证书等在线培训工具，且提供网校定制，网校开发，网校搭建等全生命周期的管理与服务。', '用于在店铺登录页面底部展示，例如：“**科技·知识产品与用户服务的数字化工具”', '2022-02-18 16:40:27', '2024-08-29 08:45:21');
INSERT INTO `sys_config` VALUES (106, 106, b'1', 1, 1, '网站版权', 'websiteCopyright', '© 2016-现在 广州市领课网络技术有限公司', '例如：“Copyright © 2015-现在 ******网络技术有限公司 All Rights Reserved”', '2022-02-18 16:32:40', '2024-08-29 08:45:11');
INSERT INTO `sys_config` VALUES (107, 107, b'1', 1, 1, '网站ICP', 'websiteIcp', '粤ICP备16009964号 -1', '例如：“粤ICP备********号-1”', '2022-02-18 16:34:32', '2024-09-25 11:27:01');
INSERT INTO `sys_config` VALUES (108, 108, b'1', 1, 1, '公安部备案号', 'websitePrn', '粤公网安备44010602005928号', '公安部备案号', '2022-03-22 11:47:44', '2024-09-25 11:27:34');
INSERT INTO `sys_config` VALUES (110, 110, b'0', 1, 2, '网站用户协议', 'websiteUserAgreement', '<p style=\"text-align: left;\">一、用户协议总则<br>1、本协议双方为广州市领课网络科技有限公司（以下简称：领课网络）旗下的领课教育系统（域名为：<a href=\"https://eduos.roncoo.net/\" target=\"_blank\">https://eduos.roncoo.net/</a>）和领课教育系统的注册用户（以下简称：用户）。<br>2、用户在注册前请仔细阅读本协议的条款，并按照页面上的提示完成全部注册程序。<br>3、用户在进行注册过程中点击“同意”按钮，即表示用户已充分知悉和完全接受本协议项下全部条款，进而与领课教育系统达成本协议。<br>二、用户服务使用说明<br>1、用户在注册时应按照注册提示填写准确的用户名、密码及真实的联系邮箱、手机号码等相关个人资料，符合完整、准确的要求。<br>2、用户一旦注册成功，便成为领课教育系统网站合法的注册用户，将获得本网站的一个用户账号和相应密码，用户可随时修改自己的用户密码。用户应对其账号和密码安全负全部责任，并应对其用户名下所进行的所有行为和事件承担相应的法律责任。<br>3、用户同意接受领课教育系统网站通过电子邮件或其他方式向用户发送有关商业信息。<br>4、领课教育系统网站不对用户所发布信息的删除或储存失败负责。<br>5、领课教育系统网站不提供账号删除服务，如果用户需要删除账号，请直接放弃使用即可。<br>6、领课教育系统网站有判定用户的行为是否符合本网站服务条款要求的权利，如果用户违背了服务条款的规定，本网站有权对其用户所提供的网络服务进行中断或停止使用。<br>7、用户不得以任何非法目的或其它方式对领课教育系统网站的个人用户账号进行转让、转借、倒卖、账号共享等行为（用户账号仅限由其本人使用）。<br><br>三、协议内容的变更和修订<br>1、领课教育系统网站有权在必要时修改服务条款，领课教育系统网站服务条款一旦发生变动，将会在重要页面上提示修改内容。<br>2、用户如果不同意领课教育系统所改动的内容，可自行停止使用本站网络服务。<br>3、如果用户继续享用本站网络服务，则视为同意接受本网站服务条款的变动。<br>4、领课教育系统网站可随时根据实际情况中断或终止一项或多项网络服务而无需对任何用户或第三方承担任何责任，如用户对一项或多项网络服务的中断或终止有异议，可以行使如下权利：<br>（1）自行停止使用领课教育系统网站的网络服务。<br>（2）通知领课教育系统网站停止对该用户的服务。 结束用户服务后，用户使用网络服务的权利立即终止，从终止时起，用户没有权利再进行处理任何未完成的信息或服务，领课教育系统网站也没有义务为其传送任何未处理的信息或未完成的服务给用户或任何第三方。<br><br>四、用户隐私条款<br>领课教育系统网站将严格履行用户个人隐私保密义务，承诺不公开、编辑或透露用户个人信息，但以下特殊情况除外：<br>1、经注册用户事先许可授权。<br>2、遵守国家法律法规或配合相关政府部门的要求。<br>3、遵从领课教育系统网站合法服务程序。<br>4、为维护社会公众利益以及领课教育系统网站的合法权益所必须。<br><br>五、注册用户的权利与义务<br>1、注册用户在使用领课教育系统网站服务时，必须遵守中华人民共和国相关法律法规的规定，用户应同意将不会利用本服务进行任何违法或不正当的活动，否则用户将自行承担由此产生的一切法律责任。<br>2、用户在账号使用过程中不得上载、展示、张贴、传播或以其它方式传送含有下列内容之一的信息：<br>（1） 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的。<br>（2） 损害国家荣誉和利益的。<br>（3） 煽动民族仇恨、民族歧视、破坏民族团结的。<br>（4） 破坏国家宗教政策，宣扬邪教和封建迷信的。<br>（5） 散布谣言，扰乱社会秩序，破坏社会稳定的。<br>（6） 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的。<br>（7） 侮辱或者诽谤他人，侵害他人合法权利的。<br>（8） 含有虚假、有害、胁迫、侵害他人隐私、骚扰、侵害、中伤、粗俗、猥亵、或其它道德上令人反感的内容。<br>3、不得为任何非法目的而使用网络服务系统。<br>4、不得利用领课教育系统网站服务故意制作、传播计算机病毒等破坏性程序，或其他从事任何危害计算机信息网络安全的行为。<br>5、若用户行为违反上述约定，领课教育系统网站有权作出独立判断并立即取消用户的服务账号，用户应对自己网上的行为承担一切法律责任，领课教育系统网站的系统记录有可能作为用户违反法律的证据提交给相关主管部门。<br>6、用户应同意保障和维护领课教育系统网站全体成员及其他用户的利益，如因违反本协议或违反有关的法律法规而给领课教育系统网站或任何第三者造成损失，用户应承担因此产生的法律责任。<br><br>六、领课教育系统网络服务内容的所有权<br>1、领课教育系统网站定义的网络服务内容包括但不限于：教学视频、资料、源码、文字、软件、声音、图片、商标等。该等内容均受《著作权法》、《商标法》、《专利法》、《计算机软件保护条例》及其他相关法律法规的保护。<br>2、领课教育系统网站所有的文章版权归原文作者和领课教育系统网站共同所有，任何人需要转载本网站版内的文章，必须事先取得原文作者和领课教育系统网站的授权同意。<br>3、未经领课教育系统网站或其他有权第三方的事先许可授权，用户不得对包括但不限于：教学视频</p>', '网站用户协议', '2022-09-24 14:47:36', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (111, 111, b'0', 1, 2, '网站隐私政策', 'websitePrivacyPolicy', '<p style=\"text-align: left;\">一、信息收集</p><p style=\"text-align: left;\">当您使用我们的应用时，我们可能会收集您的个人信息，包括但不限于您的姓名、邮箱、联系方式、设备信息等。</p><p style=\"text-align: left;\">我们收集信息的主要目的是为了更好地为您提供服务，包括但不限于优化用户体验、提供个性化推荐等。</p><p style=\"text-align: left;\">二、信息使用</p><p style=\"text-align: left;\">我们将严格按照相关法律法规的规定，对收集到的个人信息进行保密处理，并采取合理的技术和管理措施确保信息安全。</p><p style=\"text-align: left;\">未经您的明确同意，我们不会将您的个人信息用于任何与提供服务无关的目的，也不会向任何第三方提供、出售或共享您的个人信息。</p><p style=\"text-align: left;\">三、信息共享</p><p style=\"text-align: left;\">在以下情况下，我们可能会与第三方共享您的个人信息：</p><p style=\"text-align: left;\">第三方与我们一起为您提供服务，且该服务结束后，第三方将被禁止访问您的个人信息；</p><p style=\"text-align: left;\">法律法规要求或政府部门要求。</p><p style=\"text-align: left;\">我们将确保第三方在使用您的个人信息时遵守相关法律法规和隐私政策。</p><p style=\"text-align: left;\">四、信息安全</p><p style=\"text-align: left;\">我们将采取合理的技术和管理措施，确保您的个人信息不被非法获取、泄露、篡改或损坏。</p><p style=\"text-align: left;\">如发现任何可能导致您的个人信息泄露的安全隐患，我们将立即采取补救措施，并通知您。</p><p style=\"text-align: left;\">五、您的权利</p><p style=\"text-align: left;\">您有权随时查看、修改或删除我们收集到的您的个人信息。</p><p style=\"text-align: left;\">如您对我们的隐私政策有任何疑问或建议，请随时与我们联系。</p><p style=\"text-align: left;\">六、其他</p><p style=\"text-align: left;\">本隐私政策自发布之日起生效，并可能随时更新。更新后的隐私政策将在应用内公布，请您定期查看。</p><p style=\"text-align: left;\">本隐私政策的最终解释权归我们所有。</p>', '网站隐私政策', '2022-09-24 14:47:36', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (112, 112, b'0', 1, 2, '网站关于我们', 'websiteAboutUs', '<p style=\"text-align: left;\">关于我们</p>', '网站关于我们', '2022-09-24 14:47:36', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (210, 210, b'0', 2, 1, 'RSA公钥(登录密码)', 'rsaLoginPublicKey', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDLS9XookvITHnySmEFACRKpKZoAoQ8cOEh4KzbLNLN0KhoAqJ4XCx9f1mAk6+TH8EUG48JAEIsGX9RnXi4OFJsRWcwweNi1l/SMwYYzimVSZGb0jwqjOMr52RPpfrKIXBx9Fyi9FAaosW/ndxcGEvPamT30Yq0IAUGHC0alOUVbQIDAQAB', '用于登录密码加密，前端使用', '2022-09-24 14:47:36', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (211, 211, b'0', 2, 1, 'RSA私钥(登录密码)', 'rsaLoginPrivateKey', 'MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBAMtL1eiiS8hMefJKYQUAJEqkpmgChDxw4SHgrNss0s3QqGgConhcLH1/WYCTr5MfwRQbjwkAQiwZf1GdeLg4UmxFZzDB42LWX9IzBhjOKZVJkZvSPCqM4yvnZE+l+sohcHH0XKL0UBqixb+d3FwYS89qZPfRirQgBQYcLRqU5RVtAgMBAAECgYAElinVurWlfPjiWxm8bGVP4XjspKPkSN1Xb5N5dWstyrebSHXvFmXy5eONzPyGKqOnRxDk0IKYWUc//uLD8JIGxivoiHHNS6qBUV71v+0zT/Xup6O3FUpCOJvq7tIhXL1j2s5TlPhgjPT7Apjm67Zn9btbnQzlWEdrhv0kZJOWGQJBAPIBs5Gp+L/KzLQyO0MBD5Fr/F4eypAMJrJc3yr4wiue9CmSZi4+GJxJZSgUv40mWoXwjYhgSNkHU+JEzILKGPUCQQDXDR+/cEWw+/SI7CumFwmJW29AOXiwGD+Xm4X+tlZ45fo+tC5/AQW0U3gu5QcMG17LF7Y1Zby5JQDcg1egrJ+ZAkEAy/rBJyrT3pyJ8+xO5QgU3ibdvVtIsyd6ymXbOLYZu3isJgoelCWEyt5WI/VxCwDj1fdO5D77x+oUOyhwFGFRrQJBAJUbBGg38BpGl8ZX+euvDW2vd/OP5Z4zMeRscPuqcUpiKqBPTe3BR7NALJRXOAus7oziY/OiFrhIb9B1QMym5AECQQDGX1pDiYZ2THA41d+og8CNhJ570IcuNSuSJu0hdM6iIkl8nb7WtCZ7WoPv8vQBhl0AQ/we2D598JpUjVibm4Fr', '用于登录密码解密，后端使用', '2022-09-24 14:47:36', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (221, 221, b'1', 2, 4, '微信登录(网站应用)', 'wxPcLoginEnable', '0', '开启后，用户可以在PC端使用微信进行扫码登录', '2022-09-24 14:47:36', '2024-06-21 08:50:14');
INSERT INTO `sys_config` VALUES (222, 222, b'1', 2, 1, '网站应用App ID', 'wxPcLoginAppId', '-', '微信开放平台的网站应用中获取', '2022-09-24 14:47:36', '2024-05-27 16:47:00');
INSERT INTO `sys_config` VALUES (223, 223, b'0', 2, 1, '网站应用App Secret', 'wxPcLoginAppSecret', '-', '微信开放平台的网站应用中获取', '2022-09-24 14:47:36', '2024-05-27 16:47:20');
INSERT INTO `sys_config` VALUES (231, 231, b'0', 2, 4, '微信登录(公众号)', 'wxMpLoginEnable', '0', '开启后，用户可以在微信浏览器内进行微信授权登录', '2022-09-24 14:47:36', '2024-06-21 08:51:18');
INSERT INTO `sys_config` VALUES (232, 232, b'1', 2, 1, '公众号App ID', 'wxMpLoginAppId', '-', '微信公众号App ID', '2022-09-24 14:47:36', '2024-06-01 10:12:15');
INSERT INTO `sys_config` VALUES (233, 233, b'0', 2, 1, '公众号App Secret', 'wxMpLoginAppSecret', '-', '微信公众号App Secret', '2022-09-24 14:47:36', '2024-06-01 10:12:17');
INSERT INTO `sys_config` VALUES (241, 241, b'0', 2, 4, '微信登录(小程序)', 'wxMaLoginEnable', '0', '开启后，用户可以在微信小程序内进行微信授权登录', '2022-09-24 14:47:36', '2024-06-21 08:50:12');
INSERT INTO `sys_config` VALUES (242, 242, b'1', 2, 1, '小程序App ID', 'wxMaLoginAppId', '-', '微信小程序App ID', '2022-09-24 14:47:36', '2024-06-01 10:12:20');
INSERT INTO `sys_config` VALUES (243, 243, b'0', 2, 1, '小程序App Secret', 'wxMaLoginAppSecret', '-', '微信小程序App Secret', '2022-09-24 14:47:36', '2024-06-01 10:12:22');
INSERT INTO `sys_config` VALUES (300, 300, b'1', 3, 5, '点播平台', 'vodPlatform', '1', '默认点播平台', '2021-12-10 14:18:25', '2024-06-11 10:07:31');
INSERT INTO `sys_config` VALUES (301, 301, b'1', 3, 5, '直播平台', 'livePlatform', '1', '默认直播平台', '2021-12-10 14:18:25', '2025-04-15 13:44:31');
INSERT INTO `sys_config` VALUES (305, 305, b'1', 3, 1, '【领课云】Url', 'priyUrl', '-', '【领课云】接口地址，独立收费应用，请联系作者', '2023-03-25 21:56:26', '2024-06-11 10:06:50');
INSERT INTO `sys_config` VALUES (306, 306, b'1', 3, 1, '【领课云】AccessKeyId', 'priyAccessKeyId', '-', '【领课云】AccessKeyId，独立收费应用，请联系作者', '2023-03-25 21:56:52', '2024-06-11 10:06:53');
INSERT INTO `sys_config` VALUES (307, 307, b'0', 3, 1, '【领课云】AccessKeySecret', 'priyAccessKeySecret', '-', '【领课云】AccessKeySecret，独立收费应用，请联系作者', '2023-03-25 21:57:07', '2024-06-11 10:06:56');
INSERT INTO `sys_config` VALUES (311, 311, b'1', 3, 1, '【保利威】User ID', 'polyvUserId', '-', '【保利威】UserId', '2021-12-10 14:33:40', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (312, 312, b'1', 3, 1, '【保利威】点播Write Token', 'polyvWriteToken', '-', '【保利威】Write Token', '2021-12-10 14:34:45', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (313, 313, b'1', 3, 1, '【保利威】点播Read Token', 'polyvReadToken', '-', '【保利威】Read Token', '2021-12-10 14:35:46', '2025-04-15 13:44:19');
INSERT INTO `sys_config` VALUES (314, 314, b'1', 3, 1, '【保利威】点播Secret Key', 'polyvSecretKey', '-', '【保利威】Secret Key', '2021-12-10 14:37:58', '2025-04-15 13:44:20');
INSERT INTO `sys_config` VALUES (315, 315, b'1', 3, 1, '【保利威】AppID', 'polyvAppId', '-', '【保利威】AppID', '2023-02-19 13:45:23', '2025-04-15 13:44:21');
INSERT INTO `sys_config` VALUES (316, 316, b'1', 3, 1, '【保利威】AppSecret', 'polyvAppSecret', '-', '【保利威】AppSecret', '2023-02-19 13:46:27', '2025-04-15 13:44:22');
INSERT INTO `sys_config` VALUES (331, 331, b'1', 3, 1, '【百家云】伙伴ID', 'baijyPartnerId', '-', '百家云伙伴ID', '2021-12-10 14:42:36', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (332, 332, b'1', 3, 1, '【百家云】伙伴秘钥', 'baijyPartnerKey', '-', '百家云伙伴秘钥', '2021-12-10 14:43:14', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (333, 333, b'1', 3, 1, '【百家云】安全秘钥', 'baijySecretKey', '-', '百家云安全秘钥', '2021-12-10 14:43:38', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (400, 400, b'1', 4, 5, '存储平台', 'storagePlatform', '2', '默认存储平台', '2021-12-10 14:21:48', '2024-06-11 09:50:33');
INSERT INTO `sys_config` VALUES (401, 401, b'1', 4, 1, '【阿里云】存储Key ID', 'aliyunAccessKeyId', '-', '阿里云存储 AccessKeyId', '2021-12-10 14:48:57', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (402, 402, b'0', 4, 1, '【阿里云】存储Key Secret', 'aliyunAccessKeySecret', '-', '阿里云存储 AccessKeySecret', '2021-12-10 14:54:30', '2024-06-11 09:50:09');
INSERT INTO `sys_config` VALUES (403, 403, b'1', 4, 1, '【阿里云】存储Endpoint', 'aliyunOssEndpoint', '-', '阿里云存储 Endpoint', '2021-12-10 14:58:17', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (404, 404, b'1', 4, 1, '【阿里云】存储Bucket', 'aliyunOssBucket', '-', '阿里云存储Bucket', '2021-12-10 15:00:26', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (405, 405, b'1', 4, 1, '【阿里云】存储Bucket域名', 'aliyunOssUrl', '-', '阿里云存访问域名，文件访问，注意以斜杠结尾', '2021-12-10 15:01:05', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (411, 411, b'1', 4, 1, '【MinIO】存储Key ID', 'minioAccessKey', 'minioadmin', 'MinIo存储 AccessKeyId', '2022-11-14 17:26:35', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (412, 412, b'0', 4, 1, '【MinIO】存储Key Secret', 'minioSecretKey', 'minioadmin', 'MinIo存储 AccessKeySecret', '2022-11-14 17:26:49', '2024-06-11 09:50:24');
INSERT INTO `sys_config` VALUES (413, 413, b'1', 4, 1, '【MinIO】存储Endpoint', 'minioEndpoint', 'http://127.0.0.1:9000', 'MinIo存储 Endpoint', '2022-11-14 17:26:12', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (414, 414, b'1', 4, 1, '【MinIO】存储Bucket', 'minioBucket', 'education', 'MinIo存储Bucket', '2022-07-28 17:22:32', '2025-04-15 13:44:09');
INSERT INTO `sys_config` VALUES (415, 415, b'1', 4, 1, '【MinIO】存储访问域名', 'minioDomain', 'http://127.0.0.1:9000/', 'MinIO存储访问域名，文件访问，注意以斜杠结尾', '2021-12-10 14:47:55', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (416, 416, b'1', 4, 1, '【MinIO】文档预览地址', 'minioPreviewUrl', 'https://file.kkview.cn/', '文档预览地址，注意以斜杠结尾', '2021-12-10 14:47:55', '2024-06-11 20:43:38');
INSERT INTO `sys_config` VALUES (501, 501, b'1', 5, 5, '短信平台', 'smsPlatform', '1', '默认短信平台', '2021-12-10 14:23:37', '2024-06-11 09:49:58');
INSERT INTO `sys_config` VALUES (502, 502, b'1', 5, 1, '【领课云】Key ID', 'lkyunSmsAccessKeyId', '-', '领课云AccessKeyId', '2021-12-10 15:06:14', '2025-04-15 13:43:55');
INSERT INTO `sys_config` VALUES (503, 503, b'0', 5, 1, '【领课云】Key Secret', 'lkyunSmsAccessKeySecret', '-', '领课云AccessKeySecret', '2021-12-10 15:06:55', '2025-04-15 13:43:53');
INSERT INTO `sys_config` VALUES (504, 504, b'1', 5, 1, '【领课云】短信签名', 'lkyunSmsSignName', '领课网络', '短信签名', '2021-12-13 10:21:35', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (507, 507, b'1', 5, 1, '【领课云】验证码短信Code', 'lkyunSmsAuthCode', '-', '短信模板：您的验证码${code}，该验证码5分钟内有效，请勿泄漏于他人！', '2021-12-13 10:17:41', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (508, 508, b'1', 5, 1, '【领课云】课程购买成功Code', 'lkyunSmsPurchaseCode', '-', '短信模板：您的订单号为：${orderNo}，成功购买了课程《${courseName}》', '2021-12-13 10:17:41', '2025-02-27 14:23:11');
INSERT INTO `sys_config` VALUES (510, 510, b'1', 5, 1, '【阿里云】短信签名', 'aliyunSmsSignName', '领课网络', '短信签名', '2021-12-10 15:05:10', '2025-02-27 15:00:26');
INSERT INTO `sys_config` VALUES (511, 511, b'1', 5, 1, '【阿里云】短信Key ID', 'aliyunSmsAccessKeyId', '-', '阿里云AccessKeyId', '2021-12-10 15:09:38', '2025-02-27 15:00:32');
INSERT INTO `sys_config` VALUES (512, 512, b'0', 5, 1, '【阿里云】短信Key Secret', 'aliyunSmsAccessKeySecret', '-', '阿里云云AccessKeySecret', '2021-12-10 15:06:55', '2024-06-11 09:48:49');
INSERT INTO `sys_config` VALUES (513, 513, b'1', 5, 1, '【阿里云】验证码短信Code', 'aliyunSmsAuthCode', '-', '短信模板：您的验证码${code}，该验证码5分钟内有效，请勿泄漏于他人！', '2021-12-10 15:11:43', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (514, 514, b'1', 5, 1, '【阿里云】课程购买成功Code', 'aliyunSmsPurchaseCode', '-', '短信模板：您的订单号为：${orderNo}，成功购买了课程《${courseName}》', '2021-12-13 10:17:41', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (601, 601, b'1', 6, 1, '【支付宝支付】应用ID', 'aliPayAppId', '-', '支付宝App Id', '2022-03-03 15:23:43', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (602, 602, b'0', 6, 1, '【支付宝支付】商户私钥', 'aliPayAppPrivateKey', '-', '支付宝App Private Key', '2022-03-03 15:25:47', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (603, 603, b'0', 6, 1, '【支付宝支付】公钥', 'aliPayPublicKey', '-', '支付宝Public Key', '2022-03-03 15:26:26', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (604, 604, b'1', 6, 1, '【微信支付】商户ID', 'wxPayMchId', '-', '微信支付Mch Id', '2022-03-03 15:17:40', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (605, 605, b'1', 6, 1, '【微信支付】应用ID', 'wxPayAppId', '-', '微信支付App Id', '2022-03-03 14:52:20', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (606, 606, b'0', 6, 1, '【微信支付】商户证书', 'wxPayMchPrivateCert', '-', '微信支付商户证书', '2022-03-03 15:19:35', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (607, 607, b'0', 6, 1, '【微信支付】商户私钥', 'wxPayWxMchPrivateKey', '-', '微信支付Mch Private Key', '2022-03-03 15:18:36', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (608, 608, b'1', 6, 1, '【微信支付】API V3 Key', 'wxPayApiV3Key', '-', '微信支付API秘钥(V3 Key)', '2022-03-03 15:20:39', '2024-06-11 09:46:07');
INSERT INTO `sys_config` VALUES (701, 701, b'1', 11, 1, 'AI接口地址', 'aiBaseUrl', 'https://api.openai.com', 'OpenAI 兼容接口的 Base URL，默认：https://api.openai.com', '2026-05-28 06:38:12', '2026-05-28 06:59:48');
INSERT INTO `sys_config` VALUES (702, 702, b'1', 11, 1, 'AI接口密钥', 'aiApiKey', '', 'OpenAI 或兼容接口的 API Key，例如：sk-xxxxxxxx', '2026-05-28 06:38:12', '2026-05-28 06:59:45');
INSERT INTO `sys_config` VALUES (703, 703, b'1', 11, 1, 'AI模型名称', 'aiModel', 'gpt-5.5', '使用的模型名称，默认：gpt-3.5-turbo', '2026-05-28 06:38:12', '2026-05-28 07:40:13');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint UNSIGNED NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '操作人ID',
  `operation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户操作',
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方法',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求路径',
  `content` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录IP',
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '国家',
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '市',
  `browser` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '浏览器',
  `os` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '操作系统',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '后台操作日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint UNSIGNED NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序',
  `parent_id` bigint UNSIGNED NOT NULL COMMENT '父ID',
  `is_show` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否显示(1显示，0隐藏)',
  `menu_type` tinyint NOT NULL DEFAULT 1 COMMENT '菜单类型(1目录,2菜单,3按钮)',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `menu_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `apis` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '后端接口',
  `permission` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '前端权限',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1153478139284656128, '2022-06-02 13:55:36', '2024-06-28 10:49:11', 1, 1, 0, 1, 2, '概况', '概况', '/dashboard', '/dashboard/index.vue', '', '', NULL);
INSERT INTO `sys_menu` VALUES (1153478139284656129, '2019-07-23 09:33:11', '2024-06-28 10:49:11', 1, 2, 0, 1, 1, '常用', '常用', '', '', '', '', NULL);
INSERT INTO `sys_menu` VALUES (1153478559176429569, '2019-07-23 09:34:51', '2024-06-28 10:47:51', 1, 3, 0, 1, 1, '课程', '课程', '', '', '', '', NULL);
INSERT INTO `sys_menu` VALUES (1153478801917579265, '2019-07-23 09:35:49', '2024-06-28 10:47:51', 1, 4, 0, 1, 1, '用户', '用户', '', '', '', '', NULL);
INSERT INTO `sys_menu` VALUES (1153478801917579266, '2019-07-23 10:52:35', '2024-06-28 10:47:51', 1, 5, 0, 1, 1, '系统', '系统', '', '', '', '', NULL);
INSERT INTO `sys_menu` VALUES (1153493010483089409, '2019-07-23 10:32:17', '2024-06-14 14:06:43', 1, 10, 1153478139284656129, 1, 2, '课程订单', NULL, '/common/order', '/common/order/index.vue', '/user/admin/order/info/page', '', NULL);
INSERT INTO `sys_menu` VALUES (1153493835884367873, '2019-07-23 10:35:33', '2024-06-14 14:06:35', 1, 30, 1153478139284656129, 1, 2, '轮播管理', NULL, '/common/carousel', '/common/carousel/index.vue', '/system/admin/website/carousel/page\n/system/admin/website/carousel/sort', '', NULL);
INSERT INTO `sys_menu` VALUES (1153494438295474177, '2019-07-23 10:37:57', '2024-06-14 14:06:38', 1, 20, 1153478139284656129, 1, 2, '专区管理', NULL, '/common/zone', '/common/zone/index.vue', '/course/admin/zone/page\n/course/admin/zone/sort', '', NULL);
INSERT INTO `sys_menu` VALUES (1153494935626682369, '2019-07-23 10:39:56', '2024-06-14 14:06:30', 1, 40, 1153478139284656129, 1, 2, '头部导航', NULL, '/common/navigation', '/common/navigation/index.vue', '/system/admin/website/nav/page\n/system/admin/website/nav/sort', '', NULL);
INSERT INTO `sys_menu` VALUES (1153495155055890433, '2019-07-23 10:40:48', '2024-06-14 14:06:26', 1, 50, 1153478139284656129, 1, 2, '友情链接', NULL, '/common/link', '/common/link/index.vue', '/system/admin/website/link/page\n/system/admin/website/link/sort', '', NULL);
INSERT INTO `sys_menu` VALUES (1153495948102307842, '2019-07-23 10:43:57', '2024-06-14 14:06:58', 1, 10, 1153478559176429569, 1, 2, '课程列表', NULL, '/course/list', '/course/list/index.vue', '/course/admin/course/page\n/course/admin/course/sort', '', NULL);
INSERT INTO `sys_menu` VALUES (1153496241066053634, '2019-07-23 10:45:07', '2024-06-14 14:06:51', 1, 30, 1153478559176429569, 1, 2, '分类管理', NULL, '/course/category', '/course/category/index.vue', '/course/admin/category/list', '', NULL);
INSERT INTO `sys_menu` VALUES (1153496795896975361, '2019-07-23 10:47:19', '2024-06-14 14:07:08', 1, 20, 1153478801917579265, 1, 2, '讲师列表', NULL, '/users/lecturer', '/users/lecturer/index.vue', '/user/admin/lecturer/page\n/user/admin/lecturer/sort', '', NULL);
INSERT INTO `sys_menu` VALUES (1153498940276838401, '2019-07-23 10:55:50', '2024-06-14 14:07:36', 1, 30, 1153478801917579266, 1, 2, '账号管理', NULL, '/system/user', '/system/user/index.vue', '/system/admin/sys/user/page\n/system/admin/sys/user/sort', '', NULL);
INSERT INTO `sys_menu` VALUES (1153499292782923778, '2019-07-23 10:57:14', '2024-06-14 14:07:32', 1, 40, 1153478801917579266, 1, 2, '角色管理', NULL, '/system/role', '/system/role/index.vue', '/system/admin/sys/role/page\n/system/admin/sys/role/sort', '', NULL);
INSERT INTO `sys_menu` VALUES (1153499423880089601, '2019-07-23 10:57:46', '2024-06-14 14:07:28', 1, 50, 1153478801917579266, 1, 2, '菜单管理', NULL, '/system/menu', '/system/menu/index.vue', '/system/admin/sys/menu/list\n/system/admin/sys/menu/sort', '', NULL);
INSERT INTO `sys_menu` VALUES (1154683387156230146, '2019-07-26 17:22:25', '2024-02-25 21:07:10', 1, 1, 1153493010483089409, 1, 3, '备注', NULL, '', NULL, '/user/admin/order/info/edit', 'order:remark', NULL);
INSERT INTO `sys_menu` VALUES (1156030361037971458, '2019-07-30 10:34:49', '2024-02-25 21:07:38', 1, 1, 1153493835884367873, 1, 3, '保存', NULL, '', NULL, '/system/admin/website/carousel/save', 'website:carousel:save', NULL);
INSERT INTO `sys_menu` VALUES (1156030992003899394, '2019-07-30 10:37:20', '2024-02-25 21:09:08', 1, 4, 1153493835884367873, 1, 3, '修改', NULL, '', NULL, '/system/admin/website/carousel/edit', 'website:carousel:edit', NULL);
INSERT INTO `sys_menu` VALUES (1156032296088510465, '2019-07-30 10:42:31', '2024-02-25 21:08:22', 1, 2, 1153494438295474177, 1, 3, '保存', NULL, '', NULL, '/course/admin/zone/save', 'zone:save', NULL);
INSERT INTO `sys_menu` VALUES (1156032474489036801, '2019-07-30 10:43:13', '2024-02-25 21:08:17', 1, 3, 1153494438295474177, 1, 3, '删除', NULL, '', NULL, '/course/admin/zone/delete', 'zone:delete', NULL);
INSERT INTO `sys_menu` VALUES (1156033449756991490, '2019-07-30 10:47:06', '2024-02-25 21:08:18', 1, 4, 1153494438295474177, 1, 3, '修改', NULL, '', NULL, '/course/admin/zone/edit', 'zone:edit', NULL);
INSERT INTO `sys_menu` VALUES (1156037020263129089, '2019-07-30 11:01:17', '2024-02-25 21:09:06', 1, 3, 1153493835884367873, 1, 3, '删除', NULL, '', NULL, '/system/admin/website/carousel/delete', 'website:carousel:delete', NULL);
INSERT INTO `sys_menu` VALUES (1156039959035781122, '2019-07-30 11:12:58', '2024-02-25 21:07:24', 1, 2, 1153494935626682369, 1, 3, '保存', NULL, '', NULL, '/system/admin/website/nav/save', 'website:nav:save', NULL);
INSERT INTO `sys_menu` VALUES (1156040289144283137, '2019-07-30 11:14:16', '2024-02-25 21:07:28', 1, 3, 1153494935626682369, 1, 3, '删除', NULL, '', NULL, '/system/admin/website/nav/delete', 'website:nav:delete', NULL);
INSERT INTO `sys_menu` VALUES (1156040630476742658, '2019-07-30 11:15:38', '2024-02-25 21:07:26', 1, 4, 1153494935626682369, 1, 3, '修改', NULL, '', NULL, '/system/admin/website/nav/edit', 'website:nav:edit', NULL);
INSERT INTO `sys_menu` VALUES (1156099301554528257, '2019-07-30 15:08:46', '2024-02-25 21:07:30', 1, 2, 1153495155055890433, 1, 3, '保存', NULL, '', NULL, '/system/admin/website/link/save', 'website:link:save', NULL);
INSERT INTO `sys_menu` VALUES (1156099420307857410, '2019-07-30 15:09:14', '2024-02-25 21:07:34', 1, 3, 1153495155055890433, 1, 3, '删除', NULL, '', NULL, '/system/admin/website/link/delete', 'website:link:delete', NULL);
INSERT INTO `sys_menu` VALUES (1156099620929806338, '2019-07-30 15:10:02', '2024-02-25 21:07:32', 1, 4, 1153495155055890433, 1, 3, '修改', NULL, '', NULL, '/system/admin/website/link/edit', 'website:link:edit', NULL);
INSERT INTO `sys_menu` VALUES (1156102063474352129, '2019-07-30 15:19:44', '2026-05-28 07:02:28', 1, 2, 1153495948102307842, 0, 2, '添加', NULL, '/course/update', '/course/update/index.vue', '/course/admin/course/save\n/system/admin/ai/write/create\n/system/admin/ai/write/completions', 'course:save', NULL);
INSERT INTO `sys_menu` VALUES (1156389609588662274, '2019-07-31 10:22:21', '2024-02-25 21:07:49', 1, 3, 1153496241066053634, 1, 3, '删除', NULL, '', NULL, '/course/admin/category/delete', 'category:delete', NULL);
INSERT INTO `sys_menu` VALUES (1156389834885701634, '2019-07-31 10:23:15', '2024-02-25 21:07:53', 1, 2, 1153496241066053634, 1, 3, '保存', NULL, '', NULL, '/course/admin/category/save', 'category:save', NULL);
INSERT INTO `sys_menu` VALUES (1156390300390531073, '2019-07-31 10:25:06', '2024-02-25 21:07:51', 1, 4, 1153496241066053634, 1, 3, '修改', NULL, '', NULL, '/course/admin/category/edit', 'category:edit', NULL);
INSERT INTO `sys_menu` VALUES (1156393404230017026, '2019-07-31 10:37:26', '2024-02-25 21:07:13', 1, 1, 1153496795896975361, 1, 3, '保存', NULL, '', NULL, '/user/admin/lecturer/save', 'lecturer:save', NULL);
INSERT INTO `sys_menu` VALUES (1156467976803459073, '2019-07-31 15:33:45', '2024-02-25 21:09:10', 1, 2, 1153498940276838401, 1, 3, '添加', NULL, '', NULL, '/system/admin/sys/user/save', 'sys:user:save', NULL);
INSERT INTO `sys_menu` VALUES (1156468115706224642, '2019-07-31 15:34:18', '2024-02-25 21:09:16', 1, 3, 1153498940276838401, 1, 3, '删除', NULL, '', NULL, '/system/admin/sys/user/delete', 'sys:user:delete', NULL);
INSERT INTO `sys_menu` VALUES (1156471160762540033, '2019-07-31 15:46:24', '2024-02-25 21:09:14', 1, 4, 1153498940276838401, 1, 3, '修改', NULL, '', NULL, '/system/admin/sys/user/edit', 'sys:user:edit', NULL);
INSERT INTO `sys_menu` VALUES (1156471428245889026, '2019-07-31 15:47:28', '2024-02-25 21:09:12', 1, 10, 1153498940276838401, 1, 3, '修改密码', NULL, '', NULL, '/system/admin/sys/user/password', 'sys:user:password', NULL);
INSERT INTO `sys_menu` VALUES (1156472210034794497, '2019-07-31 15:50:34', '2024-03-19 13:51:10', 1, 10, 1153498940276838401, 1, 3, '设置角色', NULL, '', NULL, '/system/admin/sys/role/user/list\n/system/admin/sys/role/user/save', 'sys:user:role:set', NULL);
INSERT INTO `sys_menu` VALUES (1156473846425722881, '2019-07-31 15:57:04', '2024-03-19 13:49:52', 1, 1, 1153499292782923778, 1, 3, '添加', NULL, '', NULL, '/system/admin/sys/role/save', 'sys:role:save', NULL);
INSERT INTO `sys_menu` VALUES (1156474159387910146, '2019-07-31 15:58:19', '2024-03-19 13:49:55', 1, 3, 1153499292782923778, 1, 3, '删除', NULL, '', NULL, '/system/admin/sys/role/delete', 'sys:role:delete', NULL);
INSERT INTO `sys_menu` VALUES (1156475549820657665, '2019-07-31 16:03:51', '2024-03-19 13:49:59', 1, 4, 1153499292782923778, 1, 3, '修改', NULL, '', NULL, '/system/admin/sys/role/edit', 'sys:role:edit', NULL);
INSERT INTO `sys_menu` VALUES (1156475975043391490, '2019-07-31 16:05:32', '2024-02-25 21:37:33', 1, 100, 1153499292782923778, 1, 3, '分配菜单', NULL, '', NULL, '/system/admin/sys/menu/role/list\n/system/admin/sys/menu/role/save', 'sys:role:menu:set', NULL);
INSERT INTO `sys_menu` VALUES (1156477233678524418, '2019-07-31 16:10:32', '2024-02-25 21:09:25', 1, 2, 1153499423880089601, 1, 3, '保存', NULL, '', NULL, '/system/admin/sys/menu/save', 'sys:menu:save', NULL);
INSERT INTO `sys_menu` VALUES (1156477431565787138, '2019-07-31 16:11:19', '2024-02-25 21:08:58', 1, 3, 1153499423880089601, 1, 3, '删除', NULL, '', NULL, '/system/admin/sys/menu/delete', 'sys:menu:delete', NULL);
INSERT INTO `sys_menu` VALUES (1156478738817097730, '2019-07-31 16:16:31', '2024-02-25 21:09:00', 1, 4, 1153499423880089601, 1, 3, '更新', NULL, '', NULL, '/system/admin/sys/menu/edit', 'sys:menu:edit', NULL);
INSERT INTO `sys_menu` VALUES (1160850528846749698, '2019-08-12 17:48:27', '2024-06-14 14:07:11', 1, 10, 1153478801917579265, 1, 2, '学员列表', NULL, '/users/list', '/users/list/index.vue', '/user/admin/users/page', '', NULL);
INSERT INTO `sys_menu` VALUES (1160851003339972610, '2019-08-12 17:50:20', '2024-03-25 22:24:26', 1, 1, 1160850528846749698, 1, 3, '修改', NULL, '', NULL, '/user/admin/users/edit\n/user/admin/users/account/consume/save', 'user:edit', NULL);
INSERT INTO `sys_menu` VALUES (1565592545140002818, '2022-09-02 14:48:44', '2024-06-14 14:06:54', 1, 20, 1153478559176429569, 1, 2, '课程资源', NULL, '/course/resource', '/course/resource/index.vue', '/course/admin/resource/page\n/course/admin/resource/sort\n/course/admin/resource/preview\n/course/admin/category/sort', '', NULL);
INSERT INTO `sys_menu` VALUES (1567783867401756674, '2022-09-08 15:56:16', '2024-06-07 16:05:47', 1, 10, 1153478801917579266, 1, 2, '配置管理', NULL, '/system/config', '/system/config/index.vue', '/system/admin/sys/config/list\n/system/admin/sys/config/video/config', '', NULL);
INSERT INTO `sys_menu` VALUES (1573492156370255874, '2022-09-24 09:58:58', '2024-02-25 21:07:58', 1, 5, 1153495948102307842, 1, 3, '删除', NULL, '', NULL, '/course/admin/course/delete\n/course/admin/user/course/comment/delete', 'course:delete', NULL);
INSERT INTO `sys_menu` VALUES (1573492202025254913, '2022-09-24 09:59:09', '2024-03-19 13:53:39', 1, 4, 1153495948102307842, 0, 2, '修改', NULL, '/course/update', '/course/update/index.vue', '/course/admin/course/edit\n/course/admin/course/view', 'course:edit', NULL);
INSERT INTO `sys_menu` VALUES (1573492379121352706, '2022-09-24 09:59:51', '2024-03-14 15:56:48', 1, 2, 1565592545140002818, 1, 3, '添加', NULL, '', NULL, '/course/admin/resource/save\n/course/admin/resource/vod/config\n/system/admin/upload/doc\n/system/admin/upload/pic', 'resource:save', NULL);
INSERT INTO `sys_menu` VALUES (1573492445341024258, '2022-09-24 10:00:07', '2024-03-14 15:58:17', 1, 3, 1565592545140002818, 1, 3, '删除', NULL, '', NULL, '/course/admin/resource/delete\n/course/admin/resource/batch/delete', 'resource:delete', NULL);
INSERT INTO `sys_menu` VALUES (1573492482569666562, '2022-09-24 10:00:16', '2024-03-22 21:55:16', 1, 4, 1565592545140002818, 1, 3, '修改', NULL, '', NULL, '/course/admin/resource/edit\n/course/admin/resource/batch/edit', 'resource:edit', NULL);
INSERT INTO `sys_menu` VALUES (1573493755847114754, '2022-09-24 10:05:20', '2024-02-25 21:07:18', 1, 3, 1153496795896975361, 1, 3, '删除', NULL, '', NULL, '/user/admin/lecturer/delete', 'lecturer:delete', NULL);
INSERT INTO `sys_menu` VALUES (1573493794539569154, '2022-09-24 10:05:29', '2024-06-04 11:31:57', 1, 4, 1153496795896975361, 1, 3, '修改', NULL, '', NULL, '/user/admin/lecturer/view\n/user/admin/lecturer/edit', 'lecturer:edit', NULL);
INSERT INTO `sys_menu` VALUES (1573494211377889282, '2022-09-24 10:07:08', '2024-02-25 21:08:34', 1, 100, 1567783867401756674, 1, 3, '修改', NULL, '', NULL, '/system/admin/sys/config/edit', 'sys:config:edit', NULL);
INSERT INTO `sys_menu` VALUES (1574287231530647553, '2022-09-26 14:38:19', '2024-06-11 11:59:12', 1, 100, 1153495948102307842, 0, 2, '章节管理', NULL, '/course/chapter', '/course/chapter/index.vue', '/course/admin/course/chapter/page\n/course/admin/course/chapter/list\n/course/admin/course/chapter/edit\n/course/admin/course/chapter/save\n/course/admin/course/chapter/delete\n/course/admin/course/chapter/sort\n/course/admin/course/chapter/period/list\n/course/admin/course/chapter/period/edit\n/course/admin/course/chapter/period/save\n/course/admin/course/chapter/period/delete\n/course/admin/course/chapter/period/sort\n/course/admin/live/broadcast', 'course:chapter:period', NULL);
INSERT INTO `sys_menu` VALUES (1574291916324945922, '2022-09-26 14:56:56', '2024-04-17 16:20:13', 1, 1, 1153494438295474177, 0, 2, '课程管理', NULL, '/common/zone/course', '/common/zone/course/index.vue', '/course/admin/zone/course/page\n/course/admin/zone/course/edit\n/course/admin/zone/course/save\n/course/admin/zone/course/delete\n/course/admin/zone/course/sort', 'zone:manage', NULL);
INSERT INTO `sys_menu` VALUES (1585200121060564994, '2022-10-26 17:22:15', '2024-06-14 14:07:04', 1, 30, 1153478801917579265, 1, 2, '用户日志', NULL, '/users/log', '/users/log/index.vue', '/user/admin/users/log/page', '', NULL);
INSERT INTO `sys_menu` VALUES (1596067580820398082, '2022-11-25 17:05:39', '2024-04-07 17:23:21', 1, 100, 1153495948102307842, 0, 2, '数据', NULL, '/course/record', '/course/record/index.vue', '/course/admin/user/course/record\n/course/admin/user/study/page\n/course/admin/user/course/comment/page\n/course/admin/user/course/collect/page\n/course/admin/course/view', 'user:course', NULL);
INSERT INTO `sys_menu` VALUES (1627178918674022401, '2023-02-19 13:31:00', '2024-02-25 21:08:36', 1, 110, 1567783867401756674, 1, 3, '视频云初始化', NULL, '', NULL, '/system/admin/sys/config/video/init', 'sys:config:video:init', NULL);
INSERT INTO `sys_menu` VALUES (1752695354816565250, '2024-01-31 22:08:30', '2024-04-06 10:48:56', 1, 1, 1160850528846749698, 0, 2, '数据', NULL, '/users/record', '/users/record/index.vue', '/course/admin/user/course/page\n/course/admin/user/study/stat\n/course/admin/user/study/page\n/user/admin/users/account/consume/page\n/user/admin/users/view\n/user/admin/order/info/stat', 'user:record', NULL);
INSERT INTO `sys_menu` VALUES (1761735750473347074, '2024-02-25 20:51:49', '2024-02-25 21:14:21', 1, 1, 1153478139284656128, 1, 3, '登录统计', NULL, '', '', '/user/admin/stat/login', 'stat:login', NULL);
INSERT INTO `sys_menu` VALUES (1761735858141130753, '2024-02-25 20:52:14', '2024-02-25 21:14:16', 1, 1, 1153478139284656128, 1, 3, '视频统计', NULL, '', '', '/system/admin/stat/vod', 'stat:vod', NULL);
INSERT INTO `sys_menu` VALUES (1776597134042284033, '2024-04-06 21:05:39', '2024-04-06 21:05:39', 1, 1, 1153478139284656128, 1, 3, '数据统计', NULL, '', NULL, '/user/admin/stat/data', 'stat:data', NULL);
INSERT INTO `sys_menu` VALUES (1777217267492196353, '2024-04-08 14:09:50', '2024-06-14 14:07:24', 1, 100, 1153478801917579266, 1, 2, '操作日志', NULL, '/sys/log', '/system/log/index.vue', '/system/admin/sys/log/page', '', NULL);
INSERT INTO `sys_menu` VALUES (1790989385130520577, '2024-05-16 14:15:19', '2024-05-16 14:15:19', 1, 6, 1153495948102307842, 1, 3, '同步ES', NULL, '', NULL, '/course/admin/course/es', 'course:es', NULL);

-- ----------------------------
-- Table structure for sys_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_role`;
CREATE TABLE `sys_menu_role`  (
  `id` bigint UNSIGNED NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序',
  `menu_id` bigint UNSIGNED NOT NULL COMMENT '菜单ID',
  `role_id` bigint UNSIGNED NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu_role
-- ----------------------------
INSERT INTO `sys_menu_role` VALUES (1790274963059716098, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1153478139284656128, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963156185089, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1776597134042284033, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963193933826, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1761735858141130753, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963210711041, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1761735750473347074, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963231682561, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1153493010483089409, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963248459777, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1154683387156230146, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963265236993, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1596067580820398082, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963315568642, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1752695354816565250, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963336540162, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1585200121060564994, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963353317378, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1777217267492196353, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963403649025, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1153478139284656129, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963433009153, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1153494438295474177, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963458174978, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1153493835884367873, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963474952193, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1153494935626682369, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963491729409, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1153495155055890433, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963508506626, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1153478559176429569, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963525283842, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1153495948102307842, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963546255361, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1565592545140002818, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963558838273, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1153496241066053634, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963579809794, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1153478801917579265, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963617558530, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1160850528846749698, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963684667393, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1153496795896975361, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963755970561, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1153478801917579266, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963814690817, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1153498940276838401, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963890188290, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1153499292782923778, 3);
INSERT INTO `sys_menu_role` VALUES (1790274963902771202, '2024-05-14 14:56:27', '2024-05-14 14:56:27', 1, 1, 1153499423880089601, 3);
INSERT INTO `sys_menu_role` VALUES (1790989660587241474, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1153478139284656128, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660604018690, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1776597134042284033, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660624990209, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1761735858141130753, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660671127554, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1761735750473347074, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660683710465, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1153478139284656129, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660704681985, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1153493010483089409, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660717264898, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1154683387156230146, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660742430722, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1153494438295474177, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660755013634, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1574291916324945922, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660767596545, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156032296088510465, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660784373762, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156032474489036801, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660796956674, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156033449756991490, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660813733889, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1153493835884367873, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660826316801, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156030361037971458, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660843094017, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156037020263129089, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660855676929, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156030992003899394, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660901814274, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1153494935626682369, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660918591490, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156039959035781122, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660931174401, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156040289144283137, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660947951618, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156040630476742658, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660977311746, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1153495155055890433, 1);
INSERT INTO `sys_menu_role` VALUES (1790989660994088962, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156099301554528257, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661015060482, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156099420307857410, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661031837698, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156099620929806338, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661052809217, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1153478559176429569, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661124112386, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1153495948102307842, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661145083906, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156102063474352129, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661161861121, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1573492202025254913, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661182832641, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1573492156370255874, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661199609857, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1790989385130520577, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661216387073, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1596067580820398082, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661233164290, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1574287231530647553, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661270913026, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1565592545140002818, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661283495938, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1573492379121352706, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661304467457, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1573492445341024258, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661350604802, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1573492482569666562, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661367382018, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1153496241066053634, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661388353537, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156389834885701634, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661409325058, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156389609588662274, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661426102274, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156390300390531073, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661442879489, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1153478801917579265, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661459656705, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1160850528846749698, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661472239617, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1752695354816565250, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661489016834, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1160851003339972610, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661501599746, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1153496795896975361, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661518376962, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156393404230017026, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661535154177, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1573493755847114754, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661547737090, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1573493794539569154, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661564514306, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1585200121060564994, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661581291522, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1153478801917579266, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661598068737, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1567783867401756674, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661610651649, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1573494211377889282, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661623234562, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1627178918674022401, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661640011777, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1153498940276838401, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661652594690, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156467976803459073, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661669371906, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156468115706224642, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661690343426, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156471160762540033, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661707120642, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156472210034794497, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661719703554, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156471428245889026, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661736480770, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1153499292782923778, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661753257986, '2024-05-16 14:16:24', '2024-05-16 14:16:24', 1, 1, 1156473846425722881, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661765840898, '2024-05-16 14:16:25', '2024-05-16 14:16:25', 1, 1, 1156474159387910146, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661786812418, '2024-05-16 14:16:25', '2024-05-16 14:16:25', 1, 1, 1156475549820657665, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661807783937, '2024-05-16 14:16:25', '2024-05-16 14:16:25', 1, 1, 1156475975043391490, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661858115585, '2024-05-16 14:16:25', '2024-05-16 14:16:25', 1, 1, 1153499423880089601, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661870698497, '2024-05-16 14:16:25', '2024-05-16 14:16:25', 1, 1, 1156477233678524418, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661883281410, '2024-05-16 14:16:25', '2024-05-16 14:16:25', 1, 1, 1156477431565787138, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661900058625, '2024-05-16 14:16:25', '2024-05-16 14:16:25', 1, 1, 1156478738817097730, 1);
INSERT INTO `sys_menu_role` VALUES (1790989661912641537, '2024-05-16 14:16:25', '2024-05-16 14:16:25', 1, 1, 1777217267492196353, 1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint UNSIGNED NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序',
  `role_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '2018-02-06 15:47:52', '2024-05-07 11:39:25', 1, 3, '超级管理员', '全部权限');
INSERT INTO `sys_role` VALUES (3, '2018-12-28 18:23:38', '2024-04-17 14:40:42', 1, 1, '演示角色', '仅有查看功能');

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user`  (
  `id` bigint UNSIGNED NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序',
  `role_id` bigint UNSIGNED NOT NULL COMMENT '角色ID',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色用户关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES (1751190077218832386, '2024-01-27 18:27:04', '2024-01-27 18:27:04', 1, 1, 3, 3);
INSERT INTO `sys_role_user` VALUES (1769964849482235905, '2024-03-19 13:51:19', '2024-03-19 13:51:19', 1, 1, 1, 2);
INSERT INTO `sys_role_user` VALUES (1787689374584008705, '2024-05-07 11:42:15', '2024-05-07 11:42:15', 1, 1, 1, 1656129262824996866);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint UNSIGNED NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序',
  `mobile` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '手机',
  `mobile_salt` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码盐',
  `mobile_psw` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录密码',
  `real_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '真实姓名',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `AK_phone`(`mobile` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '后台用户信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (2, '2022-09-28 20:24:35', '2024-06-04 11:36:55', 1, 4, '18800000000', '944d1d37c8b647bb94b317b4570987d1', '9755BE1D6246E86615788C493E75A651985F1A23', '超级管理员', '系统所有权限');
INSERT INTO `sys_user` VALUES (3, '2018-12-28 16:57:47', '2024-05-18 12:58:56', 1, 3, '13300000000', '7eee6feca86d428ea123c9130cb5927d', 'EBE15DD3DD12928E8BEB3902FD31E4E03268928A', '演示用户', '只有查看权限');
INSERT INTO `sys_user` VALUES (1656129262824996866, '2023-05-10 10:49:20', '2024-06-04 11:36:47', 1, 5, '18302045627', '6a8a711910cc45188db256811e49d6df', 'A57C472BFA9486CD98FB4DBF419CDE63DF321E52', '冯老师', '可提供有偿指导');

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
-- Table structure for website_app
-- ----------------------------
DROP TABLE IF EXISTS `website_app`;
CREATE TABLE `website_app`  (
  `id` bigint NOT NULL DEFAULT 0 COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1有效, 0无效)',
  `sort` int NOT NULL DEFAULT 1 COMMENT '排序',
  `publish_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '发布时间',
  `app_type` tinyint NULL DEFAULT NULL COMMENT 'app类型(1:Android，2:IOS)',
  `app_version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'app版本',
  `update_force` tinyint NULL DEFAULT 1 COMMENT '是否强制更新(1不强制，2强制)',
  `update_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'app下载地址',
  `update_tips` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'app版本管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of website_app
-- ----------------------------

-- ----------------------------
-- Table structure for website_carousel
-- ----------------------------
DROP TABLE IF EXISTS `website_carousel`;
CREATE TABLE `website_carousel`  (
  `id` bigint UNSIGNED NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序',
  `carousel_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '广告标题',
  `carousel_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '广告图片',
  `carousel_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '广告链接',
  `carousel_target` tinyint NOT NULL COMMENT '广告跳转方式',
  `begin_time` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '广告信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of website_carousel
-- ----------------------------
INSERT INTO `website_carousel` VALUES (1, '1899-12-30 01:00:00', '1899-12-30 01:00:00', 1, 1, '领课教育系统', 'https://file.roncoos.com/eduos/public/22f614b962e146ba94ff8d8b34985dfd.jpg', 'https://www.roncoo.net/', 1, '2019-01-01 08:00:00', '2029-12-31 08:00:00');
INSERT INTO `website_carousel` VALUES (4, '1899-12-30 01:00:00', '1899-12-30 01:00:00', 1, 2, '视频点播宣传', 'https://file.roncoos.com/eduos/public/a2028d63cf7a45e19e55387976a1b72a.jpg', 'https://www.roncoo.net/', 1, '2019-01-01 10:02:02', '2029-12-31 08:00:00');

-- ----------------------------
-- Table structure for website_link
-- ----------------------------
DROP TABLE IF EXISTS `website_link`;
CREATE TABLE `website_link`  (
  `id` bigint NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1有效, 0无效)',
  `sort` int NOT NULL DEFAULT 1 COMMENT '排序',
  `link_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '链接',
  `link_target` tinyint NOT NULL COMMENT '跳转方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '站点友情链接' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of website_link
-- ----------------------------
INSERT INTO `website_link` VALUES (1143825091871023106, '2019-06-26 18:17:18', '2019-06-26 18:17:18', 1, 2, '龙果学院', 'https://www.roncoo.com/', 1);
INSERT INTO `website_link` VALUES (1790569180659134465, '2024-05-15 10:25:34', '2024-05-15 10:25:34', 1, 1, '领课网络', 'https://www.roncoo.net/', 1);

-- ----------------------------
-- Table structure for website_nav
-- ----------------------------
DROP TABLE IF EXISTS `website_nav`;
CREATE TABLE `website_nav`  (
  `id` bigint NOT NULL DEFAULT 0 COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1有效, 0无效)',
  `sort` int NOT NULL DEFAULT 1 COMMENT '排序',
  `nav_title` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '导航标题',
  `nav_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '导航url',
  `nav_target` tinyint NULL DEFAULT NULL COMMENT '跳转方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '头部导航' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of website_nav
-- ----------------------------
INSERT INTO `website_nav` VALUES (1064696486139854849, '2018-11-20 09:47:57', '2024-05-10 21:17:19', 1, 1, '首页', '/', 2);
INSERT INTO `website_nav` VALUES (1064696486139854850, '2018-11-07 17:09:32', '2024-05-17 21:18:12', 1, 2, '课程列表', '/course/list', 2);
INSERT INTO `website_nav` VALUES (1085443582223257603, '2019-01-16 15:49:36', '2024-05-13 09:09:23', 1, 4, '体验环境(商业版)', 'https://demo-edu.roncoo.com/?from=eduos', 1);
INSERT INTO `website_nav` VALUES (1777989846901530626, '2024-04-10 17:19:47', '2024-05-15 11:28:12', 1, 3, '讲师列表', '/lecturer/list', 2);

SET FOREIGN_KEY_CHECKS = 1;
