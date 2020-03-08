/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : myshop

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 08/03/2020 21:52:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `cid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '手机数码');
INSERT INTO `category` VALUES ('172934bd636d485c98fd2d3d9cccd409', '运动户外');
INSERT INTO `category` VALUES ('2', '电脑办公');
INSERT INTO `category` VALUES ('4', '家具家居');
INSERT INTO `category` VALUES ('5', '鞋靴箱包');
INSERT INTO `category` VALUES ('6', '图书音像');
INSERT INTO `category` VALUES ('7', '母婴孕婴');
INSERT INTO `category` VALUES ('8', '汽车用品');

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem`  (
  `itemid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `count` int(11) NULL DEFAULT NULL,
  `subtotal` double NULL DEFAULT NULL,
  `pid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `oid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `fk_0001`(`pid`) USING BTREE,
  INDEX `fk_0002`(`oid`) USING BTREE,
  CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('037dcbbb-3ad7-4a58-a7ee-b1440937dd30', 5, 6495, '1', 'af23fa8f-22e3-4b46-80b8-f715a70286f6');
INSERT INTO `orderitem` VALUES ('0a51e54d-aa4d-4386-811b-5db0bd92ed5b', 1, 4288, '15', 'f00d85af-9b2a-4dd2-9865-0c25a810e41d');
INSERT INTO `orderitem` VALUES ('1071b9b2-51d1-48a6-807c-98f3ef390c3a', 3, 7497, '53', 'ab8004f4-e27c-49f8-90ee-b78e4342c7d3');
INSERT INTO `orderitem` VALUES ('1238a350-de03-4b17-89df-6efb15a4d868', 1, 2599, '52', 'f00d85af-9b2a-4dd2-9865-0c25a810e41d');
INSERT INTO `orderitem` VALUES ('1e50e1a6-7b87-41a0-8096-2f1d4a0a97ee', 1, 2599, '10', 'd48ea9d3-0520-466b-b248-c5b6a336bbc1');
INSERT INTO `orderitem` VALUES ('2dbb13f3-50ca-4f7d-8a38-84a77f5da529', 1, 1299, '1', 'd3dda500-8b85-4acd-aeeb-08c4af0649fa');
INSERT INTO `orderitem` VALUES ('30e92bdb-fdfe-4d94-8a6f-1075443b8159', 1, 2599, '52', '26f8be40-56a7-4fdc-9e5f-3af05a8c1f7e');
INSERT INTO `orderitem` VALUES ('4bbbc7aa-f300-46bb-9fe4-21a38b06d71b', 1, 4288, '15', '730bffa7-c325-490e-9f1d-8dcd95be50c6');
INSERT INTO `orderitem` VALUES ('514904c1-c14d-4a5e-b4c7-673cb4a42984', 1, 2599, '52', 'd3dda500-8b85-4acd-aeeb-08c4af0649fa');
INSERT INTO `orderitem` VALUES ('6d710908-91d7-4b4b-a242-e9127802cf8b', 1, 4288, '15', 'f730c761-eadf-41e1-913a-2617c8683c4e');
INSERT INTO `orderitem` VALUES ('70a56ab2-facd-46ce-982e-b35d5d8812f2', 1, 6688, '32', 'ab8004f4-e27c-49f8-90ee-b78e4342c7d3');
INSERT INTO `orderitem` VALUES ('8dcd77ab-fdf8-418f-abf1-2c4fe057c645', 2, 5198, '10', 'af23fa8f-22e3-4b46-80b8-f715a70286f6');
INSERT INTO `orderitem` VALUES ('9fe6c881-3afb-4608-a8e5-7fb230e647aa', 5, 6495, '1', '6afcdb6d-9392-4f48-90ae-14308bab37df');
INSERT INTO `orderitem` VALUES ('ae5bffdb-2b70-4467-be2a-1db699fe2066', 1, 1299, '1', 'ab5fa4d1-f230-451b-83b9-f62583b536a8');
INSERT INTO `orderitem` VALUES ('b1d19571-3a84-48a8-b9ca-c00e6be3bffc', 1, 4288, '15', '3e2a3366-2734-48a3-95e2-a27561e67536');
INSERT INTO `orderitem` VALUES ('b45dd9d0-98f1-45f7-86c2-f4b709b120a8', 1, 4288, '15', '3819a925-b2e6-4a9a-a083-5a2a2431456d');
INSERT INTO `orderitem` VALUES ('c70f7317-b444-4059-b727-df6091f8b8fe', 1, 1299, '1', '7be8ad85-91c5-44c3-9c47-214017cd1fa9');
INSERT INTO `orderitem` VALUES ('d3fd552f-ef57-4774-aea3-230cde765024', 5, 6495, '1', 'd48ea9d3-0520-466b-b248-c5b6a336bbc1');
INSERT INTO `orderitem` VALUES ('f2fc0e23-67d3-4b6e-a85a-c5a570199f64', 1, 4199, '33', 'babae4da-edd7-4a83-9434-94d017abc2be');
INSERT INTO `orderitem` VALUES ('f6aa9d77-170f-48d7-9fec-a33469eca4e9', 21, 54579, '10', 'ab8004f4-e27c-49f8-90ee-b78e4342c7d3');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `oid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ordertime` datetime(0) NULL DEFAULT NULL,
  `total` double NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  `address` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('26f8be40-56a7-4fdc-9e5f-3af05a8c1f7e', '2018-05-12 22:22:40', 2599, 0, NULL, 'emok', NULL, '598b33a3-8ef6-4e35-b30c-3c0934a24c5e');
INSERT INTO `orders` VALUES ('3819a925-b2e6-4a9a-a083-5a2a2431456d', '2020-03-08 20:16:49', 4288, 0, NULL, NULL, NULL, 'e495b361-a2ac-4fed-80dc-ccbbe93c2704');
INSERT INTO `orders` VALUES ('3e2a3366-2734-48a3-95e2-a27561e67536', '2020-03-08 20:36:11', 4288, 0, '', '张三', '', '493c8776-67fd-4c85-ac54-4f8d133b2d9d');
INSERT INTO `orders` VALUES ('6afcdb6d-9392-4f48-90ae-14308bab37df', '2018-05-12 23:47:05', 6495, 0, '', 'alex', '', '598b33a3-8ef6-4e35-b30c-3c0934a24c5e');
INSERT INTO `orders` VALUES ('730bffa7-c325-490e-9f1d-8dcd95be50c6', '2020-03-08 20:34:53', 4288, 0, NULL, NULL, NULL, 'e495b361-a2ac-4fed-80dc-ccbbe93c2704');
INSERT INTO `orders` VALUES ('7be8ad85-91c5-44c3-9c47-214017cd1fa9', '2020-03-08 20:00:36', 1299, 0, '深圳', 'alex', '12345', 'e495b361-a2ac-4fed-80dc-ccbbe93c2704');
INSERT INTO `orders` VALUES ('ab5fa4d1-f230-451b-83b9-f62583b536a8', '2018-05-18 00:14:11', 1299, 0, NULL, 'emok', NULL, '598b33a3-8ef6-4e35-b30c-3c0934a24c5e');
INSERT INTO `orders` VALUES ('ab8004f4-e27c-49f8-90ee-b78e4342c7d3', '2018-05-12 17:52:57', 68764, 0, NULL, 'alex', NULL, '598b33a3-8ef6-4e35-b30c-3c0934a24c5e');
INSERT INTO `orders` VALUES ('af23fa8f-22e3-4b46-80b8-f715a70286f6', '2018-05-12 23:54:05', 11693, 0, '', 'emok', '', '598b33a3-8ef6-4e35-b30c-3c0934a24c5e');
INSERT INTO `orders` VALUES ('babae4da-edd7-4a83-9434-94d017abc2be', '2018-05-18 00:11:21', 4199, 0, NULL, 'alex', NULL, '598b33a3-8ef6-4e35-b30c-3c0934a24c5e');
INSERT INTO `orders` VALUES ('d3dda500-8b85-4acd-aeeb-08c4af0649fa', '2018-05-12 22:46:24', 3898, 0, NULL, 'emok', NULL, '598b33a3-8ef6-4e35-b30c-3c0934a24c5e');
INSERT INTO `orders` VALUES ('d48ea9d3-0520-466b-b248-c5b6a336bbc1', '2018-05-12 23:53:49', 9094, 0, NULL, 'alex', NULL, '598b33a3-8ef6-4e35-b30c-3c0934a24c5e');
INSERT INTO `orders` VALUES ('f00d85af-9b2a-4dd2-9865-0c25a810e41d', '2020-03-08 20:38:05', 6887, 0, NULL, NULL, NULL, '493c8776-67fd-4c85-ac54-4f8d133b2d9d');
INSERT INTO `orders` VALUES ('f730c761-eadf-41e1-913a-2617c8683c4e', '2020-03-08 20:34:41', 4288, 0, NULL, NULL, NULL, 'e495b361-a2ac-4fed-80dc-ccbbe93c2704');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `pid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `market_price` double NULL DEFAULT NULL,
  `shop_price` double NULL DEFAULT NULL,
  `pimage` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pdate` date NULL DEFAULT NULL,
  `is_hot` int(11) NULL DEFAULT NULL,
  `pdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pflag` int(11) NULL DEFAULT NULL,
  `cid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE,
  INDEX `sfk_0001`(`cid`) USING BTREE,
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '小米 4c 标准版', 1399, 1299, 'products/1/c_0001.jpg', '2015-11-02', 1, '小米 4c 标准版 全网通 白色 移动联通电信4G手机 双卡双待', 0, '1');
INSERT INTO `product` VALUES ('10', '华为 Ascend Mate7', 2699, 2599, 'products/1/c_0010.jpg', '2015-11-02', 1, '华为 Ascend Mate7 月光银 移动4G手机 双卡双待双通6英寸高清大屏，纤薄机身，智能超八核，按压式指纹识别！!选择下方“移动老用户4G飞享合约”，无需换号，还有话费每月返还！', 0, '1');
INSERT INTO `product` VALUES ('11', 'vivo X5Pro', 2399, 2298, 'products/1/c_0014.jpg', '2015-11-02', 1, '移动联通双4G手机 3G运存版 极光白【购机送蓝牙耳机+蓝牙自拍杆】新升级3G运行内存·双2.5D弧面玻璃·眼球识别技术', 0, '1');
INSERT INTO `product` VALUES ('12', '努比亚（nubia）My 布拉格', 1899, 1799, 'products/1/c_0013.jpg', '2015-11-02', 0, '努比亚（nubia）My 布拉格 银白 移动联通4G手机 双卡双待【嗨11，下单立减100】金属机身，快速充电！布拉格相机全新体验！', 0, '1');
INSERT INTO `product` VALUES ('13', '华为 麦芒4', 2599, 2499, 'products/1/c_0012.jpg', '2015-11-02', 1, '华为 麦芒4 晨曦金 全网通版4G手机 双卡双待金属机身 2.5D弧面屏 指纹解锁 光学防抖', 0, '1');
INSERT INTO `product` VALUES ('14', 'vivo X5M', 1899, 1799, 'products/1/c_0011.jpg', '2015-11-02', 0, 'vivo X5M 移动4G手机 双卡双待 香槟金【购机送蓝牙耳机+蓝牙自拍杆】5.0英寸大屏显示·八核双卡双待·Hi-Fi移动KTV', 0, '1');
INSERT INTO `product` VALUES ('15', 'Apple iPhone 6 (A1586)', 4399, 4288, 'products/1/c_0015.jpg', '2015-11-02', 1, 'Apple iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机长期省才是真的省！点击购机送费版，月月送话费，月月享优惠，畅享4G网络，就在联通4G！', 0, '1');
INSERT INTO `product` VALUES ('16', '华为 HUAWEI Mate S 臻享版', 4200, 4087, 'products/1/c_0016.jpg', '2015-11-03', 0, '华为 HUAWEI Mate S 臻享版 手机 极昼金 移动联通双4G(高配)满星评价即返30元话费啦；买就送电源+清水套+创意手机支架；优雅弧屏，mate7升级版', 0, '1');
INSERT INTO `product` VALUES ('17', '索尼(SONY) E6533 Z3+', 4099, 3999, 'products/1/c_0017.jpg', '2015-11-02', 0, '索尼(SONY) E6533 Z3+ 双卡双4G手机 防水防尘 涧湖绿索尼z3专业防水 2070万像素 移动联通双4G', 0, '1');
INSERT INTO `product` VALUES ('18', 'HTC One M9+', 3599, 3499, 'products/1/c_0018.jpg', '2015-11-02', 0, 'HTC One M9+（M9pw） 金银汇 移动联通双4G手机5.2英寸，8核CPU，指纹识别，UltraPixel超像素前置相机+2000万/200万后置双镜头相机！降价特卖，惊喜不断！', 0, '1');
INSERT INTO `product` VALUES ('19', 'HTC Desire 826d 32G 臻珠白', 1599, 1469, 'products/1/c_0020.jpg', '2015-11-02', 1, '后置1300万+UltraPixel超像素前置摄像头+【双】前置扬声器+5.5英寸【1080p】大屏！', 0, '1');
INSERT INTO `product` VALUES ('2', '中兴 AXON', 2899, 2699, 'products/1/c_0002.jpg', '2015-11-05', 1, '中兴 AXON 天机 mini 压力屏版 B2015 华尔金 移动联通电信4G 双卡双待', 0, '1');
INSERT INTO `product` VALUES ('20', '小米 红米2A 增强版 白色', 649, 549, 'products/1/c_0019.jpg', '2015-11-02', 0, '新增至2GB 内存+16GB容量！4G双卡双待，联芯 4 核 1.5GHz 处理器！', 0, '1');
INSERT INTO `product` VALUES ('21', '魅族 魅蓝note2 16GB 白色', 1099, 999, 'products/1/c_0021.jpg', '2015-11-02', 0, '现货速抢，抢完即止！5.5英寸1080P分辨率屏幕，64位八核1.3GHz处理器，1300万像素摄像头，双色温双闪光灯！', 0, '1');
INSERT INTO `product` VALUES ('22', '三星 Galaxy S5 (G9008W) 闪耀白', 2099, 1999, 'products/1/c_0022.jpg', '2015-11-02', 1, '5.1英寸全高清炫丽屏，2.5GHz四核处理器，1600万像素', 0, '1');
INSERT INTO `product` VALUES ('23', 'sonim XP7700 4G手机', 1799, 1699, 'products/1/c_0023.jpg', '2015-11-09', 1, '三防智能手机 移动/联通双4G 安全 黑黄色 双4G美国军工IP69 30天长待机 3米防水防摔 北斗', 0, '1');
INSERT INTO `product` VALUES ('24', '努比亚（nubia）Z9精英版 金色', 3988, 3888, 'products/1/c_0024.jpg', '2015-11-02', 1, '移动联通电信4G手机 双卡双待真正的无边框！金色尊贵版！4GB+64GB大内存！', 0, '1');
INSERT INTO `product` VALUES ('25', 'Apple iPhone 6 Plus (A1524) 16GB 金色', 5188, 4988, 'products/1/c_0025.jpg', '2015-11-02', 0, 'Apple iPhone 6 Plus (A1524) 16GB 金色 移动联通电信4G手机 硬货 硬实力', 0, '1');
INSERT INTO `product` VALUES ('26', 'Apple iPhone 6s (A1700) 64G 玫瑰金色', 6388, 6088, 'products/1/c_0026.jpg', '2015-11-02', 0, 'Apple iPhone 6 Plus (A1524) 16GB 金色 移动联通电信4G手机 硬货 硬实力', 0, '1');
INSERT INTO `product` VALUES ('27', '三星 Galaxy Note5（N9200）32G版', 5588, 5388, 'products/1/c_0027.jpg', '2015-11-02', 0, '旗舰机型！5.7英寸大屏，4+32G内存！不一样的SPen更优化的浮窗指令！赠无线充电板！', 0, '1');
INSERT INTO `product` VALUES ('28', '三星 Galaxy S6 Edge+（G9280）32G版 铂光金', 5999, 5888, 'products/1/c_0028.jpg', '2015-11-02', 0, '赠移动电源+自拍杆+三星OTG金属U盘+无线充电器+透明保护壳', 0, '1');
INSERT INTO `product` VALUES ('29', 'LG G4（H818）陶瓷白 国际版', 3018, 2978, 'products/1/c_0029.jpg', '2015-11-02', 0, '李敏镐代言，F1.8大光圈1600万后置摄像头，5.5英寸2K屏，3G+32G内存，LG年度旗舰机！', 0, '1');
INSERT INTO `product` VALUES ('3', '华为荣耀6', 1599, 1499, 'products/1/c_0003.jpg', '2015-11-02', 0, '荣耀 6 (H60-L01) 3GB内存标准版 黑色 移动4G手机', 0, '1');
INSERT INTO `product` VALUES ('30', '微软(Microsoft) Lumia 640 LTE DS (RM-1113)', 1099, 999, 'products/1/c_0030.jpg', '2015-11-02', 0, '微软首款双网双卡双4G手机，5.0英寸高清大屏，双网双卡双4G！', 0, '1');
INSERT INTO `product` VALUES ('31', '宏碁（acer）ATC705-N50 台式电脑', 2399, 2299, 'products/1/c_0031.jpg', '2015-11-02', 0, '爆款直降，满千减百，品质宏碁，特惠来袭，何必苦等11.11，早买早便宜！', 0, '2');
INSERT INTO `product` VALUES ('32', 'Apple MacBook Air MJVE2CH/A 13.3英寸', 6788, 6688, 'products/1/c_0032.jpg', '2015-11-02', 0, '宽屏笔记本电脑 128GB 闪存', 0, '2');
INSERT INTO `product` VALUES ('33', '联想（ThinkPad） 轻薄系列E450C(20EH0001CD)', 4399, 4199, 'products/1/c_0033.jpg', '2015-11-02', 0, '联想（ThinkPad） 轻薄系列E450C(20EH0001CD)14英寸笔记本电脑(i5-4210U 4G 500G 2G独显 Win8.1)', 0, '2');
INSERT INTO `product` VALUES ('34', '联想（Lenovo）小新V3000经典版', 4599, 4499, 'products/1/c_0034.jpg', '2015-11-02', 0, '14英寸超薄笔记本电脑（i7-5500U 4G 500G+8G SSHD 2G独显 全高清屏）黑色满1000減100，狂减！火力全开，横扫3天！', 0, '2');
INSERT INTO `product` VALUES ('35', '华硕（ASUS）经典系列R557LI', 3799, 3699, 'products/1/c_0035.jpg', '2015-11-02', 0, '15.6英寸笔记本电脑（i5-5200U 4G 7200转500G 2G独显 D刻 蓝牙 Win8.1 黑色）', 0, '2');
INSERT INTO `product` VALUES ('36', '华硕（ASUS）X450J', 4599, 4399, 'products/1/c_0036.jpg', '2015-11-02', 0, '14英寸笔记本电脑 （i5-4200H 4G 1TB GT940M 2G独显 蓝牙4.0 D刻 Win8.1 黑色）', 0, '2');
INSERT INTO `product` VALUES ('37', '戴尔（DELL）灵越 飞匣3000系列', 3399, 3299, 'products/1/c_0037.jpg', '2015-11-03', 0, ' Ins14C-4528B 14英寸笔记本（i5-5200U 4G 500G GT820M 2G独显 Win8）黑', 0, '2');
INSERT INTO `product` VALUES ('38', '惠普(HP)WASD 暗影精灵', 5699, 5499, 'products/1/c_0038.jpg', '2015-11-02', 0, '15.6英寸游戏笔记本电脑(i5-6300HQ 4G 1TB+128G SSD GTX950M 4G独显 Win10)', 0, '2');
INSERT INTO `product` VALUES ('39', 'Apple 配备 Retina 显示屏的 MacBook', 11299, 10288, 'products/1/c_0039.jpg', '2015-11-02', 0, 'Pro MF840CH/A 13.3英寸宽屏笔记本电脑 256GB 闪存', 0, '2');
INSERT INTO `product` VALUES ('4', '联想 P1', 2199, 1999, 'products/1/c_0004.jpg', '2015-11-02', 0, '联想 P1 16G 伯爵金 移动联通4G手机充电5分钟，通话3小时！科技源于超越！品质源于沉淀！5000mAh大电池！高端商务佳配！', 0, '1');
INSERT INTO `product` VALUES ('40', '机械革命（MECHREVO）MR X6S-M', 6799, 6599, 'products/1/c_0040.jpg', '2015-11-02', 0, '15.6英寸游戏本(I7-4710MQ 8G 64GSSD+1T GTX960M 2G独显 IPS屏 WIN7)黑色', 0, '2');
INSERT INTO `product` VALUES ('41', '神舟（HASEE） 战神K660D-i7D2', 5699, 5499, 'products/1/c_0041.jpg', '2015-11-02', 0, '15.6英寸游戏本(i7-4710MQ 8G 1TB GTX960M 2G独显 1080P)黑色', 0, '2');
INSERT INTO `product` VALUES ('42', '微星（MSI）GE62 2QC-264XCN', 6199, 5999, 'products/1/c_0042.jpg', '2015-11-02', 0, '15.6英寸游戏笔记本电脑（i5-4210H 8G 1T GTX960MG DDR5 2G 背光键盘）黑色', 0, '2');
INSERT INTO `product` VALUES ('43', '雷神（ThundeRobot）G150S', 5699, 5499, 'products/1/c_0043.jpg', '2015-11-02', 0, '15.6英寸游戏本 ( i7-4710MQ 4G 500G GTX950M 2G独显 包无亮点全高清屏) 金', 0, '2');
INSERT INTO `product` VALUES ('44', '惠普（HP）轻薄系列 HP', 3199, 3099, 'products/1/c_0044.jpg', '2015-11-02', 0, '15-r239TX 15.6英寸笔记本电脑（i5-5200U 4G 500G GT820M 2G独显 win8.1）金属灰', 0, '2');
INSERT INTO `product` VALUES ('45', '未来人类（Terrans Force）T5', 10999, 9899, 'products/1/c_0045.jpg', '2015-11-02', 0, '15.6英寸游戏本（i7-5700HQ 16G 120G固态+1TB GTX970M 3G GDDR5独显）黑', 0, '2');
INSERT INTO `product` VALUES ('46', '戴尔（DELL）Vostro 3800-R6308 台式电脑', 3299, 3199, 'products/1/c_0046.jpg', '2015-11-02', 0, '（i3-4170 4G 500G DVD 三年上门服务 Win7）黑', 0, '2');
INSERT INTO `product` VALUES ('47', '联想（Lenovo）H3050 台式电脑', 5099, 4899, 'products/1/c_0047.jpg', '2015-11-11', 0, '（i5-4460 4G 500G GT720 1G独显 DVD 千兆网卡 Win10）23英寸', 0, '2');
INSERT INTO `product` VALUES ('48', 'Apple iPad mini 2 ME279CH/A', 2088, 1888, 'products/1/c_0048.jpg', '2015-11-02', 0, '（配备 Retina 显示屏 7.9英寸 16G WLAN 机型 银色）', 0, '2');
INSERT INTO `product` VALUES ('49', '小米（MI）7.9英寸平板', 1399, 1299, 'products/1/c_0049.jpg', '2015-11-02', 0, 'WIFI 64GB（NVIDIA Tegra K1 2.2GHz 2G 64G 2048*1536视网膜屏 800W）白色', 0, '2');
INSERT INTO `product` VALUES ('5', '摩托罗拉 moto x（x+1）', 1799, 1699, 'products/1/c_0005.jpg', '2015-11-01', 0, '摩托罗拉 moto x（x+1）(XT1085) 32GB 天然竹 全网通4G手机11月11天！MOTO X震撼特惠来袭！1699元！带你玩转黑科技！天然材质，原生流畅系统！', 0, '1');
INSERT INTO `product` VALUES ('50', 'Apple iPad Air 2 MGLW2CH/A', 2399, 2299, 'products/1/c_0050.jpg', '2015-11-12', 0, '（9.7英寸 16G WLAN 机型 银色）', 0, '2');
INSERT INTO `product` VALUES ('51', '三叶草 NMD 联名跑鞋', 5699, 4299, 'products/1/c_0051.jpg', '2015-11-08', 0, 'Mastermind JAPAN X adidas NMD XR1 mmj 骷髅头联名跑鞋 BA9726 ', 0, '172934bd636d485c98fd2d3d9cccd409');
INSERT INTO `product` VALUES ('52', 'Adidas x KITH x NAKED CITY SOCK NMD', 2499, 2599, 'products/1/c_0052.jpg', '2016-06-06', 1, '牛哄哄Adidas x KITH x NAKED CITY SOCK NMD 联名 BY2596 BY2597 ', 0, '172934bd636d485c98fd2d3d9cccd409');
INSERT INTO `product` VALUES ('53', '迎财神/Nike 全新运动力作', 2299, 2499, 'products/1/c_0053.jpg', '2015-11-02', 0, 'GXP NIKE AIR MORE MONEY LNY QS 招财进宝 888X限量 AO9383-001 ', 0, '172934bd636d485c98fd2d3d9cccd409');
INSERT INTO `product` VALUES ('54', 'COMPRESSPORT 男女马拉松赛袜', 199, 299, 'products/1/c_0054.jpg', '2015-11-02', 0, 'COMPRESSPORT/CS 男女马拉松越野跑步骑行12克超轻3D豆竞赛袜低帮 ', 0, '172934bd636d485c98fd2d3d9cccd409');
INSERT INTO `product` VALUES ('55', '奥利帝克双肩包女超轻户外运动休闲背包徒步登山包酷动城 ', 98, 199, 'products/1/c_0055.jpg', '2015-11-01', 0, '奥利帝克双肩包女超轻户外运动休闲背包徒步登山包酷动城', 0, '172934bd636d485c98fd2d3d9cccd409');
INSERT INTO `product` VALUES ('6', '魅族 MX5 16GB 银黑色', 1899, 1799, 'products/1/c_0006.jpg', '2015-11-02', 0, '魅族 MX5 16GB 银黑色 移动联通双4G手机 双卡双待送原厂钢化膜+保护壳+耳机！5.5英寸大屏幕，3G运行内存，2070万+500万像素摄像头！长期省才是真的省！', 0, '1');
INSERT INTO `product` VALUES ('7', '三星 Galaxy On7', 1499, 1398, 'products/1/c_0007.jpg', '2015-11-14', 0, '三星 Galaxy On7（G6000）昂小七 金色 全网通4G手机 双卡双待新品火爆抢购中！京东尊享千元良机！5.5英寸高清大屏！1300+500W像素！评价赢30元话费券！', 0, '1');
INSERT INTO `product` VALUES ('8', 'NUU NU5', 1288, 1190, 'products/1/c_0008.jpg', '2015-11-02', 0, 'NUU NU5 16GB 移动联通双4G智能手机 双卡双待 晒单有礼 晨光金香港品牌 2.5D弧度前后钢化玻璃 随机附赠手机套+钢化贴膜 晒单送移动电源+蓝牙耳机', 0, '1');
INSERT INTO `product` VALUES ('9', '乐视（Letv）乐1pro（X800）', 2399, 2299, 'products/1/c_0009.jpg', '2015-11-02', 0, '乐视（Letv）乐1pro（X800）64GB 金色 移动联通4G手机 双卡双待乐视生态UI+5.5英寸2K屏+高通8核处理器+4GB运行内存+64GB存储+1300万摄像头！', 0, '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('493c8776-67fd-4c85-ac54-4f8d133b2d9d', 'emok', '123456', '张三', '18862936903@qq.com', NULL, '2005-06-09', 'male', 0, '82b71f42-674c-4ce1-859e-2154beca950e');
INSERT INTO `user` VALUES ('598b33a3-8ef6-4e35-b30c-3c0934a24c5e', 'alex', '123456', '二狗', 'www.swbboy@qq.com', NULL, '2018-03-30', 'male', 0, '95283e6c-b273-4869-ad56-fd1fca3f75b7');
INSERT INTO `user` VALUES ('a76e4523-499d-4850-ac7b-b4bd2c1eecb5', 'admin', '123', '张三', '18862936903@163.com', NULL, '2016-04-01', 'male', 1, 'af2ed688-8a8e-4e58-8773-c6b48ef8a8d6');

SET FOREIGN_KEY_CHECKS = 1;
