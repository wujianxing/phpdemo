/*
Navicat MySQL Data Transfer

Source Server         : normal
Source Server Version : 50549
Source Host           : 120.76.100.18:3306
Source Database       : bypal

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2016-05-31 10:24:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bypal_app_version
-- ----------------------------
DROP TABLE IF EXISTS `bypal_app_version`;
CREATE TABLE `bypal_app_version` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `vtype` tinyint(1) NOT NULL COMMENT 'app类型，1为ios，2为安卓',
  `version` varchar(30) NOT NULL COMMENT '版本号名',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '最新版本状态为1其他旧版本为0',
  `creatime` int(11) NOT NULL COMMENT '版本发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_app_version
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_app_versionup
-- ----------------------------
DROP TABLE IF EXISTS `bypal_app_versionup`;
CREATE TABLE `bypal_app_versionup` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `version_id` int(11) NOT NULL,
  `content` varchar(180) NOT NULL COMMENT '升级内容',
  PRIMARY KEY (`id`),
  KEY `version_id` (`version_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_app_versionup
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_balance_borrow
-- ----------------------------
DROP TABLE IF EXISTS `bypal_balance_borrow`;
CREATE TABLE `bypal_balance_borrow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fund_balance` double(10,2) DEFAULT NULL COMMENT '资金余额',
  `last_time` varchar(50) DEFAULT NULL COMMENT '最后一次操作时间',
  `cust_id` int(11) DEFAULT NULL COMMENT '客户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COMMENT='借款人资金余额表';

-- ----------------------------
-- Records of bypal_balance_borrow
-- ----------------------------
INSERT INTO `bypal_balance_borrow` VALUES ('162', '0.00', '2016-05-28 11:39:40', '150');
INSERT INTO `bypal_balance_borrow` VALUES ('163', '0.00', '2016-05-28 11:40:10', '151');
INSERT INTO `bypal_balance_borrow` VALUES ('164', '0.00', '2016-05-28 11:49:22', '152');
INSERT INTO `bypal_balance_borrow` VALUES ('165', '0.00', '2016-05-28 14:47:34', '153');
INSERT INTO `bypal_balance_borrow` VALUES ('166', '0.00', '2016-05-28 14:53:47', '154');
INSERT INTO `bypal_balance_borrow` VALUES ('167', '0.00', '2016-05-28 15:40:50', '155');

-- ----------------------------
-- Table structure for bypal_balance_invest
-- ----------------------------
DROP TABLE IF EXISTS `bypal_balance_invest`;
CREATE TABLE `bypal_balance_invest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fund_balance` double(10,2) DEFAULT NULL COMMENT '资金余额',
  `last_time` varchar(50) DEFAULT NULL COMMENT '最后一次操作时间',
  `cust_id` int(11) DEFAULT NULL COMMENT '客户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COMMENT='投资人资金余额表';

-- ----------------------------
-- Records of bypal_balance_invest
-- ----------------------------
INSERT INTO `bypal_balance_invest` VALUES ('162', '0.00', '2016-05-28 11:39:40', '150');
INSERT INTO `bypal_balance_invest` VALUES ('163', '0.00', '2016-05-28 11:40:10', '151');
INSERT INTO `bypal_balance_invest` VALUES ('164', '0.00', '2016-05-30 11:04:52', '152');
INSERT INTO `bypal_balance_invest` VALUES ('165', '0.00', '2016-05-28 14:47:34', '153');
INSERT INTO `bypal_balance_invest` VALUES ('166', '0.00', '2016-05-28 14:53:47', '154');
INSERT INTO `bypal_balance_invest` VALUES ('167', '0.00', '2016-05-30 11:11:08', '155');

-- ----------------------------
-- Table structure for bypal_borrow_adjustvalue
-- ----------------------------
DROP TABLE IF EXISTS `bypal_borrow_adjustvalue`;
CREATE TABLE `bypal_borrow_adjustvalue` (
  `ad_id` int(11) NOT NULL,
  `ad_level` varchar(255) NOT NULL,
  `ad_value` double(11,2) NOT NULL,
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='借款调整值表';

-- ----------------------------
-- Records of bypal_borrow_adjustvalue
-- ----------------------------
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('1', 'A1', '0.27');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('2', 'A2', '1.19');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('3', 'A3', '1.84');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('4', 'A4', '2.21');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('5', 'A5', '2.84');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('6', 'B1', '3.13');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('7', 'B2', '4.12');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('8', 'B3', '4.94');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('9', 'B4', '5.94');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('10', 'B5', '6.48');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('11', 'C1', '7.24');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('12', 'C2', '7.64');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('13', 'C3', '8.28');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('14', 'C4', '8.94');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('15', 'C5', '9.60');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('16', 'D1', '10.56');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('17', 'D2', '11.50');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('18', 'D3', '11.94');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('19', 'D4', '12.52');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('20', 'D5', '12.81');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('21', 'E1', '13.20');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('22', 'E2', '13.50');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('23', 'E3', '14.14');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('24', 'E4', '14.94');
INSERT INTO `bypal_borrow_adjustvalue` VALUES ('25', 'E5', '15.94');

-- ----------------------------
-- Table structure for bypal_borrow_agreementstate
-- ----------------------------
DROP TABLE IF EXISTS `bypal_borrow_agreementstate`;
CREATE TABLE `bypal_borrow_agreementstate` (
  `ag_id` int(11) NOT NULL,
  `ag_value` varchar(255) NOT NULL,
  PRIMARY KEY (`ag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='合同有效状态表';

-- ----------------------------
-- Records of bypal_borrow_agreementstate
-- ----------------------------
INSERT INTO `bypal_borrow_agreementstate` VALUES ('0', '有效');
INSERT INTO `bypal_borrow_agreementstate` VALUES ('1', '无效');

-- ----------------------------
-- Table structure for bypal_borrow_badbebt
-- ----------------------------
DROP TABLE IF EXISTS `bypal_borrow_badbebt`;
CREATE TABLE `bypal_borrow_badbebt` (
  `bd_id` int(11) NOT NULL AUTO_INCREMENT,
  `bd_custlevel` varchar(255) NOT NULL,
  `bd_value` double(6,2) NOT NULL,
  PRIMARY KEY (`bd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_borrow_badbebt
-- ----------------------------
INSERT INTO `bypal_borrow_badbebt` VALUES ('1', 'A', '0.10');
INSERT INTO `bypal_borrow_badbebt` VALUES ('2', 'B', '0.18');
INSERT INTO `bypal_borrow_badbebt` VALUES ('3', 'C', '0.30');
INSERT INTO `bypal_borrow_badbebt` VALUES ('4', 'D', '0.67');
INSERT INTO `bypal_borrow_badbebt` VALUES ('5', 'E', '1.00');

-- ----------------------------
-- Table structure for bypal_borrow_billrate
-- ----------------------------
DROP TABLE IF EXISTS `bypal_borrow_billrate`;
CREATE TABLE `bypal_borrow_billrate` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_rate` double(5,2) NOT NULL,
  `bill_date` int(10) NOT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_borrow_billrate
-- ----------------------------
INSERT INTO `bypal_borrow_billrate` VALUES ('1', '3.00', '1441728000');
INSERT INTO `bypal_borrow_billrate` VALUES ('2', '0.00', '1441781235');
INSERT INTO `bypal_borrow_billrate` VALUES ('3', '4.00', '1441781294');
INSERT INTO `bypal_borrow_billrate` VALUES ('4', '2.50', '1441781412');
INSERT INTO `bypal_borrow_billrate` VALUES ('5', '2.51', '1441849566');
INSERT INTO `bypal_borrow_billrate` VALUES ('6', '2.51', '1443622242');

-- ----------------------------
-- Table structure for bypal_borrow_buinessinfo
-- ----------------------------
DROP TABLE IF EXISTS `bypal_borrow_buinessinfo`;
CREATE TABLE `bypal_borrow_buinessinfo` (
  `binfo_id` int(11) NOT NULL AUTO_INCREMENT,
  `binfo_borrowid` varchar(255) NOT NULL,
  `borrow_finaltips` int(11) NOT NULL COMMENT '是否放尾款标志',
  `binfo_repayinsert` varchar(255) NOT NULL COMMENT '应还利息',
  `binfo_repaysum` varchar(255) NOT NULL COMMENT '应还总额',
  `binfo_currency` int(11) NOT NULL COMMENT '币种ID',
  `binfo_address` varchar(255) NOT NULL COMMENT '发生地点',
  `binfo_opendate` int(10) NOT NULL COMMENT '开户日期',
  `binfo_expiredate` int(10) NOT NULL COMMENT '到期日期',
  `binfo_state` int(11) NOT NULL COMMENT '借款状态ID',
  `binfo_firstpayment` varchar(255) NOT NULL COMMENT '首付',
  `binfo_firstpaydate` int(10) NOT NULL COMMENT '首付时间',
  `binfo_finalpayment` varchar(10) NOT NULL COMMENT '尾款',
  `binfo_finalpaydate` int(10) NOT NULL COMMENT '尾款时间',
  `binfo_grantdegree` varchar(255) NOT NULL COMMENT '授信额度',
  `binfo_sgrantdegree` varchar(255) NOT NULL COMMENT '共享授信额度',
  `binfo_maxdebt` varchar(255) NOT NULL COMMENT '最大负债额',
  `binfo_ensuretype` int(11) NOT NULL COMMENT '担保方式ID',
  `binfo_repayhz` int(11) NOT NULL COMMENT '还款频率ID',
  `binfo_repaymonth` varchar(255) NOT NULL COMMENT '还款月数',
  `binfo_remainmonth` varchar(255) NOT NULL COMMENT '剩余还款月数',
  `buinfo_treattime` varchar(255) NOT NULL COMMENT '协定还款期数',
  `buinfo_treatmoney` varchar(255) NOT NULL COMMENT '协定还款额',
  `buinfo_repaydown` int(10) NOT NULL COMMENT '借款还清日期',
  `buinfo_recentrepay` int(10) NOT NULL COMMENT '最近还款日期',
  `buinfo_overdue` varchar(255) NOT NULL COMMENT '当前逾期期数',
  `buinfo_overduemoney` varchar(255) NOT NULL COMMENT '当前逾期金额',
  `buinfo_overduesum` varchar(255) NOT NULL COMMENT '累计逾期期数',
  `buinfo_overduehigh` varchar(255) NOT NULL COMMENT '最高逾期期数',
  `buinfo_overduea` varchar(255) NOT NULL COMMENT '逾期31~60天未归还本金',
  `buinfo_overdueb` varchar(255) NOT NULL COMMENT '逾期61~90天未归还本金',
  `buinfo_overduec` varchar(255) NOT NULL COMMENT '逾期91~180天未归还本金',
  `buinfo_overdued` varchar(255) NOT NULL COMMENT '逾期180天以上未归还本金',
  `buinfo_classify` int(11) NOT NULL COMMENT '五级分类状态ID',
  `buinfo_custid` int(11) NOT NULL COMMENT '账户状态ID',
  `buinfo_repaystatus` int(11) NOT NULL COMMENT '24月账户还款状态ID',
  `buinfo_infotips` int(11) NOT NULL COMMENT '账户拥有者信息提示ID',
  `buinfo_name` varchar(255) NOT NULL COMMENT '姓名',
  `buinfo_idtype` int(11) NOT NULL COMMENT '证件类型',
  `buinfo_idnumber` varchar(255) NOT NULL COMMENT '证件号码',
  `buinfo_yuliu` varchar(255) NOT NULL COMMENT '预留字段',
  `buinfo_contractwork` int(10) NOT NULL COMMENT '合同生效日期',
  `buinfo_contractdown` int(10) NOT NULL COMMENT '合同终止日期',
  `buinfo_workststus` int(11) NOT NULL COMMENT '合同有效状态',
  PRIMARY KEY (`binfo_id`),
  UNIQUE KEY `binfo_borrowid` (`binfo_borrowid`),
  UNIQUE KEY `binfo_borrowid_2` (`binfo_borrowid`)
) ENGINE=MyISAM AUTO_INCREMENT=249 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='借款业务信息表';

-- ----------------------------
-- Records of bypal_borrow_buinessinfo
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_borrow_creditlimit
-- ----------------------------
DROP TABLE IF EXISTS `bypal_borrow_creditlimit`;
CREATE TABLE `bypal_borrow_creditlimit` (
  `cr_id` int(11) NOT NULL AUTO_INCREMENT,
  `cr_level` varchar(255) NOT NULL,
  `cr_value` int(11) NOT NULL,
  `cr_point` int(11) NOT NULL,
  PRIMARY KEY (`cr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_borrow_creditlimit
-- ----------------------------
INSERT INTO `bypal_borrow_creditlimit` VALUES ('1', 'A1', '49000', '750');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('2', 'A2', '46000', '740');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('3', 'A3', '43000', '730');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('4', 'A4', '40000', '720');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('5', 'A5', '37000', '710');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('6', 'B1', '34000', '700');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('7', 'B2', '32000', '690');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('8', 'B3', '30000', '680');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('9', 'B4', '28000', '670');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('10', 'B5', '26000', '660');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('11', 'C1', '24000', '650');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('12', 'C2', '23000', '640');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('13', 'C3', '22000', '630');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('14', 'C4', '21000', '620');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('15', 'C5', '20000', '610');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('16', 'D1', '0', '600');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('17', 'D2', '0', '590');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('18', 'D3', '0', '580');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('19', 'D4', '0', '570');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('20', 'D5', '0', '560');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('21', 'E1', '0', '550');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('22', 'E2', '0', '540');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('23', 'E3', '0', '530');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('24', 'E4', '0', '520');
INSERT INTO `bypal_borrow_creditlimit` VALUES ('25', 'E5', '0', '510');

-- ----------------------------
-- Table structure for bypal_borrow_date
-- ----------------------------
DROP TABLE IF EXISTS `bypal_borrow_date`;
CREATE TABLE `bypal_borrow_date` (
  `dateid` int(11) NOT NULL,
  `dateslip` varchar(255) NOT NULL,
  `dateNo` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`dateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='借款期限表';

-- ----------------------------
-- Records of bypal_borrow_date
-- ----------------------------
INSERT INTO `bypal_borrow_date` VALUES ('1', '6月', '06');
INSERT INTO `bypal_borrow_date` VALUES ('2', '9月', '09');
INSERT INTO `bypal_borrow_date` VALUES ('3', '12月', '12');
INSERT INTO `bypal_borrow_date` VALUES ('4', '18月', '18');
INSERT INTO `bypal_borrow_date` VALUES ('5', '24月', '24');

-- ----------------------------
-- Table structure for bypal_borrow_earnings
-- ----------------------------
DROP TABLE IF EXISTS `bypal_borrow_earnings`;
CREATE TABLE `bypal_borrow_earnings` (
  `earn_id` int(11) NOT NULL AUTO_INCREMENT,
  `earn_value` double(11,2) NOT NULL,
  `earn_level` varchar(255) NOT NULL,
  PRIMARY KEY (`earn_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_borrow_earnings
-- ----------------------------
INSERT INTO `bypal_borrow_earnings` VALUES ('1', '0.80', 'A');
INSERT INTO `bypal_borrow_earnings` VALUES ('2', '0.90', 'B');
INSERT INTO `bypal_borrow_earnings` VALUES ('3', '1.00', 'C');
INSERT INTO `bypal_borrow_earnings` VALUES ('4', '1.10', 'D');
INSERT INTO `bypal_borrow_earnings` VALUES ('5', '1.50', 'E');

-- ----------------------------
-- Table structure for bypal_borrow_freason
-- ----------------------------
DROP TABLE IF EXISTS `bypal_borrow_freason`;
CREATE TABLE `bypal_borrow_freason` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_value` varchar(255) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='失败原因';

-- ----------------------------
-- Records of bypal_borrow_freason
-- ----------------------------
INSERT INTO `bypal_borrow_freason` VALUES ('1', '安融未过');
INSERT INTO `bypal_borrow_freason` VALUES ('2', '存在欺诈');
INSERT INTO `bypal_borrow_freason` VALUES ('3', '未签约商户审核未通过');
INSERT INTO `bypal_borrow_freason` VALUES ('4', '手动审核未通过');

-- ----------------------------
-- Table structure for bypal_borrow_info
-- ----------------------------
DROP TABLE IF EXISTS `bypal_borrow_info`;
CREATE TABLE `bypal_borrow_info` (
  `borrow_bid` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识id，不是借款id',
  `borrow_id` int(11) NOT NULL COMMENT 'ID（借款款申请号）',
  `borrow_level` int(11) NOT NULL COMMENT '借款等级',
  `borrow_custid` int(11) NOT NULL COMMENT '客户ID',
  `borrow_busid` int(11) NOT NULL COMMENT '商户ID',
  `borrow_title` varchar(255) NOT NULL COMMENT '借款标题',
  `borrow_money` varchar(255) NOT NULL COMMENT '借款申请金额',
  `borrow_rate` varchar(255) NOT NULL COMMENT '借款利率',
  `borrow_repayid` int(11) NOT NULL COMMENT '还款方式ID',
  `borrow_stateid` int(11) NOT NULL COMMENT '借款申请状态ID',
  `borrow_createdate` int(10) NOT NULL COMMENT '借款申请时间',
  `borrow_loanperiod` int(10) NOT NULL,
  `borrow_applyid` int(11) NOT NULL COMMENT '贷款申请类型ID',
  `borrow_extramoney` double(11,2) NOT NULL,
  `borrow_investId` int(11) NOT NULL COMMENT '打包投资ID',
  `borrow_freson` int(11) NOT NULL,
  `borrow_remarks` varchar(255) NOT NULL,
  `borrow_passtime` int(10) NOT NULL,
  `borrow_unworktime` int(11) NOT NULL,
  `borrow_online` int(11) NOT NULL COMMENT '线上线下',
  `borrow_count` int(11) NOT NULL COMMENT '借款分数',
  PRIMARY KEY (`borrow_bid`),
  UNIQUE KEY `borrow_bindex` (`borrow_bid`) USING BTREE,
  UNIQUE KEY `borrow_id` (`borrow_id`)
) ENGINE=MyISAM AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_borrow_info
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_borrow_interest
-- ----------------------------
DROP TABLE IF EXISTS `bypal_borrow_interest`;
CREATE TABLE `bypal_borrow_interest` (
  `in_id` int(11) NOT NULL AUTO_INCREMENT,
  `in_value` double(11,2) NOT NULL,
  `in_date` int(10) NOT NULL,
  PRIMARY KEY (`in_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='借款基准利率表';

-- ----------------------------
-- Records of bypal_borrow_interest
-- ----------------------------
INSERT INTO `bypal_borrow_interest` VALUES ('1', '3.40', '1441728000');
INSERT INTO `bypal_borrow_interest` VALUES ('2', '3.30', '1441769777');
INSERT INTO `bypal_borrow_interest` VALUES ('3', '3.50', '1441770152');
INSERT INTO `bypal_borrow_interest` VALUES ('4', '3.50', '1441770152');
INSERT INTO `bypal_borrow_interest` VALUES ('5', '3.60', '1441770736');
INSERT INTO `bypal_borrow_interest` VALUES ('6', '3.70', '1441779855');
INSERT INTO `bypal_borrow_interest` VALUES ('7', '3.70', '1444898871');
INSERT INTO `bypal_borrow_interest` VALUES ('8', '3.26', '1454479093');
INSERT INTO `bypal_borrow_interest` VALUES ('9', '3.26', '1455498650');

-- ----------------------------
-- Table structure for bypal_borrow_mleveladjust
-- ----------------------------
DROP TABLE IF EXISTS `bypal_borrow_mleveladjust`;
CREATE TABLE `bypal_borrow_mleveladjust` (
  `ml_id` int(11) NOT NULL AUTO_INCREMENT,
  `ml_level` varchar(255) NOT NULL,
  `ml_valuea` int(255) NOT NULL,
  `ml_valueb` int(11) NOT NULL,
  `ml_valuec` int(11) NOT NULL,
  `ml_valued` int(11) NOT NULL,
  `ml_valuee` int(11) NOT NULL,
  `ml_moneyarea` int(11) NOT NULL,
  PRIMARY KEY (`ml_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='金额等级调整值表';

-- ----------------------------
-- Records of bypal_borrow_mleveladjust
-- ----------------------------
INSERT INTO `bypal_borrow_mleveladjust` VALUES ('1', 'A', '-1', '0', '0', '-1', '-1', '10000');
INSERT INTO `bypal_borrow_mleveladjust` VALUES ('2', 'B', '-1', '0', '-2', '-2', '-4', '20000');
INSERT INTO `bypal_borrow_mleveladjust` VALUES ('3', 'C', '-1', '0', '-2', '-3', '-4', '30000');
INSERT INTO `bypal_borrow_mleveladjust` VALUES ('4', 'D', '-1', '0', '-2', '-3', '-4', '40000');
INSERT INTO `bypal_borrow_mleveladjust` VALUES ('5', 'E', '-1', '0', '-2', '-3', '-4', '50000');

-- ----------------------------
-- Table structure for bypal_borrow_moneylevel
-- ----------------------------
DROP TABLE IF EXISTS `bypal_borrow_moneylevel`;
CREATE TABLE `bypal_borrow_moneylevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ml_level` varchar(5) NOT NULL,
  `min_money` int(8) NOT NULL,
  `max_money` int(8) NOT NULL,
  `ml_value` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='金额等级调整值表';

-- ----------------------------
-- Records of bypal_borrow_moneylevel
-- ----------------------------
INSERT INTO `bypal_borrow_moneylevel` VALUES ('1', 'A', '0', '10000', '-1');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('2', 'A', '10000', '20000', '0');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('3', 'A', '20000', '30000', '0');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('4', 'A', '30000', '40000', '-1');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('5', 'A', '40000', '50000', '-1');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('6', 'B', '0', '10000', '-1');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('7', 'B', '10000', '20000', '0');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('8', 'B', '20000', '30000', '0');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('9', 'B', '30000', '40000', '-2');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('10', 'B', '40000', '50000', '-4');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('11', 'C', '0', '10000', '-1');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('12', 'C', '10000', '20000', '0');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('13', 'C', '20000', '30000', '-2');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('14', 'C', '30000', '40000', '-2');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('15', 'C', '40000', '50000', '-4');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('16', 'D', '0', '10000', '-1');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('17', 'D', '10000', '20000', '0');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('18', 'D', '20000', '30000', '-2');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('19', 'D', '30000', '40000', '-3');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('20', 'D', '40000', '50000', '-4');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('21', 'E', '0', '10000', '-1');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('22', 'E', '10000', '20000', '0');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('23', 'E', '20000', '30000', '-2');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('24', 'E', '30000', '40000', '-3');
INSERT INTO `bypal_borrow_moneylevel` VALUES ('25', 'E', '40000', '50000', '-4');

-- ----------------------------
-- Table structure for bypal_borrow_overduep
-- ----------------------------
DROP TABLE IF EXISTS `bypal_borrow_overduep`;
CREATE TABLE `bypal_borrow_overduep` (
  `over_custlevel` varchar(255) NOT NULL,
  `over_value` double(11,2) NOT NULL,
  `over_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`over_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_borrow_overduep
-- ----------------------------
INSERT INTO `bypal_borrow_overduep` VALUES ('A', '0.10', '1');
INSERT INTO `bypal_borrow_overduep` VALUES ('B', '0.33', '2');
INSERT INTO `bypal_borrow_overduep` VALUES ('C', '0.71', '3');
INSERT INTO `bypal_borrow_overduep` VALUES ('D', '1.08', '4');
INSERT INTO `bypal_borrow_overduep` VALUES ('E', '2.00', '5');

-- ----------------------------
-- Table structure for bypal_borrow_status
-- ----------------------------
DROP TABLE IF EXISTS `bypal_borrow_status`;
CREATE TABLE `bypal_borrow_status` (
  `bsta_id` int(11) NOT NULL,
  `bsta_name` varchar(255) NOT NULL,
  PRIMARY KEY (`bsta_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='借款状态表';

-- ----------------------------
-- Records of bypal_borrow_status
-- ----------------------------
INSERT INTO `bypal_borrow_status` VALUES ('1', '审核通过');
INSERT INTO `bypal_borrow_status` VALUES ('2', '待付尾款');
INSERT INTO `bypal_borrow_status` VALUES ('3', '还款中');
INSERT INTO `bypal_borrow_status` VALUES ('4', '已完成');
INSERT INTO `bypal_borrow_status` VALUES ('5', '已取消');

-- ----------------------------
-- Table structure for bypal_borrow_timelevel
-- ----------------------------
DROP TABLE IF EXISTS `bypal_borrow_timelevel`;
CREATE TABLE `bypal_borrow_timelevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tl_level` varchar(10) NOT NULL,
  `min_time` int(3) NOT NULL COMMENT '最小期限',
  `max_time` int(3) NOT NULL COMMENT '最大期限',
  `tl_value` int(3) NOT NULL COMMENT '信用等级加减值',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='借款期限等级调整值表';

-- ----------------------------
-- Records of bypal_borrow_timelevel
-- ----------------------------
INSERT INTO `bypal_borrow_timelevel` VALUES ('1', 'A', '0', '12', '0');
INSERT INTO `bypal_borrow_timelevel` VALUES ('2', 'A', '12', '15', '-2');
INSERT INTO `bypal_borrow_timelevel` VALUES ('3', 'A', '15', '18', '-3');
INSERT INTO `bypal_borrow_timelevel` VALUES ('4', 'A', '18', '21', '-4');
INSERT INTO `bypal_borrow_timelevel` VALUES ('5', 'A', '21', '24', '-5');
INSERT INTO `bypal_borrow_timelevel` VALUES ('6', 'B', '0', '12', '0');
INSERT INTO `bypal_borrow_timelevel` VALUES ('7', 'B', '12', '15', '-2');
INSERT INTO `bypal_borrow_timelevel` VALUES ('8', 'B', '15', '18', '-3');
INSERT INTO `bypal_borrow_timelevel` VALUES ('9', 'B', '18', '21', '-4');
INSERT INTO `bypal_borrow_timelevel` VALUES ('10', 'B', '21', '24', '-5');
INSERT INTO `bypal_borrow_timelevel` VALUES ('11', 'C', '0', '12', '0');
INSERT INTO `bypal_borrow_timelevel` VALUES ('12', 'C', '12', '15', '-2');
INSERT INTO `bypal_borrow_timelevel` VALUES ('13', 'C', '15', '18', '-3');
INSERT INTO `bypal_borrow_timelevel` VALUES ('14', 'C', '18', '21', '-4');
INSERT INTO `bypal_borrow_timelevel` VALUES ('15', 'C', '21', '24', '-5');
INSERT INTO `bypal_borrow_timelevel` VALUES ('16', 'D', '0', '12', '0');
INSERT INTO `bypal_borrow_timelevel` VALUES ('17', 'D', '12', '15', '-2');
INSERT INTO `bypal_borrow_timelevel` VALUES ('18', 'D', '15', '18', '-3');
INSERT INTO `bypal_borrow_timelevel` VALUES ('19', 'D', '18', '21', '-4');
INSERT INTO `bypal_borrow_timelevel` VALUES ('20', 'D', '21', '24', '-5');
INSERT INTO `bypal_borrow_timelevel` VALUES ('21', 'E', '0', '12', '0');
INSERT INTO `bypal_borrow_timelevel` VALUES ('22', 'E', '12', '15', '-2');
INSERT INTO `bypal_borrow_timelevel` VALUES ('23', 'E', '15', '18', '-3');
INSERT INTO `bypal_borrow_timelevel` VALUES ('24', 'E', '18', '21', '-4');
INSERT INTO `bypal_borrow_timelevel` VALUES ('25', 'E', '21', '24', '-5');

-- ----------------------------
-- Table structure for bypal_borrow_title
-- ----------------------------
DROP TABLE IF EXISTS `bypal_borrow_title`;
CREATE TABLE `bypal_borrow_title` (
  `borrow_nid` int(11) NOT NULL AUTO_INCREMENT,
  `borrow_typeid` int(11) NOT NULL,
  `borrow_tiid` int(11) NOT NULL,
  `borrow_tiname` varchar(255) NOT NULL,
  PRIMARY KEY (`borrow_nid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_borrow_title
-- ----------------------------
INSERT INTO `bypal_borrow_title` VALUES ('1', '1', '1', '个人租赁');
INSERT INTO `bypal_borrow_title` VALUES ('2', '1', '2', '商户租赁');
INSERT INTO `bypal_borrow_title` VALUES ('3', '3', '1', '舞蹈');
INSERT INTO `bypal_borrow_title` VALUES ('4', '3', '2', '健身私教课程');
INSERT INTO `bypal_borrow_title` VALUES ('5', '3', '3', '英语培训');
INSERT INTO `bypal_borrow_title` VALUES ('6', '3', '3', '驾校培训');

-- ----------------------------
-- Table structure for bypal_borrow_tlvalueadjust
-- ----------------------------
DROP TABLE IF EXISTS `bypal_borrow_tlvalueadjust`;
CREATE TABLE `bypal_borrow_tlvalueadjust` (
  `tl_id` int(11) NOT NULL,
  `tl_valuea` varchar(255) NOT NULL,
  `tl_valueb` int(11) NOT NULL,
  `tl_valuec` int(11) NOT NULL,
  `tl_valued` int(11) NOT NULL,
  `tl_valuee` int(11) NOT NULL,
  `tl_area` varchar(255) NOT NULL,
  `tl_level` varchar(255) NOT NULL,
  PRIMARY KEY (`tl_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='借款期限等级调整值表';

-- ----------------------------
-- Records of bypal_borrow_tlvalueadjust
-- ----------------------------
INSERT INTO `bypal_borrow_tlvalueadjust` VALUES ('1', '0', '-2', '-3', '-4', '-5', '12', 'A');
INSERT INTO `bypal_borrow_tlvalueadjust` VALUES ('2', '0', '-2', '-3', '-4', '-5', '15', 'B');
INSERT INTO `bypal_borrow_tlvalueadjust` VALUES ('5', '0', '-2', '-3', '-4', '-5', '24', 'E');
INSERT INTO `bypal_borrow_tlvalueadjust` VALUES ('4', '0', '-2', '-3', '-4', '-5', '21', 'D');
INSERT INTO `bypal_borrow_tlvalueadjust` VALUES ('3', '0', '-2', '-3', '-4', '-5', '18', 'C');

-- ----------------------------
-- Table structure for bypal_borrow_utildelay
-- ----------------------------
DROP TABLE IF EXISTS `bypal_borrow_utildelay`;
CREATE TABLE `bypal_borrow_utildelay` (
  `id` int(11) NOT NULL,
  `delay_month` int(3) DEFAULT NULL COMMENT '延期月数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_borrow_utildelay
-- ----------------------------
INSERT INTO `bypal_borrow_utildelay` VALUES ('1', '1');
INSERT INTO `bypal_borrow_utildelay` VALUES ('2', '2');
INSERT INTO `bypal_borrow_utildelay` VALUES ('3', '3');
INSERT INTO `bypal_borrow_utildelay` VALUES ('4', '4');
INSERT INTO `bypal_borrow_utildelay` VALUES ('5', '5');
INSERT INTO `bypal_borrow_utildelay` VALUES ('6', '6');

-- ----------------------------
-- Table structure for bypal_capital_borrow
-- ----------------------------
DROP TABLE IF EXISTS `bypal_capital_borrow`;
CREATE TABLE `bypal_capital_borrow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `capital_content` varchar(255) NOT NULL COMMENT '资金流动内容',
  `capital_date` varchar(50) NOT NULL COMMENT '日期',
  `capital_money` double(10,2) NOT NULL COMMENT '资金流动金额',
  `capital_cust` int(11) NOT NULL COMMENT '客户ID',
  `capital_businessId` int(11) NOT NULL COMMENT '资金流动业务ID',
  `capital_mold` int(2) NOT NULL COMMENT '资金流动类型：1、充值；2、提现；3、投资；4、还款；5、收益；6、借款',
  `capital_status` int(2) NOT NULL COMMENT '是否显示：0、不显示，1、显示',
  `capital_type` int(2) NOT NULL COMMENT '1、流入；2、流出',
  `balance_money` double(10,2) NOT NULL COMMENT '余额',
  `merorderno` varchar(50) DEFAULT NULL COMMENT '商户交易ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=539 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_capital_borrow
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_capital_invest
-- ----------------------------
DROP TABLE IF EXISTS `bypal_capital_invest`;
CREATE TABLE `bypal_capital_invest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `capital_content` varchar(255) NOT NULL COMMENT '资金流动内容',
  `capital_date` varchar(50) NOT NULL COMMENT '日期',
  `capital_money` double(10,2) NOT NULL COMMENT '资金流动金额',
  `capital_cust` int(11) NOT NULL COMMENT '客户ID',
  `capital_businessId` int(11) NOT NULL COMMENT '资金流动业务ID',
  `capital_mold` int(2) NOT NULL COMMENT '资金流动类型：1、充值；2、提现；3、投资；4、还款；5、收益；6、借款',
  `capital_status` int(2) NOT NULL COMMENT '是否显示：0、不显示，1、显示',
  `capital_type` int(2) NOT NULL COMMENT '1、流入；2、流出',
  `balance_money` double(10,2) NOT NULL COMMENT '余额',
  `merorderno` varchar(50) DEFAULT NULL COMMENT '商户交易ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=746 DEFAULT CHARSET=utf8 COMMENT='投资人资金流动表';

-- ----------------------------
-- Records of bypal_capital_invest
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_capital_log
-- ----------------------------
DROP TABLE IF EXISTS `bypal_capital_log`;
CREATE TABLE `bypal_capital_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merorderno` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '商户订单ID',
  `trade_type` int(2) DEFAULT NULL COMMENT '1、充值；2、提现；3、还款；4、投资',
  `business_id` int(11) DEFAULT NULL COMMENT '投资ID或者借款ID',
  `trade_describe` varchar(150) CHARACTER SET utf8 DEFAULT NULL COMMENT '交易描述',
  `trade_money` double(10,2) DEFAULT NULL COMMENT '交易金额',
  `trade_status` int(2) DEFAULT NULL COMMENT '交易状态：1、交易进行中；2、交易成功；3、交易失败',
  `error_reason` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '失败原因',
  `cust_id` int(11) DEFAULT NULL COMMENT '客户ID',
  `create_time` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of bypal_capital_log
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_comm_banklist
-- ----------------------------
DROP TABLE IF EXISTS `bypal_comm_banklist`;
CREATE TABLE `bypal_comm_banklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_id` int(11) DEFAULT NULL,
  `bank_image` varchar(50) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_comm_banklist
-- ----------------------------
INSERT INTO `bypal_comm_banklist` VALUES ('1', '1', 'ahrcu.png', '安徽省农村信用社');
INSERT INTO `bypal_comm_banklist` VALUES ('2', '2', 'bj.png', '北京银行');
INSERT INTO `bypal_comm_banklist` VALUES ('3', '3', 'bjrcb.png', '北京农商银行');
INSERT INTO `bypal_comm_banklist` VALUES ('4', '4', 'boimc.png', '内蒙古银行');
INSERT INTO `bypal_comm_banklist` VALUES ('5', '5', 'bol.png', '兰州银行');
INSERT INTO `bypal_comm_banklist` VALUES ('6', '6', 'byk.png', '营口银行');
INSERT INTO `bypal_comm_banklist` VALUES ('7', '7', 'cab.png', '长安银行');
INSERT INTO `bypal_comm_banklist` VALUES ('8', '8', 'cdb.png', '永德银行');
INSERT INTO `bypal_comm_banklist` VALUES ('9', '9', 'cdrcb.png', '成都农商银行');
INSERT INTO `bypal_comm_banklist` VALUES ('10', '10', 'cgnb.png', '南充市商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('11', '11', 'citybank.png', '花旗银行');
INSERT INTO `bypal_comm_banklist` VALUES ('12', '12', 'cqcbank.png', '重庆银行');
INSERT INTO `bypal_comm_banklist` VALUES ('13', '13', 'cqrcb.png', '重庆农村商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('14', '14', 'crb.png', '华润银行');
INSERT INTO `bypal_comm_banklist` VALUES ('15', '15', 'cscb.png', '长沙银行');
INSERT INTO `bypal_comm_banklist` VALUES ('16', '16', 'csrcb.png', '常熟市农村商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('17', '17', 'ctgb.png', '重庆三峡银行');
INSERT INTO `bypal_comm_banklist` VALUES ('18', '18', 'czcb.png', '浙江稠州商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('19', '19', 'dlbank.png', '大连银行');
INSERT INTO `bypal_comm_banklist` VALUES ('20', '20', 'drcb.png', '东莞农村商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('21', '21', 'dy.png', '东亚银行');
INSERT INTO `bypal_comm_banklist` VALUES ('22', '22', 'dyccb.png', '东营银行');
INSERT INTO `bypal_comm_banklist` VALUES ('23', '23', 'dzcc.png', '德州银行');
INSERT INTO `bypal_comm_banklist` VALUES ('24', '24', 'fdb.png', '富滇银行');
INSERT INTO `bypal_comm_banklist` VALUES ('25', '25', 'fjhxbank.png', '福州海峡银行');
INSERT INTO `bypal_comm_banklist` VALUES ('26', '26', 'fjnx.png', '福建省农村信用社');
INSERT INTO `bypal_comm_banklist` VALUES ('27', '27', 'frcc.png', null);
INSERT INTO `bypal_comm_banklist` VALUES ('28', '28', 'gdrcb.png', '广东省农村信用社');
INSERT INTO `bypal_comm_banklist` VALUES ('29', '29', 'gf.png', '广发银行');
INSERT INTO `bypal_comm_banklist` VALUES ('30', '30', 'glccb.png', '桂林银行');
INSERT INTO `bypal_comm_banklist` VALUES ('31', '31', 'grcb.png', '广州农村商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('32', '32', 'gxrcb.png', '广西农村信用社');
INSERT INTO `bypal_comm_banklist` VALUES ('33', '33', 'gyccb.png', '贵阳银行');
INSERT INTO `bypal_comm_banklist` VALUES ('34', '34', 'gzcb.png', '广州银行');
INSERT INTO `bypal_comm_banklist` VALUES ('35', '35', 'gzccb.png', '赣州银行');
INSERT INTO `bypal_comm_banklist` VALUES ('36', '36', 'hbb.png', '湖北银行');
INSERT INTO `bypal_comm_banklist` VALUES ('37', '37', 'hbxh.png', '湖北农信社');
INSERT INTO `bypal_comm_banklist` VALUES ('38', '38', 'hdcb.png', '邯郸市商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('39', '39', 'heb.png', '河北银行');
INSERT INTO `bypal_comm_banklist` VALUES ('40', '40', 'hnnxs.png', '湖南省农村信用社');
INSERT INTO `bypal_comm_banklist` VALUES ('41', '41', 'hrbcb.png', '哈尔滨银行');
INSERT INTO `bypal_comm_banklist` VALUES ('42', '42', 'hrcc.png', '河南省农村信用社');
INSERT INTO `bypal_comm_banklist` VALUES ('43', '43', 'hsb.png', '徽商银行');
INSERT INTO `bypal_comm_banklist` VALUES ('44', '44', 'hx.png', '华夏银行');
INSERT INTO `bypal_comm_banklist` VALUES ('45', '45', 'hzbank.png', '杭州商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('46', '46', 'jinzhoubank.png', '锦州银行');
INSERT INTO `bypal_comm_banklist` VALUES ('47', '47', 'jjccb.png', '九江银行');
INSERT INTO `bypal_comm_banklist` VALUES ('48', '48', 'jlnls.png', '吉林省农村信用社');
INSERT INTO `bypal_comm_banklist` VALUES ('49', '49', 'jnccb.png', '金华银行');
INSERT INTO `bypal_comm_banklist` VALUES ('50', '50', 'jprcu.png', '江苏省农村信用社');
INSERT INTO `bypal_comm_banklist` VALUES ('51', '51', 'jt.png', '交通银行');
INSERT INTO `bypal_comm_banklist` VALUES ('52', '52', 'jxccb.png', '嘉兴银行');
INSERT INTO `bypal_comm_banklist` VALUES ('53', '53', 'jxnxs.png', '江西省农村信用社');
INSERT INTO `bypal_comm_banklist` VALUES ('54', '54', 'jyrcb.png', '江阴');
INSERT INTO `bypal_comm_banklist` VALUES ('55', '55', 'jzb.png', '晋中银行');
INSERT INTO `bypal_comm_banklist` VALUES ('56', '56', 'klb.png', '昆仑银行');
INSERT INTO `bypal_comm_banklist` VALUES ('57', '57', 'ksrcb.png', '昆山');
INSERT INTO `bypal_comm_banklist` VALUES ('58', '58', 'lhb.png', '漯河银行');
INSERT INTO `bypal_comm_banklist` VALUES ('59', '59', 'ljbc.png', '龙江银行');
INSERT INTO `bypal_comm_banklist` VALUES ('60', '60', 'lzccb.png', '泸州市商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('61', '61', 'mtb.png', '浙江民泰商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('62', '62', 'nb.png', '宁波银行');
INSERT INTO `bypal_comm_banklist` VALUES ('63', '63', 'nccb.png', '南昌银行');
INSERT INTO `bypal_comm_banklist` VALUES ('64', '64', 'njcb.png', '南京银行');
INSERT INTO `bypal_comm_banklist` VALUES ('65', '65', 'nmgrcb.png', '内蒙古自治区农村信用社');
INSERT INTO `bypal_comm_banklist` VALUES ('66', '66', 'nyb.png', '广东南粤银行');
INSERT INTO `bypal_comm_banklist` VALUES ('67', '67', 'ordosbank.png', '鄂尔多斯银行');
INSERT INTO `bypal_comm_banklist` VALUES ('68', '68', 'pa.png', '平安银行');
INSERT INTO `bypal_comm_banklist` VALUES ('69', '69', 'pdscb.png', '平顶山银行');
INSERT INTO `bypal_comm_banklist` VALUES ('70', '70', 'pf.png', '浦发银行');
INSERT INTO `bypal_comm_banklist` VALUES ('71', '71', 'pzhccb.png', '攀枝花市商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('72', '72', 'qbccb.png', '青岛银行');
INSERT INTO `bypal_comm_banklist` VALUES ('73', '73', 'qhbank.png', '青海银行');
INSERT INTO `bypal_comm_banklist` VALUES ('74', '74', 'qhdb.png', '秦皇岛银行');
INSERT INTO `bypal_comm_banklist` VALUES ('75', '75', 'qhrcb.png', '青海省农村信用社');
INSERT INTO `bypal_comm_banklist` VALUES ('76', '76', 'qlbc.png', '齐鲁银行');
INSERT INTO `bypal_comm_banklist` VALUES ('77', '77', 'qzccb.png', '泉州银行');
INSERT INTO `bypal_comm_banklist` VALUES ('78', '78', 'scb.png', '渣打银行');
INSERT INTO `bypal_comm_banklist` VALUES ('79', '79', 'sdeb.png', '顺德农村商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('80', '80', 'sdnxs.png', '山东省农村信用社');
INSERT INTO `bypal_comm_banklist` VALUES ('81', '81', 'sh.png', '上海银行');
INSERT INTO `bypal_comm_banklist` VALUES ('82', '82', 'shns.png', '上海农商银行');
INSERT INTO `bypal_comm_banklist` VALUES ('83', '83', 'sj.png', '盛京银行');
INSERT INTO `bypal_comm_banklist` VALUES ('84', '84', 'srb.png', '上饶银行');
INSERT INTO `bypal_comm_banklist` VALUES ('85', '85', 'srbc.png', '上海商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('86', '86', 'srccu.png', '陕西省农村信用社');
INSERT INTO `bypal_comm_banklist` VALUES ('87', '87', 'sxrcb.png', '山西省农村信用社');
INSERT INTO `bypal_comm_banklist` VALUES ('88', '88', 'szfz.png', null);
INSERT INTO `bypal_comm_banklist` VALUES ('89', '89', 'szrcb.png', '深圳农村商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('90', '90', 'tj.png', '天津银行');
INSERT INTO `bypal_comm_banklist` VALUES ('91', '91', 'tzb.png', '台州银行');
INSERT INTO `bypal_comm_banklist` VALUES ('92', '92', 'uccb.png', '乌鲁木齐市商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('93', '93', 'wfccb.png', '潍坊银行');
INSERT INTO `bypal_comm_banklist` VALUES ('94', '94', 'whccb.png', '威海市商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('95', '95', 'wjrcb.png', '吴江农商行');
INSERT INTO `bypal_comm_banklist` VALUES ('96', '96', 'wrcb.png', '无锡农村商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('97', '97', 'wzcb.png', '温州银行');
INSERT INTO `bypal_comm_banklist` VALUES ('98', '98', 'xrccu.png', '新疆维吾尔自治区农村信用社');
INSERT INTO `bypal_comm_banklist` VALUES ('99', '99', 'xtb.png', '邢台银行');
INSERT INTO `bypal_comm_banklist` VALUES ('100', '100', 'yccb.png', '宜昌市商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('101', '101', 'ycccb.png', null);
INSERT INTO `bypal_comm_banklist` VALUES ('102', '102', 'ydrcb.png', '尧都区农村信用');
INSERT INTO `bypal_comm_banklist` VALUES ('103', '103', 'ynrcc.png', '云南省农村信用社');
INSERT INTO `bypal_comm_banklist` VALUES ('104', '104', 'yrrcb.png', '黄河农村商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('105', '105', 'yy.png', '兴业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('106', '106', 'zg.png', '中国银行');
INSERT INTO `bypal_comm_banklist` VALUES ('107', '107', 'zggd.png', '光大银行');
INSERT INTO `bypal_comm_banklist` VALUES ('108', '108', 'zggs.png', '工商银行');
INSERT INTO `bypal_comm_banklist` VALUES ('109', '109', 'zgjs.png', '建设银行');
INSERT INTO `bypal_comm_banklist` VALUES ('110', '110', 'zgms.png', '民生银行');
INSERT INTO `bypal_comm_banklist` VALUES ('111', '111', 'zgny.png', '农业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('112', '112', 'zjkccb.png', '张家口市商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('113', '113', 'zjtlcb.png', '浙江泰隆商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('114', '114', 'zkb.png', '周口银行');
INSERT INTO `bypal_comm_banklist` VALUES ('115', '115', 'zrcb.png', '张家港农村商业银行');
INSERT INTO `bypal_comm_banklist` VALUES ('116', '116', 'zrccu.png', '浙江省农村信用社');
INSERT INTO `bypal_comm_banklist` VALUES ('117', '117', 'zs.png', '招商银行');
INSERT INTO `bypal_comm_banklist` VALUES ('118', '118', 'zx.png', '中信银行');
INSERT INTO `bypal_comm_banklist` VALUES ('119', '119', 'zzb.png', '郑州银行');

-- ----------------------------
-- Table structure for bypal_comm_bankname
-- ----------------------------
DROP TABLE IF EXISTS `bypal_comm_bankname`;
CREATE TABLE `bypal_comm_bankname` (
  `id` int(5) NOT NULL,
  `bank_name` varchar(50) DEFAULT NULL COMMENT '银行名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_comm_bankname
-- ----------------------------
INSERT INTO `bypal_comm_bankname` VALUES ('1', '中国工商银行');
INSERT INTO `bypal_comm_bankname` VALUES ('2', '招商银行');
INSERT INTO `bypal_comm_bankname` VALUES ('3', '中国农业银行');
INSERT INTO `bypal_comm_bankname` VALUES ('4', '中国建设银行');
INSERT INTO `bypal_comm_bankname` VALUES ('5', '中国银行');
INSERT INTO `bypal_comm_bankname` VALUES ('6', '中国民生银行');
INSERT INTO `bypal_comm_bankname` VALUES ('7', '中国光大银行');
INSERT INTO `bypal_comm_bankname` VALUES ('8', '中信银行');
INSERT INTO `bypal_comm_bankname` VALUES ('9', '交通银行');
INSERT INTO `bypal_comm_bankname` VALUES ('10', '兴业银行');
INSERT INTO `bypal_comm_bankname` VALUES ('11', '上海浦东发展银行');
INSERT INTO `bypal_comm_bankname` VALUES ('12', '中国人民银行');
INSERT INTO `bypal_comm_bankname` VALUES ('13', '华夏银行');
INSERT INTO `bypal_comm_bankname` VALUES ('14', '深圳发展银行');
INSERT INTO `bypal_comm_bankname` VALUES ('15', '广东发展银行');
INSERT INTO `bypal_comm_bankname` VALUES ('16', '国家开发银行');
INSERT INTO `bypal_comm_bankname` VALUES ('17', '中国邮政储蓄银行');
INSERT INTO `bypal_comm_bankname` VALUES ('18', '中国进出口银行');
INSERT INTO `bypal_comm_bankname` VALUES ('19', '中国农业发展银行');

-- ----------------------------
-- Table structure for bypal_comm_btn
-- ----------------------------
DROP TABLE IF EXISTS `bypal_comm_btn`;
CREATE TABLE `bypal_comm_btn` (
  `btn_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `btn_pid` int(11) NOT NULL COMMENT '父ID',
  `btn_name` varchar(100) NOT NULL COMMENT '名称',
  `btn_tag` varchar(100) NOT NULL COMMENT '标签',
  PRIMARY KEY (`btn_id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='按钮表';

-- ----------------------------
-- Records of bypal_comm_btn
-- ----------------------------
INSERT INTO `bypal_comm_btn` VALUES ('1', '0', '权限信息管理', 'permission/permission_manage.php');
INSERT INTO `bypal_comm_btn` VALUES ('2', '1', '查询', 'query');
INSERT INTO `bypal_comm_btn` VALUES ('3', '1', '新增', 'add');
INSERT INTO `bypal_comm_btn` VALUES ('4', '1', '详情', 'details');
INSERT INTO `bypal_comm_btn` VALUES ('5', '1', '编辑', 'edit');
INSERT INTO `bypal_comm_btn` VALUES ('6', '1', '删除', 'delete');
INSERT INTO `bypal_comm_btn` VALUES ('15', '0', '组织管理', 'organization/org_manage.php');
INSERT INTO `bypal_comm_btn` VALUES ('16', '15', '新增', 'add');
INSERT INTO `bypal_comm_btn` VALUES ('17', '15', '查询', 'query');
INSERT INTO `bypal_comm_btn` VALUES ('18', '15', '详情', 'details');
INSERT INTO `bypal_comm_btn` VALUES ('19', '15', '编辑', 'edit');
INSERT INTO `bypal_comm_btn` VALUES ('20', '15', '删除', 'delete');
INSERT INTO `bypal_comm_btn` VALUES ('23', '0', '部门管理', 'depart/depart_manage.php');
INSERT INTO `bypal_comm_btn` VALUES ('24', '23', '查询', 'query');
INSERT INTO `bypal_comm_btn` VALUES ('25', '23', '新增', 'add');
INSERT INTO `bypal_comm_btn` VALUES ('26', '23', '详情', 'details');
INSERT INTO `bypal_comm_btn` VALUES ('27', '23', '编辑', 'edit');
INSERT INTO `bypal_comm_btn` VALUES ('28', '23', '删除', 'delete');
INSERT INTO `bypal_comm_btn` VALUES ('29', '0', '新闻管理', 'news/news_manage.php');
INSERT INTO `bypal_comm_btn` VALUES ('30', '29', '查询', 'query');
INSERT INTO `bypal_comm_btn` VALUES ('31', '29', '新增', 'add');
INSERT INTO `bypal_comm_btn` VALUES ('32', '29', '详情', 'details');
INSERT INTO `bypal_comm_btn` VALUES ('33', '29', '编辑', 'edit');
INSERT INTO `bypal_comm_btn` VALUES ('34', '29', '删除', 'delete');
INSERT INTO `bypal_comm_btn` VALUES ('35', '0', '预约管理', 'reserve/reserve_manage.php');
INSERT INTO `bypal_comm_btn` VALUES ('36', '35', '查询', 'query');
INSERT INTO `bypal_comm_btn` VALUES ('37', '35', '删除', 'delete');
INSERT INTO `bypal_comm_btn` VALUES ('7', '0', '员工信息管理', 'user/user_manage.php');
INSERT INTO `bypal_comm_btn` VALUES ('8', '7', '查询', 'query');
INSERT INTO `bypal_comm_btn` VALUES ('9', '7', '新增', 'add');
INSERT INTO `bypal_comm_btn` VALUES ('10', '7', '详情', 'details');
INSERT INTO `bypal_comm_btn` VALUES ('11', '7', '编辑', 'edit');
INSERT INTO `bypal_comm_btn` VALUES ('12', '7', '删除', 'delete');
INSERT INTO `bypal_comm_btn` VALUES ('38', '0', '商户信息', 'facilitator/facilitator_info.php');
INSERT INTO `bypal_comm_btn` VALUES ('39', '38', '新增', 'add');
INSERT INTO `bypal_comm_btn` VALUES ('40', '38', '详情', 'details');
INSERT INTO `bypal_comm_btn` VALUES ('41', '38', '查询', 'query');
INSERT INTO `bypal_comm_btn` VALUES ('42', '38', '编辑', 'edit');
INSERT INTO `bypal_comm_btn` VALUES ('43', '0', '客户管理', 'customer/custcontrol.php');
INSERT INTO `bypal_comm_btn` VALUES ('44', '43', '新增', 'add');
INSERT INTO `bypal_comm_btn` VALUES ('45', '43', '查询', 'query');
INSERT INTO `bypal_comm_btn` VALUES ('48', '43', '详情', 'details');
INSERT INTO `bypal_comm_btn` VALUES ('49', '0', '借款申请管理', 'loan/loaninfo.php');
INSERT INTO `bypal_comm_btn` VALUES ('50', '0', '借款业务管理', 'loan/loanbuinesinfo.php');
INSERT INTO `bypal_comm_btn` VALUES ('51', '49', '新增', 'add');
INSERT INTO `bypal_comm_btn` VALUES ('52', '49', '查询', 'query');
INSERT INTO `bypal_comm_btn` VALUES ('53', '50', '新增', 'add');
INSERT INTO `bypal_comm_btn` VALUES ('54', '50', '查询', 'query');
INSERT INTO `bypal_comm_btn` VALUES ('55', '0', '投资管理', 'invest/invest_manage.php');
INSERT INTO `bypal_comm_btn` VALUES ('56', '55', '查询', 'query');
INSERT INTO `bypal_comm_btn` VALUES ('57', '55', '新增', 'add');
INSERT INTO `bypal_comm_btn` VALUES ('58', '49', '详情', 'details');
INSERT INTO `bypal_comm_btn` VALUES ('59', '49', '编辑', 'edit');
INSERT INTO `bypal_comm_btn` VALUES ('60', '49', '锁定', 'lock');
INSERT INTO `bypal_comm_btn` VALUES ('61', '50', '详情', 'details');
INSERT INTO `bypal_comm_btn` VALUES ('64', '55', '详情', 'details');
INSERT INTO `bypal_comm_btn` VALUES ('65', '55', '编辑', 'edit');
INSERT INTO `bypal_comm_btn` VALUES ('66', '0', '审核材料', 'materal/materalcheck.php');
INSERT INTO `bypal_comm_btn` VALUES ('67', '66', '新增', 'add');
INSERT INTO `bypal_comm_btn` VALUES ('68', '66', '查询', 'query');
INSERT INTO `bypal_comm_btn` VALUES ('69', '0', '收益管理', 'invest/profit_manage.php');
INSERT INTO `bypal_comm_btn` VALUES ('70', '69', '查询', 'query');
INSERT INTO `bypal_comm_btn` VALUES ('71', '69', '锁定', 'lock');
INSERT INTO `bypal_comm_btn` VALUES ('72', '69', '编辑', 'edit');
INSERT INTO `bypal_comm_btn` VALUES ('73', '0', '已发短信', 'systemlog/querymessage.php');
INSERT INTO `bypal_comm_btn` VALUES ('74', '73', '查询', 'query');
INSERT INTO `bypal_comm_btn` VALUES ('75', '0', '借款查询管理', 'loan/loanstatistics.php');
INSERT INTO `bypal_comm_btn` VALUES ('76', '75', '查询', 'query');
INSERT INTO `bypal_comm_btn` VALUES ('77', '75', '详情', 'details');

-- ----------------------------
-- Table structure for bypal_comm_depart
-- ----------------------------
DROP TABLE IF EXISTS `bypal_comm_depart`;
CREATE TABLE `bypal_comm_depart` (
  `dep_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `dep_name` varchar(50) NOT NULL COMMENT '部门名称',
  `dep_org` int(11) NOT NULL COMMENT '部门所属组织',
  `dep_code` int(11) NOT NULL,
  PRIMARY KEY (`dep_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='部门模块表';

-- ----------------------------
-- Records of bypal_comm_depart
-- ----------------------------
INSERT INTO `bypal_comm_depart` VALUES ('2', '运营部', '1', '2');
INSERT INTO `bypal_comm_depart` VALUES ('3', '技术部', '1', '12345');
INSERT INTO `bypal_comm_depart` VALUES ('4', '销售部', '1', '123456');
INSERT INTO `bypal_comm_depart` VALUES ('5', '管理委员会', '1', '1');
INSERT INTO `bypal_comm_depart` VALUES ('7', '财务部', '1', '3');
INSERT INTO `bypal_comm_depart` VALUES ('8', '风控部', '1', '4');

-- ----------------------------
-- Table structure for bypal_comm_module
-- ----------------------------
DROP TABLE IF EXISTS `bypal_comm_module`;
CREATE TABLE `bypal_comm_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '模块ID',
  `module_pid` int(11) NOT NULL COMMENT '模块父级ID',
  `module_name` varchar(255) NOT NULL COMMENT '模块名称',
  `module_url` varchar(255) NOT NULL COMMENT '模块连接',
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='模块表';

-- ----------------------------
-- Records of bypal_comm_module
-- ----------------------------
INSERT INTO `bypal_comm_module` VALUES ('1', '0', '系统管理', '');
INSERT INTO `bypal_comm_module` VALUES ('2', '1', '组织管理', 'organization/org_manage.php');
INSERT INTO `bypal_comm_module` VALUES ('3', '1', '部门管理', 'depart/depart_manage.php');
INSERT INTO `bypal_comm_module` VALUES ('4', '1', '员工信息管理', 'user/user_manage.php');
INSERT INTO `bypal_comm_module` VALUES ('5', '1', '权限信息管理', 'permission/permission_manage.php');
INSERT INTO `bypal_comm_module` VALUES ('6', '1', '利率维护', 'system/rate.php');
INSERT INTO `bypal_comm_module` VALUES ('7', '1', '关键字段维护', 'system/system_keyfield.php');
INSERT INTO `bypal_comm_module` VALUES ('8', '0', '客户模块', '');
INSERT INTO `bypal_comm_module` VALUES ('9', '0', '借款管理', '');
INSERT INTO `bypal_comm_module` VALUES ('10', '0', '投资管理', '');
INSERT INTO `bypal_comm_module` VALUES ('11', '0', '商户模块', '');
INSERT INTO `bypal_comm_module` VALUES ('12', '0', '材料审核管理', '');
INSERT INTO `bypal_comm_module` VALUES ('13', '0', '报文管理', '');
INSERT INTO `bypal_comm_module` VALUES ('41', '40', '短信发送', 'systemlog/querymessage.php');
INSERT INTO `bypal_comm_module` VALUES ('15', '10', '投资管理', 'invest/invest_manage.php');
INSERT INTO `bypal_comm_module` VALUES ('16', '11', '商户信息', 'facilitator/facilitator_info.php');
INSERT INTO `bypal_comm_module` VALUES ('17', '8', '客户管理', 'customer/custcontrol.php');
INSERT INTO `bypal_comm_module` VALUES ('18', '20', '基本信息', 'facilitator/facilitator_edit.php');
INSERT INTO `bypal_comm_module` VALUES ('19', '12', '材料审核', 'materal/materalcheck.php');
INSERT INTO `bypal_comm_module` VALUES ('20', '1000000', '商户系统', '');
INSERT INTO `bypal_comm_module` VALUES ('21', '9', '借款申请管理', 'loan/loaninfo.php');
INSERT INTO `bypal_comm_module` VALUES ('37', '20', '交易管理', 'facilitatoruser/facilitatoruser_trade.php');
INSERT INTO `bypal_comm_module` VALUES ('23', '200', '服务管理', 'facilitatoruser/facilitatoruser_service.php');
INSERT INTO `bypal_comm_module` VALUES ('27', '13', '个人信息报文', 'message/message_personinfo.php');
INSERT INTO `bypal_comm_module` VALUES ('28', '13', '货款申请报文', 'message/message_loanapply.php');
INSERT INTO `bypal_comm_module` VALUES ('29', '13', '货款业务报文', 'message/message_loanbusiness.php');
INSERT INTO `bypal_comm_module` VALUES ('30', '13', '特殊交易报文', 'message/message_specialtrade.php');
INSERT INTO `bypal_comm_module` VALUES ('35', '11', '交易管理', 'facilitatoruser/facilitatoruser_trade.php');
INSERT INTO `bypal_comm_module` VALUES ('36', '9', '借款业务管理', 'loan/loanbuinesinfo.php');
INSERT INTO `bypal_comm_module` VALUES ('22', '20', '工号管理', 'facilitatoruser/facilitatoruser_person.php');
INSERT INTO `bypal_comm_module` VALUES ('38', '9', '借款取消管理', 'loan/loancancle.php');
INSERT INTO `bypal_comm_module` VALUES ('39', '10', '收益管理', 'invest/profit_manage.php');
INSERT INTO `bypal_comm_module` VALUES ('40', '0', '已发短信', '');
INSERT INTO `bypal_comm_module` VALUES ('43', '9', '借款预还查询', 'loan/loanstatistics.php');
INSERT INTO `bypal_comm_module` VALUES ('44', '1', '意见反馈', 'system/feedback.php');

-- ----------------------------
-- Table structure for bypal_comm_organization
-- ----------------------------
DROP TABLE IF EXISTS `bypal_comm_organization`;
CREATE TABLE `bypal_comm_organization` (
  `org_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组织ID',
  `org_pid` int(11) NOT NULL COMMENT '父级组织ID',
  `org_name` varchar(50) NOT NULL COMMENT '组织名称',
  `org_city` int(11) NOT NULL COMMENT '组织所属城市',
  `org_addr` varchar(100) NOT NULL COMMENT '组织地址',
  `org_phone` varchar(50) CHARACTER SET ucs2 NOT NULL COMMENT '组织联系电话',
  `org_code` varchar(32) NOT NULL COMMENT '组织编码',
  PRIMARY KEY (`org_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='组织模块表';

-- ----------------------------
-- Records of bypal_comm_organization
-- ----------------------------
INSERT INTO `bypal_comm_organization` VALUES ('1', '0', '百朋集团', '2', '长沙', '13554755775', '00000001');

-- ----------------------------
-- Table structure for bypal_comm_permission
-- ----------------------------
DROP TABLE IF EXISTS `bypal_comm_permission`;
CREATE TABLE `bypal_comm_permission` (
  `per_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `per_role` int(11) NOT NULL COMMENT '权限角色',
  `per_intro` varchar(255) DEFAULT NULL COMMENT '权限描述',
  `per_modules` varchar(255) NOT NULL COMMENT '权限模块',
  `per_buttons` varchar(255) DEFAULT NULL COMMENT '权限匹配按钮',
  `per_org` int(11) NOT NULL COMMENT '权限对应的组织',
  PRIMARY KEY (`per_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of bypal_comm_permission
-- ----------------------------
INSERT INTO `bypal_comm_permission` VALUES ('1', '1', '超级管理员', '2,3,4,5,6,7,17,21,36,38,15,39,16,35,19,27,28,29,30,41,1,40,10,11,8,12,9,13,43,44', '2,3,4,5,6,16,17,18,19,20,21,22,24,25,26,27,28,30,31,32,33,34,36,37,8,9,10,11,12,39,40,41,42,44,45,48,52,58,59,60,53,54,61,56,57,64,65,67,68,70,71,72,74,1,15,23,29,35,7,38,43,49,50,55,66,69,73,75,76,77', '1');
INSERT INTO `bypal_comm_permission` VALUES ('9', '2', '商务拓展部人员权限', '17,21,15,19,18,22,37,10,8,20,12,9', '39,40,41,42,38', '1');
INSERT INTO `bypal_comm_permission` VALUES ('8', '3', '普通商户', '18,22,23,20,37', '2,1', '100');
INSERT INTO `bypal_comm_permission` VALUES ('2', '4', '商户员工', '20,37', '2,1', '100');

-- ----------------------------
-- Table structure for bypal_comm_region
-- ----------------------------
DROP TABLE IF EXISTS `bypal_comm_region`;
CREATE TABLE `bypal_comm_region` (
  `region_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_name` varchar(120) NOT NULL DEFAULT '',
  `region_type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`region_id`),
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `region_type` (`region_type`) USING BTREE,
  KEY `agency_id` (`agency_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3409 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_comm_region
-- ----------------------------
INSERT INTO `bypal_comm_region` VALUES ('1', '0', '中国', '0', '0');
INSERT INTO `bypal_comm_region` VALUES ('2', '1', '北京', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('3', '1', '安徽', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('4', '1', '福建', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('5', '1', '甘肃', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('6', '1', '广东', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('7', '1', '广西', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('8', '1', '贵州', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('9', '1', '海南', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('10', '1', '河北', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('11', '1', '河南', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('12', '1', '黑龙江', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('13', '1', '湖北', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('14', '1', '湖南', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('15', '1', '吉林', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('16', '1', '江苏', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('17', '1', '江西', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('18', '1', '辽宁', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('19', '1', '内蒙古', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('20', '1', '宁夏', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('21', '1', '青海', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('22', '1', '山东', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('23', '1', '山西', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('24', '1', '陕西', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('25', '1', '上海', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('26', '1', '四川', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('27', '1', '天津', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('28', '1', '西藏', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('29', '1', '新疆', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('30', '1', '云南', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('31', '1', '浙江', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('32', '1', '重庆', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('33', '1', '香港', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('34', '1', '澳门', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('35', '1', '台湾', '1', '0');
INSERT INTO `bypal_comm_region` VALUES ('36', '3', '安庆', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('37', '3', '蚌埠', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('38', '3', '巢湖', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('39', '3', '池州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('40', '3', '滁州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('41', '3', '阜阳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('42', '3', '淮北', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('43', '3', '淮南', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('44', '3', '黄山', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('45', '3', '六安', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('46', '3', '马鞍山', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('47', '3', '宿州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('48', '3', '铜陵', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('49', '3', '芜湖', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('50', '3', '宣城', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('51', '3', '亳州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('52', '2', '北京', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('53', '4', '福州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('54', '4', '龙岩', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('55', '4', '南平', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('56', '4', '宁德', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('57', '4', '莆田', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('58', '4', '泉州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('59', '4', '三明', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('60', '4', '厦门', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('61', '4', '漳州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('62', '5', '兰州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('63', '5', '白银', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('64', '5', '定西', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('65', '5', '甘南', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('66', '5', '嘉峪关', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('67', '5', '金昌', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('68', '5', '酒泉', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('69', '5', '临夏', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('70', '5', '陇南', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('71', '5', '平凉', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('72', '5', '庆阳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('73', '5', '天水', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('74', '5', '武威', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('75', '5', '张掖', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('76', '6', '广州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('77', '6', '深圳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('78', '6', '潮州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('79', '6', '东莞', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('80', '6', '佛山', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('81', '6', '河源', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('82', '6', '惠州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('83', '6', '江门', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('84', '6', '揭阳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('85', '6', '茂名', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('86', '6', '梅州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('87', '6', '清远', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('88', '6', '汕头', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('89', '6', '汕尾', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('90', '6', '韶关', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('91', '6', '阳江', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('92', '6', '云浮', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('93', '6', '湛江', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('94', '6', '肇庆', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('95', '6', '中山', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('96', '6', '珠海', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('97', '7', '南宁', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('98', '7', '桂林', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('99', '7', '百色', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('100', '7', '北海', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('101', '7', '崇左', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('102', '7', '防城港', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('103', '7', '贵港', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('104', '7', '河池', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('105', '7', '贺州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('106', '7', '来宾', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('107', '7', '柳州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('108', '7', '钦州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('109', '7', '梧州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('110', '7', '玉林', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('111', '8', '贵阳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('112', '8', '安顺', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('113', '8', '毕节', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('114', '8', '六盘水', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('115', '8', '黔东南', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('116', '8', '黔南', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('117', '8', '黔西南', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('118', '8', '铜仁', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('119', '8', '遵义', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('120', '9', '海口', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('121', '9', '三亚', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('122', '9', '白沙', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('123', '9', '保亭', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('124', '9', '昌江', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('125', '9', '澄迈县', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('126', '9', '定安县', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('127', '9', '东方', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('128', '9', '乐东', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('129', '9', '临高县', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('130', '9', '陵水', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('131', '9', '琼海', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('132', '9', '琼中', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('133', '9', '屯昌县', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('134', '9', '万宁', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('135', '9', '文昌', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('136', '9', '五指山', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('137', '9', '儋州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('138', '10', '石家庄', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('139', '10', '保定', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('140', '10', '沧州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('141', '10', '承德', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('142', '10', '邯郸', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('143', '10', '衡水', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('144', '10', '廊坊', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('145', '10', '秦皇岛', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('146', '10', '唐山', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('147', '10', '邢台', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('148', '10', '张家口', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('149', '11', '郑州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('150', '11', '洛阳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('151', '11', '开封', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('152', '11', '安阳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('153', '11', '鹤壁', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('154', '11', '济源', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('155', '11', '焦作', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('156', '11', '南阳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('157', '11', '平顶山', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('158', '11', '三门峡', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('159', '11', '商丘', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('160', '11', '新乡', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('161', '11', '信阳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('162', '11', '许昌', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('163', '11', '周口', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('164', '11', '驻马店', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('165', '11', '漯河', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('166', '11', '濮阳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('167', '12', '哈尔滨', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('168', '12', '大庆', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('169', '12', '大兴安岭', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('170', '12', '鹤岗', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('171', '12', '黑河', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('172', '12', '鸡西', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('173', '12', '佳木斯', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('174', '12', '牡丹江', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('175', '12', '七台河', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('176', '12', '齐齐哈尔', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('177', '12', '双鸭山', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('178', '12', '绥化', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('179', '12', '伊春', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('180', '13', '武汉', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('181', '13', '仙桃', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('182', '13', '鄂州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('183', '13', '黄冈', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('184', '13', '黄石', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('185', '13', '荆门', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('186', '13', '荆州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('187', '13', '潜江', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('188', '13', '神农架林区', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('189', '13', '十堰', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('190', '13', '随州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('191', '13', '天门', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('192', '13', '咸宁', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('193', '13', '襄樊', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('194', '13', '孝感', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('195', '13', '宜昌', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('196', '13', '恩施', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('197', '14', '长沙', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('198', '14', '张家界', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('199', '14', '常德', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('200', '14', '郴州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('201', '14', '衡阳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('202', '14', '怀化', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('203', '14', '娄底', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('204', '14', '邵阳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('205', '14', '湘潭', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('206', '14', '湘西', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('207', '14', '益阳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('208', '14', '永州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('209', '14', '岳阳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('210', '14', '株洲', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('211', '15', '长春', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('212', '15', '吉林', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('213', '15', '白城', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('214', '15', '白山', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('215', '15', '辽源', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('216', '15', '四平', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('217', '15', '松原', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('218', '15', '通化', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('219', '15', '延边', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('220', '16', '南京', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('221', '16', '苏州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('222', '16', '无锡', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('223', '16', '常州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('224', '16', '淮安', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('225', '16', '连云港', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('226', '16', '南通', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('227', '16', '宿迁', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('228', '16', '泰州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('229', '16', '徐州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('230', '16', '盐城', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('231', '16', '扬州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('232', '16', '镇江', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('233', '17', '南昌', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('234', '17', '抚州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('235', '17', '赣州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('236', '17', '吉安', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('237', '17', '景德镇', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('238', '17', '九江', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('239', '17', '萍乡', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('240', '17', '上饶', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('241', '17', '新余', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('242', '17', '宜春', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('243', '17', '鹰潭', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('244', '18', '沈阳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('245', '18', '大连', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('246', '18', '鞍山', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('247', '18', '本溪', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('248', '18', '朝阳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('249', '18', '丹东', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('250', '18', '抚顺', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('251', '18', '阜新', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('252', '18', '葫芦岛', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('253', '18', '锦州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('254', '18', '辽阳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('255', '18', '盘锦', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('256', '18', '铁岭', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('257', '18', '营口', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('258', '19', '呼和浩特', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('259', '19', '阿拉善盟', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('260', '19', '巴彦淖尔盟', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('261', '19', '包头', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('262', '19', '赤峰', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('263', '19', '鄂尔多斯', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('264', '19', '呼伦贝尔', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('265', '19', '通辽', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('266', '19', '乌海', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('267', '19', '乌兰察布市', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('268', '19', '锡林郭勒盟', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('269', '19', '兴安盟', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('270', '20', '银川', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('271', '20', '固原', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('272', '20', '石嘴山', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('273', '20', '吴忠', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('274', '20', '中卫', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('275', '21', '西宁', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('276', '21', '果洛', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('277', '21', '海北', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('278', '21', '海东', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('279', '21', '海南', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('280', '21', '海西', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('281', '21', '黄南', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('282', '21', '玉树', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('283', '22', '济南', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('284', '22', '青岛', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('285', '22', '滨州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('286', '22', '德州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('287', '22', '东营', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('288', '22', '菏泽', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('289', '22', '济宁', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('290', '22', '莱芜', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('291', '22', '聊城', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('292', '22', '临沂', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('293', '22', '日照', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('294', '22', '泰安', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('295', '22', '威海', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('296', '22', '潍坊', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('297', '22', '烟台', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('298', '22', '枣庄', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('299', '22', '淄博', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('300', '23', '太原', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('301', '23', '长治', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('302', '23', '大同', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('303', '23', '晋城', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('304', '23', '晋中', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('305', '23', '临汾', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('306', '23', '吕梁', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('307', '23', '朔州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('308', '23', '忻州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('309', '23', '阳泉', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('310', '23', '运城', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('311', '24', '西安', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('312', '24', '安康', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('313', '24', '宝鸡', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('314', '24', '汉中', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('315', '24', '商洛', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('316', '24', '铜川', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('317', '24', '渭南', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('318', '24', '咸阳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('319', '24', '延安', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('320', '24', '榆林', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('321', '25', '上海', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('322', '26', '成都', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('323', '26', '绵阳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('324', '26', '阿坝', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('325', '26', '巴中', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('326', '26', '达州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('327', '26', '德阳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('328', '26', '甘孜', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('329', '26', '广安', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('330', '26', '广元', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('331', '26', '乐山', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('332', '26', '凉山', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('333', '26', '眉山', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('334', '26', '南充', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('335', '26', '内江', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('336', '26', '攀枝花', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('337', '26', '遂宁', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('338', '26', '雅安', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('339', '26', '宜宾', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('340', '26', '资阳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('341', '26', '自贡', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('342', '26', '泸州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('343', '27', '天津', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('344', '28', '拉萨', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('345', '28', '阿里', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('346', '28', '昌都', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('347', '28', '林芝', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('348', '28', '那曲', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('349', '28', '日喀则', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('350', '28', '山南', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('351', '29', '乌鲁木齐', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('352', '29', '阿克苏', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('353', '29', '阿拉尔', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('354', '29', '巴音郭楞', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('355', '29', '博尔塔拉', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('356', '29', '昌吉', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('357', '29', '哈密', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('358', '29', '和田', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('359', '29', '喀什', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('360', '29', '克拉玛依', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('361', '29', '克孜勒苏', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('362', '29', '石河子', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('363', '29', '图木舒克', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('364', '29', '吐鲁番', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('365', '29', '五家渠', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('366', '29', '伊犁', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('367', '30', '昆明', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('368', '30', '怒江', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('369', '30', '普洱', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('370', '30', '丽江', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('371', '30', '保山', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('372', '30', '楚雄', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('373', '30', '大理', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('374', '30', '德宏', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('375', '30', '迪庆', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('376', '30', '红河', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('377', '30', '临沧', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('378', '30', '曲靖', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('379', '30', '文山', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('380', '30', '西双版纳', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('381', '30', '玉溪', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('382', '30', '昭通', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('383', '31', '杭州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('384', '31', '湖州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('385', '31', '嘉兴', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('386', '31', '金华', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('387', '31', '丽水', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('388', '31', '宁波', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('389', '31', '绍兴', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('390', '31', '台州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('391', '31', '温州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('392', '31', '舟山', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('393', '31', '衢州', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('394', '32', '重庆', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('395', '33', '香港', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('396', '34', '澳门', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('397', '35', '台湾', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('398', '36', '迎江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('399', '36', '大观区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('400', '36', '宜秀区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('401', '36', '桐城市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('402', '36', '怀宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('403', '36', '枞阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('404', '36', '潜山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('405', '36', '太湖县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('406', '36', '宿松县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('407', '36', '望江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('408', '36', '岳西县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('409', '37', '中市区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('410', '37', '东市区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('411', '37', '西市区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('412', '37', '郊区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('413', '37', '怀远县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('414', '37', '五河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('415', '37', '固镇县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('416', '38', '居巢区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('417', '38', '庐江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('418', '38', '无为县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('419', '38', '含山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('420', '38', '和县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('421', '39', '贵池区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('422', '39', '东至县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('423', '39', '石台县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('424', '39', '青阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('425', '40', '琅琊区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('426', '40', '南谯区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('427', '40', '天长市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('428', '40', '明光市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('429', '40', '来安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('430', '40', '全椒县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('431', '40', '定远县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('432', '40', '凤阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('433', '41', '蚌山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('434', '41', '龙子湖区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('435', '41', '禹会区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('436', '41', '淮上区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('437', '41', '颍州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('438', '41', '颍东区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('439', '41', '颍泉区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('440', '41', '界首市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('441', '41', '临泉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('442', '41', '太和县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('443', '41', '阜南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('444', '41', '颖上县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('445', '42', '相山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('446', '42', '杜集区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('447', '42', '烈山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('448', '42', '濉溪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('449', '43', '田家庵区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('450', '43', '大通区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('451', '43', '谢家集区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('452', '43', '八公山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('453', '43', '潘集区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('454', '43', '凤台县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('455', '44', '屯溪区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('456', '44', '黄山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('457', '44', '徽州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('458', '44', '歙县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('459', '44', '休宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('460', '44', '黟县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('461', '44', '祁门县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('462', '45', '金安区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('463', '45', '裕安区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('464', '45', '寿县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('465', '45', '霍邱县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('466', '45', '舒城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('467', '45', '金寨县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('468', '45', '霍山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('469', '46', '雨山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('470', '46', '花山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('471', '46', '金家庄区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('472', '46', '当涂县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('473', '47', '埇桥区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('474', '47', '砀山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('475', '47', '萧县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('476', '47', '灵璧县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('477', '47', '泗县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('478', '48', '铜官山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('479', '48', '狮子山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('480', '48', '郊区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('481', '48', '铜陵县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('482', '49', '镜湖区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('483', '49', '弋江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('484', '49', '鸠江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('485', '49', '三山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('486', '49', '芜湖县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('487', '49', '繁昌县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('488', '49', '南陵县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('489', '50', '宣州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('490', '50', '宁国市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('491', '50', '郎溪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('492', '50', '广德县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('493', '50', '泾县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('494', '50', '绩溪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('495', '50', '旌德县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('496', '51', '涡阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('497', '51', '蒙城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('498', '51', '利辛县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('499', '51', '谯城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('500', '52', '东城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('501', '52', '西城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('502', '52', '海淀区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('503', '52', '朝阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('504', '52', '崇文区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('505', '52', '宣武区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('506', '52', '丰台区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('507', '52', '石景山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('508', '52', '房山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('509', '52', '门头沟区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('510', '52', '通州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('511', '52', '顺义区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('512', '52', '昌平区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('513', '52', '怀柔区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('514', '52', '平谷区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('515', '52', '大兴区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('516', '52', '密云县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('517', '52', '延庆县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('518', '53', '鼓楼区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('519', '53', '台江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('520', '53', '仓山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('521', '53', '马尾区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('522', '53', '晋安区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('523', '53', '福清市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('524', '53', '长乐市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('525', '53', '闽侯县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('526', '53', '连江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('527', '53', '罗源县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('528', '53', '闽清县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('529', '53', '永泰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('530', '53', '平潭县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('531', '54', '新罗区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('532', '54', '漳平市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('533', '54', '长汀县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('534', '54', '永定县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('535', '54', '上杭县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('536', '54', '武平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('537', '54', '连城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('538', '55', '延平区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('539', '55', '邵武市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('540', '55', '武夷山市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('541', '55', '建瓯市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('542', '55', '建阳市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('543', '55', '顺昌县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('544', '55', '浦城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('545', '55', '光泽县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('546', '55', '松溪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('547', '55', '政和县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('548', '56', '蕉城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('549', '56', '福安市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('550', '56', '福鼎市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('551', '56', '霞浦县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('552', '56', '古田县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('553', '56', '屏南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('554', '56', '寿宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('555', '56', '周宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('556', '56', '柘荣县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('557', '57', '城厢区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('558', '57', '涵江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('559', '57', '荔城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('560', '57', '秀屿区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('561', '57', '仙游县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('562', '58', '鲤城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('563', '58', '丰泽区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('564', '58', '洛江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('565', '58', '清濛开发区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('566', '58', '泉港区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('567', '58', '石狮市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('568', '58', '晋江市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('569', '58', '南安市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('570', '58', '惠安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('571', '58', '安溪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('572', '58', '永春县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('573', '58', '德化县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('574', '58', '金门县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('575', '59', '梅列区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('576', '59', '三元区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('577', '59', '永安市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('578', '59', '明溪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('579', '59', '清流县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('580', '59', '宁化县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('581', '59', '大田县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('582', '59', '尤溪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('583', '59', '沙县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('584', '59', '将乐县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('585', '59', '泰宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('586', '59', '建宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('587', '60', '思明区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('588', '60', '海沧区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('589', '60', '湖里区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('590', '60', '集美区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('591', '60', '同安区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('592', '60', '翔安区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('593', '61', '芗城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('594', '61', '龙文区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('595', '61', '龙海市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('596', '61', '云霄县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('597', '61', '漳浦县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('598', '61', '诏安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('599', '61', '长泰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('600', '61', '东山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('601', '61', '南靖县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('602', '61', '平和县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('603', '61', '华安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('604', '62', '皋兰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('605', '62', '城关区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('606', '62', '七里河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('607', '62', '西固区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('608', '62', '安宁区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('609', '62', '红古区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('610', '62', '永登县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('611', '62', '榆中县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('612', '63', '白银区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('613', '63', '平川区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('614', '63', '会宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('615', '63', '景泰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('616', '63', '靖远县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('617', '64', '临洮县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('618', '64', '陇西县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('619', '64', '通渭县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('620', '64', '渭源县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('621', '64', '漳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('622', '64', '岷县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('623', '64', '安定区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('624', '64', '安定区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('625', '65', '合作市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('626', '65', '临潭县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('627', '65', '卓尼县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('628', '65', '舟曲县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('629', '65', '迭部县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('630', '65', '玛曲县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('631', '65', '碌曲县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('632', '65', '夏河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('633', '66', '嘉峪关市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('634', '67', '金川区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('635', '67', '永昌县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('636', '68', '肃州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('637', '68', '玉门市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('638', '68', '敦煌市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('639', '68', '金塔县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('640', '68', '瓜州县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('641', '68', '肃北', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('642', '68', '阿克塞', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('643', '69', '临夏市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('644', '69', '临夏县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('645', '69', '康乐县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('646', '69', '永靖县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('647', '69', '广河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('648', '69', '和政县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('649', '69', '东乡族自治县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('650', '69', '积石山', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('651', '70', '成县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('652', '70', '徽县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('653', '70', '康县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('654', '70', '礼县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('655', '70', '两当县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('656', '70', '文县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('657', '70', '西和县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('658', '70', '宕昌县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('659', '70', '武都区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('660', '71', '崇信县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('661', '71', '华亭县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('662', '71', '静宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('663', '71', '灵台县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('664', '71', '崆峒区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('665', '71', '庄浪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('666', '71', '泾川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('667', '72', '合水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('668', '72', '华池县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('669', '72', '环县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('670', '72', '宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('671', '72', '庆城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('672', '72', '西峰区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('673', '72', '镇原县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('674', '72', '正宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('675', '73', '甘谷县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('676', '73', '秦安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('677', '73', '清水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('678', '73', '秦州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('679', '73', '麦积区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('680', '73', '武山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('681', '73', '张家川', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('682', '74', '古浪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('683', '74', '民勤县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('684', '74', '天祝', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('685', '74', '凉州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('686', '75', '高台县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('687', '75', '临泽县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('688', '75', '民乐县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('689', '75', '山丹县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('690', '75', '肃南', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('691', '75', '甘州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('692', '76', '从化市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('693', '76', '天河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('694', '76', '东山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('695', '76', '白云区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('696', '76', '海珠区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('697', '76', '荔湾区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('698', '76', '越秀区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('699', '76', '黄埔区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('700', '76', '番禺区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('701', '76', '花都区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('702', '76', '增城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('703', '76', '从化区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('704', '76', '市郊', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('705', '77', '福田区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('706', '77', '罗湖区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('707', '77', '南山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('708', '77', '宝安区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('709', '77', '龙岗区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('710', '77', '盐田区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('711', '78', '湘桥区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('712', '78', '潮安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('713', '78', '饶平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('714', '79', '南城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('715', '79', '东城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('716', '79', '万江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('717', '79', '莞城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('718', '79', '石龙镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('719', '79', '虎门镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('720', '79', '麻涌镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('721', '79', '道滘镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('722', '79', '石碣镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('723', '79', '沙田镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('724', '79', '望牛墩镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('725', '79', '洪梅镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('726', '79', '茶山镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('727', '79', '寮步镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('728', '79', '大岭山镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('729', '79', '大朗镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('730', '79', '黄江镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('731', '79', '樟木头', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('732', '79', '凤岗镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('733', '79', '塘厦镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('734', '79', '谢岗镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('735', '79', '厚街镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('736', '79', '清溪镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('737', '79', '常平镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('738', '79', '桥头镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('739', '79', '横沥镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('740', '79', '东坑镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('741', '79', '企石镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('742', '79', '石排镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('743', '79', '长安镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('744', '79', '中堂镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('745', '79', '高埗镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('746', '80', '禅城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('747', '80', '南海区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('748', '80', '顺德区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('749', '80', '三水区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('750', '80', '高明区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('751', '81', '东源县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('752', '81', '和平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('753', '81', '源城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('754', '81', '连平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('755', '81', '龙川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('756', '81', '紫金县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('757', '82', '惠阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('758', '82', '惠城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('759', '82', '大亚湾', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('760', '82', '博罗县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('761', '82', '惠东县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('762', '82', '龙门县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('763', '83', '江海区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('764', '83', '蓬江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('765', '83', '新会区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('766', '83', '台山市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('767', '83', '开平市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('768', '83', '鹤山市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('769', '83', '恩平市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('770', '84', '榕城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('771', '84', '普宁市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('772', '84', '揭东县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('773', '84', '揭西县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('774', '84', '惠来县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('775', '85', '茂南区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('776', '85', '茂港区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('777', '85', '高州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('778', '85', '化州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('779', '85', '信宜市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('780', '85', '电白县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('781', '86', '梅县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('782', '86', '梅江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('783', '86', '兴宁市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('784', '86', '大埔县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('785', '86', '丰顺县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('786', '86', '五华县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('787', '86', '平远县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('788', '86', '蕉岭县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('789', '87', '清城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('790', '87', '英德市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('791', '87', '连州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('792', '87', '佛冈县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('793', '87', '阳山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('794', '87', '清新县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('795', '87', '连山', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('796', '87', '连南', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('797', '88', '南澳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('798', '88', '潮阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('799', '88', '澄海区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('800', '88', '龙湖区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('801', '88', '金平区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('802', '88', '濠江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('803', '88', '潮南区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('804', '89', '城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('805', '89', '陆丰市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('806', '89', '海丰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('807', '89', '陆河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('808', '90', '曲江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('809', '90', '浈江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('810', '90', '武江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('811', '90', '曲江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('812', '90', '乐昌市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('813', '90', '南雄市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('814', '90', '始兴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('815', '90', '仁化县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('816', '90', '翁源县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('817', '90', '新丰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('818', '90', '乳源', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('819', '91', '江城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('820', '91', '阳春市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('821', '91', '阳西县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('822', '91', '阳东县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('823', '92', '云城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('824', '92', '罗定市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('825', '92', '新兴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('826', '92', '郁南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('827', '92', '云安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('828', '93', '赤坎区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('829', '93', '霞山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('830', '93', '坡头区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('831', '93', '麻章区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('832', '93', '廉江市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('833', '93', '雷州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('834', '93', '吴川市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('835', '93', '遂溪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('836', '93', '徐闻县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('837', '94', '肇庆市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('838', '94', '高要市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('839', '94', '四会市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('840', '94', '广宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('841', '94', '怀集县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('842', '94', '封开县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('843', '94', '德庆县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('844', '95', '石岐街道', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('845', '95', '东区街道', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('846', '95', '西区街道', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('847', '95', '环城街道', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('848', '95', '中山港街道', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('849', '95', '五桂山街道', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('850', '96', '香洲区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('851', '96', '斗门区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('852', '96', '金湾区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('853', '97', '邕宁区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('854', '97', '青秀区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('855', '97', '兴宁区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('856', '97', '良庆区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('857', '97', '西乡塘区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('858', '97', '江南区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('859', '97', '武鸣县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('860', '97', '隆安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('861', '97', '马山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('862', '97', '上林县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('863', '97', '宾阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('864', '97', '横县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('865', '98', '秀峰区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('866', '98', '叠彩区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('867', '98', '象山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('868', '98', '七星区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('869', '98', '雁山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('870', '98', '阳朔县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('871', '98', '临桂县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('872', '98', '灵川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('873', '98', '全州县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('874', '98', '平乐县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('875', '98', '兴安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('876', '98', '灌阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('877', '98', '荔浦县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('878', '98', '资源县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('879', '98', '永福县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('880', '98', '龙胜', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('881', '98', '恭城', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('882', '99', '右江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('883', '99', '凌云县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('884', '99', '平果县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('885', '99', '西林县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('886', '99', '乐业县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('887', '99', '德保县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('888', '99', '田林县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('889', '99', '田阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('890', '99', '靖西县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('891', '99', '田东县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('892', '99', '那坡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('893', '99', '隆林', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('894', '100', '海城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('895', '100', '银海区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('896', '100', '铁山港区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('897', '100', '合浦县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('898', '101', '江州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('899', '101', '凭祥市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('900', '101', '宁明县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('901', '101', '扶绥县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('902', '101', '龙州县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('903', '101', '大新县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('904', '101', '天等县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('905', '102', '港口区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('906', '102', '防城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('907', '102', '东兴市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('908', '102', '上思县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('909', '103', '港北区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('910', '103', '港南区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('911', '103', '覃塘区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('912', '103', '桂平市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('913', '103', '平南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('914', '104', '金城江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('915', '104', '宜州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('916', '104', '天峨县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('917', '104', '凤山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('918', '104', '南丹县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('919', '104', '东兰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('920', '104', '都安', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('921', '104', '罗城', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('922', '104', '巴马', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('923', '104', '环江', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('924', '104', '大化', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('925', '105', '八步区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('926', '105', '钟山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('927', '105', '昭平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('928', '105', '富川', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('929', '106', '兴宾区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('930', '106', '合山市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('931', '106', '象州县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('932', '106', '武宣县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('933', '106', '忻城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('934', '106', '金秀', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('935', '107', '城中区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('936', '107', '鱼峰区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('937', '107', '柳北区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('938', '107', '柳南区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('939', '107', '柳江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('940', '107', '柳城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('941', '107', '鹿寨县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('942', '107', '融安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('943', '107', '融水', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('944', '107', '三江', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('945', '108', '钦南区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('946', '108', '钦北区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('947', '108', '灵山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('948', '108', '浦北县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('949', '109', '万秀区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('950', '109', '蝶山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('951', '109', '长洲区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('952', '109', '岑溪市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('953', '109', '苍梧县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('954', '109', '藤县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('955', '109', '蒙山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('956', '110', '玉州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('957', '110', '北流市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('958', '110', '容县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('959', '110', '陆川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('960', '110', '博白县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('961', '110', '兴业县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('962', '111', '南明区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('963', '111', '云岩区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('964', '111', '花溪区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('965', '111', '乌当区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('966', '111', '白云区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('967', '111', '小河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('968', '111', '金阳新区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('969', '111', '新天园区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('970', '111', '清镇市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('971', '111', '开阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('972', '111', '修文县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('973', '111', '息烽县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('974', '112', '西秀区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('975', '112', '关岭', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('976', '112', '镇宁', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('977', '112', '紫云', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('978', '112', '平坝县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('979', '112', '普定县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('980', '113', '毕节市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('981', '113', '大方县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('982', '113', '黔西县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('983', '113', '金沙县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('984', '113', '织金县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('985', '113', '纳雍县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('986', '113', '赫章县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('987', '113', '威宁', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('988', '114', '钟山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('989', '114', '六枝特区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('990', '114', '水城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('991', '114', '盘县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('992', '115', '凯里市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('993', '115', '黄平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('994', '115', '施秉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('995', '115', '三穗县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('996', '115', '镇远县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('997', '115', '岑巩县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('998', '115', '天柱县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('999', '115', '锦屏县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1000', '115', '剑河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1001', '115', '台江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1002', '115', '黎平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1003', '115', '榕江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1004', '115', '从江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1005', '115', '雷山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1006', '115', '麻江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1007', '115', '丹寨县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1008', '116', '都匀市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1009', '116', '福泉市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1010', '116', '荔波县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1011', '116', '贵定县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1012', '116', '瓮安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1013', '116', '独山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1014', '116', '平塘县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1015', '116', '罗甸县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1016', '116', '长顺县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1017', '116', '龙里县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1018', '116', '惠水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1019', '116', '三都', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1020', '117', '兴义市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1021', '117', '兴仁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1022', '117', '普安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1023', '117', '晴隆县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1024', '117', '贞丰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1025', '117', '望谟县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1026', '117', '册亨县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1027', '117', '安龙县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1028', '118', '铜仁市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1029', '118', '江口县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1030', '118', '石阡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1031', '118', '思南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1032', '118', '德江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1033', '118', '玉屏', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1034', '118', '印江', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1035', '118', '沿河', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1036', '118', '松桃', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1037', '118', '万山特区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1038', '119', '红花岗区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1039', '119', '务川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1040', '119', '道真县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1041', '119', '汇川区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1042', '119', '赤水市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1043', '119', '仁怀市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1044', '119', '遵义县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1045', '119', '桐梓县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1046', '119', '绥阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1047', '119', '正安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1048', '119', '凤冈县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1049', '119', '湄潭县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1050', '119', '余庆县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1051', '119', '习水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1052', '119', '道真', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1053', '119', '务川', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1054', '120', '秀英区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1055', '120', '龙华区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1056', '120', '琼山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1057', '120', '美兰区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1058', '137', '市区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1059', '137', '洋浦开发区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1060', '137', '那大镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1061', '137', '王五镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1062', '137', '雅星镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1063', '137', '大成镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1064', '137', '中和镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1065', '137', '峨蔓镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1066', '137', '南丰镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1067', '137', '白马井镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1068', '137', '兰洋镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1069', '137', '和庆镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1070', '137', '海头镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1071', '137', '排浦镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1072', '137', '东成镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1073', '137', '光村镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1074', '137', '木棠镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1075', '137', '新州镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1076', '137', '三都镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1077', '137', '其他', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1078', '138', '长安区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1079', '138', '桥东区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1080', '138', '桥西区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1081', '138', '新华区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1082', '138', '裕华区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1083', '138', '井陉矿区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1084', '138', '高新区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1085', '138', '辛集市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1086', '138', '藁城市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1087', '138', '晋州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1088', '138', '新乐市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1089', '138', '鹿泉市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1090', '138', '井陉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1091', '138', '正定县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1092', '138', '栾城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1093', '138', '行唐县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1094', '138', '灵寿县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1095', '138', '高邑县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1096', '138', '深泽县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1097', '138', '赞皇县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1098', '138', '无极县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1099', '138', '平山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1100', '138', '元氏县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1101', '138', '赵县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1102', '139', '新市区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1103', '139', '南市区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1104', '139', '北市区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1105', '139', '涿州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1106', '139', '定州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1107', '139', '安国市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1108', '139', '高碑店市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1109', '139', '满城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1110', '139', '清苑县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1111', '139', '涞水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1112', '139', '阜平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1113', '139', '徐水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1114', '139', '定兴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1115', '139', '唐县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1116', '139', '高阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1117', '139', '容城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1118', '139', '涞源县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1119', '139', '望都县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1120', '139', '安新县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1121', '139', '易县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1122', '139', '曲阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1123', '139', '蠡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1124', '139', '顺平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1125', '139', '博野县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1126', '139', '雄县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1127', '140', '运河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1128', '140', '新华区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1129', '140', '泊头市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1130', '140', '任丘市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1131', '140', '黄骅市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1132', '140', '河间市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1133', '140', '沧县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1134', '140', '青县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1135', '140', '东光县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1136', '140', '海兴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1137', '140', '盐山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1138', '140', '肃宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1139', '140', '南皮县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1140', '140', '吴桥县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1141', '140', '献县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1142', '140', '孟村', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1143', '141', '双桥区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1144', '141', '双滦区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1145', '141', '鹰手营子矿区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1146', '141', '承德县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1147', '141', '兴隆县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1148', '141', '平泉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1149', '141', '滦平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1150', '141', '隆化县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1151', '141', '丰宁', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1152', '141', '宽城', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1153', '141', '围场', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1154', '142', '从台区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1155', '142', '复兴区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1156', '142', '邯山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1157', '142', '峰峰矿区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1158', '142', '武安市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1159', '142', '邯郸县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1160', '142', '临漳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1161', '142', '成安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1162', '142', '大名县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1163', '142', '涉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1164', '142', '磁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1165', '142', '肥乡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1166', '142', '永年县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1167', '142', '邱县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1168', '142', '鸡泽县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1169', '142', '广平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1170', '142', '馆陶县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1171', '142', '魏县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1172', '142', '曲周县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1173', '143', '桃城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1174', '143', '冀州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1175', '143', '深州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1176', '143', '枣强县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1177', '143', '武邑县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1178', '143', '武强县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1179', '143', '饶阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1180', '143', '安平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1181', '143', '故城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1182', '143', '景县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1183', '143', '阜城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1184', '144', '安次区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1185', '144', '广阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1186', '144', '霸州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1187', '144', '三河市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1188', '144', '固安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1189', '144', '永清县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1190', '144', '香河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1191', '144', '大城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1192', '144', '文安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1193', '144', '大厂', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1194', '145', '海港区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1195', '145', '山海关区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1196', '145', '北戴河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1197', '145', '昌黎县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1198', '145', '抚宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1199', '145', '卢龙县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1200', '145', '青龙', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1201', '146', '路北区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1202', '146', '路南区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1203', '146', '古冶区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1204', '146', '开平区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1205', '146', '丰南区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1206', '146', '丰润区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1207', '146', '遵化市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1208', '146', '迁安市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1209', '146', '滦县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1210', '146', '滦南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1211', '146', '乐亭县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1212', '146', '迁西县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1213', '146', '玉田县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1214', '146', '唐海县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1215', '147', '桥东区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1216', '147', '桥西区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1217', '147', '南宫市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1218', '147', '沙河市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1219', '147', '邢台县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1220', '147', '临城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1221', '147', '内丘县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1222', '147', '柏乡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1223', '147', '隆尧县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1224', '147', '任县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1225', '147', '南和县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1226', '147', '宁晋县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1227', '147', '巨鹿县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1228', '147', '新河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1229', '147', '广宗县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1230', '147', '平乡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1231', '147', '威县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1232', '147', '清河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1233', '147', '临西县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1234', '148', '桥西区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1235', '148', '桥东区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1236', '148', '宣化区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1237', '148', '下花园区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1238', '148', '宣化县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1239', '148', '张北县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1240', '148', '康保县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1241', '148', '沽源县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1242', '148', '尚义县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1243', '148', '蔚县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1244', '148', '阳原县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1245', '148', '怀安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1246', '148', '万全县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1247', '148', '怀来县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1248', '148', '涿鹿县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1249', '148', '赤城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1250', '148', '崇礼县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1251', '149', '金水区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1252', '149', '邙山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1253', '149', '二七区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1254', '149', '管城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1255', '149', '中原区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1256', '149', '上街区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1257', '149', '惠济区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1258', '149', '郑东新区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1259', '149', '经济技术开发区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1260', '149', '高新开发区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1261', '149', '出口加工区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1262', '149', '巩义市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1263', '149', '荥阳市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1264', '149', '新密市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1265', '149', '新郑市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1266', '149', '登封市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1267', '149', '中牟县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1268', '150', '西工区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1269', '150', '老城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1270', '150', '涧西区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1271', '150', '瀍河回族区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1272', '150', '洛龙区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1273', '150', '吉利区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1274', '150', '偃师市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1275', '150', '孟津县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1276', '150', '新安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1277', '150', '栾川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1278', '150', '嵩县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1279', '150', '汝阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1280', '150', '宜阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1281', '150', '洛宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1282', '150', '伊川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1283', '151', '鼓楼区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1284', '151', '龙亭区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1285', '151', '顺河回族区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1286', '151', '金明区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1287', '151', '禹王台区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1288', '151', '杞县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1289', '151', '通许县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1290', '151', '尉氏县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1291', '151', '开封县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1292', '151', '兰考县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1293', '152', '北关区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1294', '152', '文峰区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1295', '152', '殷都区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1296', '152', '龙安区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1297', '152', '林州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1298', '152', '安阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1299', '152', '汤阴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1300', '152', '滑县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1301', '152', '内黄县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1302', '153', '淇滨区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1303', '153', '山城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1304', '153', '鹤山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1305', '153', '浚县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1306', '153', '淇县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1307', '154', '济源市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1308', '155', '解放区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1309', '155', '中站区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1310', '155', '马村区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1311', '155', '山阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1312', '155', '沁阳市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1313', '155', '孟州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1314', '155', '修武县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1315', '155', '博爱县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1316', '155', '武陟县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1317', '155', '温县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1318', '156', '卧龙区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1319', '156', '宛城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1320', '156', '邓州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1321', '156', '南召县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1322', '156', '方城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1323', '156', '西峡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1324', '156', '镇平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1325', '156', '内乡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1326', '156', '淅川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1327', '156', '社旗县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1328', '156', '唐河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1329', '156', '新野县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1330', '156', '桐柏县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1331', '157', '新华区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1332', '157', '卫东区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1333', '157', '湛河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1334', '157', '石龙区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1335', '157', '舞钢市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1336', '157', '汝州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1337', '157', '宝丰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1338', '157', '叶县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1339', '157', '鲁山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1340', '157', '郏县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1341', '158', '湖滨区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1342', '158', '义马市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1343', '158', '灵宝市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1344', '158', '渑池县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1345', '158', '陕县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1346', '158', '卢氏县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1347', '159', '梁园区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1348', '159', '睢阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1349', '159', '永城市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1350', '159', '民权县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1351', '159', '睢县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1352', '159', '宁陵县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1353', '159', '虞城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1354', '159', '柘城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1355', '159', '夏邑县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1356', '160', '卫滨区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1357', '160', '红旗区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1358', '160', '凤泉区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1359', '160', '牧野区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1360', '160', '卫辉市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1361', '160', '辉县市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1362', '160', '新乡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1363', '160', '获嘉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1364', '160', '原阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1365', '160', '延津县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1366', '160', '封丘县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1367', '160', '长垣县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1368', '161', '浉河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1369', '161', '平桥区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1370', '161', '罗山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1371', '161', '光山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1372', '161', '新县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1373', '161', '商城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1374', '161', '固始县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1375', '161', '潢川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1376', '161', '淮滨县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1377', '161', '息县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1378', '162', '魏都区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1379', '162', '禹州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1380', '162', '长葛市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1381', '162', '许昌县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1382', '162', '鄢陵县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1383', '162', '襄城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1384', '163', '川汇区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1385', '163', '项城市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1386', '163', '扶沟县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1387', '163', '西华县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1388', '163', '商水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1389', '163', '沈丘县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1390', '163', '郸城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1391', '163', '淮阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1392', '163', '太康县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1393', '163', '鹿邑县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1394', '164', '驿城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1395', '164', '西平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1396', '164', '上蔡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1397', '164', '平舆县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1398', '164', '正阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1399', '164', '确山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1400', '164', '泌阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1401', '164', '汝南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1402', '164', '遂平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1403', '164', '新蔡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1404', '165', '郾城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1405', '165', '源汇区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1406', '165', '召陵区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1407', '165', '舞阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1408', '165', '临颍县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1409', '166', '华龙区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1410', '166', '清丰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1411', '166', '南乐县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1412', '166', '范县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1413', '166', '台前县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1414', '166', '濮阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1415', '167', '道里区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1416', '167', '南岗区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1417', '167', '动力区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1418', '167', '平房区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1419', '167', '香坊区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1420', '167', '太平区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1421', '167', '道外区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1422', '167', '阿城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1423', '167', '呼兰区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1424', '167', '松北区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1425', '167', '尚志市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1426', '167', '双城市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1427', '167', '五常市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1428', '167', '方正县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1429', '167', '宾县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1430', '167', '依兰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1431', '167', '巴彦县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1432', '167', '通河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1433', '167', '木兰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1434', '167', '延寿县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1435', '168', '萨尔图区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1436', '168', '红岗区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1437', '168', '龙凤区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1438', '168', '让胡路区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1439', '168', '大同区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1440', '168', '肇州县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1441', '168', '肇源县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1442', '168', '林甸县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1443', '168', '杜尔伯特', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1444', '169', '呼玛县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1445', '169', '漠河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1446', '169', '塔河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1447', '170', '兴山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1448', '170', '工农区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1449', '170', '南山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1450', '170', '兴安区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1451', '170', '向阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1452', '170', '东山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1453', '170', '萝北县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1454', '170', '绥滨县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1455', '171', '爱辉区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1456', '171', '五大连池市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1457', '171', '北安市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1458', '171', '嫩江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1459', '171', '逊克县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1460', '171', '孙吴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1461', '172', '鸡冠区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1462', '172', '恒山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1463', '172', '城子河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1464', '172', '滴道区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1465', '172', '梨树区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1466', '172', '虎林市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1467', '172', '密山市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1468', '172', '鸡东县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1469', '173', '前进区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1470', '173', '郊区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1471', '173', '向阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1472', '173', '东风区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1473', '173', '同江市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1474', '173', '富锦市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1475', '173', '桦南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1476', '173', '桦川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1477', '173', '汤原县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1478', '173', '抚远县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1479', '174', '爱民区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1480', '174', '东安区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1481', '174', '阳明区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1482', '174', '西安区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1483', '174', '绥芬河市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1484', '174', '海林市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1485', '174', '宁安市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1486', '174', '穆棱市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1487', '174', '东宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1488', '174', '林口县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1489', '175', '桃山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1490', '175', '新兴区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1491', '175', '茄子河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1492', '175', '勃利县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1493', '176', '龙沙区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1494', '176', '昂昂溪区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1495', '176', '铁峰区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1496', '176', '建华区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1497', '176', '富拉尔基区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1498', '176', '碾子山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1499', '176', '梅里斯达斡尔区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1500', '176', '讷河市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1501', '176', '龙江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1502', '176', '依安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1503', '176', '泰来县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1504', '176', '甘南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1505', '176', '富裕县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1506', '176', '克山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1507', '176', '克东县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1508', '176', '拜泉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1509', '177', '尖山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1510', '177', '岭东区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1511', '177', '四方台区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1512', '177', '宝山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1513', '177', '集贤县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1514', '177', '友谊县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1515', '177', '宝清县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1516', '177', '饶河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1517', '178', '北林区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1518', '178', '安达市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1519', '178', '肇东市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1520', '178', '海伦市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1521', '178', '望奎县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1522', '178', '兰西县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1523', '178', '青冈县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1524', '178', '庆安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1525', '178', '明水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1526', '178', '绥棱县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1527', '179', '伊春区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1528', '179', '带岭区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1529', '179', '南岔区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1530', '179', '金山屯区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1531', '179', '西林区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1532', '179', '美溪区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1533', '179', '乌马河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1534', '179', '翠峦区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1535', '179', '友好区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1536', '179', '上甘岭区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1537', '179', '五营区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1538', '179', '红星区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1539', '179', '新青区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1540', '179', '汤旺河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1541', '179', '乌伊岭区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1542', '179', '铁力市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1543', '179', '嘉荫县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1544', '180', '江岸区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1545', '180', '武昌区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1546', '180', '江汉区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1547', '180', '硚口区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1548', '180', '汉阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1549', '180', '青山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1550', '180', '洪山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1551', '180', '东西湖区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1552', '180', '汉南区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1553', '180', '蔡甸区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1554', '180', '江夏区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1555', '180', '黄陂区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1556', '180', '新洲区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1557', '180', '经济开发区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1558', '181', '仙桃市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1559', '182', '鄂城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1560', '182', '华容区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1561', '182', '梁子湖区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1562', '183', '黄州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1563', '183', '麻城市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1564', '183', '武穴市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1565', '183', '团风县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1566', '183', '红安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1567', '183', '罗田县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1568', '183', '英山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1569', '183', '浠水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1570', '183', '蕲春县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1571', '183', '黄梅县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1572', '184', '黄石港区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1573', '184', '西塞山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1574', '184', '下陆区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1575', '184', '铁山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1576', '184', '大冶市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1577', '184', '阳新县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1578', '185', '东宝区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1579', '185', '掇刀区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1580', '185', '钟祥市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1581', '185', '京山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1582', '185', '沙洋县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1583', '186', '沙市区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1584', '186', '荆州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1585', '186', '石首市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1586', '186', '洪湖市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1587', '186', '松滋市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1588', '186', '公安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1589', '186', '监利县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1590', '186', '江陵县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1591', '187', '潜江市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1592', '188', '神农架林区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1593', '189', '张湾区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1594', '189', '茅箭区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1595', '189', '丹江口市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1596', '189', '郧县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1597', '189', '郧西县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1598', '189', '竹山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1599', '189', '竹溪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1600', '189', '房县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1601', '190', '曾都区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1602', '190', '广水市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1603', '191', '天门市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1604', '192', '咸安区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1605', '192', '赤壁市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1606', '192', '嘉鱼县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1607', '192', '通城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1608', '192', '崇阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1609', '192', '通山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1610', '193', '襄城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1611', '193', '樊城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1612', '193', '襄阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1613', '193', '老河口市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1614', '193', '枣阳市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1615', '193', '宜城市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1616', '193', '南漳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1617', '193', '谷城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1618', '193', '保康县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1619', '194', '孝南区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1620', '194', '应城市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1621', '194', '安陆市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1622', '194', '汉川市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1623', '194', '孝昌县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1624', '194', '大悟县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1625', '194', '云梦县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1626', '195', '长阳', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1627', '195', '五峰', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1628', '195', '西陵区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1629', '195', '伍家岗区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1630', '195', '点军区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1631', '195', '猇亭区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1632', '195', '夷陵区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1633', '195', '宜都市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1634', '195', '当阳市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1635', '195', '枝江市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1636', '195', '远安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1637', '195', '兴山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1638', '195', '秭归县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1639', '196', '恩施市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1640', '196', '利川市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1641', '196', '建始县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1642', '196', '巴东县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1643', '196', '宣恩县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1644', '196', '咸丰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1645', '196', '来凤县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1646', '196', '鹤峰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1647', '197', '岳麓区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1648', '197', '芙蓉区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1649', '197', '天心区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1650', '197', '开福区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1651', '197', '雨花区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1652', '197', '开发区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1653', '197', '浏阳市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1654', '197', '长沙县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1655', '197', '望城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1656', '197', '宁乡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1657', '198', '永定区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1658', '198', '武陵源区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1659', '198', '慈利县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1660', '198', '桑植县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1661', '199', '武陵区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1662', '199', '鼎城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1663', '199', '津市市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1664', '199', '安乡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1665', '199', '汉寿县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1666', '199', '澧县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1667', '199', '临澧县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1668', '199', '桃源县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1669', '199', '石门县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1670', '200', '北湖区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1671', '200', '苏仙区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1672', '200', '资兴市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1673', '200', '桂阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1674', '200', '宜章县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1675', '200', '永兴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1676', '200', '嘉禾县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1677', '200', '临武县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1678', '200', '汝城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1679', '200', '桂东县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1680', '200', '安仁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1681', '201', '雁峰区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1682', '201', '珠晖区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1683', '201', '石鼓区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1684', '201', '蒸湘区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1685', '201', '南岳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1686', '201', '耒阳市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1687', '201', '常宁市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1688', '201', '衡阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1689', '201', '衡南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1690', '201', '衡山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1691', '201', '衡东县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1692', '201', '祁东县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1693', '202', '鹤城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1694', '202', '靖州', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1695', '202', '麻阳', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1696', '202', '通道', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1697', '202', '新晃', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1698', '202', '芷江', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1699', '202', '沅陵县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1700', '202', '辰溪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1701', '202', '溆浦县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1702', '202', '中方县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1703', '202', '会同县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1704', '202', '洪江市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1705', '203', '娄星区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1706', '203', '冷水江市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1707', '203', '涟源市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1708', '203', '双峰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1709', '203', '新化县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1710', '204', '城步', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1711', '204', '双清区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1712', '204', '大祥区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1713', '204', '北塔区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1714', '204', '武冈市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1715', '204', '邵东县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1716', '204', '新邵县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1717', '204', '邵阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1718', '204', '隆回县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1719', '204', '洞口县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1720', '204', '绥宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1721', '204', '新宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1722', '205', '岳塘区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1723', '205', '雨湖区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1724', '205', '湘乡市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1725', '205', '韶山市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1726', '205', '湘潭县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1727', '206', '吉首市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1728', '206', '泸溪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1729', '206', '凤凰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1730', '206', '花垣县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1731', '206', '保靖县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1732', '206', '古丈县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1733', '206', '永顺县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1734', '206', '龙山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1735', '207', '赫山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1736', '207', '资阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1737', '207', '沅江市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1738', '207', '南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1739', '207', '桃江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1740', '207', '安化县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1741', '208', '江华', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1742', '208', '冷水滩区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1743', '208', '零陵区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1744', '208', '祁阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1745', '208', '东安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1746', '208', '双牌县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1747', '208', '道县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1748', '208', '江永县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1749', '208', '宁远县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1750', '208', '蓝山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1751', '208', '新田县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1752', '209', '岳阳楼区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1753', '209', '君山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1754', '209', '云溪区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1755', '209', '汨罗市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1756', '209', '临湘市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1757', '209', '岳阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1758', '209', '华容县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1759', '209', '湘阴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1760', '209', '平江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1761', '210', '天元区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1762', '210', '荷塘区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1763', '210', '芦淞区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1764', '210', '石峰区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1765', '210', '醴陵市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1766', '210', '株洲县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1767', '210', '攸县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1768', '210', '茶陵县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1769', '210', '炎陵县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1770', '211', '朝阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1771', '211', '宽城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1772', '211', '二道区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1773', '211', '南关区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1774', '211', '绿园区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1775', '211', '双阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1776', '211', '净月潭开发区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1777', '211', '高新技术开发区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1778', '211', '经济技术开发区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1779', '211', '汽车产业开发区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1780', '211', '德惠市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1781', '211', '九台市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1782', '211', '榆树市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1783', '211', '农安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1784', '212', '船营区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1785', '212', '昌邑区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1786', '212', '龙潭区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1787', '212', '丰满区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1788', '212', '蛟河市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1789', '212', '桦甸市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1790', '212', '舒兰市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1791', '212', '磐石市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1792', '212', '永吉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1793', '213', '洮北区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1794', '213', '洮南市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1795', '213', '大安市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1796', '213', '镇赉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1797', '213', '通榆县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1798', '214', '江源区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1799', '214', '八道江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1800', '214', '长白', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1801', '214', '临江市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1802', '214', '抚松县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1803', '214', '靖宇县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1804', '215', '龙山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1805', '215', '西安区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1806', '215', '东丰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1807', '215', '东辽县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1808', '216', '铁西区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1809', '216', '铁东区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1810', '216', '伊通', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1811', '216', '公主岭市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1812', '216', '双辽市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1813', '216', '梨树县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1814', '217', '前郭尔罗斯', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1815', '217', '宁江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1816', '217', '长岭县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1817', '217', '乾安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1818', '217', '扶余县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1819', '218', '东昌区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1820', '218', '二道江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1821', '218', '梅河口市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1822', '218', '集安市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1823', '218', '通化县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1824', '218', '辉南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1825', '218', '柳河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1826', '219', '延吉市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1827', '219', '图们市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1828', '219', '敦化市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1829', '219', '珲春市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1830', '219', '龙井市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1831', '219', '和龙市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1832', '219', '安图县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1833', '219', '汪清县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1834', '220', '玄武区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1835', '220', '鼓楼区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1836', '220', '白下区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1837', '220', '建邺区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1838', '220', '秦淮区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1839', '220', '雨花台区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1840', '220', '下关区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1841', '220', '栖霞区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1842', '220', '浦口区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1843', '220', '江宁区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1844', '220', '六合区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1845', '220', '溧水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1846', '220', '高淳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1847', '221', '沧浪区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1848', '221', '金阊区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1849', '221', '平江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1850', '221', '虎丘区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1851', '221', '吴中区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1852', '221', '相城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1853', '221', '园区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1854', '221', '新区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1855', '221', '常熟市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1856', '221', '张家港市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1857', '221', '玉山镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1858', '221', '巴城镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1859', '221', '周市镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1860', '221', '陆家镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1861', '221', '花桥镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1862', '221', '淀山湖镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1863', '221', '张浦镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1864', '221', '周庄镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1865', '221', '千灯镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1866', '221', '锦溪镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1867', '221', '开发区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1868', '221', '吴江市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1869', '221', '太仓市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1870', '222', '崇安区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1871', '222', '北塘区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1872', '222', '南长区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1873', '222', '锡山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1874', '222', '惠山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1875', '222', '滨湖区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1876', '222', '新区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1877', '222', '江阴市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1878', '222', '宜兴市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1879', '223', '天宁区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1880', '223', '钟楼区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1881', '223', '戚墅堰区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1882', '223', '郊区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1883', '223', '新北区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1884', '223', '武进区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1885', '223', '溧阳市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1886', '223', '金坛市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1887', '224', '清河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1888', '224', '清浦区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1889', '224', '楚州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1890', '224', '淮阴区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1891', '224', '涟水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1892', '224', '洪泽县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1893', '224', '盱眙县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1894', '224', '金湖县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1895', '225', '新浦区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1896', '225', '连云区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1897', '225', '海州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1898', '225', '赣榆县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1899', '225', '东海县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1900', '225', '灌云县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1901', '225', '灌南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1902', '226', '崇川区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1903', '226', '港闸区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1904', '226', '经济开发区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1905', '226', '启东市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1906', '226', '如皋市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1907', '226', '通州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1908', '226', '海门市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1909', '226', '海安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1910', '226', '如东县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1911', '227', '宿城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1912', '227', '宿豫区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1913', '227', '宿豫县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1914', '227', '沭阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1915', '227', '泗阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1916', '227', '泗洪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1917', '228', '海陵区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1918', '228', '高港区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1919', '228', '兴化市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1920', '228', '靖江市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1921', '228', '泰兴市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1922', '228', '姜堰市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1923', '229', '云龙区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1924', '229', '鼓楼区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1925', '229', '九里区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1926', '229', '贾汪区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1927', '229', '泉山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1928', '229', '新沂市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1929', '229', '邳州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1930', '229', '丰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1931', '229', '沛县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1932', '229', '铜山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1933', '229', '睢宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1934', '230', '城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1935', '230', '亭湖区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1936', '230', '盐都区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1937', '230', '盐都县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1938', '230', '东台市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1939', '230', '大丰市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1940', '230', '响水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1941', '230', '滨海县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1942', '230', '阜宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1943', '230', '射阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1944', '230', '建湖县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1945', '231', '广陵区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1946', '231', '维扬区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1947', '231', '邗江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1948', '231', '仪征市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1949', '231', '高邮市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1950', '231', '江都市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1951', '231', '宝应县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1952', '232', '京口区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1953', '232', '润州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1954', '232', '丹徒区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1955', '232', '丹阳市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1956', '232', '扬中市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1957', '232', '句容市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1958', '233', '东湖区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1959', '233', '西湖区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1960', '233', '青云谱区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1961', '233', '湾里区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1962', '233', '青山湖区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1963', '233', '红谷滩新区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1964', '233', '昌北区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1965', '233', '高新区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1966', '233', '南昌县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1967', '233', '新建县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1968', '233', '安义县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1969', '233', '进贤县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1970', '234', '临川区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1971', '234', '南城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1972', '234', '黎川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1973', '234', '南丰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1974', '234', '崇仁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1975', '234', '乐安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1976', '234', '宜黄县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1977', '234', '金溪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1978', '234', '资溪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1979', '234', '东乡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1980', '234', '广昌县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1981', '235', '章贡区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1982', '235', '于都县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1983', '235', '瑞金市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1984', '235', '南康市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1985', '235', '赣县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1986', '235', '信丰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1987', '235', '大余县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1988', '235', '上犹县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1989', '235', '崇义县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1990', '235', '安远县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1991', '235', '龙南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1992', '235', '定南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1993', '235', '全南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1994', '235', '宁都县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1995', '235', '兴国县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1996', '235', '会昌县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1997', '235', '寻乌县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1998', '235', '石城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('1999', '236', '安福县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2000', '236', '吉州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2001', '236', '青原区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2002', '236', '井冈山市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2003', '236', '吉安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2004', '236', '吉水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2005', '236', '峡江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2006', '236', '新干县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2007', '236', '永丰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2008', '236', '泰和县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2009', '236', '遂川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2010', '236', '万安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2011', '236', '永新县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2012', '237', '珠山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2013', '237', '昌江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2014', '237', '乐平市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2015', '237', '浮梁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2016', '238', '浔阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2017', '238', '庐山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2018', '238', '瑞昌市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2019', '238', '九江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2020', '238', '武宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2021', '238', '修水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2022', '238', '永修县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2023', '238', '德安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2024', '238', '星子县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2025', '238', '都昌县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2026', '238', '湖口县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2027', '238', '彭泽县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2028', '239', '安源区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2029', '239', '湘东区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2030', '239', '莲花县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2031', '239', '芦溪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2032', '239', '上栗县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2033', '240', '信州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2034', '240', '德兴市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2035', '240', '上饶县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2036', '240', '广丰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2037', '240', '玉山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2038', '240', '铅山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2039', '240', '横峰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2040', '240', '弋阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2041', '240', '余干县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2042', '240', '波阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2043', '240', '万年县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2044', '240', '婺源县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2045', '241', '渝水区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2046', '241', '分宜县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2047', '242', '袁州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2048', '242', '丰城市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2049', '242', '樟树市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2050', '242', '高安市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2051', '242', '奉新县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2052', '242', '万载县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2053', '242', '上高县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2054', '242', '宜丰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2055', '242', '靖安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2056', '242', '铜鼓县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2057', '243', '月湖区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2058', '243', '贵溪市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2059', '243', '余江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2060', '244', '沈河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2061', '244', '皇姑区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2062', '244', '和平区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2063', '244', '大东区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2064', '244', '铁西区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2065', '244', '苏家屯区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2066', '244', '东陵区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2067', '244', '沈北新区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2068', '244', '于洪区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2069', '244', '浑南新区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2070', '244', '新民市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2071', '244', '辽中县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2072', '244', '康平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2073', '244', '法库县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2074', '245', '西岗区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2075', '245', '中山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2076', '245', '沙河口区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2077', '245', '甘井子区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2078', '245', '旅顺口区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2079', '245', '金州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2080', '245', '开发区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2081', '245', '瓦房店市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2082', '245', '普兰店市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2083', '245', '庄河市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2084', '245', '长海县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2085', '246', '铁东区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2086', '246', '铁西区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2087', '246', '立山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2088', '246', '千山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2089', '246', '岫岩', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2090', '246', '海城市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2091', '246', '台安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2092', '247', '本溪', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2093', '247', '平山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2094', '247', '明山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2095', '247', '溪湖区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2096', '247', '南芬区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2097', '247', '桓仁', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2098', '248', '双塔区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2099', '248', '龙城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2100', '248', '喀喇沁左翼蒙古族自治县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2101', '248', '北票市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2102', '248', '凌源市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2103', '248', '朝阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2104', '248', '建平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2105', '249', '振兴区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2106', '249', '元宝区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2107', '249', '振安区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2108', '249', '宽甸', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2109', '249', '东港市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2110', '249', '凤城市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2111', '250', '顺城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2112', '250', '新抚区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2113', '250', '东洲区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2114', '250', '望花区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2115', '250', '清原', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2116', '250', '新宾', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2117', '250', '抚顺县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2118', '251', '阜新', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2119', '251', '海州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2120', '251', '新邱区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2121', '251', '太平区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2122', '251', '清河门区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2123', '251', '细河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2124', '251', '彰武县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2125', '252', '龙港区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2126', '252', '南票区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2127', '252', '连山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2128', '252', '兴城市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2129', '252', '绥中县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2130', '252', '建昌县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2131', '253', '太和区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2132', '253', '古塔区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2133', '253', '凌河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2134', '253', '凌海市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2135', '253', '北镇市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2136', '253', '黑山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2137', '253', '义县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2138', '254', '白塔区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2139', '254', '文圣区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2140', '254', '宏伟区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2141', '254', '太子河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2142', '254', '弓长岭区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2143', '254', '灯塔市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2144', '254', '辽阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2145', '255', '双台子区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2146', '255', '兴隆台区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2147', '255', '大洼县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2148', '255', '盘山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2149', '256', '银州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2150', '256', '清河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2151', '256', '调兵山市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2152', '256', '开原市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2153', '256', '铁岭县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2154', '256', '西丰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2155', '256', '昌图县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2156', '257', '站前区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2157', '257', '西市区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2158', '257', '鲅鱼圈区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2159', '257', '老边区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2160', '257', '盖州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2161', '257', '大石桥市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2162', '258', '回民区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2163', '258', '玉泉区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2164', '258', '新城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2165', '258', '赛罕区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2166', '258', '清水河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2167', '258', '土默特左旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2168', '258', '托克托县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2169', '258', '和林格尔县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2170', '258', '武川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2171', '259', '阿拉善左旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2172', '259', '阿拉善右旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2173', '259', '额济纳旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2174', '260', '临河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2175', '260', '五原县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2176', '260', '磴口县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2177', '260', '乌拉特前旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2178', '260', '乌拉特中旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2179', '260', '乌拉特后旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2180', '260', '杭锦后旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2181', '261', '昆都仑区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2182', '261', '青山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2183', '261', '东河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2184', '261', '九原区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2185', '261', '石拐区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2186', '261', '白云矿区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2187', '261', '土默特右旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2188', '261', '固阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2189', '261', '达尔罕茂明安联合旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2190', '262', '红山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2191', '262', '元宝山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2192', '262', '松山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2193', '262', '阿鲁科尔沁旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2194', '262', '巴林左旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2195', '262', '巴林右旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2196', '262', '林西县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2197', '262', '克什克腾旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2198', '262', '翁牛特旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2199', '262', '喀喇沁旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2200', '262', '宁城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2201', '262', '敖汉旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2202', '263', '东胜区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2203', '263', '达拉特旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2204', '263', '准格尔旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2205', '263', '鄂托克前旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2206', '263', '鄂托克旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2207', '263', '杭锦旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2208', '263', '乌审旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2209', '263', '伊金霍洛旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2210', '264', '海拉尔区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2211', '264', '莫力达瓦', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2212', '264', '满洲里市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2213', '264', '牙克石市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2214', '264', '扎兰屯市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2215', '264', '额尔古纳市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2216', '264', '根河市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2217', '264', '阿荣旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2218', '264', '鄂伦春自治旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2219', '264', '鄂温克族自治旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2220', '264', '陈巴尔虎旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2221', '264', '新巴尔虎左旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2222', '264', '新巴尔虎右旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2223', '265', '科尔沁区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2224', '265', '霍林郭勒市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2225', '265', '科尔沁左翼中旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2226', '265', '科尔沁左翼后旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2227', '265', '开鲁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2228', '265', '库伦旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2229', '265', '奈曼旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2230', '265', '扎鲁特旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2231', '266', '海勃湾区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2232', '266', '乌达区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2233', '266', '海南区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2234', '267', '化德县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2235', '267', '集宁区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2236', '267', '丰镇市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2237', '267', '卓资县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2238', '267', '商都县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2239', '267', '兴和县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2240', '267', '凉城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2241', '267', '察哈尔右翼前旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2242', '267', '察哈尔右翼中旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2243', '267', '察哈尔右翼后旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2244', '267', '四子王旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2245', '268', '二连浩特市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2246', '268', '锡林浩特市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2247', '268', '阿巴嘎旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2248', '268', '苏尼特左旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2249', '268', '苏尼特右旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2250', '268', '东乌珠穆沁旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2251', '268', '西乌珠穆沁旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2252', '268', '太仆寺旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2253', '268', '镶黄旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2254', '268', '正镶白旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2255', '268', '正蓝旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2256', '268', '多伦县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2257', '269', '乌兰浩特市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2258', '269', '阿尔山市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2259', '269', '科尔沁右翼前旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2260', '269', '科尔沁右翼中旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2261', '269', '扎赉特旗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2262', '269', '突泉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2263', '270', '西夏区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2264', '270', '金凤区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2265', '270', '兴庆区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2266', '270', '灵武市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2267', '270', '永宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2268', '270', '贺兰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2269', '271', '原州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2270', '271', '海原县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2271', '271', '西吉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2272', '271', '隆德县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2273', '271', '泾源县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2274', '271', '彭阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2275', '272', '惠农县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2276', '272', '大武口区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2277', '272', '惠农区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2278', '272', '陶乐县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2279', '272', '平罗县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2280', '273', '利通区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2281', '273', '中卫县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2282', '273', '青铜峡市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2283', '273', '中宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2284', '273', '盐池县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2285', '273', '同心县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2286', '274', '沙坡头区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2287', '274', '海原县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2288', '274', '中宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2289', '275', '城中区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2290', '275', '城东区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2291', '275', '城西区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2292', '275', '城北区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2293', '275', '湟中县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2294', '275', '湟源县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2295', '275', '大通', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2296', '276', '玛沁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2297', '276', '班玛县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2298', '276', '甘德县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2299', '276', '达日县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2300', '276', '久治县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2301', '276', '玛多县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2302', '277', '海晏县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2303', '277', '祁连县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2304', '277', '刚察县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2305', '277', '门源', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2306', '278', '平安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2307', '278', '乐都县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2308', '278', '民和', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2309', '278', '互助', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2310', '278', '化隆', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2311', '278', '循化', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2312', '279', '共和县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2313', '279', '同德县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2314', '279', '贵德县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2315', '279', '兴海县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2316', '279', '贵南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2317', '280', '德令哈市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2318', '280', '格尔木市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2319', '280', '乌兰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2320', '280', '都兰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2321', '280', '天峻县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2322', '281', '同仁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2323', '281', '尖扎县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2324', '281', '泽库县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2325', '281', '河南蒙古族自治县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2326', '282', '玉树县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2327', '282', '杂多县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2328', '282', '称多县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2329', '282', '治多县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2330', '282', '囊谦县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2331', '282', '曲麻莱县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2332', '283', '市中区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2333', '283', '历下区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2334', '283', '天桥区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2335', '283', '槐荫区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2336', '283', '历城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2337', '283', '长清区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2338', '283', '章丘市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2339', '283', '平阴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2340', '283', '济阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2341', '283', '商河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2342', '284', '市南区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2343', '284', '市北区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2344', '284', '城阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2345', '284', '四方区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2346', '284', '李沧区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2347', '284', '黄岛区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2348', '284', '崂山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2349', '284', '胶州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2350', '284', '即墨市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2351', '284', '平度市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2352', '284', '胶南市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2353', '284', '莱西市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2354', '285', '滨城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2355', '285', '惠民县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2356', '285', '阳信县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2357', '285', '无棣县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2358', '285', '沾化县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2359', '285', '博兴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2360', '285', '邹平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2361', '286', '德城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2362', '286', '陵县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2363', '286', '乐陵市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2364', '286', '禹城市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2365', '286', '宁津县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2366', '286', '庆云县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2367', '286', '临邑县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2368', '286', '齐河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2369', '286', '平原县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2370', '286', '夏津县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2371', '286', '武城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2372', '287', '东营区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2373', '287', '河口区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2374', '287', '垦利县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2375', '287', '利津县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2376', '287', '广饶县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2377', '288', '牡丹区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2378', '288', '曹县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2379', '288', '单县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2380', '288', '成武县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2381', '288', '巨野县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2382', '288', '郓城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2383', '288', '鄄城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2384', '288', '定陶县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2385', '288', '东明县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2386', '289', '市中区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2387', '289', '任城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2388', '289', '曲阜市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2389', '289', '兖州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2390', '289', '邹城市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2391', '289', '微山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2392', '289', '鱼台县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2393', '289', '金乡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2394', '289', '嘉祥县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2395', '289', '汶上县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2396', '289', '泗水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2397', '289', '梁山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2398', '290', '莱城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2399', '290', '钢城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2400', '291', '东昌府区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2401', '291', '临清市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2402', '291', '阳谷县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2403', '291', '莘县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2404', '291', '茌平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2405', '291', '东阿县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2406', '291', '冠县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2407', '291', '高唐县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2408', '292', '兰山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2409', '292', '罗庄区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2410', '292', '河东区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2411', '292', '沂南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2412', '292', '郯城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2413', '292', '沂水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2414', '292', '苍山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2415', '292', '费县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2416', '292', '平邑县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2417', '292', '莒南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2418', '292', '蒙阴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2419', '292', '临沭县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2420', '293', '东港区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2421', '293', '岚山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2422', '293', '五莲县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2423', '293', '莒县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2424', '294', '泰山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2425', '294', '岱岳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2426', '294', '新泰市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2427', '294', '肥城市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2428', '294', '宁阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2429', '294', '东平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2430', '295', '荣成市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2431', '295', '乳山市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2432', '295', '环翠区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2433', '295', '文登市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2434', '296', '潍城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2435', '296', '寒亭区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2436', '296', '坊子区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2437', '296', '奎文区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2438', '296', '青州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2439', '296', '诸城市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2440', '296', '寿光市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2441', '296', '安丘市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2442', '296', '高密市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2443', '296', '昌邑市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2444', '296', '临朐县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2445', '296', '昌乐县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2446', '297', '芝罘区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2447', '297', '福山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2448', '297', '牟平区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2449', '297', '莱山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2450', '297', '开发区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2451', '297', '龙口市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2452', '297', '莱阳市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2453', '297', '莱州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2454', '297', '蓬莱市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2455', '297', '招远市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2456', '297', '栖霞市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2457', '297', '海阳市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2458', '297', '长岛县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2459', '298', '市中区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2460', '298', '山亭区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2461', '298', '峄城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2462', '298', '台儿庄区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2463', '298', '薛城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2464', '298', '滕州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2465', '299', '张店区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2466', '299', '临淄区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2467', '299', '淄川区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2468', '299', '博山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2469', '299', '周村区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2470', '299', '桓台县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2471', '299', '高青县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2472', '299', '沂源县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2473', '300', '杏花岭区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2474', '300', '小店区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2475', '300', '迎泽区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2476', '300', '尖草坪区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2477', '300', '万柏林区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2478', '300', '晋源区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2479', '300', '高新开发区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2480', '300', '民营经济开发区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2481', '300', '经济技术开发区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2482', '300', '清徐县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2483', '300', '阳曲县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2484', '300', '娄烦县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2485', '300', '古交市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2486', '301', '城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2487', '301', '郊区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2488', '301', '沁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2489', '301', '潞城市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2490', '301', '长治县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2491', '301', '襄垣县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2492', '301', '屯留县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2493', '301', '平顺县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2494', '301', '黎城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2495', '301', '壶关县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2496', '301', '长子县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2497', '301', '武乡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2498', '301', '沁源县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2499', '302', '城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2500', '302', '矿区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2501', '302', '南郊区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2502', '302', '新荣区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2503', '302', '阳高县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2504', '302', '天镇县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2505', '302', '广灵县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2506', '302', '灵丘县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2507', '302', '浑源县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2508', '302', '左云县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2509', '302', '大同县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2510', '303', '城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2511', '303', '高平市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2512', '303', '沁水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2513', '303', '阳城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2514', '303', '陵川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2515', '303', '泽州县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2516', '304', '榆次区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2517', '304', '介休市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2518', '304', '榆社县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2519', '304', '左权县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2520', '304', '和顺县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2521', '304', '昔阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2522', '304', '寿阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2523', '304', '太谷县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2524', '304', '祁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2525', '304', '平遥县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2526', '304', '灵石县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2527', '305', '尧都区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2528', '305', '侯马市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2529', '305', '霍州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2530', '305', '曲沃县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2531', '305', '翼城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2532', '305', '襄汾县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2533', '305', '洪洞县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2534', '305', '吉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2535', '305', '安泽县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2536', '305', '浮山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2537', '305', '古县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2538', '305', '乡宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2539', '305', '大宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2540', '305', '隰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2541', '305', '永和县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2542', '305', '蒲县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2543', '305', '汾西县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2544', '306', '离石市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2545', '306', '离石区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2546', '306', '孝义市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2547', '306', '汾阳市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2548', '306', '文水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2549', '306', '交城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2550', '306', '兴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2551', '306', '临县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2552', '306', '柳林县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2553', '306', '石楼县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2554', '306', '岚县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2555', '306', '方山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2556', '306', '中阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2557', '306', '交口县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2558', '307', '朔城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2559', '307', '平鲁区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2560', '307', '山阴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2561', '307', '应县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2562', '307', '右玉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2563', '307', '怀仁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2564', '308', '忻府区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2565', '308', '原平市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2566', '308', '定襄县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2567', '308', '五台县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2568', '308', '代县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2569', '308', '繁峙县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2570', '308', '宁武县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2571', '308', '静乐县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2572', '308', '神池县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2573', '308', '五寨县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2574', '308', '岢岚县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2575', '308', '河曲县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2576', '308', '保德县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2577', '308', '偏关县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2578', '309', '城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2579', '309', '矿区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2580', '309', '郊区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2581', '309', '平定县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2582', '309', '盂县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2583', '310', '盐湖区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2584', '310', '永济市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2585', '310', '河津市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2586', '310', '临猗县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2587', '310', '万荣县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2588', '310', '闻喜县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2589', '310', '稷山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2590', '310', '新绛县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2591', '310', '绛县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2592', '310', '垣曲县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2593', '310', '夏县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2594', '310', '平陆县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2595', '310', '芮城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2596', '311', '莲湖区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2597', '311', '新城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2598', '311', '碑林区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2599', '311', '雁塔区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2600', '311', '灞桥区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2601', '311', '未央区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2602', '311', '阎良区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2603', '311', '临潼区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2604', '311', '长安区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2605', '311', '蓝田县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2606', '311', '周至县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2607', '311', '户县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2608', '311', '高陵县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2609', '312', '汉滨区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2610', '312', '汉阴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2611', '312', '石泉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2612', '312', '宁陕县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2613', '312', '紫阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2614', '312', '岚皋县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2615', '312', '平利县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2616', '312', '镇坪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2617', '312', '旬阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2618', '312', '白河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2619', '313', '陈仓区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2620', '313', '渭滨区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2621', '313', '金台区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2622', '313', '凤翔县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2623', '313', '岐山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2624', '313', '扶风县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2625', '313', '眉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2626', '313', '陇县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2627', '313', '千阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2628', '313', '麟游县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2629', '313', '凤县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2630', '313', '太白县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2631', '314', '汉台区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2632', '314', '南郑县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2633', '314', '城固县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2634', '314', '洋县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2635', '314', '西乡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2636', '314', '勉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2637', '314', '宁强县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2638', '314', '略阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2639', '314', '镇巴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2640', '314', '留坝县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2641', '314', '佛坪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2642', '315', '商州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2643', '315', '洛南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2644', '315', '丹凤县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2645', '315', '商南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2646', '315', '山阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2647', '315', '镇安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2648', '315', '柞水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2649', '316', '耀州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2650', '316', '王益区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2651', '316', '印台区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2652', '316', '宜君县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2653', '317', '临渭区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2654', '317', '韩城市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2655', '317', '华阴市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2656', '317', '华县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2657', '317', '潼关县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2658', '317', '大荔县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2659', '317', '合阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2660', '317', '澄城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2661', '317', '蒲城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2662', '317', '白水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2663', '317', '富平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2664', '318', '秦都区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2665', '318', '渭城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2666', '318', '杨陵区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2667', '318', '兴平市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2668', '318', '三原县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2669', '318', '泾阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2670', '318', '乾县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2671', '318', '礼泉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2672', '318', '永寿县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2673', '318', '彬县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2674', '318', '长武县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2675', '318', '旬邑县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2676', '318', '淳化县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2677', '318', '武功县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2678', '319', '吴起县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2679', '319', '宝塔区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2680', '319', '延长县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2681', '319', '延川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2682', '319', '子长县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2683', '319', '安塞县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2684', '319', '志丹县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2685', '319', '甘泉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2686', '319', '富县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2687', '319', '洛川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2688', '319', '宜川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2689', '319', '黄龙县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2690', '319', '黄陵县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2691', '320', '榆阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2692', '320', '神木县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2693', '320', '府谷县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2694', '320', '横山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2695', '320', '靖边县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2696', '320', '定边县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2697', '320', '绥德县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2698', '320', '米脂县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2699', '320', '佳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2700', '320', '吴堡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2701', '320', '清涧县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2702', '320', '子洲县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2703', '321', '长宁区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2704', '321', '闸北区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2705', '321', '闵行区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2706', '321', '徐汇区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2707', '321', '浦东新区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2708', '321', '杨浦区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2709', '321', '普陀区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2710', '321', '静安区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2711', '321', '卢湾区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2712', '321', '虹口区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2713', '321', '黄浦区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2714', '321', '南汇区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2715', '321', '松江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2716', '321', '嘉定区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2717', '321', '宝山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2718', '321', '青浦区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2719', '321', '金山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2720', '321', '奉贤区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2721', '321', '崇明县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2722', '322', '青羊区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2723', '322', '锦江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2724', '322', '金牛区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2725', '322', '武侯区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2726', '322', '成华区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2727', '322', '龙泉驿区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2728', '322', '青白江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2729', '322', '新都区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2730', '322', '温江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2731', '322', '高新区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2732', '322', '高新西区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2733', '322', '都江堰市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2734', '322', '彭州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2735', '322', '邛崃市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2736', '322', '崇州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2737', '322', '金堂县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2738', '322', '双流县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2739', '322', '郫县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2740', '322', '大邑县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2741', '322', '蒲江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2742', '322', '新津县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2743', '322', '都江堰市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2744', '322', '彭州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2745', '322', '邛崃市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2746', '322', '崇州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2747', '322', '金堂县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2748', '322', '双流县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2749', '322', '郫县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2750', '322', '大邑县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2751', '322', '蒲江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2752', '322', '新津县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2753', '323', '涪城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2754', '323', '游仙区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2755', '323', '江油市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2756', '323', '盐亭县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2757', '323', '三台县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2758', '323', '平武县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2759', '323', '安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2760', '323', '梓潼县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2761', '323', '北川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2762', '324', '马尔康县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2763', '324', '汶川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2764', '324', '理县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2765', '324', '茂县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2766', '324', '松潘县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2767', '324', '九寨沟县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2768', '324', '金川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2769', '324', '小金县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2770', '324', '黑水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2771', '324', '壤塘县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2772', '324', '阿坝县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2773', '324', '若尔盖县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2774', '324', '红原县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2775', '325', '巴州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2776', '325', '通江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2777', '325', '南江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2778', '325', '平昌县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2779', '326', '通川区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2780', '326', '万源市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2781', '326', '达县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2782', '326', '宣汉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2783', '326', '开江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2784', '326', '大竹县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2785', '326', '渠县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2786', '327', '旌阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2787', '327', '广汉市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2788', '327', '什邡市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2789', '327', '绵竹市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2790', '327', '罗江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2791', '327', '中江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2792', '328', '康定县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2793', '328', '丹巴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2794', '328', '泸定县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2795', '328', '炉霍县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2796', '328', '九龙县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2797', '328', '甘孜县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2798', '328', '雅江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2799', '328', '新龙县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2800', '328', '道孚县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2801', '328', '白玉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2802', '328', '理塘县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2803', '328', '德格县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2804', '328', '乡城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2805', '328', '石渠县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2806', '328', '稻城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2807', '328', '色达县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2808', '328', '巴塘县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2809', '328', '得荣县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2810', '329', '广安区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2811', '329', '华蓥市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2812', '329', '岳池县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2813', '329', '武胜县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2814', '329', '邻水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2815', '330', '利州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2816', '330', '元坝区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2817', '330', '朝天区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2818', '330', '旺苍县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2819', '330', '青川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2820', '330', '剑阁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2821', '330', '苍溪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2822', '331', '峨眉山市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2823', '331', '乐山市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2824', '331', '犍为县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2825', '331', '井研县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2826', '331', '夹江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2827', '331', '沐川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2828', '331', '峨边', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2829', '331', '马边', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2830', '332', '西昌市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2831', '332', '盐源县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2832', '332', '德昌县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2833', '332', '会理县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2834', '332', '会东县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2835', '332', '宁南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2836', '332', '普格县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2837', '332', '布拖县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2838', '332', '金阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2839', '332', '昭觉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2840', '332', '喜德县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2841', '332', '冕宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2842', '332', '越西县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2843', '332', '甘洛县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2844', '332', '美姑县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2845', '332', '雷波县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2846', '332', '木里', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2847', '333', '东坡区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2848', '333', '仁寿县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2849', '333', '彭山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2850', '333', '洪雅县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2851', '333', '丹棱县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2852', '333', '青神县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2853', '334', '阆中市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2854', '334', '南部县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2855', '334', '营山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2856', '334', '蓬安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2857', '334', '仪陇县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2858', '334', '顺庆区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2859', '334', '高坪区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2860', '334', '嘉陵区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2861', '334', '西充县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2862', '335', '市中区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2863', '335', '东兴区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2864', '335', '威远县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2865', '335', '资中县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2866', '335', '隆昌县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2867', '336', '东  区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2868', '336', '西  区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2869', '336', '仁和区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2870', '336', '米易县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2871', '336', '盐边县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2872', '337', '船山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2873', '337', '安居区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2874', '337', '蓬溪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2875', '337', '射洪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2876', '337', '大英县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2877', '338', '雨城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2878', '338', '名山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2879', '338', '荥经县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2880', '338', '汉源县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2881', '338', '石棉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2882', '338', '天全县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2883', '338', '芦山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2884', '338', '宝兴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2885', '339', '翠屏区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2886', '339', '宜宾县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2887', '339', '南溪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2888', '339', '江安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2889', '339', '长宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2890', '339', '高县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2891', '339', '珙县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2892', '339', '筠连县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2893', '339', '兴文县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2894', '339', '屏山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2895', '340', '雁江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2896', '340', '简阳市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2897', '340', '安岳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2898', '340', '乐至县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2899', '341', '大安区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2900', '341', '自流井区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2901', '341', '贡井区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2902', '341', '沿滩区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2903', '341', '荣县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2904', '341', '富顺县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2905', '342', '江阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2906', '342', '纳溪区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2907', '342', '龙马潭区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2908', '342', '泸县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2909', '342', '合江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2910', '342', '叙永县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2911', '342', '古蔺县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2912', '343', '和平区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2913', '343', '河西区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2914', '343', '南开区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2915', '343', '河北区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2916', '343', '河东区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2917', '343', '红桥区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2918', '343', '东丽区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2919', '343', '津南区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2920', '343', '西青区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2921', '343', '北辰区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2922', '343', '塘沽区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2923', '343', '汉沽区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2924', '343', '大港区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2925', '343', '武清区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2926', '343', '宝坻区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2927', '343', '经济开发区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2928', '343', '宁河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2929', '343', '静海县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2930', '343', '蓟县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2931', '344', '城关区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2932', '344', '林周县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2933', '344', '当雄县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2934', '344', '尼木县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2935', '344', '曲水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2936', '344', '堆龙德庆县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2937', '344', '达孜县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2938', '344', '墨竹工卡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2939', '345', '噶尔县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2940', '345', '普兰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2941', '345', '札达县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2942', '345', '日土县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2943', '345', '革吉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2944', '345', '改则县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2945', '345', '措勤县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2946', '346', '昌都县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2947', '346', '江达县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2948', '346', '贡觉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2949', '346', '类乌齐县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2950', '346', '丁青县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2951', '346', '察雅县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2952', '346', '八宿县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2953', '346', '左贡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2954', '346', '芒康县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2955', '346', '洛隆县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2956', '346', '边坝县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2957', '347', '林芝县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2958', '347', '工布江达县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2959', '347', '米林县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2960', '347', '墨脱县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2961', '347', '波密县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2962', '347', '察隅县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2963', '347', '朗县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2964', '348', '那曲县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2965', '348', '嘉黎县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2966', '348', '比如县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2967', '348', '聂荣县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2968', '348', '安多县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2969', '348', '申扎县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2970', '348', '索县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2971', '348', '班戈县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2972', '348', '巴青县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2973', '348', '尼玛县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2974', '349', '日喀则市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2975', '349', '南木林县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2976', '349', '江孜县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2977', '349', '定日县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2978', '349', '萨迦县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2979', '349', '拉孜县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2980', '349', '昂仁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2981', '349', '谢通门县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2982', '349', '白朗县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2983', '349', '仁布县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2984', '349', '康马县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2985', '349', '定结县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2986', '349', '仲巴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2987', '349', '亚东县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2988', '349', '吉隆县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2989', '349', '聂拉木县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2990', '349', '萨嘎县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2991', '349', '岗巴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2992', '350', '乃东县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2993', '350', '扎囊县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2994', '350', '贡嘎县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2995', '350', '桑日县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2996', '350', '琼结县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2997', '350', '曲松县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2998', '350', '措美县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('2999', '350', '洛扎县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3000', '350', '加查县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3001', '350', '隆子县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3002', '350', '错那县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3003', '350', '浪卡子县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3004', '351', '天山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3005', '351', '沙依巴克区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3006', '351', '新市区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3007', '351', '水磨沟区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3008', '351', '头屯河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3009', '351', '达坂城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3010', '351', '米东区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3011', '351', '乌鲁木齐县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3012', '352', '阿克苏市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3013', '352', '温宿县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3014', '352', '库车县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3015', '352', '沙雅县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3016', '352', '新和县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3017', '352', '拜城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3018', '352', '乌什县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3019', '352', '阿瓦提县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3020', '352', '柯坪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3021', '353', '阿拉尔市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3022', '354', '库尔勒市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3023', '354', '轮台县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3024', '354', '尉犁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3025', '354', '若羌县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3026', '354', '且末县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3027', '354', '焉耆', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3028', '354', '和静县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3029', '354', '和硕县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3030', '354', '博湖县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3031', '355', '博乐市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3032', '355', '精河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3033', '355', '温泉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3034', '356', '呼图壁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3035', '356', '米泉市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3036', '356', '昌吉市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3037', '356', '阜康市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3038', '356', '玛纳斯县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3039', '356', '奇台县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3040', '356', '吉木萨尔县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3041', '356', '木垒', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3042', '357', '哈密市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3043', '357', '伊吾县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3044', '357', '巴里坤', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3045', '358', '和田市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3046', '358', '和田县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3047', '358', '墨玉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3048', '358', '皮山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3049', '358', '洛浦县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3050', '358', '策勒县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3051', '358', '于田县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3052', '358', '民丰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3053', '359', '喀什市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3054', '359', '疏附县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3055', '359', '疏勒县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3056', '359', '英吉沙县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3057', '359', '泽普县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3058', '359', '莎车县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3059', '359', '叶城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3060', '359', '麦盖提县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3061', '359', '岳普湖县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3062', '359', '伽师县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3063', '359', '巴楚县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3064', '359', '塔什库尔干', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3065', '360', '克拉玛依市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3066', '361', '阿图什市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3067', '361', '阿克陶县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3068', '361', '阿合奇县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3069', '361', '乌恰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3070', '362', '石河子市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3071', '363', '图木舒克市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3072', '364', '吐鲁番市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3073', '364', '鄯善县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3074', '364', '托克逊县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3075', '365', '五家渠市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3076', '366', '阿勒泰市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3077', '366', '布克赛尔', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3078', '366', '伊宁市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3079', '366', '布尔津县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3080', '366', '奎屯市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3081', '366', '乌苏市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3082', '366', '额敏县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3083', '366', '富蕴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3084', '366', '伊宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3085', '366', '福海县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3086', '366', '霍城县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3087', '366', '沙湾县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3088', '366', '巩留县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3089', '366', '哈巴河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3090', '366', '托里县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3091', '366', '青河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3092', '366', '新源县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3093', '366', '裕民县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3094', '366', '和布克赛尔', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3095', '366', '吉木乃县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3096', '366', '昭苏县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3097', '366', '特克斯县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3098', '366', '尼勒克县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3099', '366', '察布查尔', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3100', '367', '盘龙区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3101', '367', '五华区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3102', '367', '官渡区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3103', '367', '西山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3104', '367', '东川区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3105', '367', '安宁市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3106', '367', '呈贡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3107', '367', '晋宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3108', '367', '富民县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3109', '367', '宜良县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3110', '367', '嵩明县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3111', '367', '石林县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3112', '367', '禄劝', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3113', '367', '寻甸', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3114', '368', '兰坪', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3115', '368', '泸水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3116', '368', '福贡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3117', '368', '贡山', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3118', '369', '宁洱', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3119', '369', '思茅区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3120', '369', '墨江', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3121', '369', '景东', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3122', '369', '景谷', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3123', '369', '镇沅', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3124', '369', '江城', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3125', '369', '孟连', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3126', '369', '澜沧', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3127', '369', '西盟', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3128', '370', '古城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3129', '370', '宁蒗', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3130', '370', '玉龙', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3131', '370', '永胜县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3132', '370', '华坪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3133', '371', '隆阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3134', '371', '施甸县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3135', '371', '腾冲县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3136', '371', '龙陵县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3137', '371', '昌宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3138', '372', '楚雄市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3139', '372', '双柏县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3140', '372', '牟定县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3141', '372', '南华县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3142', '372', '姚安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3143', '372', '大姚县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3144', '372', '永仁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3145', '372', '元谋县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3146', '372', '武定县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3147', '372', '禄丰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3148', '373', '大理市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3149', '373', '祥云县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3150', '373', '宾川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3151', '373', '弥渡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3152', '373', '永平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3153', '373', '云龙县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3154', '373', '洱源县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3155', '373', '剑川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3156', '373', '鹤庆县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3157', '373', '漾濞', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3158', '373', '南涧', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3159', '373', '巍山', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3160', '374', '潞西市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3161', '374', '瑞丽市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3162', '374', '梁河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3163', '374', '盈江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3164', '374', '陇川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3165', '375', '香格里拉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3166', '375', '德钦县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3167', '375', '维西', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3168', '376', '泸西县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3169', '376', '蒙自县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3170', '376', '个旧市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3171', '376', '开远市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3172', '376', '绿春县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3173', '376', '建水县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3174', '376', '石屏县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3175', '376', '弥勒县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3176', '376', '元阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3177', '376', '红河县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3178', '376', '金平', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3179', '376', '河口', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3180', '376', '屏边', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3181', '377', '临翔区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3182', '377', '凤庆县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3183', '377', '云县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3184', '377', '永德县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3185', '377', '镇康县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3186', '377', '双江', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3187', '377', '耿马', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3188', '377', '沧源', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3189', '378', '麒麟区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3190', '378', '宣威市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3191', '378', '马龙县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3192', '378', '陆良县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3193', '378', '师宗县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3194', '378', '罗平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3195', '378', '富源县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3196', '378', '会泽县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3197', '378', '沾益县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3198', '379', '文山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3199', '379', '砚山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3200', '379', '西畴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3201', '379', '麻栗坡县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3202', '379', '马关县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3203', '379', '丘北县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3204', '379', '广南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3205', '379', '富宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3206', '380', '景洪市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3207', '380', '勐海县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3208', '380', '勐腊县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3209', '381', '红塔区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3210', '381', '江川县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3211', '381', '澄江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3212', '381', '通海县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3213', '381', '华宁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3214', '381', '易门县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3215', '381', '峨山', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3216', '381', '新平', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3217', '381', '元江', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3218', '382', '昭阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3219', '382', '鲁甸县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3220', '382', '巧家县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3221', '382', '盐津县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3222', '382', '大关县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3223', '382', '永善县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3224', '382', '绥江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3225', '382', '镇雄县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3226', '382', '彝良县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3227', '382', '威信县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3228', '382', '水富县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3229', '383', '西湖区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3230', '383', '上城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3231', '383', '下城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3232', '383', '拱墅区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3233', '383', '滨江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3234', '383', '江干区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3235', '383', '萧山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3236', '383', '余杭区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3237', '383', '市郊', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3238', '383', '建德市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3239', '383', '富阳市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3240', '383', '临安市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3241', '383', '桐庐县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3242', '383', '淳安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3243', '384', '吴兴区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3244', '384', '南浔区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3245', '384', '德清县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3246', '384', '长兴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3247', '384', '安吉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3248', '385', '南湖区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3249', '385', '秀洲区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3250', '385', '海宁市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3251', '385', '嘉善县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3252', '385', '平湖市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3253', '385', '桐乡市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3254', '385', '海盐县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3255', '386', '婺城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3256', '386', '金东区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3257', '386', '兰溪市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3258', '386', '市区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3259', '386', '佛堂镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3260', '386', '上溪镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3261', '386', '义亭镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3262', '386', '大陈镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3263', '386', '苏溪镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3264', '386', '赤岸镇', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3265', '386', '东阳市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3266', '386', '永康市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3267', '386', '武义县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3268', '386', '浦江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3269', '386', '磐安县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3270', '387', '莲都区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3271', '387', '龙泉市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3272', '387', '青田县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3273', '387', '缙云县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3274', '387', '遂昌县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3275', '387', '松阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3276', '387', '云和县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3277', '387', '庆元县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3278', '387', '景宁', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3279', '388', '海曙区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3280', '388', '江东区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3281', '388', '江北区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3282', '388', '镇海区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3283', '388', '北仑区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3284', '388', '鄞州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3285', '388', '余姚市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3286', '388', '慈溪市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3287', '388', '奉化市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3288', '388', '象山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3289', '388', '宁海县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3290', '389', '越城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3291', '389', '上虞市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3292', '389', '嵊州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3293', '389', '绍兴县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3294', '389', '新昌县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3295', '389', '诸暨市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3296', '390', '椒江区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3297', '390', '黄岩区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3298', '390', '路桥区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3299', '390', '温岭市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3300', '390', '临海市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3301', '390', '玉环县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3302', '390', '三门县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3303', '390', '天台县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3304', '390', '仙居县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3305', '391', '鹿城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3306', '391', '龙湾区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3307', '391', '瓯海区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3308', '391', '瑞安市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3309', '391', '乐清市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3310', '391', '洞头县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3311', '391', '永嘉县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3312', '391', '平阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3313', '391', '苍南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3314', '391', '文成县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3315', '391', '泰顺县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3316', '392', '定海区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3317', '392', '普陀区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3318', '392', '岱山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3319', '392', '嵊泗县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3320', '393', '衢州市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3321', '393', '江山市', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3322', '393', '常山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3323', '393', '开化县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3324', '393', '龙游县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3325', '394', '合川区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3326', '394', '江津区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3327', '394', '南川区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3328', '394', '永川区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3329', '394', '南岸区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3330', '394', '渝北区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3331', '394', '万盛区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3332', '394', '大渡口区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3333', '394', '万州区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3334', '394', '北碚区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3335', '394', '沙坪坝区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3336', '394', '巴南区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3337', '394', '涪陵区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3338', '394', '江北区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3339', '394', '九龙坡区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3340', '394', '渝中区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3341', '394', '黔江开发区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3342', '394', '长寿区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3343', '394', '双桥区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3344', '394', '綦江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3345', '394', '潼南县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3346', '394', '铜梁县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3347', '394', '大足县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3348', '394', '荣昌县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3349', '394', '璧山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3350', '394', '垫江县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3351', '394', '武隆县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3352', '394', '丰都县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3353', '394', '城口县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3354', '394', '梁平县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3355', '394', '开县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3356', '394', '巫溪县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3357', '394', '巫山县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3358', '394', '奉节县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3359', '394', '云阳县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3360', '394', '忠县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3361', '394', '石柱', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3362', '394', '彭水', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3363', '394', '酉阳', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3364', '394', '秀山', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3365', '395', '沙田区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3366', '395', '东区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3367', '395', '观塘区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3368', '395', '黄大仙区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3369', '395', '九龙城区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3370', '395', '屯门区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3371', '395', '葵青区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3372', '395', '元朗区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3373', '395', '深水埗区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3374', '395', '西贡区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3375', '395', '大埔区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3376', '395', '湾仔区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3377', '395', '油尖旺区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3378', '395', '北区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3379', '395', '南区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3380', '395', '荃湾区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3381', '395', '中西区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3382', '395', '离岛区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3383', '396', '澳门', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3384', '397', '台北', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3385', '397', '高雄', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3386', '397', '基隆', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3387', '397', '台中', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3388', '397', '台南', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3389', '397', '新竹', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3390', '397', '嘉义', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3391', '397', '宜兰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3392', '397', '桃园县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3393', '397', '苗栗县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3394', '397', '彰化县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3395', '397', '南投县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3396', '397', '云林县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3397', '397', '屏东县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3398', '397', '台东县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3399', '397', '花莲县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3400', '397', '澎湖县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3401', '3', '合肥', '2', '0');
INSERT INTO `bypal_comm_region` VALUES ('3402', '3401', '庐阳区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3403', '3401', '瑶海区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3404', '3401', '蜀山区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3405', '3401', '包河区', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3406', '3401', '长丰县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3407', '3401', '肥东县', '3', '0');
INSERT INTO `bypal_comm_region` VALUES ('3408', '3401', '肥西县', '3', '0');

-- ----------------------------
-- Table structure for bypal_comm_role
-- ----------------------------
DROP TABLE IF EXISTS `bypal_comm_role`;
CREATE TABLE `bypal_comm_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(50) NOT NULL COMMENT '角色名称',
  `role_code` varchar(32) NOT NULL COMMENT '角色编码',
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Records of bypal_comm_role
-- ----------------------------
INSERT INTO `bypal_comm_role` VALUES ('1', 'admin', '00000001');
INSERT INTO `bypal_comm_role` VALUES ('2', '业务人员', '00000002');
INSERT INTO `bypal_comm_role` VALUES ('3', '普通商户', '10000000');
INSERT INTO `bypal_comm_role` VALUES ('4', '财务', '10000000');
INSERT INTO `bypal_comm_role` VALUES ('5', '风控', '00000004');
INSERT INTO `bypal_comm_role` VALUES ('7', '超级管理员', '00000007');

-- ----------------------------
-- Table structure for bypal_comm_user
-- ----------------------------
DROP TABLE IF EXISTS `bypal_comm_user`;
CREATE TABLE `bypal_comm_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_name` varchar(50) NOT NULL COMMENT '用户姓名',
  `load_name` varchar(50) NOT NULL COMMENT '用户登录名',
  `load_pwd` varchar(50) NOT NULL COMMENT '登录密码',
  `user_role` int(11) NOT NULL COMMENT '角色ID',
  `user_org` int(11) NOT NULL COMMENT '所属组织',
  `user_depart` int(11) NOT NULL COMMENT '所属部门',
  `user_superior` int(11) NOT NULL COMMENT '用户直属上级',
  `user_phone` varchar(50) NOT NULL COMMENT '联系方式',
  `user_indate` int(11) DEFAULT '0' COMMENT '入职时间',
  `user_outdate` int(11) DEFAULT '0' COMMENT '离职时间',
  `user_icon` varchar(100) DEFAULT NULL COMMENT '用户头像路径',
  `fac_account` varchar(20) DEFAULT NULL COMMENT '商户唯一编码',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `load_name` (`load_name`)
) ENGINE=MyISAM AUTO_INCREMENT=180 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of bypal_comm_user
-- ----------------------------
INSERT INTO `bypal_comm_user` VALUES ('1', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '1', '0', '0', '', '0', '0', null, null);
INSERT INTO `bypal_comm_user` VALUES ('128', '测试1', '18216415661@163.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'bb02d40a8');
INSERT INTO `bypal_comm_user` VALUES ('129', '回火', '18216415661@163.com0001', 'e10adc3949ba59abbe56e057f20f883e', '4', '100', '0', '0', '', '0', '0', '', 'bb02d40a8');
INSERT INTO `bypal_comm_user` VALUES ('130', '黑马基地', '307228416@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'bbb64a6f5');
INSERT INTO `bypal_comm_user` VALUES ('131', '沃尔得英语', '188784111@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'bb437f00f');
INSERT INTO `bypal_comm_user` VALUES ('132', '泛美环球', '43655286@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b1504fd2c');
INSERT INTO `bypal_comm_user` VALUES ('133', '温思顿', 'taylor@vinston.net', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b6316eb5a');
INSERT INTO `bypal_comm_user` VALUES ('134', '金矢燕伦', 'simon.shi@ukpass.org', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b17f4bd69');
INSERT INTO `bypal_comm_user` VALUES ('135', '蚂蚁星工场', '137244634@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'ba0b8210e');
INSERT INTO `bypal_comm_user` VALUES ('136', '力威拳馆', '805112539@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b303efe4b');
INSERT INTO `bypal_comm_user` VALUES ('137', '新奇世界', 'liwei@bypal.cn', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b9f73ffa1');
INSERT INTO `bypal_comm_user` VALUES ('138', '天才宝贝', '156688981@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'beb5a6a6e');
INSERT INTO `bypal_comm_user` VALUES ('139', '声伯尔', '491571938@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b9832fc90');
INSERT INTO `bypal_comm_user` VALUES ('140', '延时、自选利率', '765546756@163.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b84160807');
INSERT INTO `bypal_comm_user` VALUES ('141', 'hh', '765546756@163.com1', 'e10adc3949ba59abbe56e057f20f883e', '4', '100', '0', '0', '', '0', '0', '', 'b84160807');
INSERT INTO `bypal_comm_user` VALUES ('142', 'hhuh', '123456789@163.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'bbf375be8');
INSERT INTO `bypal_comm_user` VALUES ('143', 'hah ', '123456789@163.com01', 'e10adc3949ba59abbe56e057f20f883e', '4', '100', '0', '0', '', '0', '0', '', 'bbf375be8');
INSERT INTO `bypal_comm_user` VALUES ('144', 'STD舞蹈', '2544097640@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'bdc497777');
INSERT INTO `bypal_comm_user` VALUES ('145', '木威健身', '82947918@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b688ecabb');
INSERT INTO `bypal_comm_user` VALUES ('146', '振宇拳馆', '597737597@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b13451a7c');
INSERT INTO `bypal_comm_user` VALUES ('147', '人参米', 'poprice001@126.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'ba97867dc');
INSERT INTO `bypal_comm_user` VALUES ('148', '咖菲猫', '512855959@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b21cc702a');
INSERT INTO `bypal_comm_user` VALUES ('149', '蝴蝶树摄影', '1961751930@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b01729719');
INSERT INTO `bypal_comm_user` VALUES ('150', '力健健身', '124255931@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b86e2197b');
INSERT INTO `bypal_comm_user` VALUES ('151', '雅诺思', '48541502@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b11c42279');
INSERT INTO `bypal_comm_user` VALUES ('152', '滴滴打拳', '9895524@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b4dbb4e8e');
INSERT INTO `bypal_comm_user` VALUES ('153', '联诚驾校', '1044041921@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'bcd2b18d1');
INSERT INTO `bypal_comm_user` VALUES ('154', '艺舞之星', '893601314@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b7957c3b4');
INSERT INTO `bypal_comm_user` VALUES ('155', '冰山名人', '1755929569@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b52783e40');
INSERT INTO `bypal_comm_user` VALUES ('156', '菲悦舞蹈', '366398323@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b3b24c722');
INSERT INTO `bypal_comm_user` VALUES ('157', '梦想青成', '1459004756@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b15273cbb');
INSERT INTO `bypal_comm_user` VALUES ('158', '舞安瑜伽', '1056258729@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'bd826eb33');
INSERT INTO `bypal_comm_user` VALUES ('159', '爱艺舞', '1018668117@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b0fff3d06');
INSERT INTO `bypal_comm_user` VALUES ('160', '菲奥娜', '293429841@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b41d703d5');
INSERT INTO `bypal_comm_user` VALUES ('161', '东欣舞蹈', '861742398@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b67b4f728');
INSERT INTO `bypal_comm_user` VALUES ('162', '优果瑜伽', 'zdd0707@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b945c1ad6');
INSERT INTO `bypal_comm_user` VALUES ('163', '梵歌瑜伽', '370892309@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'bc04d8415');
INSERT INTO `bypal_comm_user` VALUES ('164', '米小姐东方之舞', '2069416934@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'baf7790bd');
INSERT INTO `bypal_comm_user` VALUES ('165', '小景钢管舞', '75752336@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b6581e506');
INSERT INTO `bypal_comm_user` VALUES ('166', '遇见瑜伽', '2207647396@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b38ee341d');
INSERT INTO `bypal_comm_user` VALUES ('167', '金婵舞蹈工作室', '179979261@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'bb100dae8');
INSERT INTO `bypal_comm_user` VALUES ('168', '果麦蛋糕', '2646091253@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b6c457eb1');
INSERT INTO `bypal_comm_user` VALUES ('169', '抡吧健身', 'shine3d@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b4b123534');
INSERT INTO `bypal_comm_user` VALUES ('170', '反倒是', '4234@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b12d4df7c');
INSERT INTO `bypal_comm_user` VALUES ('171', '艾美瑞', 'zhoueryan@bypal.cn', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'ba317d33a');
INSERT INTO `bypal_comm_user` VALUES ('172', 'makebobuo', '43655286@qq.com002', 'e10adc3949ba59abbe56e057f20f883e', '4', '100', '0', '0', '', '0', '0', '', 'b1504fd2c');
INSERT INTO `bypal_comm_user` VALUES ('173', '百朋', 'bypal@bypal.cn', '25f9e794323b453885f5181f1b624d0b', '3', '100', '0', '0', '', '0', '0', '', 'bc2875db2');
INSERT INTO `bypal_comm_user` VALUES ('174', '小白公子', 'bypal@bypal.cn01', 'e10adc3949ba59abbe56e057f20f883e', '4', '100', '0', '0', '', '0', '0', '', 'bc2875db2');
INSERT INTO `bypal_comm_user` VALUES ('175', '迈威', '500359@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'bcf5c34cd');
INSERT INTO `bypal_comm_user` VALUES ('176', 'fds', 'fsd@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '3', '100', '0', '0', '', '0', '0', '', 'b3921e88b');
INSERT INTO `bypal_comm_user` VALUES ('177', '小小', '765546756@163.com01', 'e10adc3949ba59abbe56e057f20f883e', '4', '100', '0', '0', '', '0', '0', '', 'b84160807');
INSERT INTO `bypal_comm_user` VALUES ('178', '他', '18216415661@163.com111', 'e10adc3949ba59abbe56e057f20f883e', '4', '100', '0', '0', '', '0', '0', '', 'bb02d40a8');
INSERT INTO `bypal_comm_user` VALUES ('179', '李维', 'liwei@bypal.cn001', 'e10adc3949ba59abbe56e057f20f883e', '4', '100', '0', '0', '', '0', '0', '', 'b9f73ffa1');

-- ----------------------------
-- Table structure for bypal_cust_accounterinfo
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_accounterinfo`;
CREATE TABLE `bypal_cust_accounterinfo` (
  `ac_id` int(11) NOT NULL,
  `ac_value` varchar(255) NOT NULL,
  PRIMARY KEY (`ac_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='账户拥有者信息提示';

-- ----------------------------
-- Records of bypal_cust_accounterinfo
-- ----------------------------
INSERT INTO `bypal_cust_accounterinfo` VALUES ('1', '已开立账户');
INSERT INTO `bypal_cust_accounterinfo` VALUES ('2', '新账户开立');

-- ----------------------------
-- Table structure for bypal_cust_bankcard
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_bankcard`;
CREATE TABLE `bypal_cust_bankcard` (
  `bc_id` int(11) NOT NULL AUTO_INCREMENT,
  `bc_custid` int(11) NOT NULL,
  `bc_bankcard` varchar(255) CHARACTER SET utf8 NOT NULL,
  `bc_tokenPayData` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '注释为‘银联标识符',
  `bc_bankid` int(11) DEFAULT NULL,
  `bc_bankname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bc_bankmold` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `bc_banktype` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `bc_reservedphone` varchar(11) CHARACTER SET utf8 NOT NULL COMMENT '预留手机',
  `bc_bankstate` int(2) DEFAULT '1' COMMENT '0、删除；1、正常',
  `bc_deletetime` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`bc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=182 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bypal_cust_bankcard
-- ----------------------------
INSERT INTO `bypal_cust_bankcard` VALUES ('181', '155', '622908366065471111', '', '105', '兴业银行', '兴业自然人生理财卡', '借记卡', '13911684280', '1', null);

-- ----------------------------
-- Table structure for bypal_cust_code
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_code`;
CREATE TABLE `bypal_cust_code` (
  `co_id` int(11) NOT NULL AUTO_INCREMENT,
  `co_phone` varchar(255) NOT NULL,
  `co_code` varchar(6) NOT NULL,
  `co_date` int(10) NOT NULL,
  `co_status` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`co_id`)
) ENGINE=MyISAM AUTO_INCREMENT=799 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bypal_cust_code
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_cust_degree
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_degree`;
CREATE TABLE `bypal_cust_degree` (
  `deg_id` int(11) NOT NULL AUTO_INCREMENT,
  `deg_code` varchar(255) NOT NULL,
  `deg_name` varchar(255) NOT NULL,
  PRIMARY KEY (`deg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='学位';

-- ----------------------------
-- Records of bypal_cust_degree
-- ----------------------------
INSERT INTO `bypal_cust_degree` VALUES ('1', '0', '其他');
INSERT INTO `bypal_cust_degree` VALUES ('2', '1', '名誉博士');
INSERT INTO `bypal_cust_degree` VALUES ('3', '2', '博士');
INSERT INTO `bypal_cust_degree` VALUES ('4', '3', '硕士');
INSERT INTO `bypal_cust_degree` VALUES ('5', '4', '学士');
INSERT INTO `bypal_cust_degree` VALUES ('6', '9', '未知');

-- ----------------------------
-- Table structure for bypal_cust_detailinformation
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_detailinformation`;
CREATE TABLE `bypal_cust_detailinformation` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `cust_id` int(8) NOT NULL,
  `marry_status_id` int(5) NOT NULL COMMENT '对应bypal_cust_marital  婚姻状况',
  `communication_province` varchar(30) NOT NULL COMMENT '通讯地址--省份',
  `communication_city` varchar(30) NOT NULL COMMENT '通讯地址--城市',
  `communication_district` varchar(30) NOT NULL COMMENT '通讯地址--城区',
  `communication_address` varchar(100) NOT NULL COMMENT '通讯地址--详细地址',
  `communication_postcode` varchar(10) NOT NULL COMMENT '通讯地址--邮编',
  `education_status_id` int(5) NOT NULL COMMENT '对应bypal_cust_education   最高学历',
  `degree_status_id` int(5) NOT NULL COMMENT '对应bypal_cust_degree 最高学位',
  `live_province` varchar(30) NOT NULL COMMENT '居住地址--省份',
  `live_city` varchar(30) NOT NULL COMMENT '居住地址--城市',
  `live_district` varchar(30) NOT NULL COMMENT '居住地址--城区',
  `live_address` varchar(100) NOT NULL COMMENT '居住地址--详细地址',
  `live_postcode` varchar(10) NOT NULL COMMENT '居住地址--邮编',
  `live_status` int(5) NOT NULL COMMENT '居住状况 对应bypal_cust_livestatus',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '是否完善补全',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='详细信息表';

-- ----------------------------
-- Records of bypal_cust_detailinformation
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_cust_duty
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_duty`;
CREATE TABLE `bypal_cust_duty` (
  `du_id` int(11) NOT NULL AUTO_INCREMENT,
  `du_code` varchar(255) NOT NULL,
  `du_name` varchar(255) NOT NULL,
  PRIMARY KEY (`du_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='职位';

-- ----------------------------
-- Records of bypal_cust_duty
-- ----------------------------
INSERT INTO `bypal_cust_duty` VALUES ('1', '1', '高级领导（局级及局级以上 领导或高级管理人员）');
INSERT INTO `bypal_cust_duty` VALUES ('2', '2', '中级领导（局级以下领导或 大公司中级管理人员）');
INSERT INTO `bypal_cust_duty` VALUES ('3', '3', '一般员工');
INSERT INTO `bypal_cust_duty` VALUES ('4', '4', '其他');
INSERT INTO `bypal_cust_duty` VALUES ('5', '9', '未知');

-- ----------------------------
-- Table structure for bypal_cust_education
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_education`;
CREATE TABLE `bypal_cust_education` (
  `edu_id` int(11) NOT NULL AUTO_INCREMENT,
  `edu_code` varchar(255) NOT NULL,
  `edu_name` varchar(255) NOT NULL,
  PRIMARY KEY (`edu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='学历';

-- ----------------------------
-- Records of bypal_cust_education
-- ----------------------------
INSERT INTO `bypal_cust_education` VALUES ('1', '10', '研究生');
INSERT INTO `bypal_cust_education` VALUES ('2', '20', '大学本科（简称“大学” ）');
INSERT INTO `bypal_cust_education` VALUES ('3', '30', '大学专科和专科学校（简称“大专” ）');
INSERT INTO `bypal_cust_education` VALUES ('4', '40', '中等专业学校或中等技术学校');
INSERT INTO `bypal_cust_education` VALUES ('5', '50', '技术学校');
INSERT INTO `bypal_cust_education` VALUES ('6', '60', '高中');
INSERT INTO `bypal_cust_education` VALUES ('7', '70', '初中');
INSERT INTO `bypal_cust_education` VALUES ('8', '80', '小学');
INSERT INTO `bypal_cust_education` VALUES ('9', '90', '文盲或半文盲');
INSERT INTO `bypal_cust_education` VALUES ('10', '99', '未知');

-- ----------------------------
-- Table structure for bypal_cust_feedback
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_feedback`;
CREATE TABLE `bypal_cust_feedback` (
  `feedid` int(11) NOT NULL AUTO_INCREMENT COMMENT '表主键id',
  `custid` int(11) NOT NULL COMMENT '用户的主键id',
  `phone` varchar(11) NOT NULL COMMENT '电话号码',
  `fb_content` text NOT NULL COMMENT '反馈内容',
  `creatime` int(11) NOT NULL COMMENT '反馈时间',
  PRIMARY KEY (`feedid`),
  KEY `custid` (`custid`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='意见反馈';

-- ----------------------------
-- Records of bypal_cust_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_cust_fivestage
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_fivestage`;
CREATE TABLE `bypal_cust_fivestage` (
  `fs_id` int(11) NOT NULL AUTO_INCREMENT,
  `fs_code` int(11) NOT NULL,
  `fs_value` varchar(255) NOT NULL,
  PRIMARY KEY (`fs_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='五级分类状态';

-- ----------------------------
-- Records of bypal_cust_fivestage
-- ----------------------------
INSERT INTO `bypal_cust_fivestage` VALUES ('1', '1', '正常');
INSERT INTO `bypal_cust_fivestage` VALUES ('2', '2', '关注');
INSERT INTO `bypal_cust_fivestage` VALUES ('3', '4', '可疑');
INSERT INTO `bypal_cust_fivestage` VALUES ('4', '5', '损失');
INSERT INTO `bypal_cust_fivestage` VALUES ('5', '3', '次级');
INSERT INTO `bypal_cust_fivestage` VALUES ('6', '9', '未知');

-- ----------------------------
-- Table structure for bypal_cust_idtype
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_idtype`;
CREATE TABLE `bypal_cust_idtype` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_code` varchar(255) NOT NULL,
  `typename` varchar(255) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='证件类型';

-- ----------------------------
-- Records of bypal_cust_idtype
-- ----------------------------
INSERT INTO `bypal_cust_idtype` VALUES ('1', '0', '身份证');
INSERT INTO `bypal_cust_idtype` VALUES ('2', '1', '户口簿');
INSERT INTO `bypal_cust_idtype` VALUES ('3', '2', '护照');
INSERT INTO `bypal_cust_idtype` VALUES ('4', '3', '军官证');
INSERT INTO `bypal_cust_idtype` VALUES ('5', '4', '士兵证');
INSERT INTO `bypal_cust_idtype` VALUES ('6', '5', '港澳居民来往内地通行证');
INSERT INTO `bypal_cust_idtype` VALUES ('7', '6', '台湾同胞来往内地通行证');
INSERT INTO `bypal_cust_idtype` VALUES ('8', '7', '临时身份证');
INSERT INTO `bypal_cust_idtype` VALUES ('9', '8', '外国人居留证');
INSERT INTO `bypal_cust_idtype` VALUES ('10', '9', '警官证');
INSERT INTO `bypal_cust_idtype` VALUES ('11', 'A', '香港身份证');
INSERT INTO `bypal_cust_idtype` VALUES ('12', 'B', '澳门身份证');
INSERT INTO `bypal_cust_idtype` VALUES ('13', 'C', '台湾身份证');
INSERT INTO `bypal_cust_idtype` VALUES ('14', 'X', '其他证件');

-- ----------------------------
-- Table structure for bypal_cust_info
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_info`;
CREATE TABLE `bypal_cust_info` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(255) NOT NULL COMMENT '姓名',
  `cust_pic` varchar(255) NOT NULL COMMENT '头像',
  `cust_sex` int(11) NOT NULL COMMENT '性别ID',
  `cust_identityid` int(11) NOT NULL COMMENT '证件类型ID',
  `cust_identity` varchar(255) NOT NULL COMMENT '证件号码',
  `cust_phone` varchar(255) NOT NULL COMMENT '手机号码',
  `cust_email` varchar(255) NOT NULL COMMENT '电子邮件',
  `cust_loadname` varchar(255) NOT NULL COMMENT '登录名',
  `cust_pwd` varchar(255) NOT NULL COMMENT '密码',
  `cust_createdate` int(10) NOT NULL COMMENT '创建时间',
  `cust_recentdate` int(10) NOT NULL COMMENT '最近登录时间',
  `cust_unworktime` int(10) NOT NULL COMMENT '删除时间',
  `cust_mtime` int(10) NOT NULL COMMENT '用于注册或者密码找回等验证码的有效期',
  `cust_logins_error` tinyint(2) NOT NULL COMMENT '在密码错误的情况下，记录错误的次数',
  `cust_time_error` varchar(15) NOT NULL COMMENT '密码错误登录失败的时间记录（和登录次数一起判断是否禁用该账号登录）',
  PRIMARY KEY (`cust_id`)
) ENGINE=MyISAM AUTO_INCREMENT=156 DEFAULT CHARSET=utf8 COMMENT='客户表';

-- ----------------------------
-- Records of bypal_cust_info
-- ----------------------------
INSERT INTO `bypal_cust_info` VALUES ('155', '周尔妍', '', '2', '0', '430105198408281322', '13911684280', 'zhoueryan@bypal.cn', '13911684280', 'e1fa8a6a32e69ba4523e562f5b84ad6d', '1464421250', '1464661423', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for bypal_cust_level
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_level`;
CREATE TABLE `bypal_cust_level` (
  `cl_id` int(11) NOT NULL AUTO_INCREMENT,
  `cl_name` varchar(255) NOT NULL,
  `cl_credit` int(255) NOT NULL,
  PRIMARY KEY (`cl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='客户等级表';

-- ----------------------------
-- Records of bypal_cust_level
-- ----------------------------
INSERT INTO `bypal_cust_level` VALUES ('1', 'A1', '1000');
INSERT INTO `bypal_cust_level` VALUES ('2', 'A2', '1000');
INSERT INTO `bypal_cust_level` VALUES ('3', 'A3', '1000');
INSERT INTO `bypal_cust_level` VALUES ('4', 'A4', '1000');
INSERT INTO `bypal_cust_level` VALUES ('5', 'A5', '1000');
INSERT INTO `bypal_cust_level` VALUES ('6', 'B1', '1000');
INSERT INTO `bypal_cust_level` VALUES ('7', 'B2', '1000');
INSERT INTO `bypal_cust_level` VALUES ('8', 'B3', '1000');
INSERT INTO `bypal_cust_level` VALUES ('9', 'B4', '1000');
INSERT INTO `bypal_cust_level` VALUES ('10', 'B5', '1000');
INSERT INTO `bypal_cust_level` VALUES ('11', 'C1', '1000');
INSERT INTO `bypal_cust_level` VALUES ('12', 'C2', '1000');
INSERT INTO `bypal_cust_level` VALUES ('13', 'C3', '1000');
INSERT INTO `bypal_cust_level` VALUES ('14', 'C4', '1000');
INSERT INTO `bypal_cust_level` VALUES ('15', 'C5', '1000');
INSERT INTO `bypal_cust_level` VALUES ('16', 'D1', '1000');
INSERT INTO `bypal_cust_level` VALUES ('17', 'D2', '1000');
INSERT INTO `bypal_cust_level` VALUES ('18', 'D3', '1000');
INSERT INTO `bypal_cust_level` VALUES ('19', 'D4', '1000');
INSERT INTO `bypal_cust_level` VALUES ('20', 'D5', '1000');
INSERT INTO `bypal_cust_level` VALUES ('21', 'E1', '1000');
INSERT INTO `bypal_cust_level` VALUES ('22', 'E2', '1000');
INSERT INTO `bypal_cust_level` VALUES ('23', 'E3', '1000');
INSERT INTO `bypal_cust_level` VALUES ('24', 'E4', '1000');
INSERT INTO `bypal_cust_level` VALUES ('25', 'E5', '1000');

-- ----------------------------
-- Table structure for bypal_cust_linkman
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_linkman`;
CREATE TABLE `bypal_cust_linkman` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cust_id` int(10) DEFAULT NULL,
  `first_linkman_name` varchar(20) DEFAULT NULL COMMENT '第一联系人名字',
  `first_linkman_type` int(5) DEFAULT NULL COMMENT '第一联系人关系  对应bypal_cust_relation',
  `first_linkman_phone` varchar(30) DEFAULT NULL COMMENT '第一联系人电话',
  `first_linkman_province` varchar(30) DEFAULT NULL COMMENT '第一联系人地址-省份',
  `first_linkman_city` varchar(30) DEFAULT NULL COMMENT '第一联系人地址-城市',
  `first_linkman_district` varchar(30) DEFAULT NULL COMMENT '第一联系人地址-城区',
  `first_linkman_address` varchar(100) DEFAULT NULL COMMENT '第一联系人地址-详细地址',
  `second_linkman_name` varchar(20) DEFAULT NULL COMMENT '第二联系人名字',
  `second_linkman_type` int(5) DEFAULT NULL COMMENT '第二联系人关系  对应bypal_cust_relation',
  `second_linkman_phone` varchar(30) DEFAULT NULL COMMENT '第二联系人电话',
  `status` int(2) DEFAULT '0' COMMENT '是否完善  0未完善，1完善',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='联系人基本信息表';

-- ----------------------------
-- Records of bypal_cust_linkman
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_cust_livestatus
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_livestatus`;
CREATE TABLE `bypal_cust_livestatus` (
  `li_id` int(11) NOT NULL AUTO_INCREMENT,
  `li_code` int(11) NOT NULL,
  `li_value` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`li_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COMMENT='居住状况';

-- ----------------------------
-- Records of bypal_cust_livestatus
-- ----------------------------
INSERT INTO `bypal_cust_livestatus` VALUES ('1', '1', '自置');
INSERT INTO `bypal_cust_livestatus` VALUES ('2', '2', '按揭');
INSERT INTO `bypal_cust_livestatus` VALUES ('3', '3', '亲属楼宇');
INSERT INTO `bypal_cust_livestatus` VALUES ('4', '4', '集体宿舍');
INSERT INTO `bypal_cust_livestatus` VALUES ('5', '5', '租房');
INSERT INTO `bypal_cust_livestatus` VALUES ('6', '6', '共有住宅');
INSERT INTO `bypal_cust_livestatus` VALUES ('7', '7', '其他');
INSERT INTO `bypal_cust_livestatus` VALUES ('8', '9', '未知');

-- ----------------------------
-- Table structure for bypal_cust_loanaccountstate
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_loanaccountstate`;
CREATE TABLE `bypal_cust_loanaccountstate` (
  `lc_id` int(11) NOT NULL AUTO_INCREMENT,
  `lc_code` int(11) NOT NULL,
  `lc_value` varchar(255) NOT NULL,
  PRIMARY KEY (`lc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='借款账户状态';

-- ----------------------------
-- Records of bypal_cust_loanaccountstate
-- ----------------------------
INSERT INTO `bypal_cust_loanaccountstate` VALUES ('1', '1', '正常');
INSERT INTO `bypal_cust_loanaccountstate` VALUES ('2', '2', '逾期');
INSERT INTO `bypal_cust_loanaccountstate` VALUES ('3', '5', '转出');
INSERT INTO `bypal_cust_loanaccountstate` VALUES ('4', '4', '呆账（待核销）');
INSERT INTO `bypal_cust_loanaccountstate` VALUES ('5', '3', '结清');

-- ----------------------------
-- Table structure for bypal_cust_loanassure
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_loanassure`;
CREATE TABLE `bypal_cust_loanassure` (
  `la_id` int(11) NOT NULL AUTO_INCREMENT,
  `la_code` int(11) NOT NULL,
  `la_value` varchar(255) NOT NULL,
  PRIMARY KEY (`la_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='担保方式';

-- ----------------------------
-- Records of bypal_cust_loanassure
-- ----------------------------
INSERT INTO `bypal_cust_loanassure` VALUES ('1', '1', '质押（含保证金）');
INSERT INTO `bypal_cust_loanassure` VALUES ('2', '2', '抵押');
INSERT INTO `bypal_cust_loanassure` VALUES ('3', '3', '自然人保证');
INSERT INTO `bypal_cust_loanassure` VALUES ('4', '4', '信用/免担保');
INSERT INTO `bypal_cust_loanassure` VALUES ('5', '5', '组合（含自然人保证）');
INSERT INTO `bypal_cust_loanassure` VALUES ('6', '6', '组合（不含自然人保证）');
INSERT INTO `bypal_cust_loanassure` VALUES ('7', '7', '农户联保');
INSERT INTO `bypal_cust_loanassure` VALUES ('8', '9', '其他');

-- ----------------------------
-- Table structure for bypal_cust_loanstatus
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_loanstatus`;
CREATE TABLE `bypal_cust_loanstatus` (
  `ls_id` int(11) NOT NULL AUTO_INCREMENT,
  `ls_value` varchar(255) NOT NULL,
  PRIMARY KEY (`ls_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='贷款申请审核状态表';

-- ----------------------------
-- Records of bypal_cust_loanstatus
-- ----------------------------
INSERT INTO `bypal_cust_loanstatus` VALUES ('1', '申请中');
INSERT INTO `bypal_cust_loanstatus` VALUES ('2', '已批准');
INSERT INTO `bypal_cust_loanstatus` VALUES ('3', '未通过');
INSERT INTO `bypal_cust_loanstatus` VALUES ('4', '已取消');
INSERT INTO `bypal_cust_loanstatus` VALUES ('5', '初审通过');
INSERT INTO `bypal_cust_loanstatus` VALUES ('6', '初审未过');
INSERT INTO `bypal_cust_loanstatus` VALUES ('7', '选择期限');

-- ----------------------------
-- Table structure for bypal_cust_loantype
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_loantype`;
CREATE TABLE `bypal_cust_loantype` (
  `lt_id` int(11) NOT NULL AUTO_INCREMENT,
  `lt_code` int(11) NOT NULL,
  `lt_value` varchar(255) NOT NULL,
  PRIMARY KEY (`lt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_cust_loantype
-- ----------------------------
INSERT INTO `bypal_cust_loantype` VALUES ('1', '11', '个人住房贷款');
INSERT INTO `bypal_cust_loantype` VALUES ('2', '12', '个人商用房（包括商住两用）贷款');
INSERT INTO `bypal_cust_loantype` VALUES ('3', '13', '个人住房公积金贷款');
INSERT INTO `bypal_cust_loantype` VALUES ('4', '21', '个人汽车消费贷款');
INSERT INTO `bypal_cust_loantype` VALUES ('5', '31', '个人助学贷款');
INSERT INTO `bypal_cust_loantype` VALUES ('6', '41', '个人经营性贷款');
INSERT INTO `bypal_cust_loantype` VALUES ('7', '51', '农户贷款');
INSERT INTO `bypal_cust_loantype` VALUES ('8', '91', '个人消费贷款');
INSERT INTO `bypal_cust_loantype` VALUES ('9', '99', '其他');

-- ----------------------------
-- Table structure for bypal_cust_marital
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_marital`;
CREATE TABLE `bypal_cust_marital` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_code` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_cust_marital
-- ----------------------------
INSERT INTO `bypal_cust_marital` VALUES ('1', '10', '未婚');
INSERT INTO `bypal_cust_marital` VALUES ('2', '20', '已婚');
INSERT INTO `bypal_cust_marital` VALUES ('6', '30', '丧偶');
INSERT INTO `bypal_cust_marital` VALUES ('7', '40', '离婚');
INSERT INTO `bypal_cust_marital` VALUES ('8', '90', '未说明的婚姻状况');

-- ----------------------------
-- Table structure for bypal_cust_position
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_position`;
CREATE TABLE `bypal_cust_position` (
  `pos_id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_code` varchar(255) NOT NULL,
  `pos_name` varchar(255) NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_cust_position
-- ----------------------------
INSERT INTO `bypal_cust_position` VALUES ('1', '0', '国家机关、党群组织、企业、事业单 位负责人');
INSERT INTO `bypal_cust_position` VALUES ('2', '1', '专业技术人员');
INSERT INTO `bypal_cust_position` VALUES ('3', '3', '办事人员和有关人员');
INSERT INTO `bypal_cust_position` VALUES ('4', '4', '商业、服务业人员');
INSERT INTO `bypal_cust_position` VALUES ('5', '5', '农、林、牧、渔、水利业生产人员');
INSERT INTO `bypal_cust_position` VALUES ('6', ' 6', '生产、运输设备操作人员及有关人员');
INSERT INTO `bypal_cust_position` VALUES ('7', 'X', '军人');
INSERT INTO `bypal_cust_position` VALUES ('8', ' Y', '不便分类的其他从业人员');
INSERT INTO `bypal_cust_position` VALUES ('9', 'Z', '未知');

-- ----------------------------
-- Table structure for bypal_cust_reference
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_reference`;
CREATE TABLE `bypal_cust_reference` (
  `ref_id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_custid` int(11) NOT NULL,
  `ref_type` int(11) NOT NULL,
  `ref_explain` varchar(255) NOT NULL,
  `ref_annex` varchar(255) NOT NULL,
  `ref_point` int(11) NOT NULL,
  `ref_createdate` int(10) NOT NULL,
  `ref_status` int(11) NOT NULL,
  `ref_conftime` int(10) NOT NULL,
  PRIMARY KEY (`ref_id`)
) ENGINE=MyISAM AUTO_INCREMENT=456 DEFAULT CHARSET=utf8 COMMENT='客户征信材料表';

-- ----------------------------
-- Records of bypal_cust_reference
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_cust_referencefile
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_referencefile`;
CREATE TABLE `bypal_cust_referencefile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL COMMENT '关联bypal_cust_refence  ref_id',
  `ref_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '文件名',
  `create_time` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建时间',
  `ref_annex` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件路径',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=658 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bypal_cust_referencefile
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_cust_refertype
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_refertype`;
CREATE TABLE `bypal_cust_refertype` (
  `refertype_id` int(11) NOT NULL AUTO_INCREMENT,
  `refertype_code` int(11) NOT NULL,
  `refertype_name` varchar(255) NOT NULL,
  `refertype_score` int(4) NOT NULL COMMENT '最高审批分数',
  PRIMARY KEY (`refertype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='客户材料类型表';

-- ----------------------------
-- Records of bypal_cust_refertype
-- ----------------------------
INSERT INTO `bypal_cust_refertype` VALUES ('2', '2', '身份证（正面和背面分别拍照）', '0');
INSERT INTO `bypal_cust_refertype` VALUES ('3', '3', '学生证（内容页拍照）', '5');
INSERT INTO `bypal_cust_refertype` VALUES ('4', '4', '电话详单', '15');
INSERT INTO `bypal_cust_refertype` VALUES ('5', '5', '央行征信记录', '30');
INSERT INTO `bypal_cust_refertype` VALUES ('8', '6', '工作证明', '30');
INSERT INTO `bypal_cust_refertype` VALUES ('6', '7', '银行流水', '15');
INSERT INTO `bypal_cust_refertype` VALUES ('9', '8', '房产证', '15');
INSERT INTO `bypal_cust_refertype` VALUES ('7', '9', '社保详单', '5');
INSERT INTO `bypal_cust_refertype` VALUES ('1', '1', '个人正面照', '0');

-- ----------------------------
-- Table structure for bypal_cust_relation
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_relation`;
CREATE TABLE `bypal_cust_relation` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_code` int(11) NOT NULL,
  `r_name` varchar(255) NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_cust_relation
-- ----------------------------
INSERT INTO `bypal_cust_relation` VALUES ('1', '0', '父亲');
INSERT INTO `bypal_cust_relation` VALUES ('2', '1', '母亲');
INSERT INTO `bypal_cust_relation` VALUES ('3', '2', '配偶');
INSERT INTO `bypal_cust_relation` VALUES ('4', '3', '子女');
INSERT INTO `bypal_cust_relation` VALUES ('5', '4', '其他亲属');
INSERT INTO `bypal_cust_relation` VALUES ('6', '5', '同事');
INSERT INTO `bypal_cust_relation` VALUES ('7', '6', '朋友 ');
INSERT INTO `bypal_cust_relation` VALUES ('8', '7', '兄弟姐妹');
INSERT INTO `bypal_cust_relation` VALUES ('9', '8', '其他');

-- ----------------------------
-- Table structure for bypal_cust_repaystyle
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_repaystyle`;
CREATE TABLE `bypal_cust_repaystyle` (
  `rs_id` int(11) NOT NULL AUTO_INCREMENT,
  `rs_code` int(11) NOT NULL,
  `rs_value` varchar(255) NOT NULL,
  PRIMARY KEY (`rs_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_cust_repaystyle
-- ----------------------------
INSERT INTO `bypal_cust_repaystyle` VALUES ('1', '1', '日');
INSERT INTO `bypal_cust_repaystyle` VALUES ('2', '2', '周');
INSERT INTO `bypal_cust_repaystyle` VALUES ('3', '3', '月');
INSERT INTO `bypal_cust_repaystyle` VALUES ('4', '4', '季');
INSERT INTO `bypal_cust_repaystyle` VALUES ('5', '7', '一次性');
INSERT INTO `bypal_cust_repaystyle` VALUES ('6', '6', '年');
INSERT INTO `bypal_cust_repaystyle` VALUES ('7', '5', '半年');
INSERT INTO `bypal_cust_repaystyle` VALUES ('8', '8', '不定期（还款日之间的时间间隔不是固定周期）');
INSERT INTO `bypal_cust_repaystyle` VALUES ('9', '99', '其他');

-- ----------------------------
-- Table structure for bypal_cust_status
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_status`;
CREATE TABLE `bypal_cust_status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(255) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='审核状态表';

-- ----------------------------
-- Records of bypal_cust_status
-- ----------------------------
INSERT INTO `bypal_cust_status` VALUES ('0', '未审核');
INSERT INTO `bypal_cust_status` VALUES ('1', '通过');
INSERT INTO `bypal_cust_status` VALUES ('2', '未通过');

-- ----------------------------
-- Table structure for bypal_cust_tag
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_tag`;
CREATE TABLE `bypal_cust_tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) NOT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='客户标签表';

-- ----------------------------
-- Records of bypal_cust_tag
-- ----------------------------
INSERT INTO `bypal_cust_tag` VALUES ('3', '借款人');
INSERT INTO `bypal_cust_tag` VALUES ('1', ' 投资人');

-- ----------------------------
-- Table structure for bypal_cust_tips
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_tips`;
CREATE TABLE `bypal_cust_tips` (
  `tips_id` int(11) NOT NULL AUTO_INCREMENT,
  `tips_custid` int(11) DEFAULT NULL,
  `tips_custphone` varchar(255) NOT NULL,
  `tips_info` varchar(255) NOT NULL,
  `tips_time` int(10) NOT NULL,
  PRIMARY KEY (`tips_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1853 DEFAULT CHARSET=utf8 COMMENT='站内信息';

-- ----------------------------
-- Records of bypal_cust_tips
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_cust_title
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_title`;
CREATE TABLE `bypal_cust_title` (
  `ti_id` int(11) NOT NULL AUTO_INCREMENT,
  `ti_code` varchar(255) NOT NULL,
  `ti_name` varchar(255) NOT NULL,
  PRIMARY KEY (`ti_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='职称';

-- ----------------------------
-- Records of bypal_cust_title
-- ----------------------------
INSERT INTO `bypal_cust_title` VALUES ('1', '0', '无');
INSERT INTO `bypal_cust_title` VALUES ('2', '1', '高级');
INSERT INTO `bypal_cust_title` VALUES ('3', '2', '中级');
INSERT INTO `bypal_cust_title` VALUES ('4', '3', '初级');
INSERT INTO `bypal_cust_title` VALUES ('5', '9', '未知');

-- ----------------------------
-- Table structure for bypal_cust_typename
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_typename`;
CREATE TABLE `bypal_cust_typename` (
  `cust_typeid` int(11) NOT NULL AUTO_INCREMENT,
  `cust_typename` varchar(255) NOT NULL,
  PRIMARY KEY (`cust_typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_cust_typename
-- ----------------------------
INSERT INTO `bypal_cust_typename` VALUES ('1', '在校学生');
INSERT INTO `bypal_cust_typename` VALUES ('2', '在职人士');
INSERT INTO `bypal_cust_typename` VALUES ('3', '其他');

-- ----------------------------
-- Table structure for bypal_cust_workdetail
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_workdetail`;
CREATE TABLE `bypal_cust_workdetail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cust_id` int(10) NOT NULL,
  `current_status` int(5) NOT NULL COMMENT '对应bypal_cust_typename  目前状态',
  `company_email` varchar(50) NOT NULL COMMENT '公司邮箱',
  `profession_status_id` int(5) NOT NULL COMMENT '对应bypal_cust_position 职业',
  `company_name` varchar(100) NOT NULL COMMENT '公司名称',
  `company_province` varchar(30) NOT NULL COMMENT '公司地址-省份',
  `company_city` varchar(30) NOT NULL COMMENT '公司地址-城市',
  `company_district` varchar(30) NOT NULL COMMENT '公司地址-城区',
  `company_address` varchar(100) NOT NULL COMMENT '公司地址-详细地址',
  `company_industry` int(5) NOT NULL COMMENT '对应bypal_profession_info  行业',
  `duty_status` int(5) NOT NULL COMMENT '对应 bypal_cust_duty 职务',
  `title_status` int(5) NOT NULL COMMENT '对应 bypal_cust_title 职称',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '是否完善  ：1完善，0、未完善',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='工作认证信息表';

-- ----------------------------
-- Records of bypal_cust_workdetail
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_cust_yearaccountstate
-- ----------------------------
DROP TABLE IF EXISTS `bypal_cust_yearaccountstate`;
CREATE TABLE `bypal_cust_yearaccountstate` (
  `ya_id` int(11) NOT NULL AUTO_INCREMENT,
  `ya_code` varchar(255) NOT NULL,
  `ya_value` varchar(255) NOT NULL,
  PRIMARY KEY (`ya_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='24月账户状态';

-- ----------------------------
-- Records of bypal_cust_yearaccountstate
-- ----------------------------
INSERT INTO `bypal_cust_yearaccountstate` VALUES ('1', '/', '未开立账户');
INSERT INTO `bypal_cust_yearaccountstate` VALUES ('2', '1', '表示逾期 1-30 天');
INSERT INTO `bypal_cust_yearaccountstate` VALUES ('3', 'N', '正常');
INSERT INTO `bypal_cust_yearaccountstate` VALUES ('4', '*', '当月不需还款');
INSERT INTO `bypal_cust_yearaccountstate` VALUES ('5', '2', '表示逾期 31-60 天');
INSERT INTO `bypal_cust_yearaccountstate` VALUES ('6', '3', '表示逾期 61-90 天');
INSERT INTO `bypal_cust_yearaccountstate` VALUES ('7', '4', '表示逾期 91-120 天');
INSERT INTO `bypal_cust_yearaccountstate` VALUES ('8', '5', '表示逾期 121-150 天');
INSERT INTO `bypal_cust_yearaccountstate` VALUES ('9', '6', '表示逾期 151-180 天');
INSERT INTO `bypal_cust_yearaccountstate` VALUES ('10', 'C', '结清');
INSERT INTO `bypal_cust_yearaccountstate` VALUES ('11', 'G', '结束');
INSERT INTO `bypal_cust_yearaccountstate` VALUES ('12', '7', '表示逾期 180 天以上');

-- ----------------------------
-- Table structure for bypal_facilitator_image
-- ----------------------------
DROP TABLE IF EXISTS `bypal_facilitator_image`;
CREATE TABLE `bypal_facilitator_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `infoid` int(11) NOT NULL COMMENT '商户 ',
  `fac_breviaryimage` varchar(200) NOT NULL COMMENT '缩略图',
  `fac_rotationimage` varchar(200) NOT NULL COMMENT '轮播图',
  `fac_detailimage` varchar(200) NOT NULL COMMENT '细节图',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_facilitator_image
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_facilitator_info
-- ----------------------------
DROP TABLE IF EXISTS `bypal_facilitator_info`;
CREATE TABLE `bypal_facilitator_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商户ID',
  `fac_account` varchar(20) DEFAULT NULL COMMENT '商户百朋注册名',
  `fac_logo` varchar(120) NOT NULL COMMENT '商户logo图片',
  `fac_banner` varchar(120) NOT NULL DEFAULT '' COMMENT '商户banner',
  `man_type_id` int(11) NOT NULL COMMENT '经营类别id',
  `fac_name` varchar(100) NOT NULL COMMENT '商户全称',
  `fac_simple_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL COMMENT '商户简称',
  `fac_separatetype` varchar(5) NOT NULL COMMENT '服务分类id',
  `fac_licence_type` varchar(50) NOT NULL COMMENT '证照类型',
  `fac_licence_number` varchar(50) NOT NULL COMMENT '证照号码',
  `fac_officialaddress` varchar(200) DEFAULT NULL COMMENT '官网地址',
  `fac_introduction` varchar(255) DEFAULT NULL COMMENT ' 商户官网简介',
  `fac_showphone` varchar(50) DEFAULT NULL COMMENT '商户官网展示电话',
  `fac_showaddress` varchar(100) DEFAULT NULL COMMENT '商户官网展示地址',
  `fac_corporation` varchar(50) NOT NULL COMMENT '商户法人',
  `fac_corporation_phone` varchar(255) NOT NULL COMMENT '法人联系电话',
  `fac_corporation_email` varchar(50) NOT NULL COMMENT '法人邮箱',
  `fac_contact` varchar(50) NOT NULL COMMENT '商户联系人',
  `fac_contactPhone` varchar(20) NOT NULL COMMENT '商户联系人电话',
  `fac_contactMailbox` varchar(50) NOT NULL COMMENT '商户联系人邮箱',
  `fac_phone` varchar(50) DEFAULT NULL COMMENT '商户座机电话',
  `fac_email` varchar(50) DEFAULT NULL COMMENT '商户邮箱',
  `fac_province` varchar(20) NOT NULL COMMENT '省份',
  `fac_city` varchar(20) NOT NULL COMMENT '城市',
  `fac_address` varchar(100) NOT NULL COMMENT '商户地址',
  `sign_type_id` int(11) NOT NULL COMMENT '签约状态id',
  `fac_bankcard` varchar(100) NOT NULL COMMENT '关联银行卡号',
  `fac_bankinfo` int(5) NOT NULL COMMENT '银行信息（建行，工行。。。）',
  `fac_branchbank` varchar(100) NOT NULL COMMENT '支行',
  `fac_account_name` varchar(50) NOT NULL COMMENT '开户名',
  `fac_account_type` int(2) NOT NULL COMMENT '账户类别：1、公账；2、私账',
  `fac_payType` int(2) DEFAULT NULL COMMENT '是否首付',
  `fac_rate_method` int(2) NOT NULL COMMENT '利率计算方法:1、商户特定利率；2、个人浮动利率',
  `fac_period_type` int(2) NOT NULL COMMENT '分期期限：1、商户输入；2、用户选择',
  `fac_delay` int(2) NOT NULL COMMENT '是否延期：1、是；2、否',
  `fac_delay_id` int(2) NOT NULL DEFAULT '0' COMMENT '延期期限',
  `fac_createTime` varchar(50) NOT NULL COMMENT '添加时间',
  `fac_pic` varchar(50) DEFAULT NULL COMMENT 'logo图片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_facilitator_info
-- ----------------------------
INSERT INTO `bypal_facilitator_info` VALUES ('51', 'bbb64a6f5', '', '', '2', '长沙阿达网络科技有限公司', '黑马基地', 'ITCD', '营业执照', '430193068685', '', '黑马基地是由长沙阿达网络科技有限公司创办的专注于安卓软件开发人才培养的移动互联网培训机构，自成立以来就一直以“打开移动互联网行业大门，培养更多优秀开发人才”为目标，认真对待每个实训学员，手把手从基础讲起，目的是让每个即将迈入移动互联网行业的新手，都能快速上手做项目，成为优秀的IT精英。并且为每位学员配备笔记本电脑，使用最新的开发工具，保证每一个来培训的同学学到的都是最新、最先进的开发技术。', '15111238808', '长沙市岳麓区麓谷国际工业园麓华大厦二楼左转即到黑马基地培训中心', '江驰', '15111238808', '307228416@qq.com', '孙亚玲', '13667369688', '283691959@qq.com', '', '', '湖南', '长沙', '长沙市岳麓区麓谷国际工业园麓华大厦二楼', '1', '', '0', '', '江驰', '1', '1', '3', '2', '2', '0', '2016-05-05 14:35:37', '146345474449.png');
INSERT INTO `bypal_facilitator_info` VALUES ('52', 'bb437f00f', '', '', '2', '长沙沃尔得国际英语学校', '沃尔得英语', 'FRLG', '民办学校办学许可证', '1430105700000441', '', '作为专业的语言培训机构，已相继在中国开办了近五十家成人及少儿英语培训中心，一直致力于用轻松活泼的语言环境，独特专业的母语教学法，让客户体验到语言学习的乐趣。课程设置多元化，拥有成人零基础课程，外教英语口语课程，商务职场英语课程，出国系列英语课程，以及托福雅思课程等。', '4006-181-365', '长沙市开福区五一大道882号202大厦一楼', '袁堰', '15399907555', '188784111@qq.com', '许可', '18273002850', '172461607@qq.com', '', '', '湖南', '长沙', '长沙市开福区五一大道882号202大厦一楼', '1', '66070155200001525', '11', '五一路支行', '袁堰', '1', '1', '1', '2', '2', '0', '2016-05-05 15:48:24', '146345484644.png');
INSERT INTO `bypal_facilitator_info` VALUES ('53', 'b1504fd2c', '', '', '2', '湖南泛美环球留学咨询有限公司', '泛美环球', 'OVEC', '营业执照', '430111000261296', '', '湖南泛美环球留学咨询成立于2014年9月，由曾服务于美国知名教育上市公司的专业团队、留学行业专家团队和金融行业专业精英携手共建。泛美致力于“免费出国留学模式”的推广，并且能够为高校学生量身定做赴美互惠生留学就业计划，希望通过教育产业与金融资本跨界整合的发展模式，打造中国知名的创新型的教育服务商。', '400-6363-088，0731-82251311', '长沙市韶山中路419号顺天国际金融中心南塔1001-1003室', '赵俊', '18508411248', '43655286@qq.com', '周超', '15007312518', '995497991@qq.com', '', '', '湖南', '长沙', '韶山中路419号顺天国际金融中心南塔1001-1003室', '1', '43010581061052504050', '4', '长沙砂子塘支行', '赵俊', '1', '1', '1', '2', '2', '0', '2016-05-05 16:36:09', null);
INSERT INTO `bypal_facilitator_info` VALUES ('54', 'b6316eb5a', '', '', '2', '湖南省思顿教育科技有限公司', '温思顿', 'FRLG', '营业执照', '91430103MA4L36YU8C', '', '温思顿国际英语独创“多维教学法”，结合全球知名的朗文出版集团和剑桥大学出版社的教材体系，创作出以实用为导向的英语课程体系，注重英语听、说、读、写等实用型英语技能的培养。不仅帮助学员开口说出地道的英语，更帮助学员们获得出色的职场能力、更丰富的商务社交和更宽广的国际化视野。', '0731-88921978', '长沙市五一广场平和堂商务楼28层', '邰国峰', '18008439868', 'taylor@vinston.net', '曾艳红', '15601603245', 'yoyozeng@vinston.net', '0731-88921978', '', '湖南', '长沙', '五一广场平和堂商务楼28层', '1', '580768093650', '5', '平和堂支行', '邰国峰', '1', '1', '1', '2', '2', '0', '2016-05-05 17:06:15', '146345508513.png');
INSERT INTO `bypal_facilitator_info` VALUES ('55', 'b17f4bd69', '', '', '2', '金矢集团北京市燕伦信息咨询有限公司长沙分公司', '金矢燕伦', 'OVEC', '', '', '', '北京金矢教育信息咨询有限公司（Golden Arrow）由海外归侨创办于1997年，从事英、美、澳、加为主打项目的海外留学咨询，职业规划咨询，海外移民咨询，及求职与就业咨询，以卓越的咨询服务成为了业界知名留学咨询机构。', '0731-88186999', '长沙市五一广场平和堂商务楼2009室', '师毅', '15074990088', 'simon.shi@ukpass.org', '师毅', '15074990088', 'simon.shi@ukpass.org', '', '', '湖南', '长沙', '长沙市五一广场平和堂商务楼2009室', '1', '', '0', '', '师毅', '2', '1', '1', '2', '2', '0', '2016-05-05 20:38:26', '146345516858.png');
INSERT INTO `bypal_facilitator_info` VALUES ('57', 'b303efe4b', '', '', '2', '长沙力威健身有限责任公司', '力威拳馆', 'FTGM', '', '', '', '力威拳馆由多名武术专业运动员及健身行业的高级管理人才共同发起创建，其散打、跆拳道、咏春、截拳道4大经典竞技武术项目吸引了众多希望强身健体的年轻人以及青少年们前来学习。力威拳馆的馆训“齐心合力，威武不屈”，带着对健康的全新理解和对武术的无限至爱，将力威打造成了全长沙共拥有7家分店的一流综合性武术拳馆。同时力威的多家拳馆也与健身机构合作，为学员们提供了从健身私人教练、游泳到专业拳术学习的全方位套餐。', '400-878-1665，18670772528', '（总店）长沙市岳麓区桐梓坡路润泽园小区B4栋力威拳馆', '邢欢', '18670772528', '805112539@qq.com', '小华老师', '', '805112539@qq.com', '', '', '湖南', '长沙', '长沙市岳麓区桐梓坡路润泽园安置小区B4栋力威拳馆', '1', '6217002920132926628', '4', '', '', '2', '1', '1', '2', '2', '0', '2016-05-05 20:52:28', '146345587094.png');
INSERT INTO `bypal_facilitator_info` VALUES ('58', 'b9f73ffa1', '', '', '2', '新奇世界国际度假项目', '新奇世界', 'TRVL', '', '', '', '新奇世界为中弘股份旗下的高端旅游地产品牌，斥资千亿在全国布局了各类型的旅游度假项目，位于云南西双版纳，吉林长白山，海南如意岛，上影影视文化产业园安吉等。为了让高质量的中国旅游度假项目更适合年轻群体，新奇世界特别设计了“逸乐通”卡，5万元购卡成为会员后，享有10年内每年30天自由入住新奇世界所有旅游度假项目和酒店的专享权，外加10年后以卡面价200%回购。真是免费走遍中国各大旅游景区，游玩投资两不误的超豪华会员卡！并且现在，百朋还能为你提供购卡分期哦。', '400-1515-181', '详情请咨询百朋客服', '', '', 'liwei@bypal.cn', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '1', '1', '1', '2', '2', '0', '2016-05-06 16:16:47', '146345606645.png');
INSERT INTO `bypal_facilitator_info` VALUES ('59', 'beb5a6a6e', '', '', '2', '天才宝贝', '天才宝贝', 'ERLY', '', '', '', '全球幼教领导品牌FasTracKids 天才宝贝,于1998年成立于美国，致力于为3-6岁的孩子提供全方位的学前教育，培养综合能力，并帮助发掘他们的潜在天赋。天才宝贝中国在60个城市拥有近100家中心，并在2013年获得腾讯网颁布的“十年最受欢迎儿童教育品牌”。', '0731-88944666', '长沙市芙蓉区黄兴北路188号乐和城4楼', '', '', '156688981@qq.com', '彭天磊', '', '156688981@qq.com', '', '', '', '', '', '1', '', '0', '', '', '1', '1', '1', '2', '2', '0', '2016-05-06 16:24:33', '146345613166.png');
INSERT INTO `bypal_facilitator_info` VALUES ('60', 'b9832fc90', '', '', '2', '湖南声伯尔文化艺术发展有限公司', '声伯尔', 'ERLY', '', '', '', '声伯尔国际钢琴教育是一所专业化引导学员综合素质全面发展的钢琴教育机构，拥有适合从二岁到成年阶段不同年龄层次的优秀课程体系。因为更专注，所以更专业；因为更专业，所以更卓越。', '0731-82289889', '郡原分部：长沙市岳麓区金星中路郡原广场2-105，新开铺分部：长沙市天心区新开铺翡翠林居，北辰分部：长沙市开福区北辰三角洲E5区5栋2单元9楼', '吴浩通', '', '491571938@qq.com', '肖仟', '', '491571938@qq.com', '', '', '', '', '', '1', '', '0', '', '吴浩通', '1', '1', '3', '2', '2', '0', '2016-05-06 16:29:39', '146345623388.png');
INSERT INTO `bypal_facilitator_info` VALUES ('63', 'bdc497777', '', '', '2', '长沙星潮文化传媒有限公司', 'STD舞蹈', 'DANC', '', '', '', '星潮文化传媒 - STD舞蹈学院是湖南专业舞蹈培训机构，师资力量雄厚。目前公司拥有专职舞蹈教练20名；舞蹈演员40名。专业致力于舞蹈演出和舞蹈教学，长期与湖南卫视 教育频道、娱乐频道等各地电台合作演出，晚会舞蹈编排、明星伴舞，曾参与过许多艺人演唱会演出及舞蹈编排等。', '400-1525-958，13487598930', '韶山南路店：长沙天心区中南林科大校门左侧临街4楼和5楼；师大天马店：长沙市岳麓区左家垅公交车站长沙银行4楼', '王忠华', '13487598930', '2544097640@qq.com', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '1', '1', '1', '2', '2', '0', '2016-05-14 15:21:24', '146345628730.png');
INSERT INTO `bypal_facilitator_info` VALUES ('64', 'b688ecabb', '', '', '2', '长沙木威体育用品有限公司', '木威健身', 'FTCH', '', '', '', '木威健身学院是湖南省第一家同时开展健身教练、健美操教练、跆拳道教练等国家职业资格培训的培训基地，以培养更多更专业的健身领域人才为创校宗旨。', '400-090-4600，(0731) 82088881', '长沙市雨花区劳动东路820号恒大绿洲会所', '姚军', '18673179917', '82947918@qq.com', '廖老师', '18569062911', '82947918@qq.com', '', '', '', '', '', '1', '', '0', '', '', '1', '1', '1', '2', '2', '0', '2016-05-14 15:28:28', '146345631365.png');
INSERT INTO `bypal_facilitator_info` VALUES ('65', 'b13451a7c', '', '', '2', '长沙市天心区振宇拳击馆', '振宇拳馆', 'FTGM', '', '', '', '长沙振宇拳馆是长沙市首家专业又时尚的拳击、泰拳、格斗的场所，有着一流的专业设备和顶级的教练团队，是长沙市由体育工商局审批的正规拳馆，受到长沙市各大媒体的追捧与报道，多次与知名的湖南卫视越策越开心栏目做过专题节目。拳馆设有拳击、泰拳、MMA三大主流格斗项目；在振宇拳馆不经意就会遇到你梦寐以求的世界级拳王和格斗王者哦。', '(0731) 85596487', '长沙市芙蓉区东二环锦泰广场东环国际11楼', '戴振宇', '13973126469', '597737597@qq.com', '杨露露', '18670388364', '597737597@qq.com', '', '', '', '', '', '1', '', '0', '', '', '1', '1', '1', '2', '2', '0', '2016-05-14 15:47:51', '146345633874.png');
INSERT INTO `bypal_facilitator_info` VALUES ('66', 'ba97867dc', '', '', '2', '湖南省人参米文化传播有限公司', '人参米', 'DANC', '', '', '', '专注于街舞培训、爵士舞培训、少儿街舞培训，是一家以专业化为目标的顶尖舞蹈俱乐部，拥有街舞星级导师10名，也是首支代表中国赴美参加比赛的街舞团队，在全国的街舞比赛当中斩获无数奖项，更是全国最早发展LA风格为主的街舞培训机构。', '(0731) 84515751', '五一店：长沙市天心区五一广场五一新干线718室；王府井店：长沙市河西王府井商业广场6楼', '周航', '18670397813', 'poprice001@126.com', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '2', '1', '1', '2', '2', '0', '2016-05-14 15:58:07', '146345639375.png');
INSERT INTO `bypal_facilitator_info` VALUES ('67', 'b21cc702a', '', '', '2', '湖南咖菲猫网络科技有限公司', '咖菲猫', 'APRT', '', '', '', '咖菲猫精品公寓创立于长沙，旗下有着适合年轻大学生以及都市白领的多种精装公寓，并且已获得会分期的千万元投资，与公寓分期知名品牌共同拓展长沙年轻人的租房市场。', '(0731) 83540438', '在长沙有多处楼盘，详情可咨询百朋客服或咖菲猫客服', '罗阳', '18670093002', '512855959@qq.com', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '1', '1', '3', '2', '2', '0', '2016-05-14 16:11:33', '146345646190.jpg');
INSERT INTO `bypal_facilitator_info` VALUES ('68', 'b01729719', '', '', '2', '湖南蝴蝶树摄影化妆职业培训学校', '蝴蝶树摄影', 'PHOT', '', '', '', '蝴蝶树摄影创立于1997年，到今天已有近20年的经营历史，是湖南婚纱摄影领导品牌和长沙最受消费者欢迎明星影楼。追求顾客100%满意，超越顾客期望值，立志做摄影行业的百年企业，是蝴蝶树永恒不变的追求。', '15608491560', '长沙市蔡锷中路永华大厦15楼', '任萧龙', '15608491560', '1961751930@qq.com', '田老师', '15608491560', '1961751930@qq.com', '', '', '', '', '', '1', '', '0', '', '', '1', '1', '1', '2', '2', '0', '2016-05-14 16:18:12', '146345649318.png');
INSERT INTO `bypal_facilitator_info` VALUES ('69', 'b86e2197b', '', '', '2', '长沙市芙蓉区奥力健健身房', '力健健身', 'FTGM', '', '', '', '力健立志于推广科学健康的理念，以中低档的价格，高水准的教练队伍为您提供了康体、健身、休闲、健美、会友的空间。健身不再是追求时尚，更重要的是获得健康，完美的生活还在享受力健健身运动所为你带来的一切快乐。', '(0731) 83887818', '长沙市芙蓉区东方新城商务楼601室', '苏梅', '18573199866', '124255931@qq.com', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '1', '1', '1', '2', '2', '0', '2016-05-14 16:26:47', '146345656814.jpg');
INSERT INTO `bypal_facilitator_info` VALUES ('70', 'b11c42279', '', '', '2', '湖南雅诺思美咨询有限公司', '雅诺思', 'BEAU', '', '', '', '雅诺思是一家专注韩式定妆（眉毛－眼线－唇）以及美甲、韩式嫁接睫毛等半永久技术的专业美颜连锁管理机构。汲取韩国定妆技巧，带来韩国裸妆观念，并引进国际知名的德国进口设备与色料运用尖端的三维立体技术，为您量身设计妆容，打造独一无二的完美素颜。', '17707363332', '长沙市雨花区万家丽中路喜盈门商业广场5栋319室', '尹雅思', '17707363332', '48541502@qq.com', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '1', '1', '1', '2', '2', '0', '2016-05-14 16:36:27', '146345660569.png');
INSERT INTO `bypal_facilitator_info` VALUES ('71', 'b4dbb4e8e', '', '', '2', '长沙市天心区滴滴打拳健身俱乐部', '滴滴打拳', 'FTGM', '', '', '', '滴滴打拳健身俱乐部是长沙首家以打拳为主题的健身俱乐部，专业拳击培训和泰拳培训与时尚完美结合，给会员一个健康积极的高端交友平台，更为学员们带来系统的HIIT（High-intensity Interval Training高强度间歇训练）式拳击和泰拳教学以及舒适健康的运动体验。滴滴打拳并不是是暴力、击打和征服的象征，而是无氧+有氧运动的完美结合体。', '(0731) 82071435', '长沙市天心区五一新干线1407室', '胡天啸', '18684848380', '9895524@qq.com', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '1', '1', '1', '2', '2', '0', '2016-05-14 17:07:13', '146345664682.png');
INSERT INTO `bypal_facilitator_info` VALUES ('72', 'bcd2b18d1', '', '', '2', '长沙市联诚驾校培训有限公司', '联诚驾校', 'DRIV', '', '', '', '联诚驾校成立于2009年，为原猎鹰驾校湖大分校。为一家服务式驾驶培训学校、湖南省机动车驾驶员培训理事单位，并被指定为长沙市大学生机动车驾驶员优秀培训单位。有面积约70多亩的现代化训练场，主要经营C1、C2驾驶员的培训。', '(0731) 88820228', '长沙市中南大学西大门外', '胡阳阳', '18973121917', '1044041921@qq.com', '覃校长', '18973121917', '1044041921@qq.com', '', '', '', '', '', '1', '', '0', '', '', '0', '1', '1', '2', '2', '0', '2016-05-14 17:14:50', null);
INSERT INTO `bypal_facilitator_info` VALUES ('73', 'b7957c3b4', '', '', '2', '湖南艺舞之星文化传媒有限公司', '艺舞之星', 'DANC', '', '', '', '艺舞之星品牌创始人容一菲老师，携手多位电台编舞导师团队携手打造了艺舞之星舞蹈工作室，拥有优选的专业导师团队。容一菲老师是中国当代创新舞蹈家、爵士舞代表人物，以及中国演艺界舞蹈协会会长。', '15116322520', '长沙市天心区五一广场五一新干线1602室', '刘青青', '15116322520', '893601314@qq.com', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '1', '1', '1', '2', '2', '0', '2016-05-14 17:27:44', '146345670978.png');
INSERT INTO `bypal_facilitator_info` VALUES ('74', 'b52783e40', '', '', '2', '长沙冰山名人化妆摄影培训学校', '冰山名人', 'STYL', '', '', '', '长沙冰山名人摄影化妆培训学校为贺加贝时尚教育集团湖南总校，是一家以摄影、化妆、形象设计、数码、美容、美发、美甲等时尚专业人才培训为主的艺术职业类学校。现拥有三千余平方的现代时尚多媒体教学区，一层两千余平方的现代化宿舍楼及一千余大型学员食堂为一体的实体型教学机构，为目前国内摄影化妆美容美发顶级权威培训机构。', '(0731) 82275408', '长沙市芙蓉区远大一路安防门业大市场三楼整层', '胡金戈', '13808481925', '1755929569@qq.com', 'Yoyo老师', '', '', '', '', '', '', '', '1', '', '0', '', '', '1', '1', '1', '2', '2', '0', '2016-05-14 17:34:01', '146345674564.png');
INSERT INTO `bypal_facilitator_info` VALUES ('75', 'b3b24c722', '', '', '2', '湖南省菲悦文化传播有限公司', '菲悦舞蹈', 'DANC', '', '', '', '菲悦国际舞蹈培训机构是经湖南省体育局官方认证、湖南省文化厅指定的专业培训点。凭借雄厚额师资力量、严谨的治学态度、丰富的授课内容、权威的资质认证，多元化的立体式教学法则将舞蹈的专业知识，为广大的肚皮舞、爵士舞、瑜伽等行业培养优秀的专业人才。', '(0731) 88571181', '长沙市天心区芙蓉中路摩天大厦1栋1815室', '赵悦', '18684978100', '366398323@qq.com', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '1', '1', '1', '2', '2', '0', '2016-05-14 17:40:57', '146345676587.png');
INSERT INTO `bypal_facilitator_info` VALUES ('76', 'b15273cbb', '', '', '2', '梦想青成健身培训学院', '梦想青成', 'FTCH', '', '', '', '源自专业的人，源自有梦想的人，源自为健身行业奋斗终身的人。以吴乐院长为核心的专家导师团队，从事健身行业平均在10年以上，专业知识扎实，实践经验丰富。大家为同一个目标、理念和梦想聚集在一起，创建了集私人教练、瑜伽钢管舞、舞蹈团操、普拉提损伤康复、销售经管、国家运动营养师、职业经理人等一站式健身培训平台，为全国上千家健身俱乐部提供人才及咨询服务。', '(0731) 85071511', '长沙市劳动东路139号新城新世界三期', '谭微', '18942579929', '1459004756@qq.com', '卢老师', '13973146974', '1459004756@qq.com', '', '', '', '', '', '1', '', '0', '', '', '1', '1', '1', '2', '1', '6', '2016-05-16 10:57:26', '146345678413.png');
INSERT INTO `bypal_facilitator_info` VALUES ('93', 'bc2875db2', '', '', '2', '百朋金融', '百朋', 'FTGM', '营业执照', '8888888', 'www.bypal.com.cn', '百朋专注于为年轻人提供线下“生活场景消费”分期服务，让你用最轻松的方式，享受最多样精彩的生活。\r\n再也不需要担心现金流暂时不充裕而无法尽兴。', '400-1515-818', '长沙市芙蓉区万家丽路', 'bypal@bypal.cn', '400-1515-181', 'bypal@bypal.cn', '323232', '12312312', '23123123', '1321231', '1231231231', '湖南', '长沙', '芙蓉区', '1', '13212313', '5', '2312', '', '1', '1', '1', '2', '1', '6', '2016-05-25 14:12:44', '146415676440.png');
INSERT INTO `bypal_facilitator_info` VALUES ('91', 'ba317d33a', '', '', '2', '长沙艾美瑞婚庆礼仪策划中心', '艾美瑞', 'WEDD', '', '', '', '艾美瑞成立于2010年，专业的摄影服务摒弃传统的构图、陈旧的审美，借鉴当代艺术风向，融入摄影思维，随时即兴原创给到每一位顾客最满意的摄影作品与惊喜。', '17773156178', '长沙市芙蓉区芙蓉中路明城国际2020室', '', '', 'zhoueryan@bypal.cn', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '1', '1', '2', '2', '2', '0', '2016-05-17 12:56:51', null);
INSERT INTO `bypal_facilitator_info` VALUES ('92', 'ba317d33a', '', '', '2', '长沙爱都婚礼策划传播有限公司', '爱都', 'WEDD', '', '', '', 'XXX', '15388952511', '长沙市五一广场五一新干线B座2110室', '', '', 'zhoueryan@bypal.cn', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '2', '1', '2', '2', '2', '0', '2016-05-17 12:58:51', null);
INSERT INTO `bypal_facilitator_info` VALUES ('78', 'bd826eb33', '', '', '2', '舞安瑜伽', '舞安瑜伽', 'YOGA', '', '', '', '宽敞的教学环境和优秀的老师，将为你开启超乎满意的瑜伽旅程。', '(0731) 89816388', '长沙市雨花区湘府东路红星大厦1816-1817室', '易克安', '13755198155', '1056258729@qq.com', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '2', '1', '1', '2', '2', '0', '2016-05-16 11:29:23', '146345937866.png');
INSERT INTO `bypal_facilitator_info` VALUES ('79', 'b0fff3d06', '', '', '2', '长沙市岳麓区爱艺舞文化艺术咨询工作室', '爱艺舞', 'DANC', '', '', '', '爱艺舞明星学院，这里有超棒的老师和学员，而且颜值超高哦！', '18973126078', '长沙市岳麓区西湖街道金星中路玛依拉山庄1栋1103室', '赵秋霞', '18973126078', '1018668117@qq.com', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '2', '1', '1', '2', '2', '0', '2016-05-16 11:39:14', '146345724690.png');
INSERT INTO `bypal_facilitator_info` VALUES ('80', 'b41d703d5', '', '', '2', '长沙市芙蓉区菲奥娜舞蹈设计工作室', '菲奥娜', 'DANC', '', '', '', '开设肚皮舞、爵士舞、拉丁、形体舞、街舞等舞蹈课程，各舞蹈种类均聘请教学表演经验丰富、具有专业教学资质的老师授课，针对不同人群、不同学习目的分别开设专业教练班、兴趣美体班、表演专攻班、少儿考级班。', '(0731) 83880487', '长沙市五一广场新世界百货3002室', '刘婷', '13467677304', '293429841@qq.com', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '2', '1', '1', '2', '2', '0', '2016-05-16 11:43:03', '146345771551.png');
INSERT INTO `bypal_facilitator_info` VALUES ('81', 'b67b4f728', '', '', '2', '长沙彩沙文化传播有限公司', '东欣舞蹈', 'DANC', '', '', '', '作为专业拉丁舞教师资格培训基地，东欣舞蹈学院已有九年的办学经验，专门打造拉丁舞教练和爵士舞教练。并且坚持小班教学，不超过15个人一个班。', '(0731) 89820989', '岳麓校区：长沙市岳麓区麓山南路159号第三大楼；五一校区：长沙市芙蓉区五一西路13号联合商厦1903室', '徐福中', '18874729235', '861742398@qq.com', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '2', '1', '1', '2', '2', '0', '2016-05-16 11:49:33', '146345774969.png');
INSERT INTO `bypal_facilitator_info` VALUES ('82', 'b945c1ad6', '', '', '2', '长沙市开福区优果健身会馆', '优果瑜伽', 'YOGA', '', '', '', '新古典巴洛克风格的VIP室，采用独特的圆弧形厅堂设计，仿佛把所有的能量汇集于心，是你品尝红酒、参与心理游戏沙龙、分享瑜伽心得的私人客厅。 优果，是停下纷繁的脚步在酣畅淋漓后与密友畅谈心声的极佳场所。', '(0731) 89878686', '长沙市开福区黄兴北路上城金都2826室', '张叮', '13657352223', 'zdd0707@qq.com', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '2', '1', '1', '2', '2', '0', '2016-05-16 11:55:58', '146345780353.png');
INSERT INTO `bypal_facilitator_info` VALUES ('83', 'bc04d8415', '', '', '2', '长沙梵歌健康咨询有限公司', '梵歌瑜伽', 'YOGA', '', '', '', '长沙梵歌健康咨询有限公司创办2006年,是湖南省最专业的连锁培训学院之一，严谨的教学方案，雄厚的师资团队，专业权威的培训教材，传承印度瑜伽文化，专业权威的师资队伍，特设哈他瑜伽 ，流瑜伽，阴瑜伽，球瑜伽，舞韵瑜伽，及艾扬格辅具精准正位瑜伽。', '(0731) 88889748；13975138109', '长沙市雨花区韶山中路三万英尺公寓8栋2020室', '王翀', '13975138109', '370892309@qq.com', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '2', '1', '1', '2', '2', '0', '2016-05-16 12:07:09', '146345782755.png');
INSERT INTO `bypal_facilitator_info` VALUES ('84', 'baf7790bd', '', '', '2', '长沙市天心区米小姐健身会所', '米小姐东方之舞', 'DANC', '', '', '', '米小姐为湖南省首家纯东方舞传播会所，凭借多年的教学实践与管理经验，不断的开发完善教学系统，专注于传播最系统最全面的东方舞蹈（肚皮舞、埃及舞），由资深肚皮舞导师团队倾力打造。', '(0731) 89707416', '长沙市五一广场五一新干线A座802室', '梁朔', '15211192795', '2069416934@qq.com', '梁朔', '15211192795', '2069416934@qq.com', '', '', '', '', '', '1', '', '0', '', '', '2', '1', '1', '2', '2', '0', '2016-05-16 12:18:18', '146345788093.png');
INSERT INTO `bypal_facilitator_info` VALUES ('85', 'b6581e506', '', '', '2', '长沙市天心区小景舞蹈工作室', '小景钢管舞', 'DANC', '', '', '', '长沙市天心区小景舞蹈工作室 成立于2014年，并于2015年5月加入中国钢管舞锦标赛会员单位，成为湖南省第一个且目前唯一一个钢管舞工作室单位。作为湖南省具有权威性专业性的舞蹈工作室其教学特色包括： 唯美现代钢管舞、传统性感高跟鞋钢管舞、吊环绸缎舞，欧美爵士舞、成品舞、芭蕾形体、现代舞基训等多种舞蹈。', '18890758999', '长沙市五一广场五一新干线2307室', '蒋磊', '17708460610', '75752336@qq.com', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '2', '1', '1', '2', '2', '0', '2016-05-16 12:36:46', '146345790162.png');
INSERT INTO `bypal_facilitator_info` VALUES ('86', 'b38ee341d', '', '', '2', '长沙市芙蓉区慢生活文艺创作工作室', '遇见瑜伽', 'YOGA', '', '', '', '遇见瑜伽生活馆拥有丰富多样的配套服务和项目、舒适简约的环境和面向大众的价格体系。会馆教练师资雄厚，教学经验丰富，对每位会员细心辅导。宽阔舒适的教室，合理采光通风透气；干净整洁的沐浴；并且提供免费图书以及免费养生粥。', '18607319332', '长沙市五一广场新世界百货2307室', '唐玲玲', '18607319332', '2207647396@qq.com', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '2', '1', '1', '2', '2', '0', '2016-05-16 12:43:24', '146345800646.png');
INSERT INTO `bypal_facilitator_info` VALUES ('87', 'bb100dae8', '', '', '1', '长沙市雨花区金婵舞蹈工作室', '金婵舞蹈工作室', 'DANC', '', '', '', '倩影伊人，金蝉致爱。这里是一间面积大约100平米的小型工作室，这里的每一次课程容纳15-20人左右，这里的每一位老师手把手教学，用心传递。这里融汇了肚皮舞、salsa舞、瑜伽、爵士、普拉提，这里蜕变了一位位美丽又自信的女性，这里是中国肚皮舞协会会员单位、国际瑜伽肚皮舞协会的教培单位。', '(0731) 85131787；17775861787', '长沙市雨花区韶山北路东塘瑞府1135-1136室', '李老师', '17775861787', '179979261@qq.com', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '2', '1', '1', '2', '2', '0', '2016-05-16 12:50:45', '146345828251.png');
INSERT INTO `bypal_facilitator_info` VALUES ('88', 'b6c457eb1', '', '', '2', '长沙市岳麓区果麦食品加工技术服务部', '果麦蛋糕', 'BKPY', '', '', '', '果麦蛋糕学校成立于2003年，是一所专业传授面点、面包制作技术、蛋糕裱花技术为主的正规化职业技能培训中心。果麦团队富有实战经验，绝大部分教员都常年居于实体门店第一线，并且在各大连锁蛋糕企业从事技术指导工作。', '15616135584', '长沙市汽车西站城西公寓 4-702室', '曾艳', '15616135584', '2646091253@qq.com', '陈老师', '15616135584', '2646091253@qq.com', '', '', '', '', '', '1', '', '0', '', '', '1', '1', '1', '2', '2', '0', '2016-05-16 13:02:03', '146345830651.png');
INSERT INTO `bypal_facilitator_info` VALUES ('89', 'b4b123534', '', '', '1', '长沙市天心区抡吧健身工作室', '抡吧健身', 'FTGM', '', '', '', '抡吧健身生活馆是一家集健身与拳击娱乐为一体的拳击馆，聚集了一群热爱健康生活的年轻人，你也快点来抡吧！', '15675879979', '长沙市天心区解放西路城市经典605-606室', '邓莹杰', '15675879979', 'shine3d@qq.com', '', '', '', '', '', '', '', '', '1', '', '0', '', '', '1', '1', '1', '2', '2', '0', '2016-05-16 13:06:01', '146345839759.jpg');
INSERT INTO `bypal_facilitator_info` VALUES ('94', 'bcf5c34cd', '', '', '2', '湖南迈威信息技术职业培训学校', '迈威', 'ITCD', '民办学校办学许可证', '1800003000156', '', '是湖南唯一一家思科授权和红帽授权培训中心，也是湖南唯一的VUE 思科和红帽考试中心。是一家专业从事系统集成及网络安全服务、网络技术培训服务的高科技学校，致力于系统集成项目 开发和发展中国 IT教育产业。学校现已与中南工业大学、中南林业大学、四川师范大学及其他科研院校建立了战略合作关系。 学校宗旨： \r\n将最好的技术服务给企业、将实用和领先的技术传授给学员！您们的成功就是我们最大的成功！\r\n\r\n\r\n', '0731-82192900', '湖南省长沙市芙蓉区五一大道158号人瑞潇湘国际1526室', '范桂华', '13617312579', '500359@qq.com', '李黎', '18627558551', '7565893@qq.com', '0731-82192900', '', '湖南', '长沙', '芙蓉区五一大道158号人瑞潇湘国际1526室', '1', '6226 6826 0057 4941', '7', '长沙市劳动西路支行', '范桂华', '2', '1', '1', '2', '1', '3', '2016-05-25 19:33:23', '146432580291.jpg');

-- ----------------------------
-- Table structure for bypal_facilitator_itype
-- ----------------------------
DROP TABLE IF EXISTS `bypal_facilitator_itype`;
CREATE TABLE `bypal_facilitator_itype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商户类型ID',
  `name` varchar(100) NOT NULL COMMENT '商户类型名称',
  `trade_number` varchar(10) DEFAULT NULL,
  `icon` varchar(30) NOT NULL COMMENT '图标',
  `pid` int(11) NOT NULL COMMENT '父ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_facilitator_itype
-- ----------------------------
INSERT INTO `bypal_facilitator_itype` VALUES ('1', '健身', 'FTGM', 'rentals', '3');
INSERT INTO `bypal_facilitator_itype` VALUES ('2', '舞蹈', 'DANC', 'music', '3');
INSERT INTO `bypal_facilitator_itype` VALUES ('3', '瑜伽', 'YOGA', '', '3');
INSERT INTO `bypal_facilitator_itype` VALUES ('4', '旅游', 'TRVL', '', '3');
INSERT INTO `bypal_facilitator_itype` VALUES ('5', '职业健身教练', 'FTCH', '', '3');
INSERT INTO `bypal_facilitator_itype` VALUES ('6', '职业滑雪教练', 'SKCH', '', '3');
INSERT INTO `bypal_facilitator_itype` VALUES ('7', '外语', 'FRLG', 'sport', '2');
INSERT INTO `bypal_facilitator_itype` VALUES ('8', 'IT技术', 'ITCD', '', '2');
INSERT INTO `bypal_facilitator_itype` VALUES ('9', '会计师', 'ACCN', '', '2');
INSERT INTO `bypal_facilitator_itype` VALUES ('10', '艺术培训', 'ARTS', '', '2');
INSERT INTO `bypal_facilitator_itype` VALUES ('11', '早教', 'ERLY', '', '2');
INSERT INTO `bypal_facilitator_itype` VALUES ('12', '烘培烹饪', 'BKPY', 'medical_doctor', '2');
INSERT INTO `bypal_facilitator_itype` VALUES ('13', '驾校', 'DRIV', '', '2');
INSERT INTO `bypal_facilitator_itype` VALUES ('14', '化妆造型', 'STYL', '', '2');
INSERT INTO `bypal_facilitator_itype` VALUES ('16', '摄影写真', 'PHOT', '', '1');
INSERT INTO `bypal_facilitator_itype` VALUES ('17', '美颜美甲', 'BEAU', '', '1');
INSERT INTO `bypal_facilitator_itype` VALUES ('15', '留学咨询', 'OVEC', '', '1');
INSERT INTO `bypal_facilitator_itype` VALUES ('18', '牙科诊所', 'DENT', '', '1');
INSERT INTO `bypal_facilitator_itype` VALUES ('19', '医疗整形', 'PLSP', '', '1');
INSERT INTO `bypal_facilitator_itype` VALUES ('20', '家装', 'HMDC', '', '1');
INSERT INTO `bypal_facilitator_itype` VALUES ('21', '精品公寓', 'APRT', '', '1');
INSERT INTO `bypal_facilitator_itype` VALUES ('22', '婚庆策划', 'WEDD', '', '4');
INSERT INTO `bypal_facilitator_itype` VALUES ('23', '宠物美容师', 'PETS', '', '2');

-- ----------------------------
-- Table structure for bypal_facilitator_material
-- ----------------------------
DROP TABLE IF EXISTS `bypal_facilitator_material`;
CREATE TABLE `bypal_facilitator_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `infoId` int(11) NOT NULL COMMENT '商户信息ID',
  `mtypeId` int(11) NOT NULL COMMENT '认证材料ID',
  `m_attachment` varchar(100) NOT NULL COMMENT '附件',
  `m_addTime` int(11) NOT NULL COMMENT '创建时间',
  `m_auditing` int(11) NOT NULL COMMENT '审核状态',
  `m_auditingTime` int(11) NOT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_facilitator_material
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_facilitator_mtype
-- ----------------------------
DROP TABLE IF EXISTS `bypal_facilitator_mtype`;
CREATE TABLE `bypal_facilitator_mtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mtype_name` varchar(100) NOT NULL COMMENT '认证材料名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_facilitator_mtype
-- ----------------------------
INSERT INTO `bypal_facilitator_mtype` VALUES ('1', '营业执照');
INSERT INTO `bypal_facilitator_mtype` VALUES ('2', '地税证');
INSERT INTO `bypal_facilitator_mtype` VALUES ('3', '国税证');
INSERT INTO `bypal_facilitator_mtype` VALUES ('4', '服务合同');
INSERT INTO `bypal_facilitator_mtype` VALUES ('5', '长期托管协议');
INSERT INTO `bypal_facilitator_mtype` VALUES ('6', '组织机构代码');
INSERT INTO `bypal_facilitator_mtype` VALUES ('7', '开户许可证');
INSERT INTO `bypal_facilitator_mtype` VALUES ('8', '法人身份证复印件');
INSERT INTO `bypal_facilitator_mtype` VALUES ('9', '房东产权证');

-- ----------------------------
-- Table structure for bypal_facilitator_person
-- ----------------------------
DROP TABLE IF EXISTS `bypal_facilitator_person`;
CREATE TABLE `bypal_facilitator_person` (
  `facp_id` int(11) NOT NULL AUTO_INCREMENT,
  `facp_workid` varchar(100) CHARACTER SET utf8 NOT NULL,
  `facp_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `facp_fid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT '员工ID',
  PRIMARY KEY (`facp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bypal_facilitator_person
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_facilitator_rate
-- ----------------------------
DROP TABLE IF EXISTS `bypal_facilitator_rate`;
CREATE TABLE `bypal_facilitator_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` double(4,2) NOT NULL COMMENT '利率',
  `period` int(3) NOT NULL COMMENT '期数',
  `min_money` int(8) NOT NULL COMMENT '最小钱',
  `max_money` int(8) NOT NULL COMMENT '最大钱',
  `fac_id` int(11) NOT NULL COMMENT '商户ID',
  `state` int(2) NOT NULL COMMENT '1、首付，2、无首付',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5528 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_facilitator_rate
-- ----------------------------
INSERT INTO `bypal_facilitator_rate` VALUES ('3808', '10.00', '6', '1999', '10000', '50', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3809', '10.00', '6', '10000', '20000', '50', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3810', '10.00', '6', '20000', '30000', '50', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3811', '10.00', '6', '30000', '50000', '50', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3812', '10.00', '9', '1999', '10000', '50', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3813', '10.00', '9', '10000', '20000', '50', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3814', '10.00', '9', '20000', '30000', '50', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3815', '10.00', '9', '30000', '50000', '50', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3816', '10.00', '12', '1999', '10000', '50', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3817', '10.00', '12', '10000', '20000', '50', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3818', '10.00', '12', '20000', '30000', '50', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3819', '10.00', '12', '30000', '50000', '50', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3820', '10.00', '18', '1999', '10000', '50', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3821', '10.00', '18', '10000', '20000', '50', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3822', '10.00', '18', '20000', '30000', '50', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3823', '10.00', '18', '30000', '50000', '50', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3824', '10.00', '24', '1999', '10000', '50', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3825', '10.00', '24', '10000', '20000', '50', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3826', '10.00', '24', '20000', '30000', '50', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3827', '10.00', '24', '30000', '50000', '50', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3828', '10.00', '6', '1999', '10000', '50', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3829', '10.00', '6', '10000', '20000', '50', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3830', '10.00', '6', '20000', '30000', '50', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3831', '10.00', '6', '30000', '50000', '50', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3832', '10.00', '9', '1999', '10000', '50', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3833', '10.00', '9', '10000', '20000', '50', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3834', '10.00', '9', '20000', '30000', '50', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3835', '10.00', '9', '30000', '50000', '50', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3836', '10.00', '12', '1999', '10000', '50', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3837', '10.00', '12', '10000', '20000', '50', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3838', '10.00', '12', '20000', '30000', '50', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3839', '10.00', '12', '30000', '50000', '50', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3840', '10.00', '18', '1999', '10000', '50', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3841', '10.00', '18', '10000', '20000', '50', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3842', '10.00', '18', '20000', '30000', '50', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3843', '10.00', '18', '30000', '50000', '50', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3844', '10.00', '24', '1999', '10000', '50', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3845', '10.00', '24', '10000', '20000', '50', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3846', '10.00', '24', '20000', '30000', '50', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3847', '10.00', '24', '30000', '50000', '50', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3848', '10.00', '6', '1999', '10000', '51', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3849', '10.00', '6', '10000', '20000', '51', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3850', '10.00', '6', '20000', '30000', '51', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3851', '10.00', '6', '30000', '50000', '51', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3852', '10.00', '9', '1999', '10000', '51', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3853', '10.00', '9', '10000', '20000', '51', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3854', '10.00', '9', '20000', '30000', '51', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3855', '10.00', '9', '30000', '50000', '51', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3856', '10.00', '12', '1999', '10000', '51', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3857', '10.00', '12', '10000', '20000', '51', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3858', '10.00', '12', '20000', '30000', '51', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3859', '10.00', '12', '30000', '50000', '51', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3860', '10.00', '18', '1999', '10000', '51', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3861', '10.00', '18', '10000', '20000', '51', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3862', '10.00', '18', '20000', '30000', '51', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3863', '10.00', '18', '30000', '50000', '51', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3864', '10.00', '24', '1999', '10000', '51', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3865', '10.00', '24', '10000', '20000', '51', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3866', '10.00', '24', '20000', '30000', '51', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3867', '10.00', '24', '30000', '50000', '51', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3868', '10.00', '6', '1999', '10000', '51', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3869', '10.00', '6', '10000', '20000', '51', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3870', '10.00', '6', '20000', '30000', '51', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3871', '10.00', '6', '30000', '50000', '51', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3872', '10.00', '9', '1999', '10000', '51', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3873', '10.00', '9', '10000', '20000', '51', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3874', '10.00', '9', '20000', '30000', '51', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3875', '10.00', '9', '30000', '50000', '51', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3876', '10.00', '12', '1999', '10000', '51', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3877', '10.00', '12', '10000', '20000', '51', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3878', '10.00', '12', '20000', '30000', '51', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3879', '10.00', '12', '30000', '50000', '51', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3880', '10.00', '18', '1999', '10000', '51', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3881', '10.00', '18', '10000', '20000', '51', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3882', '10.00', '18', '20000', '30000', '51', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3883', '10.00', '18', '30000', '50000', '51', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3884', '10.00', '24', '1999', '10000', '51', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3885', '10.00', '24', '10000', '20000', '51', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3886', '10.00', '24', '20000', '30000', '51', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3887', '10.00', '24', '30000', '50000', '51', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3888', '10.00', '6', '1999', '10000', '52', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3889', '10.00', '6', '10000', '20000', '52', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3890', '10.00', '6', '20000', '30000', '52', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3891', '10.00', '6', '30000', '50000', '52', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3892', '10.00', '9', '1999', '10000', '52', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3893', '10.00', '9', '10000', '20000', '52', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3894', '10.00', '9', '20000', '30000', '52', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3895', '10.00', '9', '30000', '50000', '52', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3896', '10.00', '12', '1999', '10000', '52', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3897', '10.00', '12', '10000', '20000', '52', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3898', '10.00', '12', '20000', '30000', '52', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3899', '10.00', '12', '30000', '50000', '52', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3900', '10.00', '18', '1999', '10000', '52', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3901', '10.00', '18', '10000', '20000', '52', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3902', '10.00', '18', '20000', '30000', '52', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3903', '10.00', '18', '30000', '50000', '52', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3904', '10.00', '24', '1999', '10000', '52', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3905', '10.00', '24', '10000', '20000', '52', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3906', '10.00', '24', '20000', '30000', '52', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3907', '10.00', '24', '30000', '50000', '52', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3908', '10.00', '6', '1999', '10000', '52', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3909', '10.00', '6', '10000', '20000', '52', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3910', '10.00', '6', '20000', '30000', '52', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3911', '10.00', '6', '30000', '50000', '52', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3912', '10.00', '9', '1999', '10000', '52', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3913', '10.00', '9', '10000', '20000', '52', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3914', '10.00', '9', '20000', '30000', '52', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3915', '10.00', '9', '30000', '50000', '52', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3916', '10.00', '12', '1999', '10000', '52', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3917', '10.00', '12', '10000', '20000', '52', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3918', '10.00', '12', '20000', '30000', '52', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3919', '10.00', '12', '30000', '50000', '52', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3920', '10.00', '18', '1999', '10000', '52', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3921', '10.00', '18', '10000', '20000', '52', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3922', '10.00', '18', '20000', '30000', '52', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3923', '10.00', '18', '30000', '50000', '52', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3924', '10.00', '24', '1999', '10000', '52', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3925', '10.00', '24', '10000', '20000', '52', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3926', '10.00', '24', '20000', '30000', '52', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3927', '10.00', '24', '30000', '50000', '52', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3928', '10.00', '6', '1999', '10000', '53', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3929', '10.00', '6', '10000', '20000', '53', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3930', '10.00', '6', '20000', '30000', '53', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3931', '10.00', '6', '30000', '50000', '53', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3932', '10.00', '9', '1999', '10000', '53', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3933', '10.00', '9', '10000', '20000', '53', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3934', '10.00', '9', '20000', '30000', '53', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3935', '10.00', '9', '30000', '50000', '53', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3936', '10.00', '12', '1999', '10000', '53', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3937', '10.00', '12', '10000', '20000', '53', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3938', '10.00', '12', '20000', '30000', '53', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3939', '10.00', '12', '30000', '50000', '53', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3940', '10.00', '18', '1999', '10000', '53', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3941', '10.00', '18', '10000', '20000', '53', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3942', '10.00', '18', '20000', '30000', '53', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3943', '10.00', '18', '30000', '50000', '53', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3944', '10.00', '24', '1999', '10000', '53', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3945', '10.00', '24', '10000', '20000', '53', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3946', '10.00', '24', '20000', '30000', '53', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3947', '10.00', '24', '30000', '50000', '53', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3948', '10.00', '6', '1999', '10000', '53', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3949', '10.00', '6', '10000', '20000', '53', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3950', '10.00', '6', '20000', '30000', '53', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3951', '10.00', '6', '30000', '50000', '53', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3952', '10.00', '9', '1999', '10000', '53', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3953', '10.00', '9', '10000', '20000', '53', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3954', '10.00', '9', '20000', '30000', '53', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3955', '10.00', '9', '30000', '50000', '53', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3956', '10.00', '12', '1999', '10000', '53', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3957', '10.00', '12', '10000', '20000', '53', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3958', '10.00', '12', '20000', '30000', '53', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3959', '10.00', '12', '30000', '50000', '53', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3960', '10.00', '18', '1999', '10000', '53', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3961', '10.00', '18', '10000', '20000', '53', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3962', '10.00', '18', '20000', '30000', '53', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3963', '10.00', '18', '30000', '50000', '53', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3964', '10.00', '24', '1999', '10000', '53', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3965', '10.00', '24', '10000', '20000', '53', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3966', '10.00', '24', '20000', '30000', '53', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3967', '10.00', '24', '30000', '50000', '53', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3968', '10.00', '6', '1999', '10000', '54', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3969', '10.00', '6', '10000', '20000', '54', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3970', '10.00', '6', '20000', '30000', '54', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3971', '10.00', '6', '30000', '50000', '54', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3972', '10.00', '9', '1999', '10000', '54', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3973', '10.00', '9', '10000', '20000', '54', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3974', '10.00', '9', '20000', '30000', '54', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3975', '10.00', '9', '30000', '50000', '54', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3976', '10.00', '12', '1999', '10000', '54', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3977', '10.00', '12', '10000', '20000', '54', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3978', '10.00', '12', '20000', '30000', '54', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3979', '10.00', '12', '30000', '50000', '54', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3980', '10.00', '18', '1999', '10000', '54', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3981', '10.00', '18', '10000', '20000', '54', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3982', '10.00', '18', '20000', '30000', '54', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3983', '10.00', '18', '30000', '50000', '54', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3984', '10.00', '24', '1999', '10000', '54', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3985', '10.00', '24', '10000', '20000', '54', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3986', '10.00', '24', '20000', '30000', '54', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3987', '10.00', '24', '30000', '50000', '54', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('3988', '10.00', '6', '1999', '10000', '54', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3989', '10.00', '6', '10000', '20000', '54', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3990', '10.00', '6', '20000', '30000', '54', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3991', '10.00', '6', '30000', '50000', '54', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3992', '10.00', '9', '1999', '10000', '54', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3993', '10.00', '9', '10000', '20000', '54', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3994', '10.00', '9', '20000', '30000', '54', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3995', '10.00', '9', '30000', '50000', '54', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3996', '10.00', '12', '1999', '10000', '54', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3997', '10.00', '12', '10000', '20000', '54', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3998', '10.00', '12', '20000', '30000', '54', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('3999', '10.00', '12', '30000', '50000', '54', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4000', '10.00', '18', '1999', '10000', '54', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4001', '10.00', '18', '10000', '20000', '54', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4002', '10.00', '18', '20000', '30000', '54', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4003', '10.00', '18', '30000', '50000', '54', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4004', '10.00', '24', '1999', '10000', '54', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4005', '10.00', '24', '10000', '20000', '54', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4006', '10.00', '24', '20000', '30000', '54', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4007', '10.00', '24', '30000', '50000', '54', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4008', '10.00', '6', '1999', '10000', '55', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4009', '10.00', '6', '10000', '20000', '55', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4010', '10.00', '6', '20000', '30000', '55', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4011', '10.00', '6', '30000', '50000', '55', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4012', '10.00', '9', '1999', '10000', '55', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4013', '10.00', '9', '10000', '20000', '55', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4014', '10.00', '9', '20000', '30000', '55', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4015', '10.00', '9', '30000', '50000', '55', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4016', '10.00', '12', '1999', '10000', '55', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4017', '10.00', '12', '10000', '20000', '55', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4018', '10.00', '12', '20000', '30000', '55', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4019', '10.00', '12', '30000', '50000', '55', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4020', '10.00', '18', '1999', '10000', '55', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4021', '10.00', '18', '10000', '20000', '55', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4022', '10.00', '18', '20000', '30000', '55', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4023', '10.00', '18', '30000', '50000', '55', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4024', '10.00', '24', '1999', '10000', '55', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4025', '10.00', '24', '10000', '20000', '55', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4026', '10.00', '24', '20000', '30000', '55', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4027', '10.00', '24', '30000', '50000', '55', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4028', '10.00', '6', '1999', '10000', '55', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4029', '10.00', '6', '10000', '20000', '55', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4030', '10.00', '6', '20000', '30000', '55', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4031', '10.00', '6', '30000', '50000', '55', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4032', '10.00', '9', '1999', '10000', '55', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4033', '10.00', '9', '10000', '20000', '55', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4034', '10.00', '9', '20000', '30000', '55', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4035', '10.00', '9', '30000', '50000', '55', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4036', '10.00', '12', '1999', '10000', '55', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4037', '10.00', '12', '10000', '20000', '55', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4038', '10.00', '12', '20000', '30000', '55', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4039', '10.00', '12', '30000', '50000', '55', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4040', '10.00', '18', '1999', '10000', '55', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4041', '10.00', '18', '10000', '20000', '55', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4042', '10.00', '18', '20000', '30000', '55', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4043', '10.00', '18', '30000', '50000', '55', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4044', '10.00', '24', '1999', '10000', '55', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4045', '10.00', '24', '10000', '20000', '55', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4046', '10.00', '24', '20000', '30000', '55', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4047', '10.00', '24', '30000', '50000', '55', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4048', '10.00', '6', '1999', '10000', '57', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4049', '10.00', '6', '10000', '20000', '57', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4050', '10.00', '6', '20000', '30000', '57', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4051', '10.00', '6', '30000', '50000', '57', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4052', '10.00', '9', '1999', '10000', '57', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4053', '10.00', '9', '10000', '20000', '57', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4054', '10.00', '9', '20000', '30000', '57', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4055', '10.00', '9', '30000', '50000', '57', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4056', '10.00', '12', '1999', '10000', '57', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4057', '10.00', '12', '10000', '20000', '57', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4058', '10.00', '12', '20000', '30000', '57', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4059', '10.00', '12', '30000', '50000', '57', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4060', '10.00', '18', '1999', '10000', '57', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4061', '10.00', '18', '10000', '20000', '57', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4062', '10.00', '18', '20000', '30000', '57', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4063', '10.00', '18', '30000', '50000', '57', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4064', '10.00', '24', '1999', '10000', '57', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4065', '10.00', '24', '10000', '20000', '57', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4066', '10.00', '24', '20000', '30000', '57', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4067', '10.00', '24', '30000', '50000', '57', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4068', '10.00', '6', '1999', '10000', '57', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4069', '10.00', '6', '10000', '20000', '57', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4070', '10.00', '6', '20000', '30000', '57', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4071', '10.00', '6', '30000', '50000', '57', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4072', '10.00', '9', '1999', '10000', '57', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4073', '10.00', '9', '10000', '20000', '57', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4074', '10.00', '9', '20000', '30000', '57', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4075', '10.00', '9', '30000', '50000', '57', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4076', '10.00', '12', '1999', '10000', '57', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4077', '10.00', '12', '10000', '20000', '57', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4078', '10.00', '12', '20000', '30000', '57', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4079', '10.00', '12', '30000', '50000', '57', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4080', '10.00', '18', '1999', '10000', '57', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4081', '10.00', '18', '10000', '20000', '57', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4082', '10.00', '18', '20000', '30000', '57', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4083', '10.00', '18', '30000', '50000', '57', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4084', '10.00', '24', '1999', '10000', '57', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4085', '10.00', '24', '10000', '20000', '57', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4086', '10.00', '24', '20000', '30000', '57', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4087', '10.00', '24', '30000', '50000', '57', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4088', '10.00', '6', '1999', '10000', '58', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4089', '10.00', '6', '10000', '20000', '58', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4090', '10.00', '6', '20000', '30000', '58', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4091', '10.00', '6', '30000', '50000', '58', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4092', '10.00', '9', '1999', '10000', '58', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4093', '10.00', '9', '10000', '20000', '58', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4094', '10.00', '9', '20000', '30000', '58', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4095', '10.00', '9', '30000', '50000', '58', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4096', '10.00', '12', '1999', '10000', '58', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4097', '10.00', '12', '10000', '20000', '58', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4098', '10.00', '12', '20000', '30000', '58', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4099', '10.00', '12', '30000', '50000', '58', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4100', '10.00', '18', '1999', '10000', '58', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4101', '10.00', '18', '10000', '20000', '58', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4102', '10.00', '18', '20000', '30000', '58', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4103', '10.00', '18', '30000', '50000', '58', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4104', '10.00', '24', '1999', '10000', '58', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4105', '10.00', '24', '10000', '20000', '58', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4106', '10.00', '24', '20000', '30000', '58', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4107', '10.00', '24', '30000', '50000', '58', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4108', '10.00', '6', '1999', '10000', '58', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4109', '10.00', '6', '10000', '20000', '58', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4110', '10.00', '6', '20000', '30000', '58', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4111', '10.00', '6', '30000', '50000', '58', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4112', '10.00', '9', '1999', '10000', '58', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4113', '10.00', '9', '10000', '20000', '58', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4114', '10.00', '9', '20000', '30000', '58', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4115', '10.00', '9', '30000', '50000', '58', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4116', '10.00', '12', '1999', '10000', '58', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4117', '10.00', '12', '10000', '20000', '58', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4118', '10.00', '12', '20000', '30000', '58', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4119', '10.00', '12', '30000', '50000', '58', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4120', '10.00', '18', '1999', '10000', '58', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4121', '10.00', '18', '10000', '20000', '58', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4122', '10.00', '18', '20000', '30000', '58', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4123', '10.00', '18', '30000', '50000', '58', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4124', '10.00', '24', '1999', '10000', '58', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4125', '10.00', '24', '10000', '20000', '58', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4126', '10.00', '24', '20000', '30000', '58', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4127', '10.00', '24', '30000', '50000', '58', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4128', '10.00', '6', '1999', '10000', '59', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4129', '10.00', '6', '10000', '20000', '59', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4130', '10.00', '6', '20000', '30000', '59', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4131', '10.00', '6', '30000', '50000', '59', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4132', '10.00', '9', '1999', '10000', '59', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4133', '10.00', '9', '10000', '20000', '59', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4134', '10.00', '9', '20000', '30000', '59', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4135', '10.00', '9', '30000', '50000', '59', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4136', '10.00', '12', '1999', '10000', '59', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4137', '10.00', '12', '10000', '20000', '59', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4138', '10.00', '12', '20000', '30000', '59', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4139', '10.00', '12', '30000', '50000', '59', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4140', '10.00', '18', '1999', '10000', '59', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4141', '10.00', '18', '10000', '20000', '59', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4142', '10.00', '18', '20000', '30000', '59', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4143', '10.00', '18', '30000', '50000', '59', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4144', '10.00', '24', '1999', '10000', '59', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4145', '10.00', '24', '10000', '20000', '59', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4146', '10.00', '24', '20000', '30000', '59', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4147', '10.00', '24', '30000', '50000', '59', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4148', '10.00', '6', '1999', '10000', '59', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4149', '10.00', '6', '10000', '20000', '59', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4150', '10.00', '6', '20000', '30000', '59', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4151', '10.00', '6', '30000', '50000', '59', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4152', '10.00', '9', '1999', '10000', '59', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4153', '10.00', '9', '10000', '20000', '59', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4154', '10.00', '9', '20000', '30000', '59', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4155', '10.00', '9', '30000', '50000', '59', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4156', '10.00', '12', '1999', '10000', '59', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4157', '10.00', '12', '10000', '20000', '59', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4158', '10.00', '12', '20000', '30000', '59', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4159', '10.00', '12', '30000', '50000', '59', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4160', '10.00', '18', '1999', '10000', '59', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4161', '10.00', '18', '10000', '20000', '59', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4162', '10.00', '18', '20000', '30000', '59', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4163', '10.00', '18', '30000', '50000', '59', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4164', '10.00', '24', '1999', '10000', '59', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4165', '10.00', '24', '10000', '20000', '59', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4166', '10.00', '24', '20000', '30000', '59', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4167', '10.00', '24', '30000', '50000', '59', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4168', '10.00', '6', '1999', '10000', '60', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4169', '10.00', '6', '10000', '20000', '60', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4170', '10.00', '6', '20000', '30000', '60', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4171', '10.00', '6', '30000', '50000', '60', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4172', '10.00', '9', '1999', '10000', '60', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4173', '10.00', '9', '10000', '20000', '60', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4174', '10.00', '9', '20000', '30000', '60', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4175', '10.00', '9', '30000', '50000', '60', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4176', '10.00', '12', '1999', '10000', '60', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4177', '10.00', '12', '10000', '20000', '60', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4178', '10.00', '12', '20000', '30000', '60', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4179', '10.00', '12', '30000', '50000', '60', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4180', '10.00', '18', '1999', '10000', '60', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4181', '10.00', '18', '10000', '20000', '60', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4182', '10.00', '18', '20000', '30000', '60', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4183', '10.00', '18', '30000', '50000', '60', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4184', '10.00', '24', '1999', '10000', '60', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4185', '10.00', '24', '10000', '20000', '60', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4186', '10.00', '24', '20000', '30000', '60', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4187', '10.00', '24', '30000', '50000', '60', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4188', '10.00', '6', '1999', '10000', '60', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4189', '10.00', '6', '10000', '20000', '60', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4190', '10.00', '6', '20000', '30000', '60', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4191', '10.00', '6', '30000', '50000', '60', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4192', '10.00', '9', '1999', '10000', '60', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4193', '10.00', '9', '10000', '20000', '60', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4194', '10.00', '9', '20000', '30000', '60', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4195', '10.00', '9', '30000', '50000', '60', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4196', '10.00', '12', '1999', '10000', '60', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4197', '10.00', '12', '10000', '20000', '60', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4198', '10.00', '12', '20000', '30000', '60', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4199', '10.00', '12', '30000', '50000', '60', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4200', '10.00', '18', '1999', '10000', '60', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4201', '10.00', '18', '10000', '20000', '60', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4202', '10.00', '18', '20000', '30000', '60', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4203', '10.00', '18', '30000', '50000', '60', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4204', '10.00', '24', '1999', '10000', '60', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4205', '10.00', '24', '10000', '20000', '60', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4206', '10.00', '24', '20000', '30000', '60', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4207', '10.00', '24', '30000', '50000', '60', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4208', '10.00', '6', '1999', '10000', '61', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4209', '10.00', '6', '10000', '20000', '61', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4210', '10.00', '6', '20000', '30000', '61', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4211', '10.00', '6', '30000', '50000', '61', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4212', '10.00', '9', '1999', '10000', '61', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4213', '10.00', '9', '10000', '20000', '61', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4214', '10.00', '9', '20000', '30000', '61', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4215', '10.00', '9', '30000', '50000', '61', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4216', '10.00', '12', '1999', '10000', '61', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4217', '10.00', '12', '10000', '20000', '61', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4218', '10.00', '12', '20000', '30000', '61', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4219', '10.00', '12', '30000', '50000', '61', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4220', '10.00', '18', '1999', '10000', '61', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4221', '10.00', '18', '10000', '20000', '61', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4222', '10.00', '18', '20000', '30000', '61', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4223', '10.00', '18', '30000', '50000', '61', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4224', '10.00', '24', '1999', '10000', '61', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4225', '10.00', '24', '10000', '20000', '61', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4226', '10.00', '24', '20000', '30000', '61', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4227', '10.00', '24', '30000', '50000', '61', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4228', '10.00', '6', '1999', '10000', '61', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4229', '10.00', '6', '10000', '20000', '61', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4230', '10.00', '6', '20000', '30000', '61', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4231', '10.00', '6', '30000', '50000', '61', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4232', '10.00', '9', '1999', '10000', '61', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4233', '10.00', '9', '10000', '20000', '61', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4234', '10.00', '9', '20000', '30000', '61', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4235', '10.00', '9', '30000', '50000', '61', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4236', '10.00', '12', '1999', '10000', '61', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4237', '10.00', '12', '10000', '20000', '61', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4238', '10.00', '12', '20000', '30000', '61', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4239', '10.00', '12', '30000', '50000', '61', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4240', '10.00', '18', '1999', '10000', '61', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4241', '10.00', '18', '10000', '20000', '61', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4242', '10.00', '18', '20000', '30000', '61', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4243', '10.00', '18', '30000', '50000', '61', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4244', '10.00', '24', '1999', '10000', '61', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4245', '10.00', '24', '10000', '20000', '61', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4246', '10.00', '24', '20000', '30000', '61', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4247', '10.00', '24', '30000', '50000', '61', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4248', '10.00', '6', '1999', '10000', '62', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4249', '10.00', '6', '10000', '20000', '62', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4250', '10.00', '6', '20000', '30000', '62', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4251', '10.00', '6', '30000', '50000', '62', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4252', '10.00', '9', '1999', '10000', '62', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4253', '10.00', '9', '10000', '20000', '62', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4254', '10.00', '9', '20000', '30000', '62', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4255', '10.00', '9', '30000', '50000', '62', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4256', '10.00', '12', '1999', '10000', '62', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4257', '10.00', '12', '10000', '20000', '62', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4258', '10.00', '12', '20000', '30000', '62', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4259', '10.00', '12', '30000', '50000', '62', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4260', '10.00', '18', '1999', '10000', '62', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4261', '10.00', '18', '10000', '20000', '62', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4262', '10.00', '18', '20000', '30000', '62', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4263', '10.00', '18', '30000', '50000', '62', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4264', '10.00', '24', '1999', '10000', '62', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4265', '10.00', '24', '10000', '20000', '62', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4266', '10.00', '24', '20000', '30000', '62', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4267', '10.00', '24', '30000', '50000', '62', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4268', '10.00', '6', '1999', '10000', '62', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4269', '10.00', '6', '10000', '20000', '62', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4270', '10.00', '6', '20000', '30000', '62', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4271', '10.00', '6', '30000', '50000', '62', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4272', '10.00', '9', '1999', '10000', '62', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4273', '10.00', '9', '10000', '20000', '62', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4274', '10.00', '9', '20000', '30000', '62', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4275', '10.00', '9', '30000', '50000', '62', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4276', '10.00', '12', '1999', '10000', '62', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4277', '10.00', '12', '10000', '20000', '62', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4278', '10.00', '12', '20000', '30000', '62', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4279', '10.00', '12', '30000', '50000', '62', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4280', '10.00', '18', '1999', '10000', '62', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4281', '10.00', '18', '10000', '20000', '62', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4282', '10.00', '18', '20000', '30000', '62', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4283', '10.00', '18', '30000', '50000', '62', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4284', '10.00', '24', '1999', '10000', '62', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4285', '10.00', '24', '10000', '20000', '62', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4286', '10.00', '24', '20000', '30000', '62', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4287', '10.00', '24', '30000', '50000', '62', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4288', '10.00', '6', '1999', '10000', '63', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4289', '10.00', '6', '10000', '20000', '63', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4290', '10.00', '6', '20000', '30000', '63', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4291', '10.00', '6', '30000', '50000', '63', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4292', '10.00', '9', '1999', '10000', '63', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4293', '10.00', '9', '10000', '20000', '63', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4294', '10.00', '9', '20000', '30000', '63', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4295', '10.00', '9', '30000', '50000', '63', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4296', '10.00', '12', '1999', '10000', '63', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4297', '10.00', '12', '10000', '20000', '63', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4298', '10.00', '12', '20000', '30000', '63', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4299', '10.00', '12', '30000', '50000', '63', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4300', '10.00', '18', '1999', '10000', '63', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4301', '10.00', '18', '10000', '20000', '63', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4302', '10.00', '18', '20000', '30000', '63', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4303', '10.00', '18', '30000', '50000', '63', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4304', '10.00', '24', '1999', '10000', '63', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4305', '10.00', '24', '10000', '20000', '63', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4306', '10.00', '24', '20000', '30000', '63', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4307', '10.00', '24', '30000', '50000', '63', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4308', '10.00', '6', '1999', '10000', '63', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4309', '10.00', '6', '10000', '20000', '63', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4310', '10.00', '6', '20000', '30000', '63', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4311', '10.00', '6', '30000', '50000', '63', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4312', '10.00', '9', '1999', '10000', '63', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4313', '10.00', '9', '10000', '20000', '63', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4314', '10.00', '9', '20000', '30000', '63', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4315', '10.00', '9', '30000', '50000', '63', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4316', '10.00', '12', '1999', '10000', '63', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4317', '10.00', '12', '10000', '20000', '63', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4318', '10.00', '12', '20000', '30000', '63', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4319', '10.00', '12', '30000', '50000', '63', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4320', '10.00', '18', '1999', '10000', '63', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4321', '10.00', '18', '10000', '20000', '63', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4322', '10.00', '18', '20000', '30000', '63', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4323', '10.00', '18', '30000', '50000', '63', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4324', '10.00', '24', '1999', '10000', '63', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4325', '10.00', '24', '10000', '20000', '63', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4326', '10.00', '24', '20000', '30000', '63', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4327', '10.00', '24', '30000', '50000', '63', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4328', '10.00', '6', '1999', '10000', '64', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4329', '10.00', '6', '10000', '20000', '64', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4330', '10.00', '6', '20000', '30000', '64', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4331', '10.00', '6', '30000', '50000', '64', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4332', '10.00', '9', '1999', '10000', '64', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4333', '10.00', '9', '10000', '20000', '64', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4334', '10.00', '9', '20000', '30000', '64', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4335', '10.00', '9', '30000', '50000', '64', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4336', '10.00', '12', '1999', '10000', '64', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4337', '10.00', '12', '10000', '20000', '64', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4338', '10.00', '12', '20000', '30000', '64', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4339', '10.00', '12', '30000', '50000', '64', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4340', '10.00', '18', '1999', '10000', '64', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4341', '10.00', '18', '10000', '20000', '64', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4342', '10.00', '18', '20000', '30000', '64', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4343', '10.00', '18', '30000', '50000', '64', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4344', '10.00', '24', '1999', '10000', '64', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4345', '10.00', '24', '10000', '20000', '64', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4346', '10.00', '24', '20000', '30000', '64', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4347', '10.00', '24', '30000', '50000', '64', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4348', '10.00', '6', '1999', '10000', '64', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4349', '10.00', '6', '10000', '20000', '64', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4350', '10.00', '6', '20000', '30000', '64', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4351', '10.00', '6', '30000', '50000', '64', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4352', '10.00', '9', '1999', '10000', '64', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4353', '10.00', '9', '10000', '20000', '64', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4354', '10.00', '9', '20000', '30000', '64', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4355', '10.00', '9', '30000', '50000', '64', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4356', '10.00', '12', '1999', '10000', '64', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4357', '10.00', '12', '10000', '20000', '64', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4358', '10.00', '12', '20000', '30000', '64', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4359', '10.00', '12', '30000', '50000', '64', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4360', '10.00', '18', '1999', '10000', '64', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4361', '10.00', '18', '10000', '20000', '64', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4362', '10.00', '18', '20000', '30000', '64', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4363', '10.00', '18', '30000', '50000', '64', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4364', '10.00', '24', '1999', '10000', '64', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4365', '10.00', '24', '10000', '20000', '64', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4366', '10.00', '24', '20000', '30000', '64', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4367', '10.00', '24', '30000', '50000', '64', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4368', '10.00', '6', '1999', '10000', '65', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4369', '10.00', '6', '10000', '20000', '65', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4370', '10.00', '6', '20000', '30000', '65', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4371', '10.00', '6', '30000', '50000', '65', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4372', '10.00', '9', '1999', '10000', '65', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4373', '10.00', '9', '10000', '20000', '65', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4374', '10.00', '9', '20000', '30000', '65', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4375', '10.00', '9', '30000', '50000', '65', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4376', '10.00', '12', '1999', '10000', '65', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4377', '10.00', '12', '10000', '20000', '65', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4378', '10.00', '12', '20000', '30000', '65', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4379', '10.00', '12', '30000', '50000', '65', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4380', '10.00', '18', '1999', '10000', '65', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4381', '10.00', '18', '10000', '20000', '65', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4382', '10.00', '18', '20000', '30000', '65', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4383', '10.00', '18', '30000', '50000', '65', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4384', '10.00', '24', '1999', '10000', '65', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4385', '10.00', '24', '10000', '20000', '65', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4386', '10.00', '24', '20000', '30000', '65', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4387', '10.00', '24', '30000', '50000', '65', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4388', '10.00', '6', '1999', '10000', '65', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4389', '10.00', '6', '10000', '20000', '65', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4390', '10.00', '6', '20000', '30000', '65', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4391', '10.00', '6', '30000', '50000', '65', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4392', '10.00', '9', '1999', '10000', '65', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4393', '10.00', '9', '10000', '20000', '65', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4394', '10.00', '9', '20000', '30000', '65', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4395', '10.00', '9', '30000', '50000', '65', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4396', '10.00', '12', '1999', '10000', '65', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4397', '10.00', '12', '10000', '20000', '65', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4398', '10.00', '12', '20000', '30000', '65', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4399', '10.00', '12', '30000', '50000', '65', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4400', '10.00', '18', '1999', '10000', '65', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4401', '10.00', '18', '10000', '20000', '65', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4402', '10.00', '18', '20000', '30000', '65', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4403', '10.00', '18', '30000', '50000', '65', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4404', '10.00', '24', '1999', '10000', '65', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4405', '10.00', '24', '10000', '20000', '65', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4406', '10.00', '24', '20000', '30000', '65', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4407', '10.00', '24', '30000', '50000', '65', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4408', '10.00', '6', '1999', '10000', '66', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4409', '10.00', '6', '10000', '20000', '66', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4410', '10.00', '6', '20000', '30000', '66', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4411', '10.00', '6', '30000', '50000', '66', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4412', '10.00', '9', '1999', '10000', '66', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4413', '10.00', '9', '10000', '20000', '66', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4414', '10.00', '9', '20000', '30000', '66', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4415', '10.00', '9', '30000', '50000', '66', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4416', '10.00', '12', '1999', '10000', '66', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4417', '10.00', '12', '10000', '20000', '66', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4418', '10.00', '12', '20000', '30000', '66', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4419', '10.00', '12', '30000', '50000', '66', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4420', '10.00', '18', '1999', '10000', '66', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4421', '10.00', '18', '10000', '20000', '66', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4422', '10.00', '18', '20000', '30000', '66', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4423', '10.00', '18', '30000', '50000', '66', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4424', '10.00', '24', '1999', '10000', '66', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4425', '10.00', '24', '10000', '20000', '66', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4426', '10.00', '24', '20000', '30000', '66', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4427', '10.00', '24', '30000', '50000', '66', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4428', '10.00', '6', '1999', '10000', '66', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4429', '10.00', '6', '10000', '20000', '66', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4430', '10.00', '6', '20000', '30000', '66', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4431', '10.00', '6', '30000', '50000', '66', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4432', '10.00', '9', '1999', '10000', '66', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4433', '10.00', '9', '10000', '20000', '66', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4434', '10.00', '9', '20000', '30000', '66', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4435', '10.00', '9', '30000', '50000', '66', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4436', '10.00', '12', '1999', '10000', '66', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4437', '10.00', '12', '10000', '20000', '66', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4438', '10.00', '12', '20000', '30000', '66', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4439', '10.00', '12', '30000', '50000', '66', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4440', '10.00', '18', '1999', '10000', '66', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4441', '10.00', '18', '10000', '20000', '66', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4442', '10.00', '18', '20000', '30000', '66', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4443', '10.00', '18', '30000', '50000', '66', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4444', '10.00', '24', '1999', '10000', '66', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4445', '10.00', '24', '10000', '20000', '66', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4446', '10.00', '24', '20000', '30000', '66', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4447', '10.00', '24', '30000', '50000', '66', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4448', '10.00', '6', '1999', '10000', '67', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4449', '10.00', '6', '10000', '20000', '67', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4450', '10.00', '6', '20000', '30000', '67', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4451', '10.00', '6', '30000', '50000', '67', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4452', '10.00', '9', '1999', '10000', '67', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4453', '10.00', '9', '10000', '20000', '67', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4454', '10.00', '9', '20000', '30000', '67', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4455', '10.00', '9', '30000', '50000', '67', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4456', '10.00', '12', '1999', '10000', '67', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4457', '10.00', '12', '10000', '20000', '67', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4458', '10.00', '12', '20000', '30000', '67', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4459', '10.00', '12', '30000', '50000', '67', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4460', '10.00', '18', '1999', '10000', '67', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4461', '10.00', '18', '10000', '20000', '67', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4462', '10.00', '18', '20000', '30000', '67', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4463', '10.00', '18', '30000', '50000', '67', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4464', '10.00', '24', '1999', '10000', '67', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4465', '10.00', '24', '10000', '20000', '67', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4466', '10.00', '24', '20000', '30000', '67', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4467', '10.00', '24', '30000', '50000', '67', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4468', '10.00', '6', '1999', '10000', '67', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4469', '10.00', '6', '10000', '20000', '67', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4470', '10.00', '6', '20000', '30000', '67', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4471', '10.00', '6', '30000', '50000', '67', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4472', '10.00', '9', '1999', '10000', '67', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4473', '10.00', '9', '10000', '20000', '67', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4474', '10.00', '9', '20000', '30000', '67', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4475', '10.00', '9', '30000', '50000', '67', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4476', '10.00', '12', '1999', '10000', '67', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4477', '10.00', '12', '10000', '20000', '67', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4478', '10.00', '12', '20000', '30000', '67', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4479', '10.00', '12', '30000', '50000', '67', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4480', '10.00', '18', '1999', '10000', '67', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4481', '10.00', '18', '10000', '20000', '67', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4482', '10.00', '18', '20000', '30000', '67', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4483', '10.00', '18', '30000', '50000', '67', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4484', '10.00', '24', '1999', '10000', '67', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4485', '10.00', '24', '10000', '20000', '67', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4486', '10.00', '24', '20000', '30000', '67', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4487', '10.00', '24', '30000', '50000', '67', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4488', '10.00', '6', '1999', '10000', '68', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4489', '10.00', '6', '10000', '20000', '68', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4490', '10.00', '6', '20000', '30000', '68', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4491', '10.00', '6', '30000', '50000', '68', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4492', '10.00', '9', '1999', '10000', '68', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4493', '10.00', '9', '10000', '20000', '68', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4494', '10.00', '9', '20000', '30000', '68', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4495', '10.00', '9', '30000', '50000', '68', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4496', '10.00', '12', '1999', '10000', '68', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4497', '10.00', '12', '10000', '20000', '68', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4498', '10.00', '12', '20000', '30000', '68', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4499', '10.00', '12', '30000', '50000', '68', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4500', '10.00', '18', '1999', '10000', '68', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4501', '10.00', '18', '10000', '20000', '68', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4502', '10.00', '18', '20000', '30000', '68', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4503', '10.00', '18', '30000', '50000', '68', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4504', '10.00', '24', '1999', '10000', '68', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4505', '10.00', '24', '10000', '20000', '68', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4506', '10.00', '24', '20000', '30000', '68', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4507', '10.00', '24', '30000', '50000', '68', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4508', '10.00', '6', '1999', '10000', '68', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4509', '10.00', '6', '10000', '20000', '68', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4510', '10.00', '6', '20000', '30000', '68', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4511', '10.00', '6', '30000', '50000', '68', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4512', '10.00', '9', '1999', '10000', '68', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4513', '10.00', '9', '10000', '20000', '68', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4514', '10.00', '9', '20000', '30000', '68', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4515', '10.00', '9', '30000', '50000', '68', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4516', '10.00', '12', '1999', '10000', '68', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4517', '10.00', '12', '10000', '20000', '68', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4518', '10.00', '12', '20000', '30000', '68', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4519', '10.00', '12', '30000', '50000', '68', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4520', '10.00', '18', '1999', '10000', '68', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4521', '10.00', '18', '10000', '20000', '68', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4522', '10.00', '18', '20000', '30000', '68', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4523', '10.00', '18', '30000', '50000', '68', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4524', '10.00', '24', '1999', '10000', '68', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4525', '10.00', '24', '10000', '20000', '68', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4526', '10.00', '24', '20000', '30000', '68', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4527', '10.00', '24', '30000', '50000', '68', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4528', '10.00', '6', '1999', '10000', '69', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4529', '10.00', '6', '10000', '20000', '69', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4530', '10.00', '6', '20000', '30000', '69', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4531', '10.00', '6', '30000', '50000', '69', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4532', '10.00', '9', '1999', '10000', '69', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4533', '10.00', '9', '10000', '20000', '69', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4534', '10.00', '9', '20000', '30000', '69', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4535', '10.00', '9', '30000', '50000', '69', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4536', '10.00', '12', '1999', '10000', '69', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4537', '10.00', '12', '10000', '20000', '69', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4538', '10.00', '12', '20000', '30000', '69', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4539', '10.00', '12', '30000', '50000', '69', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4540', '10.00', '18', '1999', '10000', '69', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4541', '10.00', '18', '10000', '20000', '69', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4542', '10.00', '18', '20000', '30000', '69', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4543', '10.00', '18', '30000', '50000', '69', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4544', '10.00', '24', '1999', '10000', '69', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4545', '10.00', '24', '10000', '20000', '69', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4546', '10.00', '24', '20000', '30000', '69', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4547', '10.00', '24', '30000', '50000', '69', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4548', '10.00', '6', '1999', '10000', '69', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4549', '10.00', '6', '10000', '20000', '69', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4550', '10.00', '6', '20000', '30000', '69', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4551', '10.00', '6', '30000', '50000', '69', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4552', '10.00', '9', '1999', '10000', '69', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4553', '10.00', '9', '10000', '20000', '69', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4554', '10.00', '9', '20000', '30000', '69', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4555', '10.00', '9', '30000', '50000', '69', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4556', '10.00', '12', '1999', '10000', '69', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4557', '10.00', '12', '10000', '20000', '69', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4558', '10.00', '12', '20000', '30000', '69', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4559', '10.00', '12', '30000', '50000', '69', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4560', '10.00', '18', '1999', '10000', '69', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4561', '10.00', '18', '10000', '20000', '69', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4562', '10.00', '18', '20000', '30000', '69', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4563', '10.00', '18', '30000', '50000', '69', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4564', '10.00', '24', '1999', '10000', '69', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4565', '10.00', '24', '10000', '20000', '69', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4566', '10.00', '24', '20000', '30000', '69', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4567', '10.00', '24', '30000', '50000', '69', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4568', '10.00', '6', '1999', '10000', '70', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4569', '10.00', '6', '10000', '20000', '70', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4570', '10.00', '6', '20000', '30000', '70', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4571', '10.00', '6', '30000', '50000', '70', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4572', '10.00', '9', '1999', '10000', '70', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4573', '10.00', '9', '10000', '20000', '70', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4574', '10.00', '9', '20000', '30000', '70', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4575', '10.00', '9', '30000', '50000', '70', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4576', '10.00', '12', '1999', '10000', '70', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4577', '10.00', '12', '10000', '20000', '70', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4578', '10.00', '12', '20000', '30000', '70', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4579', '10.00', '12', '30000', '50000', '70', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4580', '10.00', '18', '1999', '10000', '70', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4581', '10.00', '18', '10000', '20000', '70', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4582', '10.00', '18', '20000', '30000', '70', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4583', '10.00', '18', '30000', '50000', '70', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4584', '10.00', '24', '1999', '10000', '70', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4585', '10.00', '24', '10000', '20000', '70', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4586', '10.00', '24', '20000', '30000', '70', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4587', '10.00', '24', '30000', '50000', '70', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4588', '10.00', '6', '1999', '10000', '70', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4589', '10.00', '6', '10000', '20000', '70', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4590', '10.00', '6', '20000', '30000', '70', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4591', '10.00', '6', '30000', '50000', '70', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4592', '10.00', '9', '1999', '10000', '70', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4593', '10.00', '9', '10000', '20000', '70', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4594', '10.00', '9', '20000', '30000', '70', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4595', '10.00', '9', '30000', '50000', '70', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4596', '10.00', '12', '1999', '10000', '70', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4597', '10.00', '12', '10000', '20000', '70', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4598', '10.00', '12', '20000', '30000', '70', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4599', '10.00', '12', '30000', '50000', '70', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4600', '10.00', '18', '1999', '10000', '70', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4601', '10.00', '18', '10000', '20000', '70', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4602', '10.00', '18', '20000', '30000', '70', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4603', '10.00', '18', '30000', '50000', '70', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4604', '10.00', '24', '1999', '10000', '70', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4605', '10.00', '24', '10000', '20000', '70', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4606', '10.00', '24', '20000', '30000', '70', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4607', '10.00', '24', '30000', '50000', '70', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4608', '10.00', '6', '1999', '10000', '71', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4609', '10.00', '6', '10000', '20000', '71', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4610', '10.00', '6', '20000', '30000', '71', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4611', '10.00', '6', '30000', '50000', '71', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4612', '10.00', '9', '1999', '10000', '71', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4613', '10.00', '9', '10000', '20000', '71', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4614', '10.00', '9', '20000', '30000', '71', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4615', '10.00', '9', '30000', '50000', '71', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4616', '10.00', '12', '1999', '10000', '71', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4617', '10.00', '12', '10000', '20000', '71', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4618', '10.00', '12', '20000', '30000', '71', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4619', '10.00', '12', '30000', '50000', '71', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4620', '10.00', '18', '1999', '10000', '71', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4621', '10.00', '18', '10000', '20000', '71', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4622', '10.00', '18', '20000', '30000', '71', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4623', '10.00', '18', '30000', '50000', '71', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4624', '10.00', '24', '1999', '10000', '71', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4625', '10.00', '24', '10000', '20000', '71', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4626', '10.00', '24', '20000', '30000', '71', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4627', '10.00', '24', '30000', '50000', '71', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4628', '10.00', '6', '1999', '10000', '71', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4629', '10.00', '6', '10000', '20000', '71', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4630', '10.00', '6', '20000', '30000', '71', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4631', '10.00', '6', '30000', '50000', '71', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4632', '10.00', '9', '1999', '10000', '71', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4633', '10.00', '9', '10000', '20000', '71', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4634', '10.00', '9', '20000', '30000', '71', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4635', '10.00', '9', '30000', '50000', '71', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4636', '10.00', '12', '1999', '10000', '71', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4637', '10.00', '12', '10000', '20000', '71', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4638', '10.00', '12', '20000', '30000', '71', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4639', '10.00', '12', '30000', '50000', '71', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4640', '10.00', '18', '1999', '10000', '71', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4641', '10.00', '18', '10000', '20000', '71', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4642', '10.00', '18', '20000', '30000', '71', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4643', '10.00', '18', '30000', '50000', '71', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4644', '10.00', '24', '1999', '10000', '71', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4645', '10.00', '24', '10000', '20000', '71', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4646', '10.00', '24', '20000', '30000', '71', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4647', '10.00', '24', '30000', '50000', '71', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4648', '10.00', '6', '1999', '10000', '72', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4649', '10.00', '6', '10000', '20000', '72', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4650', '10.00', '6', '20000', '30000', '72', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4651', '10.00', '6', '30000', '50000', '72', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4652', '10.00', '9', '1999', '10000', '72', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4653', '10.00', '9', '10000', '20000', '72', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4654', '10.00', '9', '20000', '30000', '72', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4655', '10.00', '9', '30000', '50000', '72', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4656', '10.00', '12', '1999', '10000', '72', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4657', '10.00', '12', '10000', '20000', '72', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4658', '10.00', '12', '20000', '30000', '72', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4659', '10.00', '12', '30000', '50000', '72', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4660', '10.00', '18', '1999', '10000', '72', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4661', '10.00', '18', '10000', '20000', '72', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4662', '10.00', '18', '20000', '30000', '72', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4663', '10.00', '18', '30000', '50000', '72', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4664', '10.00', '24', '1999', '10000', '72', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4665', '10.00', '24', '10000', '20000', '72', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4666', '10.00', '24', '20000', '30000', '72', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4667', '10.00', '24', '30000', '50000', '72', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4668', '10.00', '6', '1999', '10000', '72', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4669', '10.00', '6', '10000', '20000', '72', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4670', '10.00', '6', '20000', '30000', '72', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4671', '10.00', '6', '30000', '50000', '72', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4672', '10.00', '9', '1999', '10000', '72', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4673', '10.00', '9', '10000', '20000', '72', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4674', '10.00', '9', '20000', '30000', '72', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4675', '10.00', '9', '30000', '50000', '72', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4676', '10.00', '12', '1999', '10000', '72', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4677', '10.00', '12', '10000', '20000', '72', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4678', '10.00', '12', '20000', '30000', '72', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4679', '10.00', '12', '30000', '50000', '72', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4680', '10.00', '18', '1999', '10000', '72', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4681', '10.00', '18', '10000', '20000', '72', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4682', '10.00', '18', '20000', '30000', '72', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4683', '10.00', '18', '30000', '50000', '72', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4684', '10.00', '24', '1999', '10000', '72', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4685', '10.00', '24', '10000', '20000', '72', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4686', '10.00', '24', '20000', '30000', '72', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4687', '10.00', '24', '30000', '50000', '72', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4688', '10.00', '6', '1999', '10000', '73', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4689', '10.00', '6', '10000', '20000', '73', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4690', '10.00', '6', '20000', '30000', '73', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4691', '10.00', '6', '30000', '50000', '73', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4692', '10.00', '9', '1999', '10000', '73', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4693', '10.00', '9', '10000', '20000', '73', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4694', '10.00', '9', '20000', '30000', '73', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4695', '10.00', '9', '30000', '50000', '73', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4696', '10.00', '12', '1999', '10000', '73', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4697', '10.00', '12', '10000', '20000', '73', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4698', '10.00', '12', '20000', '30000', '73', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4699', '10.00', '12', '30000', '50000', '73', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4700', '10.00', '18', '1999', '10000', '73', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4701', '10.00', '18', '10000', '20000', '73', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4702', '10.00', '18', '20000', '30000', '73', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4703', '10.00', '18', '30000', '50000', '73', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4704', '10.00', '24', '1999', '10000', '73', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4705', '10.00', '24', '10000', '20000', '73', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4706', '10.00', '24', '20000', '30000', '73', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4707', '10.00', '24', '30000', '50000', '73', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4708', '10.00', '6', '1999', '10000', '73', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4709', '10.00', '6', '10000', '20000', '73', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4710', '10.00', '6', '20000', '30000', '73', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4711', '10.00', '6', '30000', '50000', '73', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4712', '10.00', '9', '1999', '10000', '73', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4713', '10.00', '9', '10000', '20000', '73', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4714', '10.00', '9', '20000', '30000', '73', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4715', '10.00', '9', '30000', '50000', '73', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4716', '10.00', '12', '1999', '10000', '73', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4717', '10.00', '12', '10000', '20000', '73', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4718', '10.00', '12', '20000', '30000', '73', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4719', '10.00', '12', '30000', '50000', '73', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4720', '10.00', '18', '1999', '10000', '73', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4721', '10.00', '18', '10000', '20000', '73', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4722', '10.00', '18', '20000', '30000', '73', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4723', '10.00', '18', '30000', '50000', '73', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4724', '10.00', '24', '1999', '10000', '73', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4725', '10.00', '24', '10000', '20000', '73', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4726', '10.00', '24', '20000', '30000', '73', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4727', '10.00', '24', '30000', '50000', '73', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4728', '10.00', '6', '1999', '10000', '74', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4729', '10.00', '6', '10000', '20000', '74', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4730', '10.00', '6', '20000', '30000', '74', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4731', '10.00', '6', '30000', '50000', '74', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4732', '10.00', '9', '1999', '10000', '74', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4733', '10.00', '9', '10000', '20000', '74', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4734', '10.00', '9', '20000', '30000', '74', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4735', '10.00', '9', '30000', '50000', '74', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4736', '10.00', '12', '1999', '10000', '74', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4737', '10.00', '12', '10000', '20000', '74', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4738', '10.00', '12', '20000', '30000', '74', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4739', '10.00', '12', '30000', '50000', '74', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4740', '10.00', '18', '1999', '10000', '74', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4741', '10.00', '18', '10000', '20000', '74', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4742', '10.00', '18', '20000', '30000', '74', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4743', '10.00', '18', '30000', '50000', '74', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4744', '10.00', '24', '1999', '10000', '74', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4745', '10.00', '24', '10000', '20000', '74', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4746', '10.00', '24', '20000', '30000', '74', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4747', '10.00', '24', '30000', '50000', '74', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4748', '10.00', '6', '1999', '10000', '74', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4749', '10.00', '6', '10000', '20000', '74', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4750', '10.00', '6', '20000', '30000', '74', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4751', '10.00', '6', '30000', '50000', '74', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4752', '10.00', '9', '1999', '10000', '74', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4753', '10.00', '9', '10000', '20000', '74', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4754', '10.00', '9', '20000', '30000', '74', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4755', '10.00', '9', '30000', '50000', '74', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4756', '10.00', '12', '1999', '10000', '74', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4757', '10.00', '12', '10000', '20000', '74', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4758', '10.00', '12', '20000', '30000', '74', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4759', '10.00', '12', '30000', '50000', '74', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4760', '10.00', '18', '1999', '10000', '74', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4761', '10.00', '18', '10000', '20000', '74', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4762', '10.00', '18', '20000', '30000', '74', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4763', '10.00', '18', '30000', '50000', '74', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4764', '10.00', '24', '1999', '10000', '74', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4765', '10.00', '24', '10000', '20000', '74', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4766', '10.00', '24', '20000', '30000', '74', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4767', '10.00', '24', '30000', '50000', '74', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4768', '10.00', '6', '1999', '10000', '75', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4769', '10.00', '6', '10000', '20000', '75', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4770', '10.00', '6', '20000', '30000', '75', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4771', '10.00', '6', '30000', '50000', '75', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4772', '10.00', '9', '1999', '10000', '75', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4773', '10.00', '9', '10000', '20000', '75', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4774', '10.00', '9', '20000', '30000', '75', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4775', '10.00', '9', '30000', '50000', '75', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4776', '10.00', '12', '1999', '10000', '75', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4777', '10.00', '12', '10000', '20000', '75', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4778', '10.00', '12', '20000', '30000', '75', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4779', '10.00', '12', '30000', '50000', '75', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4780', '10.00', '18', '1999', '10000', '75', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4781', '10.00', '18', '10000', '20000', '75', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4782', '10.00', '18', '20000', '30000', '75', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4783', '10.00', '18', '30000', '50000', '75', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4784', '10.00', '24', '1999', '10000', '75', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4785', '10.00', '24', '10000', '20000', '75', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4786', '10.00', '24', '20000', '30000', '75', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4787', '10.00', '24', '30000', '50000', '75', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4788', '10.00', '6', '1999', '10000', '75', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4789', '10.00', '6', '10000', '20000', '75', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4790', '10.00', '6', '20000', '30000', '75', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4791', '10.00', '6', '30000', '50000', '75', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4792', '10.00', '9', '1999', '10000', '75', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4793', '10.00', '9', '10000', '20000', '75', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4794', '10.00', '9', '20000', '30000', '75', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4795', '10.00', '9', '30000', '50000', '75', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4796', '10.00', '12', '1999', '10000', '75', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4797', '10.00', '12', '10000', '20000', '75', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4798', '10.00', '12', '20000', '30000', '75', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4799', '10.00', '12', '30000', '50000', '75', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4800', '10.00', '18', '1999', '10000', '75', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4801', '10.00', '18', '10000', '20000', '75', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4802', '10.00', '18', '20000', '30000', '75', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4803', '10.00', '18', '30000', '50000', '75', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4804', '10.00', '24', '1999', '10000', '75', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4805', '10.00', '24', '10000', '20000', '75', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4806', '10.00', '24', '20000', '30000', '75', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4807', '10.00', '24', '30000', '50000', '75', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4808', '10.00', '6', '1999', '10000', '76', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4809', '10.00', '6', '10000', '20000', '76', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4810', '10.00', '6', '20000', '30000', '76', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4811', '10.00', '6', '30000', '50000', '76', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4812', '10.00', '9', '1999', '10000', '76', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4813', '10.00', '9', '10000', '20000', '76', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4814', '10.00', '9', '20000', '30000', '76', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4815', '10.00', '9', '30000', '50000', '76', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4816', '10.00', '12', '1999', '10000', '76', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4817', '10.00', '12', '10000', '20000', '76', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4818', '10.00', '12', '20000', '30000', '76', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4819', '10.00', '12', '30000', '50000', '76', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4820', '10.00', '18', '1999', '10000', '76', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4821', '10.00', '18', '10000', '20000', '76', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4822', '10.00', '18', '20000', '30000', '76', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4823', '10.00', '18', '30000', '50000', '76', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4824', '10.00', '24', '1999', '10000', '76', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4825', '10.00', '24', '10000', '20000', '76', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4826', '10.00', '24', '20000', '30000', '76', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4827', '10.00', '24', '30000', '50000', '76', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4828', '10.00', '6', '1999', '10000', '76', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4829', '10.00', '6', '10000', '20000', '76', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4830', '10.00', '6', '20000', '30000', '76', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4831', '10.00', '6', '30000', '50000', '76', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4832', '10.00', '9', '1999', '10000', '76', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4833', '10.00', '9', '10000', '20000', '76', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4834', '10.00', '9', '20000', '30000', '76', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4835', '10.00', '9', '30000', '50000', '76', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4836', '10.00', '12', '1999', '10000', '76', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4837', '10.00', '12', '10000', '20000', '76', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4838', '10.00', '12', '20000', '30000', '76', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4839', '10.00', '12', '30000', '50000', '76', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4840', '10.00', '18', '1999', '10000', '76', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4841', '10.00', '18', '10000', '20000', '76', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4842', '10.00', '18', '20000', '30000', '76', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4843', '10.00', '18', '30000', '50000', '76', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4844', '10.00', '24', '1999', '10000', '76', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4845', '10.00', '24', '10000', '20000', '76', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4846', '10.00', '24', '20000', '30000', '76', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4847', '10.00', '24', '30000', '50000', '76', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4848', '10.00', '6', '1999', '10000', '78', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4849', '10.00', '6', '10000', '20000', '78', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4850', '10.00', '6', '20000', '30000', '78', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4851', '10.00', '6', '30000', '50000', '78', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4852', '10.00', '9', '1999', '10000', '78', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4853', '10.00', '9', '10000', '20000', '78', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4854', '10.00', '9', '20000', '30000', '78', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4855', '10.00', '9', '30000', '50000', '78', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4856', '10.00', '12', '1999', '10000', '78', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4857', '10.00', '12', '10000', '20000', '78', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4858', '10.00', '12', '20000', '30000', '78', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4859', '10.00', '12', '30000', '50000', '78', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4860', '10.00', '18', '1999', '10000', '78', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4861', '10.00', '18', '10000', '20000', '78', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4862', '10.00', '18', '20000', '30000', '78', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4863', '10.00', '18', '30000', '50000', '78', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4864', '10.00', '24', '1999', '10000', '78', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4865', '10.00', '24', '10000', '20000', '78', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4866', '10.00', '24', '20000', '30000', '78', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4867', '10.00', '24', '30000', '50000', '78', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4868', '10.00', '6', '1999', '10000', '78', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4869', '10.00', '6', '10000', '20000', '78', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4870', '10.00', '6', '20000', '30000', '78', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4871', '10.00', '6', '30000', '50000', '78', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4872', '10.00', '9', '1999', '10000', '78', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4873', '10.00', '9', '10000', '20000', '78', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4874', '10.00', '9', '20000', '30000', '78', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4875', '10.00', '9', '30000', '50000', '78', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4876', '10.00', '12', '1999', '10000', '78', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4877', '10.00', '12', '10000', '20000', '78', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4878', '10.00', '12', '20000', '30000', '78', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4879', '10.00', '12', '30000', '50000', '78', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4880', '10.00', '18', '1999', '10000', '78', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4881', '10.00', '18', '10000', '20000', '78', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4882', '10.00', '18', '20000', '30000', '78', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4883', '10.00', '18', '30000', '50000', '78', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4884', '10.00', '24', '1999', '10000', '78', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4885', '10.00', '24', '10000', '20000', '78', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4886', '10.00', '24', '20000', '30000', '78', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4887', '10.00', '24', '30000', '50000', '78', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4888', '10.00', '6', '1999', '10000', '79', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4889', '10.00', '6', '10000', '20000', '79', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4890', '10.00', '6', '20000', '30000', '79', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4891', '10.00', '6', '30000', '50000', '79', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4892', '10.00', '9', '1999', '10000', '79', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4893', '10.00', '9', '10000', '20000', '79', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4894', '10.00', '9', '20000', '30000', '79', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4895', '10.00', '9', '30000', '50000', '79', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4896', '10.00', '12', '1999', '10000', '79', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4897', '10.00', '12', '10000', '20000', '79', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4898', '10.00', '12', '20000', '30000', '79', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4899', '10.00', '12', '30000', '50000', '79', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4900', '10.00', '18', '1999', '10000', '79', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4901', '10.00', '18', '10000', '20000', '79', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4902', '10.00', '18', '20000', '30000', '79', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4903', '10.00', '18', '30000', '50000', '79', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4904', '10.00', '24', '1999', '10000', '79', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4905', '10.00', '24', '10000', '20000', '79', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4906', '10.00', '24', '20000', '30000', '79', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4907', '10.00', '24', '30000', '50000', '79', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4908', '10.00', '6', '1999', '10000', '79', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4909', '10.00', '6', '10000', '20000', '79', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4910', '10.00', '6', '20000', '30000', '79', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4911', '10.00', '6', '30000', '50000', '79', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4912', '10.00', '9', '1999', '10000', '79', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4913', '10.00', '9', '10000', '20000', '79', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4914', '10.00', '9', '20000', '30000', '79', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4915', '10.00', '9', '30000', '50000', '79', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4916', '10.00', '12', '1999', '10000', '79', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4917', '10.00', '12', '10000', '20000', '79', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4918', '10.00', '12', '20000', '30000', '79', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4919', '10.00', '12', '30000', '50000', '79', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4920', '10.00', '18', '1999', '10000', '79', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4921', '10.00', '18', '10000', '20000', '79', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4922', '10.00', '18', '20000', '30000', '79', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4923', '10.00', '18', '30000', '50000', '79', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4924', '10.00', '24', '1999', '10000', '79', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4925', '10.00', '24', '10000', '20000', '79', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4926', '10.00', '24', '20000', '30000', '79', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4927', '10.00', '24', '30000', '50000', '79', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4928', '10.00', '6', '1999', '10000', '80', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4929', '10.00', '6', '10000', '20000', '80', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4930', '10.00', '6', '20000', '30000', '80', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4931', '10.00', '6', '30000', '50000', '80', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4932', '10.00', '9', '1999', '10000', '80', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4933', '10.00', '9', '10000', '20000', '80', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4934', '10.00', '9', '20000', '30000', '80', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4935', '10.00', '9', '30000', '50000', '80', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4936', '10.00', '12', '1999', '10000', '80', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4937', '10.00', '12', '10000', '20000', '80', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4938', '10.00', '12', '20000', '30000', '80', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4939', '10.00', '12', '30000', '50000', '80', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4940', '10.00', '18', '1999', '10000', '80', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4941', '10.00', '18', '10000', '20000', '80', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4942', '10.00', '18', '20000', '30000', '80', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4943', '10.00', '18', '30000', '50000', '80', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4944', '10.00', '24', '1999', '10000', '80', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4945', '10.00', '24', '10000', '20000', '80', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4946', '10.00', '24', '20000', '30000', '80', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4947', '10.00', '24', '30000', '50000', '80', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4948', '10.00', '6', '1999', '10000', '80', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4949', '10.00', '6', '10000', '20000', '80', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4950', '10.00', '6', '20000', '30000', '80', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4951', '10.00', '6', '30000', '50000', '80', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4952', '10.00', '9', '1999', '10000', '80', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4953', '10.00', '9', '10000', '20000', '80', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4954', '10.00', '9', '20000', '30000', '80', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4955', '10.00', '9', '30000', '50000', '80', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4956', '10.00', '12', '1999', '10000', '80', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4957', '10.00', '12', '10000', '20000', '80', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4958', '10.00', '12', '20000', '30000', '80', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4959', '10.00', '12', '30000', '50000', '80', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4960', '10.00', '18', '1999', '10000', '80', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4961', '10.00', '18', '10000', '20000', '80', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4962', '10.00', '18', '20000', '30000', '80', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4963', '10.00', '18', '30000', '50000', '80', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4964', '10.00', '24', '1999', '10000', '80', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4965', '10.00', '24', '10000', '20000', '80', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4966', '10.00', '24', '20000', '30000', '80', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4967', '10.00', '24', '30000', '50000', '80', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4968', '10.00', '6', '1999', '10000', '81', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4969', '10.00', '6', '10000', '20000', '81', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4970', '10.00', '6', '20000', '30000', '81', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4971', '10.00', '6', '30000', '50000', '81', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4972', '10.00', '9', '1999', '10000', '81', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4973', '10.00', '9', '10000', '20000', '81', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4974', '10.00', '9', '20000', '30000', '81', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4975', '10.00', '9', '30000', '50000', '81', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4976', '10.00', '12', '1999', '10000', '81', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4977', '10.00', '12', '10000', '20000', '81', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4978', '10.00', '12', '20000', '30000', '81', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4979', '10.00', '12', '30000', '50000', '81', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4980', '10.00', '18', '1999', '10000', '81', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4981', '10.00', '18', '10000', '20000', '81', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4982', '10.00', '18', '20000', '30000', '81', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4983', '10.00', '18', '30000', '50000', '81', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4984', '10.00', '24', '1999', '10000', '81', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4985', '10.00', '24', '10000', '20000', '81', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4986', '10.00', '24', '20000', '30000', '81', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4987', '10.00', '24', '30000', '50000', '81', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('4988', '10.00', '6', '1999', '10000', '81', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4989', '10.00', '6', '10000', '20000', '81', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4990', '10.00', '6', '20000', '30000', '81', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4991', '10.00', '6', '30000', '50000', '81', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4992', '10.00', '9', '1999', '10000', '81', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4993', '10.00', '9', '10000', '20000', '81', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4994', '10.00', '9', '20000', '30000', '81', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4995', '10.00', '9', '30000', '50000', '81', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4996', '10.00', '12', '1999', '10000', '81', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4997', '10.00', '12', '10000', '20000', '81', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4998', '10.00', '12', '20000', '30000', '81', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('4999', '10.00', '12', '30000', '50000', '81', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5000', '10.00', '18', '1999', '10000', '81', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5001', '10.00', '18', '10000', '20000', '81', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5002', '10.00', '18', '20000', '30000', '81', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5003', '10.00', '18', '30000', '50000', '81', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5004', '10.00', '24', '1999', '10000', '81', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5005', '10.00', '24', '10000', '20000', '81', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5006', '10.00', '24', '20000', '30000', '81', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5007', '10.00', '24', '30000', '50000', '81', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5008', '10.00', '6', '1999', '10000', '82', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5009', '10.00', '6', '10000', '20000', '82', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5010', '10.00', '6', '20000', '30000', '82', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5011', '10.00', '6', '30000', '50000', '82', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5012', '10.00', '9', '1999', '10000', '82', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5013', '10.00', '9', '10000', '20000', '82', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5014', '10.00', '9', '20000', '30000', '82', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5015', '10.00', '9', '30000', '50000', '82', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5016', '10.00', '12', '1999', '10000', '82', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5017', '10.00', '12', '10000', '20000', '82', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5018', '10.00', '12', '20000', '30000', '82', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5019', '10.00', '12', '30000', '50000', '82', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5020', '10.00', '18', '1999', '10000', '82', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5021', '10.00', '18', '10000', '20000', '82', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5022', '10.00', '18', '20000', '30000', '82', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5023', '10.00', '18', '30000', '50000', '82', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5024', '10.00', '24', '1999', '10000', '82', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5025', '10.00', '24', '10000', '20000', '82', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5026', '10.00', '24', '20000', '30000', '82', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5027', '10.00', '24', '30000', '50000', '82', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5028', '10.00', '6', '1999', '10000', '82', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5029', '10.00', '6', '10000', '20000', '82', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5030', '10.00', '6', '20000', '30000', '82', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5031', '10.00', '6', '30000', '50000', '82', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5032', '10.00', '9', '1999', '10000', '82', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5033', '10.00', '9', '10000', '20000', '82', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5034', '10.00', '9', '20000', '30000', '82', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5035', '10.00', '9', '30000', '50000', '82', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5036', '10.00', '12', '1999', '10000', '82', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5037', '10.00', '12', '10000', '20000', '82', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5038', '10.00', '12', '20000', '30000', '82', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5039', '10.00', '12', '30000', '50000', '82', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5040', '10.00', '18', '1999', '10000', '82', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5041', '10.00', '18', '10000', '20000', '82', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5042', '10.00', '18', '20000', '30000', '82', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5043', '10.00', '18', '30000', '50000', '82', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5044', '10.00', '24', '1999', '10000', '82', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5045', '10.00', '24', '10000', '20000', '82', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5046', '10.00', '24', '20000', '30000', '82', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5047', '10.00', '24', '30000', '50000', '82', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5048', '10.00', '6', '1999', '10000', '83', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5049', '10.00', '6', '10000', '20000', '83', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5050', '10.00', '6', '20000', '30000', '83', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5051', '10.00', '6', '30000', '50000', '83', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5052', '10.00', '9', '1999', '10000', '83', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5053', '10.00', '9', '10000', '20000', '83', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5054', '10.00', '9', '20000', '30000', '83', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5055', '10.00', '9', '30000', '50000', '83', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5056', '10.00', '12', '1999', '10000', '83', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5057', '10.00', '12', '10000', '20000', '83', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5058', '10.00', '12', '20000', '30000', '83', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5059', '10.00', '12', '30000', '50000', '83', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5060', '10.00', '18', '1999', '10000', '83', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5061', '10.00', '18', '10000', '20000', '83', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5062', '10.00', '18', '20000', '30000', '83', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5063', '10.00', '18', '30000', '50000', '83', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5064', '10.00', '24', '1999', '10000', '83', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5065', '10.00', '24', '10000', '20000', '83', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5066', '10.00', '24', '20000', '30000', '83', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5067', '10.00', '24', '30000', '50000', '83', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5068', '10.00', '6', '1999', '10000', '83', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5069', '10.00', '6', '10000', '20000', '83', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5070', '10.00', '6', '20000', '30000', '83', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5071', '10.00', '6', '30000', '50000', '83', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5072', '10.00', '9', '1999', '10000', '83', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5073', '10.00', '9', '10000', '20000', '83', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5074', '10.00', '9', '20000', '30000', '83', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5075', '10.00', '9', '30000', '50000', '83', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5076', '10.00', '12', '1999', '10000', '83', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5077', '10.00', '12', '10000', '20000', '83', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5078', '10.00', '12', '20000', '30000', '83', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5079', '10.00', '12', '30000', '50000', '83', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5080', '10.00', '18', '1999', '10000', '83', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5081', '10.00', '18', '10000', '20000', '83', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5082', '10.00', '18', '20000', '30000', '83', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5083', '10.00', '18', '30000', '50000', '83', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5084', '10.00', '24', '1999', '10000', '83', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5085', '10.00', '24', '10000', '20000', '83', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5086', '10.00', '24', '20000', '30000', '83', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5087', '10.00', '24', '30000', '50000', '83', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5088', '10.00', '6', '1999', '10000', '84', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5089', '10.00', '6', '10000', '20000', '84', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5090', '10.00', '6', '20000', '30000', '84', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5091', '10.00', '6', '30000', '50000', '84', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5092', '10.00', '9', '1999', '10000', '84', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5093', '10.00', '9', '10000', '20000', '84', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5094', '10.00', '9', '20000', '30000', '84', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5095', '10.00', '9', '30000', '50000', '84', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5096', '10.00', '12', '1999', '10000', '84', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5097', '10.00', '12', '10000', '20000', '84', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5098', '10.00', '12', '20000', '30000', '84', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5099', '10.00', '12', '30000', '50000', '84', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5100', '10.00', '18', '1999', '10000', '84', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5101', '10.00', '18', '10000', '20000', '84', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5102', '10.00', '18', '20000', '30000', '84', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5103', '10.00', '18', '30000', '50000', '84', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5104', '10.00', '24', '1999', '10000', '84', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5105', '10.00', '24', '10000', '20000', '84', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5106', '10.00', '24', '20000', '30000', '84', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5107', '10.00', '24', '30000', '50000', '84', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5108', '10.00', '6', '1999', '10000', '84', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5109', '10.00', '6', '10000', '20000', '84', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5110', '10.00', '6', '20000', '30000', '84', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5111', '10.00', '6', '30000', '50000', '84', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5112', '10.00', '9', '1999', '10000', '84', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5113', '10.00', '9', '10000', '20000', '84', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5114', '10.00', '9', '20000', '30000', '84', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5115', '10.00', '9', '30000', '50000', '84', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5116', '10.00', '12', '1999', '10000', '84', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5117', '10.00', '12', '10000', '20000', '84', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5118', '10.00', '12', '20000', '30000', '84', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5119', '10.00', '12', '30000', '50000', '84', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5120', '10.00', '18', '1999', '10000', '84', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5121', '10.00', '18', '10000', '20000', '84', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5122', '10.00', '18', '20000', '30000', '84', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5123', '10.00', '18', '30000', '50000', '84', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5124', '10.00', '24', '1999', '10000', '84', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5125', '10.00', '24', '10000', '20000', '84', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5126', '10.00', '24', '20000', '30000', '84', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5127', '10.00', '24', '30000', '50000', '84', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5128', '10.00', '6', '1999', '10000', '85', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5129', '10.00', '6', '10000', '20000', '85', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5130', '10.00', '6', '20000', '30000', '85', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5131', '10.00', '6', '30000', '50000', '85', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5132', '10.00', '9', '1999', '10000', '85', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5133', '10.00', '9', '10000', '20000', '85', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5134', '10.00', '9', '20000', '30000', '85', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5135', '10.00', '9', '30000', '50000', '85', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5136', '10.00', '12', '1999', '10000', '85', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5137', '10.00', '12', '10000', '20000', '85', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5138', '10.00', '12', '20000', '30000', '85', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5139', '10.00', '12', '30000', '50000', '85', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5140', '10.00', '18', '1999', '10000', '85', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5141', '10.00', '18', '10000', '20000', '85', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5142', '10.00', '18', '20000', '30000', '85', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5143', '10.00', '18', '30000', '50000', '85', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5144', '10.00', '24', '1999', '10000', '85', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5145', '10.00', '24', '10000', '20000', '85', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5146', '10.00', '24', '20000', '30000', '85', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5147', '10.00', '24', '30000', '50000', '85', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5148', '10.00', '6', '1999', '10000', '85', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5149', '10.00', '6', '10000', '20000', '85', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5150', '10.00', '6', '20000', '30000', '85', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5151', '10.00', '6', '30000', '50000', '85', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5152', '10.00', '9', '1999', '10000', '85', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5153', '10.00', '9', '10000', '20000', '85', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5154', '10.00', '9', '20000', '30000', '85', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5155', '10.00', '9', '30000', '50000', '85', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5156', '10.00', '12', '1999', '10000', '85', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5157', '10.00', '12', '10000', '20000', '85', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5158', '10.00', '12', '20000', '30000', '85', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5159', '10.00', '12', '30000', '50000', '85', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5160', '10.00', '18', '1999', '10000', '85', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5161', '10.00', '18', '10000', '20000', '85', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5162', '10.00', '18', '20000', '30000', '85', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5163', '10.00', '18', '30000', '50000', '85', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5164', '10.00', '24', '1999', '10000', '85', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5165', '10.00', '24', '10000', '20000', '85', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5166', '10.00', '24', '20000', '30000', '85', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5167', '10.00', '24', '30000', '50000', '85', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5168', '10.00', '6', '1999', '10000', '86', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5169', '10.00', '6', '10000', '20000', '86', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5170', '10.00', '6', '20000', '30000', '86', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5171', '10.00', '6', '30000', '50000', '86', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5172', '10.00', '9', '1999', '10000', '86', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5173', '10.00', '9', '10000', '20000', '86', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5174', '10.00', '9', '20000', '30000', '86', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5175', '10.00', '9', '30000', '50000', '86', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5176', '10.00', '12', '1999', '10000', '86', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5177', '10.00', '12', '10000', '20000', '86', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5178', '10.00', '12', '20000', '30000', '86', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5179', '10.00', '12', '30000', '50000', '86', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5180', '10.00', '18', '1999', '10000', '86', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5181', '10.00', '18', '10000', '20000', '86', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5182', '10.00', '18', '20000', '30000', '86', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5183', '10.00', '18', '30000', '50000', '86', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5184', '10.00', '24', '1999', '10000', '86', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5185', '10.00', '24', '10000', '20000', '86', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5186', '10.00', '24', '20000', '30000', '86', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5187', '10.00', '24', '30000', '50000', '86', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5188', '10.00', '6', '1999', '10000', '86', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5189', '10.00', '6', '10000', '20000', '86', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5190', '10.00', '6', '20000', '30000', '86', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5191', '10.00', '6', '30000', '50000', '86', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5192', '10.00', '9', '1999', '10000', '86', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5193', '10.00', '9', '10000', '20000', '86', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5194', '10.00', '9', '20000', '30000', '86', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5195', '10.00', '9', '30000', '50000', '86', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5196', '10.00', '12', '1999', '10000', '86', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5197', '10.00', '12', '10000', '20000', '86', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5198', '10.00', '12', '20000', '30000', '86', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5199', '10.00', '12', '30000', '50000', '86', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5200', '10.00', '18', '1999', '10000', '86', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5201', '10.00', '18', '10000', '20000', '86', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5202', '10.00', '18', '20000', '30000', '86', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5203', '10.00', '18', '30000', '50000', '86', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5204', '10.00', '24', '1999', '10000', '86', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5205', '10.00', '24', '10000', '20000', '86', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5206', '10.00', '24', '20000', '30000', '86', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5207', '10.00', '24', '30000', '50000', '86', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5208', '10.00', '6', '1999', '10000', '87', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5209', '10.00', '6', '10000', '20000', '87', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5210', '10.00', '6', '20000', '30000', '87', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5211', '10.00', '6', '30000', '50000', '87', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5212', '10.00', '9', '1999', '10000', '87', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5213', '10.00', '9', '10000', '20000', '87', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5214', '10.00', '9', '20000', '30000', '87', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5215', '10.00', '9', '30000', '50000', '87', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5216', '10.00', '12', '1999', '10000', '87', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5217', '10.00', '12', '10000', '20000', '87', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5218', '10.00', '12', '20000', '30000', '87', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5219', '10.00', '12', '30000', '50000', '87', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5220', '10.00', '18', '1999', '10000', '87', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5221', '10.00', '18', '10000', '20000', '87', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5222', '10.00', '18', '20000', '30000', '87', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5223', '10.00', '18', '30000', '50000', '87', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5224', '10.00', '24', '1999', '10000', '87', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5225', '10.00', '24', '10000', '20000', '87', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5226', '10.00', '24', '20000', '30000', '87', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5227', '10.00', '24', '30000', '50000', '87', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5228', '10.00', '6', '1999', '10000', '87', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5229', '10.00', '6', '10000', '20000', '87', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5230', '10.00', '6', '20000', '30000', '87', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5231', '10.00', '6', '30000', '50000', '87', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5232', '10.00', '9', '1999', '10000', '87', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5233', '10.00', '9', '10000', '20000', '87', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5234', '10.00', '9', '20000', '30000', '87', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5235', '10.00', '9', '30000', '50000', '87', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5236', '10.00', '12', '1999', '10000', '87', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5237', '10.00', '12', '10000', '20000', '87', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5238', '10.00', '12', '20000', '30000', '87', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5239', '10.00', '12', '30000', '50000', '87', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5240', '10.00', '18', '1999', '10000', '87', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5241', '10.00', '18', '10000', '20000', '87', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5242', '10.00', '18', '20000', '30000', '87', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5243', '10.00', '18', '30000', '50000', '87', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5244', '10.00', '24', '1999', '10000', '87', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5245', '10.00', '24', '10000', '20000', '87', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5246', '10.00', '24', '20000', '30000', '87', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5247', '10.00', '24', '30000', '50000', '87', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5248', '10.00', '6', '1999', '10000', '88', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5249', '10.00', '6', '10000', '20000', '88', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5250', '10.00', '6', '20000', '30000', '88', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5251', '10.00', '6', '30000', '50000', '88', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5252', '10.00', '9', '1999', '10000', '88', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5253', '10.00', '9', '10000', '20000', '88', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5254', '10.00', '9', '20000', '30000', '88', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5255', '10.00', '9', '30000', '50000', '88', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5256', '10.00', '12', '1999', '10000', '88', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5257', '10.00', '12', '10000', '20000', '88', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5258', '10.00', '12', '20000', '30000', '88', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5259', '10.00', '12', '30000', '50000', '88', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5260', '10.00', '18', '1999', '10000', '88', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5261', '10.00', '18', '10000', '20000', '88', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5262', '10.00', '18', '20000', '30000', '88', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5263', '10.00', '18', '30000', '50000', '88', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5264', '10.00', '24', '1999', '10000', '88', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5265', '10.00', '24', '10000', '20000', '88', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5266', '10.00', '24', '20000', '30000', '88', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5267', '10.00', '24', '30000', '50000', '88', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5268', '10.00', '6', '1999', '10000', '88', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5269', '10.00', '6', '10000', '20000', '88', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5270', '10.00', '6', '20000', '30000', '88', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5271', '10.00', '6', '30000', '50000', '88', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5272', '10.00', '9', '1999', '10000', '88', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5273', '10.00', '9', '10000', '20000', '88', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5274', '10.00', '9', '20000', '30000', '88', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5275', '10.00', '9', '30000', '50000', '88', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5276', '10.00', '12', '1999', '10000', '88', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5277', '10.00', '12', '10000', '20000', '88', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5278', '10.00', '12', '20000', '30000', '88', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5279', '10.00', '12', '30000', '50000', '88', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5280', '10.00', '18', '1999', '10000', '88', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5281', '10.00', '18', '10000', '20000', '88', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5282', '10.00', '18', '20000', '30000', '88', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5283', '10.00', '18', '30000', '50000', '88', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5284', '10.00', '24', '1999', '10000', '88', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5285', '10.00', '24', '10000', '20000', '88', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5286', '10.00', '24', '20000', '30000', '88', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5287', '10.00', '24', '30000', '50000', '88', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5288', '10.00', '6', '1999', '10000', '89', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5289', '10.00', '6', '10000', '20000', '89', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5290', '10.00', '6', '20000', '30000', '89', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5291', '10.00', '6', '30000', '50000', '89', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5292', '10.00', '9', '1999', '10000', '89', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5293', '10.00', '9', '10000', '20000', '89', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5294', '10.00', '9', '20000', '30000', '89', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5295', '10.00', '9', '30000', '50000', '89', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5296', '10.00', '12', '1999', '10000', '89', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5297', '10.00', '12', '10000', '20000', '89', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5298', '10.00', '12', '20000', '30000', '89', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5299', '10.00', '12', '30000', '50000', '89', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5300', '10.00', '18', '1999', '10000', '89', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5301', '10.00', '18', '10000', '20000', '89', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5302', '10.00', '18', '20000', '30000', '89', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5303', '10.00', '18', '30000', '50000', '89', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5304', '10.00', '24', '1999', '10000', '89', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5305', '10.00', '24', '10000', '20000', '89', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5306', '10.00', '24', '20000', '30000', '89', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5307', '10.00', '24', '30000', '50000', '89', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5308', '10.00', '6', '1999', '10000', '89', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5309', '10.00', '6', '10000', '20000', '89', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5310', '10.00', '6', '20000', '30000', '89', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5311', '10.00', '6', '30000', '50000', '89', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5312', '10.00', '9', '1999', '10000', '89', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5313', '10.00', '9', '10000', '20000', '89', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5314', '10.00', '9', '20000', '30000', '89', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5315', '10.00', '9', '30000', '50000', '89', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5316', '10.00', '12', '1999', '10000', '89', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5317', '10.00', '12', '10000', '20000', '89', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5318', '10.00', '12', '20000', '30000', '89', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5319', '10.00', '12', '30000', '50000', '89', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5320', '10.00', '18', '1999', '10000', '89', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5321', '10.00', '18', '10000', '20000', '89', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5322', '10.00', '18', '20000', '30000', '89', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5323', '10.00', '18', '30000', '50000', '89', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5324', '10.00', '24', '1999', '10000', '89', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5325', '10.00', '24', '10000', '20000', '89', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5326', '10.00', '24', '20000', '30000', '89', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5327', '10.00', '24', '30000', '50000', '89', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5328', '10.00', '6', '1999', '10000', '91', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5329', '10.00', '6', '10000', '20000', '91', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5330', '10.00', '6', '20000', '30000', '91', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5331', '10.00', '6', '30000', '50000', '91', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5332', '10.00', '9', '1999', '10000', '91', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5333', '10.00', '9', '10000', '20000', '91', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5334', '10.00', '9', '20000', '30000', '91', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5335', '10.00', '9', '30000', '50000', '91', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5336', '10.00', '12', '1999', '10000', '91', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5337', '10.00', '12', '10000', '20000', '91', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5338', '10.00', '12', '20000', '30000', '91', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5339', '10.00', '12', '30000', '50000', '91', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5340', '10.00', '18', '1999', '10000', '91', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5341', '10.00', '18', '10000', '20000', '91', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5342', '10.00', '18', '20000', '30000', '91', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5343', '10.00', '18', '30000', '50000', '91', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5344', '10.00', '24', '1999', '10000', '91', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5345', '10.00', '24', '10000', '20000', '91', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5346', '10.00', '24', '20000', '30000', '91', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5347', '10.00', '24', '30000', '50000', '91', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5348', '10.00', '6', '1999', '10000', '91', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5349', '10.00', '6', '10000', '20000', '91', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5350', '10.00', '6', '20000', '30000', '91', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5351', '10.00', '6', '30000', '50000', '91', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5352', '10.00', '9', '1999', '10000', '91', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5353', '10.00', '9', '10000', '20000', '91', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5354', '10.00', '9', '20000', '30000', '91', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5355', '10.00', '9', '30000', '50000', '91', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5356', '10.00', '12', '1999', '10000', '91', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5357', '10.00', '12', '10000', '20000', '91', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5358', '10.00', '12', '20000', '30000', '91', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5359', '10.00', '12', '30000', '50000', '91', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5360', '10.00', '18', '1999', '10000', '91', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5361', '10.00', '18', '10000', '20000', '91', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5362', '10.00', '18', '20000', '30000', '91', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5363', '10.00', '18', '30000', '50000', '91', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5364', '10.00', '24', '1999', '10000', '91', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5365', '10.00', '24', '10000', '20000', '91', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5366', '10.00', '24', '20000', '30000', '91', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5367', '10.00', '24', '30000', '50000', '91', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5368', '10.00', '6', '1999', '10000', '92', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5369', '10.00', '6', '10000', '20000', '92', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5370', '10.00', '6', '20000', '30000', '92', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5371', '10.00', '6', '30000', '50000', '92', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5372', '10.00', '9', '1999', '10000', '92', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5373', '10.00', '9', '10000', '20000', '92', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5374', '10.00', '9', '20000', '30000', '92', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5375', '10.00', '9', '30000', '50000', '92', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5376', '10.00', '12', '1999', '10000', '92', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5377', '10.00', '12', '10000', '20000', '92', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5378', '10.00', '12', '20000', '30000', '92', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5379', '10.00', '12', '30000', '50000', '92', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5380', '10.00', '18', '1999', '10000', '92', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5381', '10.00', '18', '10000', '20000', '92', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5382', '10.00', '18', '20000', '30000', '92', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5383', '10.00', '18', '30000', '50000', '92', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5384', '10.00', '24', '1999', '10000', '92', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5385', '10.00', '24', '10000', '20000', '92', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5386', '10.00', '24', '20000', '30000', '92', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5387', '10.00', '24', '30000', '50000', '92', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5388', '10.00', '6', '1999', '10000', '92', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5389', '10.00', '6', '10000', '20000', '92', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5390', '10.00', '6', '20000', '30000', '92', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5391', '10.00', '6', '30000', '50000', '92', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5392', '10.00', '9', '1999', '10000', '92', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5393', '10.00', '9', '10000', '20000', '92', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5394', '10.00', '9', '20000', '30000', '92', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5395', '10.00', '9', '30000', '50000', '92', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5396', '10.00', '12', '1999', '10000', '92', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5397', '10.00', '12', '10000', '20000', '92', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5398', '10.00', '12', '20000', '30000', '92', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5399', '10.00', '12', '30000', '50000', '92', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5400', '10.00', '18', '1999', '10000', '92', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5401', '10.00', '18', '10000', '20000', '92', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5402', '10.00', '18', '20000', '30000', '92', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5403', '10.00', '18', '30000', '50000', '92', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5404', '10.00', '24', '1999', '10000', '92', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5405', '10.00', '24', '10000', '20000', '92', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5406', '10.00', '24', '20000', '30000', '92', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5407', '10.00', '24', '30000', '50000', '92', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5408', '10.00', '6', '1999', '10000', '93', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5409', '10.00', '6', '10000', '20000', '93', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5410', '10.00', '6', '20000', '30000', '93', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5411', '10.00', '6', '30000', '50000', '93', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5412', '10.00', '9', '1999', '10000', '93', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5413', '10.00', '9', '10000', '20000', '93', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5414', '10.00', '9', '20000', '30000', '93', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5415', '10.00', '9', '30000', '50000', '93', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5416', '10.00', '12', '1999', '10000', '93', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5417', '10.00', '12', '10000', '20000', '93', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5418', '10.00', '12', '20000', '30000', '93', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5419', '10.00', '12', '30000', '50000', '93', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5420', '10.00', '18', '1999', '10000', '93', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5421', '10.00', '18', '10000', '20000', '93', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5422', '10.00', '18', '20000', '30000', '93', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5423', '10.00', '18', '30000', '50000', '93', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5424', '10.00', '24', '1999', '10000', '93', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5425', '10.00', '24', '10000', '20000', '93', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5426', '10.00', '24', '20000', '30000', '93', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5427', '10.00', '24', '30000', '50000', '93', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5428', '10.00', '6', '1999', '10000', '93', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5429', '10.00', '6', '10000', '20000', '93', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5430', '10.00', '6', '20000', '30000', '93', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5431', '10.00', '6', '30000', '50000', '93', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5432', '10.00', '9', '1999', '10000', '93', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5433', '10.00', '9', '10000', '20000', '93', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5434', '10.00', '9', '20000', '30000', '93', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5435', '10.00', '9', '30000', '50000', '93', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5436', '10.00', '12', '1999', '10000', '93', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5437', '10.00', '12', '10000', '20000', '93', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5438', '10.00', '12', '20000', '30000', '93', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5439', '10.00', '12', '30000', '50000', '93', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5440', '10.00', '18', '1999', '10000', '93', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5441', '10.00', '18', '10000', '20000', '93', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5442', '10.00', '18', '20000', '30000', '93', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5443', '10.00', '18', '30000', '50000', '93', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5444', '10.00', '24', '1999', '10000', '93', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5445', '10.00', '24', '10000', '20000', '93', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5446', '10.00', '24', '20000', '30000', '93', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5447', '10.00', '24', '30000', '50000', '93', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5448', '10.00', '6', '1999', '10000', '94', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5449', '10.00', '6', '10000', '20000', '94', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5450', '10.00', '6', '20000', '30000', '94', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5451', '10.00', '6', '30000', '50000', '94', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5452', '10.00', '9', '1999', '10000', '94', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5453', '10.00', '9', '10000', '20000', '94', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5454', '10.00', '9', '20000', '30000', '94', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5455', '10.00', '9', '30000', '50000', '94', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5456', '10.00', '12', '1999', '10000', '94', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5457', '10.00', '12', '10000', '20000', '94', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5458', '10.00', '12', '20000', '30000', '94', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5459', '10.00', '12', '30000', '50000', '94', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5460', '10.00', '18', '1999', '10000', '94', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5461', '10.00', '18', '10000', '20000', '94', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5462', '10.00', '18', '20000', '30000', '94', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5463', '10.00', '18', '30000', '50000', '94', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5464', '10.00', '24', '1999', '10000', '94', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5465', '10.00', '24', '10000', '20000', '94', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5466', '10.00', '24', '20000', '30000', '94', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5467', '10.00', '24', '30000', '50000', '94', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5468', '10.00', '6', '1999', '10000', '94', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5469', '10.00', '6', '10000', '20000', '94', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5470', '10.00', '6', '20000', '30000', '94', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5471', '10.00', '6', '30000', '50000', '94', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5472', '10.00', '9', '1999', '10000', '94', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5473', '10.00', '9', '10000', '20000', '94', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5474', '10.00', '9', '20000', '30000', '94', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5475', '10.00', '9', '30000', '50000', '94', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5476', '10.00', '12', '1999', '10000', '94', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5477', '10.00', '12', '10000', '20000', '94', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5478', '10.00', '12', '20000', '30000', '94', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5479', '10.00', '12', '30000', '50000', '94', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5480', '10.00', '18', '1999', '10000', '94', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5481', '10.00', '18', '10000', '20000', '94', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5482', '10.00', '18', '20000', '30000', '94', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5483', '10.00', '18', '30000', '50000', '94', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5484', '10.00', '24', '1999', '10000', '94', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5485', '10.00', '24', '10000', '20000', '94', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5486', '10.00', '24', '20000', '30000', '94', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5487', '10.00', '24', '30000', '50000', '94', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5488', '10.00', '6', '1999', '10000', '95', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5489', '10.00', '6', '10000', '20000', '95', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5490', '10.00', '6', '20000', '30000', '95', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5491', '10.00', '6', '30000', '50000', '95', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5492', '10.00', '9', '1999', '10000', '95', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5493', '10.00', '9', '10000', '20000', '95', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5494', '10.00', '9', '20000', '30000', '95', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5495', '10.00', '9', '30000', '50000', '95', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5496', '10.00', '12', '1999', '10000', '95', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5497', '10.00', '12', '10000', '20000', '95', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5498', '10.00', '12', '20000', '30000', '95', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5499', '10.00', '12', '30000', '50000', '95', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5500', '10.00', '18', '1999', '10000', '95', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5501', '10.00', '18', '10000', '20000', '95', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5502', '10.00', '18', '20000', '30000', '95', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5503', '10.00', '18', '30000', '50000', '95', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5504', '10.00', '24', '1999', '10000', '95', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5505', '10.00', '24', '10000', '20000', '95', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5506', '10.00', '24', '20000', '30000', '95', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5507', '10.00', '24', '30000', '50000', '95', '2');
INSERT INTO `bypal_facilitator_rate` VALUES ('5508', '10.00', '6', '1999', '10000', '95', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5509', '10.00', '6', '10000', '20000', '95', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5510', '10.00', '6', '20000', '30000', '95', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5511', '10.00', '6', '30000', '50000', '95', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5512', '10.00', '9', '1999', '10000', '95', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5513', '10.00', '9', '10000', '20000', '95', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5514', '10.00', '9', '20000', '30000', '95', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5515', '10.00', '9', '30000', '50000', '95', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5516', '10.00', '12', '1999', '10000', '95', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5517', '10.00', '12', '10000', '20000', '95', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5518', '10.00', '12', '20000', '30000', '95', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5519', '10.00', '12', '30000', '50000', '95', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5520', '10.00', '18', '1999', '10000', '95', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5521', '10.00', '18', '10000', '20000', '95', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5522', '10.00', '18', '20000', '30000', '95', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5523', '10.00', '18', '30000', '50000', '95', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5524', '10.00', '24', '1999', '10000', '95', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5525', '10.00', '24', '10000', '20000', '95', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5526', '10.00', '24', '20000', '30000', '95', '1');
INSERT INTO `bypal_facilitator_rate` VALUES ('5527', '10.00', '24', '30000', '50000', '95', '1');

-- ----------------------------
-- Table structure for bypal_facilitator_selfrate
-- ----------------------------
DROP TABLE IF EXISTS `bypal_facilitator_selfrate`;
CREATE TABLE `bypal_facilitator_selfrate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `min_rate` double(4,2) NOT NULL COMMENT '最小利率范围',
  `max_rate` double(4,2) NOT NULL COMMENT '最大利率范围',
  `fac_id` int(11) DEFAULT NULL COMMENT '商户ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COMMENT='商户自选利率';

-- ----------------------------
-- Records of bypal_facilitator_selfrate
-- ----------------------------
INSERT INTO `bypal_facilitator_selfrate` VALUES ('61', '8.00', '14.00', '50');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('62', '8.00', '14.00', '51');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('63', '8.00', '14.00', '52');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('64', '8.00', '14.00', '53');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('65', '8.00', '14.00', '54');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('66', '8.00', '14.00', '55');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('67', '8.00', '14.00', '57');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('68', '8.00', '14.00', '58');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('69', '8.00', '14.00', '59');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('70', '8.00', '14.00', '60');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('71', '8.00', '14.00', '61');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('72', '8.00', '14.00', '62');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('73', '8.00', '14.00', '63');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('74', '8.00', '14.00', '64');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('75', '8.00', '14.00', '65');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('76', '8.00', '14.00', '66');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('77', '8.00', '14.00', '67');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('78', '8.00', '14.00', '68');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('79', '8.00', '14.00', '69');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('80', '8.00', '14.00', '70');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('81', '8.00', '14.00', '71');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('82', '8.00', '14.00', '72');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('83', '8.00', '14.00', '73');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('84', '8.00', '14.00', '74');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('85', '8.00', '14.00', '75');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('86', '8.00', '14.00', '76');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('87', '8.00', '14.00', '78');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('88', '8.00', '14.00', '79');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('89', '8.00', '14.00', '80');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('90', '8.00', '14.00', '81');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('91', '8.00', '14.00', '82');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('92', '8.00', '14.00', '83');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('93', '8.00', '14.00', '84');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('94', '8.00', '14.00', '85');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('95', '8.00', '14.00', '86');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('96', '8.00', '14.00', '87');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('97', '8.00', '14.00', '88');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('98', '8.00', '14.00', '89');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('99', '8.00', '14.00', '91');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('100', '8.00', '14.00', '92');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('101', '8.00', '14.00', '93');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('102', '8.00', '14.00', '94');
INSERT INTO `bypal_facilitator_selfrate` VALUES ('103', '8.00', '14.00', '95');

-- ----------------------------
-- Table structure for bypal_facilitator_source
-- ----------------------------
DROP TABLE IF EXISTS `bypal_facilitator_source`;
CREATE TABLE `bypal_facilitator_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '来源类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_facilitator_source
-- ----------------------------
INSERT INTO `bypal_facilitator_source` VALUES ('1', '客户推荐');
INSERT INTO `bypal_facilitator_source` VALUES ('2', '内部发展');
INSERT INTO `bypal_facilitator_source` VALUES ('3', '合作伙伴');

-- ----------------------------
-- Table structure for bypal_facilitator_trade
-- ----------------------------
DROP TABLE IF EXISTS `bypal_facilitator_trade`;
CREATE TABLE `bypal_facilitator_trade` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cid` int(11) NOT NULL COMMENT '客户ID',
  `fid` int(11) NOT NULL COMMENT '商户ID',
  `pid` int(11) NOT NULL COMMENT '付款状态ID',
  `trade_contractNo` varchar(100) DEFAULT NULL COMMENT '合同编号',
  `trade_contractnumber` varchar(200) NOT NULL COMMENT '交易编号',
  `trade_allmoney` varchar(100) NOT NULL COMMENT '总金额',
  `trade_rate` int(11) NOT NULL COMMENT '利率',
  `fac_payment` varchar(5) DEFAULT NULL COMMENT '是否有首付',
  `fac_period` int(5) DEFAULT NULL COMMENT '分期期数',
  `delay_time` varchar(5) DEFAULT NULL COMMENT '延期期数',
  `tid` int(11) NOT NULL COMMENT '交易状态',
  `trade_pernumber` varchar(100) NOT NULL COMMENT '工号',
  `trade_addtime` int(11) NOT NULL COMMENT '创建时间',
  `trade_perofpay` int(11) NOT NULL,
  `trade_orimage` varchar(100) NOT NULL COMMENT '二维码图',
  `trade_fristpay` varchar(100) NOT NULL COMMENT '首付',
  `trade_lastpay` varchar(100) NOT NULL COMMENT '尾款',
  `trade_fptime` int(11) NOT NULL COMMENT '首付时间',
  `trade_lptime` int(11) NOT NULL COMMENT '尾款时间',
  `trade_cancelask_time` int(11) NOT NULL COMMENT '取消申请时间',
  `trade_canclereason` varchar(255) NOT NULL,
  `contract_annex` varchar(100) DEFAULT NULL COMMENT '合同文件路径',
  PRIMARY KEY (`id`),
  UNIQUE KEY `trade_contractnumber` (`trade_contractnumber`)
) ENGINE=MyISAM AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_facilitator_trade
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_factrade_state
-- ----------------------------
DROP TABLE IF EXISTS `bypal_factrade_state`;
CREATE TABLE `bypal_factrade_state` (
  `trade_id` int(11) NOT NULL,
  `trade_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`trade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_factrade_state
-- ----------------------------
INSERT INTO `bypal_factrade_state` VALUES ('1', '未消费');
INSERT INTO `bypal_factrade_state` VALUES ('2', '个人信息待完善');
INSERT INTO `bypal_factrade_state` VALUES ('3', '资料审核中');
INSERT INTO `bypal_factrade_state` VALUES ('4', '待客户确认期限');
INSERT INTO `bypal_factrade_state` VALUES ('5', '审核未通过');
INSERT INTO `bypal_factrade_state` VALUES ('6', '还款中');
INSERT INTO `bypal_factrade_state` VALUES ('7', '还款完成');
INSERT INTO `bypal_factrade_state` VALUES ('8', '取消');

-- ----------------------------
-- Table structure for bypal_impl_abnormalcreditdetail
-- ----------------------------
DROP TABLE IF EXISTS `bypal_impl_abnormalcreditdetail`;
CREATE TABLE `bypal_impl_abnormalcreditdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creditStartDate` varchar(50) DEFAULT NULL COMMENT '借款日期',
  `creditEndDate` varchar(50) DEFAULT NULL COMMENT '到期日期',
  `loanType` varchar(11) DEFAULT NULL COMMENT '借款类型',
  `assureType` varchar(11) DEFAULT NULL COMMENT '担保方式',
  `loanMoney` varchar(50) DEFAULT NULL COMMENT '合同金额',
  `loanPeriods` varchar(50) DEFAULT NULL COMMENT '还款期数',
  `paperNumber` varchar(50) DEFAULT NULL COMMENT '身份证号码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=305 DEFAULT CHARSET=utf8 COMMENT='异常还款记录明细\r\n';

-- ----------------------------
-- Records of bypal_impl_abnormalcreditdetail
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_impl_acrossbankenchash
-- ----------------------------
DROP TABLE IF EXISTS `bypal_impl_acrossbankenchash`;
CREATE TABLE `bypal_impl_acrossbankenchash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pr_id` int(11) DEFAULT NULL,
  `num` varchar(50) DEFAULT NULL COMMENT '序号',
  `consumeClass` varchar(50) DEFAULT NULL COMMENT '消费类别',
  `cardEnchash` varchar(50) DEFAULT NULL COMMENT '信用卡取现',
  `cardReturnManey` varchar(50) DEFAULT NULL COMMENT '信用卡还款',
  `enchash` varchar(50) DEFAULT NULL COMMENT '取现',
  `remake` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='其他消费';

-- ----------------------------
-- Records of bypal_impl_acrossbankenchash
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_impl_applydetails
-- ----------------------------
DROP TABLE IF EXISTS `bypal_impl_applydetails`;
CREATE TABLE `bypal_impl_applydetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applyDate` varchar(50) DEFAULT NULL COMMENT '申请日期',
  `memberType` varchar(50) DEFAULT NULL COMMENT '会员类型01.P2P企业 02.小贷公司 03.担保公司 04.财务公司 99.其他',
  `creditAddress` varchar(50) DEFAULT NULL COMMENT '申请地点',
  `loanType` varchar(50) DEFAULT NULL COMMENT '借款类型01.经营 02.消费 99.其他',
  `loanMoney` varchar(50) DEFAULT NULL COMMENT '借款金额',
  `applyResult` varchar(50) DEFAULT NULL COMMENT '审批结果01.审批通过 02.审批拒绝  04.重新审批 05.客户取消 ',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `paperNumber` varchar(50) DEFAULT NULL COMMENT '身份证号码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1500 DEFAULT CHARSET=utf8 COMMENT='最近6个月贷款申请记录明细\r\n';

-- ----------------------------
-- Records of bypal_impl_applydetails
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_impl_blackdata
-- ----------------------------
DROP TABLE IF EXISTS `bypal_impl_blackdata`;
CREATE TABLE `bypal_impl_blackdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` varchar(50) DEFAULT NULL COMMENT '报送/公开日期',
  `creditAddress` varchar(50) DEFAULT NULL COMMENT '借款地点',
  `arrears` varchar(50) DEFAULT NULL COMMENT '欠款总额',
  `overdueDays` varchar(50) DEFAULT NULL COMMENT '逾期天数',
  `phone` varchar(50) DEFAULT NULL COMMENT '电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `residenceAddress` varchar(50) DEFAULT NULL COMMENT '户籍地址',
  `currentAddress` varchar(50) DEFAULT NULL COMMENT '现居地址',
  `paperNumber` varchar(50) DEFAULT NULL COMMENT '身份证号码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行业不良记录\r\n';

-- ----------------------------
-- Records of bypal_impl_blackdata
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_impl_carduserworkareaattr
-- ----------------------------
DROP TABLE IF EXISTS `bypal_impl_carduserworkareaattr`;
CREATE TABLE `bypal_impl_carduserworkareaattr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pr_id` int(11) DEFAULT NULL COMMENT '个人报告ID',
  `czCity` varchar(50) DEFAULT NULL COMMENT '持卡人常驻城市',
  `sfczydxf` varchar(50) DEFAULT NULL COMMENT '是否存在异地消费（近12个月）',
  `gzsjxfjzqy` varchar(50) DEFAULT NULL COMMENT '工作时间消费集中区域',
  `fgzsjxfjzqy` varchar(50) DEFAULT NULL COMMENT '非工作时间消费集中区域',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='持卡人工作区域属性';

-- ----------------------------
-- Records of bypal_impl_carduserworkareaattr
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_impl_consumecategories
-- ----------------------------
DROP TABLE IF EXISTS `bypal_impl_consumecategories`;
CREATE TABLE `bypal_impl_consumecategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pr_id` int(11) DEFAULT NULL COMMENT '个人报告ID',
  `name` varchar(50) DEFAULT NULL COMMENT '行业',
  `scale` varchar(50) DEFAULT NULL COMMENT '占比',
  `type` int(2) DEFAULT NULL COMMENT '1、消费行业分布；2、消费地域分布',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=543 DEFAULT CHARSET=utf8 COMMENT='消费行业分布';

-- ----------------------------
-- Records of bypal_impl_consumecategories
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_impl_countcredit
-- ----------------------------
DROP TABLE IF EXISTS `bypal_impl_countcredit`;
CREATE TABLE `bypal_impl_countcredit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `performance_score` varchar(50) DEFAULT NULL,
  `performance_message` varchar(100) DEFAULT NULL,
  `utilization_score` varchar(50) DEFAULT NULL,
  `utilization_message` varchar(100) DEFAULT NULL,
  `history_score` varchar(50) DEFAULT NULL,
  `history_message` varchar(100) DEFAULT NULL,
  `enquiry_score` varchar(50) DEFAULT NULL,
  `enquiry_message` varchar(100) DEFAULT NULL,
  `mix_score` varchar(50) DEFAULT NULL,
  `mix_message` varchar(100) DEFAULT NULL,
  `count` varchar(50) DEFAULT NULL,
  `applyId` varchar(50) DEFAULT NULL,
  `paperNumber` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_impl_countcredit
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_impl_fm
-- ----------------------------
DROP TABLE IF EXISTS `bypal_impl_fm`;
CREATE TABLE `bypal_impl_fm` (
  `fm_id` int(11) NOT NULL AUTO_INCREMENT,
  `fm_result` varchar(20) DEFAULT NULL COMMENT '同盾返回结果',
  `fm_score` int(11) DEFAULT NULL COMMENT '同盾得分',
  `fm_policy_name` varchar(50) DEFAULT NULL COMMENT '策略名',
  `code` int(11) DEFAULT NULL COMMENT '借款订单编号',
  PRIMARY KEY (`fm_id`),
  UNIQUE KEY `code_index` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_impl_fm
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_impl_fmrules
-- ----------------------------
DROP TABLE IF EXISTS `bypal_impl_fmrules`;
CREATE TABLE `bypal_impl_fmrules` (
  `rules_id` int(11) NOT NULL AUTO_INCREMENT,
  `decision` varchar(50) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `rules_name` varchar(50) DEFAULT NULL,
  `uuid` varchar(50) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `fm_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`rules_id`)
) ENGINE=MyISAM AUTO_INCREMENT=427 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_impl_fmrules
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_impl_homeconsumhis
-- ----------------------------
DROP TABLE IF EXISTS `bypal_impl_homeconsumhis`;
CREATE TABLE `bypal_impl_homeconsumhis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pr_id` int(11) DEFAULT NULL COMMENT '个人报告ID',
  `num` varchar(50) DEFAULT NULL COMMENT '序号',
  `consumName` varchar(50) DEFAULT NULL COMMENT '消费科目',
  `isExist` varchar(50) DEFAULT NULL COMMENT '是否存在',
  `gmTime` varchar(50) DEFAULT NULL COMMENT '预估购买时间',
  `amount` varchar(50) DEFAULT NULL COMMENT '资产估值',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COMMENT='家庭消费历史';

-- ----------------------------
-- Records of bypal_impl_homeconsumhis
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_impl_monthconsumes
-- ----------------------------
DROP TABLE IF EXISTS `bypal_impl_monthconsumes`;
CREATE TABLE `bypal_impl_monthconsumes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pr_id` int(11) DEFAULT NULL COMMENT '个人报告ID',
  `month` varchar(50) DEFAULT NULL COMMENT '月份',
  `amount` varchar(50) DEFAULT NULL COMMENT '金额',
  `count` varchar(50) DEFAULT NULL COMMENT '笔数',
  `amountRanking` varchar(50) DEFAULT NULL COMMENT '金额排名',
  `countRanking` varchar(50) DEFAULT NULL COMMENT '笔数排名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=529 DEFAULT CHARSET=utf8 COMMENT='月消费';

-- ----------------------------
-- Records of bypal_impl_monthconsumes
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_impl_normalcreditdetail
-- ----------------------------
DROP TABLE IF EXISTS `bypal_impl_normalcreditdetail`;
CREATE TABLE `bypal_impl_normalcreditdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creditStartDate` varchar(50) DEFAULT NULL COMMENT '借款日期',
  `creditEndDate` varchar(50) DEFAULT NULL COMMENT '到期日期',
  `creditAddress` varchar(50) DEFAULT NULL COMMENT '借款地点',
  `loanType` varchar(50) DEFAULT NULL COMMENT '借款类型',
  `assureType` varchar(50) DEFAULT NULL COMMENT '担保方式',
  `loanMoney` varchar(50) DEFAULT NULL COMMENT '合同金额',
  `loanPeriods` varchar(50) DEFAULT NULL COMMENT '还款期数',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `paperNumber` varchar(50) DEFAULT NULL COMMENT '身份证号码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=291 DEFAULT CHARSET=utf8 COMMENT='正常还款账户明细\r\n';

-- ----------------------------
-- Records of bypal_impl_normalcreditdetail
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_impl_otherconsume
-- ----------------------------
DROP TABLE IF EXISTS `bypal_impl_otherconsume`;
CREATE TABLE `bypal_impl_otherconsume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pr_id` int(11) DEFAULT NULL COMMENT '个人报告ID',
  `num` varchar(50) DEFAULT NULL COMMENT '序号',
  `consumeClass` varchar(50) DEFAULT NULL COMMENT '消费类别',
  `ggsy` varchar(50) DEFAULT NULL COMMENT '公共事业',
  `ns` varchar(50) DEFAULT NULL COMMENT '纳税',
  `nightConsume` varchar(50) DEFAULT NULL COMMENT '夜消费',
  `internetConsume` varchar(50) DEFAULT NULL COMMENT '网上消费',
  `remake` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='消费地域分布';

-- ----------------------------
-- Records of bypal_impl_otherconsume
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_impl_overdues
-- ----------------------------
DROP TABLE IF EXISTS `bypal_impl_overdues`;
CREATE TABLE `bypal_impl_overdues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `abnc_id` int(11) DEFAULT NULL COMMENT 'bypal_impl_abnormalCreditDetail表ID',
  `checkOverdueDate` varchar(50) DEFAULT NULL COMMENT '逾期日期',
  `operTime` varchar(50) DEFAULT NULL COMMENT '更新日期',
  `overdueDays` varchar(50) DEFAULT NULL COMMENT '逾期时长',
  `overdueReason` varchar(50) DEFAULT NULL COMMENT '逾期原因01.还款能力下降 02.恶意拖欠 03.身份欺诈 04.逃逸 05.犯罪入狱 06.疾病 07.死亡 99.其他',
  `overdueState` varchar(50) DEFAULT NULL COMMENT '处置状态01.催收中 02.催收还款中 03.正常还款 04.核销 05.逾期已结清 06.正常结清 07.协议还款',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=350 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_impl_overdues
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_impl_personimage
-- ----------------------------
DROP TABLE IF EXISTS `bypal_impl_personimage`;
CREATE TABLE `bypal_impl_personimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bigClass` varchar(255) DEFAULT NULL COMMENT '大类名称',
  `smallClass` varchar(255) DEFAULT NULL COMMENT '小类名称',
  `zbNum` varchar(255) DEFAULT NULL COMMENT '指标序号',
  `zbName` varchar(255) DEFAULT NULL COMMENT '指标名',
  `fl` varchar(255) DEFAULT NULL COMMENT '指标分类',
  `sjwd` varchar(255) DEFAULT NULL COMMENT '统计时间维度',
  `zbhy` varchar(255) DEFAULT NULL COMMENT '指标含义',
  `value` varchar(255) DEFAULT NULL COMMENT '查询结果',
  `code` varchar(255) DEFAULT NULL COMMENT '借款ID',
  `create_time` varchar(50) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8800 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_impl_personimage
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_impl_personreport
-- ----------------------------
DROP TABLE IF EXISTS `bypal_impl_personreport`;
CREATE TABLE `bypal_impl_personreport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `idCard` varchar(50) DEFAULT NULL COMMENT '身份证号',
  `reportNum` varchar(50) DEFAULT NULL COMMENT '报告编码',
  `reportTime` varchar(50) DEFAULT NULL COMMENT '报告时间范围',
  `searchTime` varchar(50) DEFAULT NULL COMMENT '查询时间',
  `repaymentAbility` varchar(50) DEFAULT NULL COMMENT '月还款能力',
  `code` varchar(50) DEFAULT NULL,
  `create_time` varchar(50) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='个人银联报告';

-- ----------------------------
-- Records of bypal_impl_personreport
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_impl_querydetail
-- ----------------------------
DROP TABLE IF EXISTS `bypal_impl_querydetail`;
CREATE TABLE `bypal_impl_querydetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `queryDate` varchar(50) DEFAULT NULL COMMENT '查询日期',
  `memberType` varchar(50) DEFAULT NULL COMMENT '会员类型01.P2P企业 02.小贷公司 03.担保公司 04.财务公司 99.其他',
  `queryType` varchar(50) DEFAULT NULL COMMENT '查询类别',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `paperNumber` varchar(50) DEFAULT NULL COMMENT '身份证号码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2359 DEFAULT CHARSET=utf8 COMMENT='最近2年内查询记录明细\r\n';

-- ----------------------------
-- Records of bypal_impl_querydetail
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_impl_title
-- ----------------------------
DROP TABLE IF EXISTS `bypal_impl_title`;
CREATE TABLE `bypal_impl_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applyPassedCount` varchar(50) DEFAULT NULL COMMENT '最近6个月贷款申请查询状况--通过\n笔数',
  `applyRejectCount` varchar(50) DEFAULT NULL COMMENT '最近6个月贷款申请查询状况--拒绝\n笔数',
  `applyTotalCount` varchar(50) DEFAULT NULL COMMENT '最近6个月贷款申请查询状况--小计',
  `applyingCount` varchar(50) DEFAULT NULL COMMENT '最近6个月贷款申请查询状况--申请中\n笔数',
  `customerName` varchar(50) DEFAULT NULL COMMENT '姓名	',
  `ejqCount` varchar(50) DEFAULT NULL COMMENT '异常还款账户--已结清\n笔数',
  `ewjqCount` varchar(50) DEFAULT NULL COMMENT '异常还款账户--未结清\n笔数',
  `etotalCount` varchar(50) DEFAULT NULL COMMENT '异常还款账户--小计',
  `jqCount` varchar(50) DEFAULT NULL COMMENT '正常还款账户--已结清\n笔数',
  `wjqCount` varchar(50) DEFAULT NULL COMMENT '正常还款账户--未结清\n笔数',
  `totalCount` varchar(50) DEFAULT NULL COMMENT '正常还款账户--小计',
  `paperNumber` varchar(50) DEFAULT NULL COMMENT '身份证号	',
  `queryCount` varchar(50) DEFAULT NULL COMMENT '最近2年内查询记录--申请/债权/逾期/补录/行业不良记录',
  `queryNumber` varchar(50) DEFAULT NULL,
  `reportTime` varchar(50) DEFAULT NULL COMMENT '报告生成时间',
  `applyId` int(11) DEFAULT NULL COMMENT '申请ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=241 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_impl_title
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_impl_userpic
-- ----------------------------
DROP TABLE IF EXISTS `bypal_impl_userpic`;
CREATE TABLE `bypal_impl_userpic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pr_id` int(11) DEFAULT NULL COMMENT '个人报告表ID',
  `xfnl` varchar(50) DEFAULT NULL COMMENT '消费能力',
  `xfqysx` varchar(50) DEFAULT NULL COMMENT '消费区域属性',
  `jtxf` varchar(50) DEFAULT NULL COMMENT '家庭消费',
  `zyxfhe` varchar(50) DEFAULT NULL COMMENT '主要消费行业',
  `yxfsx` varchar(50) DEFAULT NULL COMMENT '夜消费属性',
  `xykqx` varchar(50) DEFAULT NULL COMMENT '信用卡取现',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='用户画像';

-- ----------------------------
-- Records of bypal_impl_userpic
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_impl_validate
-- ----------------------------
DROP TABLE IF EXISTS `bypal_impl_validate`;
CREATE TABLE `bypal_impl_validate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `number` varchar(50) DEFAULT NULL COMMENT '银行卡号或者身份证号',
  `message_number` varchar(10) DEFAULT NULL COMMENT '返回结果信息代码号',
  `message` varchar(50) DEFAULT NULL COMMENT '返回结果信息',
  `result` int(2) DEFAULT NULL COMMENT '验证结果',
  `cust_id` int(11) DEFAULT NULL,
  `type` int(2) DEFAULT NULL COMMENT '1、身份认证，2、银行卡认证',
  `validate_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=207 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_impl_validate
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_invest_activetime
-- ----------------------------
DROP TABLE IF EXISTS `bypal_invest_activetime`;
CREATE TABLE `bypal_invest_activetime` (
  `active_time_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `active_time` varchar(50) DEFAULT NULL COMMENT '有效时间：10、9、8、7、6、5、4、3、2、1天',
  PRIMARY KEY (`active_time_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_invest_activetime
-- ----------------------------
INSERT INTO `bypal_invest_activetime` VALUES ('1', '1');
INSERT INTO `bypal_invest_activetime` VALUES ('2', '2');
INSERT INTO `bypal_invest_activetime` VALUES ('3', '3');
INSERT INTO `bypal_invest_activetime` VALUES ('4', '4');
INSERT INTO `bypal_invest_activetime` VALUES ('5', '5');
INSERT INTO `bypal_invest_activetime` VALUES ('6', '6');
INSERT INTO `bypal_invest_activetime` VALUES ('7', '7');
INSERT INTO `bypal_invest_activetime` VALUES ('8', '8');
INSERT INTO `bypal_invest_activetime` VALUES ('9', '9');
INSERT INTO `bypal_invest_activetime` VALUES ('10', '10');

-- ----------------------------
-- Table structure for bypal_invest_detail
-- ----------------------------
DROP TABLE IF EXISTS `bypal_invest_detail`;
CREATE TABLE `bypal_invest_detail` (
  `invest_detail_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `customer_id` int(11) DEFAULT NULL COMMENT '客户ID',
  `invest_id` int(11) DEFAULT NULL COMMENT '投资项目ID',
  `invest_money` varchar(50) DEFAULT NULL COMMENT '投资金额',
  `invest_time` varchar(50) DEFAULT NULL,
  `invest_rate` varchar(50) DEFAULT NULL COMMENT '买定年化利率',
  `expire_profit` varchar(50) DEFAULT NULL COMMENT '预计到期收益',
  `invest_status` int(2) DEFAULT '1' COMMENT '状态:1、投资完成;2、投资开始3、投资失效，4、投资取消,5投资结束,6、投资冻结',
  `invest_repay_id` int(2) DEFAULT '1' COMMENT '投资收益类型ID',
  PRIMARY KEY (`invest_detail_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1464577869 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_invest_detail
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_invest_profit
-- ----------------------------
DROP TABLE IF EXISTS `bypal_invest_profit`;
CREATE TABLE `bypal_invest_profit` (
  `invest_income_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `customer_id` int(11) DEFAULT NULL COMMENT '客户ID',
  `invest_detail_id` int(11) DEFAULT NULL COMMENT '投资项目ID',
  `period_number` varchar(50) DEFAULT NULL COMMENT '期数',
  `start_time` varchar(50) DEFAULT NULL COMMENT '起始时间',
  `end_time` varchar(50) DEFAULT NULL COMMENT '截止时间',
  `recovery_money` varchar(50) DEFAULT NULL COMMENT '收回本金',
  `invest_interest` varchar(50) DEFAULT NULL COMMENT '利息',
  `period_money_count` varchar(50) DEFAULT NULL COMMENT '每期本息和',
  `profit_count` varchar(50) DEFAULT NULL COMMENT '累计收益',
  `profit_time` varchar(50) DEFAULT NULL COMMENT '收益时间',
  `profit_status` int(2) DEFAULT '0' COMMENT '是否付账：0、未付账；1、付账',
  PRIMARY KEY (`invest_income_id`)
) ENGINE=MyISAM AUTO_INCREMENT=532 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_invest_profit
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_invest_project
-- ----------------------------
DROP TABLE IF EXISTS `bypal_invest_project`;
CREATE TABLE `bypal_invest_project` (
  `invest_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `invest_title` varchar(50) NOT NULL COMMENT '投资项目标题',
  `invest_type_id` int(11) NOT NULL COMMENT '投资类别ID',
  `invest_total_amount` varchar(50) NOT NULL COMMENT '总金额',
  `invest_rate` varchar(50) DEFAULT NULL COMMENT '投资利率（票据类利率为空）',
  `active_time_id` int(11) NOT NULL COMMENT '有效时间ID',
  `invest_time_limit` varchar(50) NOT NULL COMMENT '投资期限',
  `accepting_bank` varchar(50) DEFAULT NULL COMMENT '承兑银行（只有票据类的需要）',
  `repayment_id` int(11) DEFAULT NULL COMMENT '还款方式ID',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `invest_number` int(11) DEFAULT '0' COMMENT '参投人数',
  `invest_money` varchar(50) DEFAULT '0' COMMENT '已投金额',
  `invest_status_id` varchar(50) DEFAULT NULL COMMENT '投资状态ID',
  `create_time` varchar(50) NOT NULL COMMENT '创建时间',
  `loan_grade` varchar(50) DEFAULT NULL,
  `loan_startTime` varchar(50) DEFAULT NULL COMMENT '借款开户过滤开始时间',
  `loan_endTime` varchar(50) DEFAULT NULL COMMENT '借款开户过滤结束时间',
  `loan_timeLimit` varchar(50) DEFAULT NULL COMMENT '限',
  `contract_id` varchar(50) DEFAULT NULL COMMENT '合同ID',
  PRIMARY KEY (`invest_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_invest_project
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_invest_status
-- ----------------------------
DROP TABLE IF EXISTS `bypal_invest_status`;
CREATE TABLE `bypal_invest_status` (
  `invest_status_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `invest_status_name` varchar(50) DEFAULT NULL COMMENT '状态名称',
  PRIMARY KEY (`invest_status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_invest_status
-- ----------------------------
INSERT INTO `bypal_invest_status` VALUES ('1', '满标');
INSERT INTO `bypal_invest_status` VALUES ('2', '进行中');
INSERT INTO `bypal_invest_status` VALUES ('3', '失效');

-- ----------------------------
-- Table structure for bypal_invest_type
-- ----------------------------
DROP TABLE IF EXISTS `bypal_invest_type`;
CREATE TABLE `bypal_invest_type` (
  `invest_type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `invest_type_name` varchar(50) DEFAULT NULL COMMENT '投资类别名称：1.生活类，2票据类',
  PRIMARY KEY (`invest_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_invest_type
-- ----------------------------
INSERT INTO `bypal_invest_type` VALUES ('1', '服务类');
INSERT INTO `bypal_invest_type` VALUES ('2', '票据类');

-- ----------------------------
-- Table structure for bypal_management_type
-- ----------------------------
DROP TABLE IF EXISTS `bypal_management_type`;
CREATE TABLE `bypal_management_type` (
  `man_type_id` int(11) NOT NULL COMMENT '经营类型id',
  `man_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL COMMENT '经营类型'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bypal_management_type
-- ----------------------------
INSERT INTO `bypal_management_type` VALUES ('1', '个体');
INSERT INTO `bypal_management_type` VALUES ('2', '公司');

-- ----------------------------
-- Table structure for bypal_pay_state
-- ----------------------------
DROP TABLE IF EXISTS `bypal_pay_state`;
CREATE TABLE `bypal_pay_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) NOT NULL COMMENT '状态名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_pay_state
-- ----------------------------
INSERT INTO `bypal_pay_state` VALUES ('1', '百朋待付款');
INSERT INTO `bypal_pay_state` VALUES ('2', '百朋已付首付');
INSERT INTO `bypal_pay_state` VALUES ('3', '百朋已付全款');
INSERT INTO `bypal_pay_state` VALUES ('12', '---');

-- ----------------------------
-- Table structure for bypal_profession_info
-- ----------------------------
DROP TABLE IF EXISTS `bypal_profession_info`;
CREATE TABLE `bypal_profession_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(11) NOT NULL COMMENT '行业编码',
  `name` varchar(100) NOT NULL COMMENT '行业名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_profession_info
-- ----------------------------
INSERT INTO `bypal_profession_info` VALUES ('1', 'A', '农、林、牧、渔业');
INSERT INTO `bypal_profession_info` VALUES ('2', 'B', '采掘业');
INSERT INTO `bypal_profession_info` VALUES ('3', 'C', '制造业');
INSERT INTO `bypal_profession_info` VALUES ('4', 'D', '电力、燃气及水的生产和供应业');
INSERT INTO `bypal_profession_info` VALUES ('5', 'E', '建筑业');
INSERT INTO `bypal_profession_info` VALUES ('6', 'F', '交通运输、仓储和邮政业');
INSERT INTO `bypal_profession_info` VALUES ('7', 'G', '信息传输、计算机服务和软件业');
INSERT INTO `bypal_profession_info` VALUES ('8', 'H', '批发和零售业');
INSERT INTO `bypal_profession_info` VALUES ('9', 'I', '住宿和餐饮业');
INSERT INTO `bypal_profession_info` VALUES ('10', 'J', '金融业');
INSERT INTO `bypal_profession_info` VALUES ('11', 'K', '房地产业');
INSERT INTO `bypal_profession_info` VALUES ('12', 'L', '租赁和商务服务业');
INSERT INTO `bypal_profession_info` VALUES ('13', 'M', '科学研究、技术服务业和地质勘察 业');
INSERT INTO `bypal_profession_info` VALUES ('14', 'N', '水利、环境和公共设施管理业');
INSERT INTO `bypal_profession_info` VALUES ('15', 'O', '居民服务和其他服务业');
INSERT INTO `bypal_profession_info` VALUES ('16', 'P', '教育');
INSERT INTO `bypal_profession_info` VALUES ('17', 'Q', '卫生、社会保障和社会福利业');
INSERT INTO `bypal_profession_info` VALUES ('18', 'R', '文化、体育和娱乐业');
INSERT INTO `bypal_profession_info` VALUES ('19', 'S', '公共管理和社会组织');
INSERT INTO `bypal_profession_info` VALUES ('20', 'T', '国际组织');
INSERT INTO `bypal_profession_info` VALUES ('21', 'Z', '未知');

-- ----------------------------
-- Table structure for bypal_repay_detail
-- ----------------------------
DROP TABLE IF EXISTS `bypal_repay_detail`;
CREATE TABLE `bypal_repay_detail` (
  `repay_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `binfo_id` int(11) NOT NULL COMMENT '借款ID（关联buindessinfo表）',
  `period_number` int(11) NOT NULL COMMENT '期数',
  `start_date` varchar(50) NOT NULL COMMENT '起始日期',
  `end_date` varchar(50) NOT NULL,
  `principal` varchar(50) NOT NULL COMMENT '本金',
  `interest` varchar(50) NOT NULL COMMENT '利息',
  `poundage` double(11,2) NOT NULL COMMENT '手续费',
  `period_recovery` varchar(50) NOT NULL COMMENT '本期收回',
  `cumulative_recovery` varchar(50) NOT NULL COMMENT '累计收回',
  `repay_date` varchar(50) NOT NULL COMMENT '还款时间',
  `repaymtime` int(11) NOT NULL COMMENT '还款到账时间',
  `isoverdue` int(11) NOT NULL COMMENT '是否逾期',
  `demurrage` double(11,2) NOT NULL COMMENT '滞纳金',
  `fine_money` double(11,2) DEFAULT NULL COMMENT '罚金',
  `actual_pricipal` double(11,2) DEFAULT NULL COMMENT '实际还款本金',
  `actual_interest` double(11,2) DEFAULT NULL COMMENT '实际还款利息',
  PRIMARY KEY (`repay_detail_id`)
) ENGINE=MyISAM AUTO_INCREMENT=964 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_repay_detail
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_repay_info
-- ----------------------------
DROP TABLE IF EXISTS `bypal_repay_info`;
CREATE TABLE `bypal_repay_info` (
  `re_id` int(11) NOT NULL AUTO_INCREMENT,
  `re_bid` int(11) NOT NULL COMMENT '借款业务ID',
  `re_borrowmoney` varchar(255) NOT NULL COMMENT '借款金额',
  `re_repaymoney` varchar(255) NOT NULL COMMENT '应还总额',
  `re_yrepaymoney` varchar(255) NOT NULL COMMENT '已还总额',
  `re_nrepaymoney` varchar(255) NOT NULL COMMENT '未还总额',
  `re_yrepayp` varchar(255) NOT NULL COMMENT '已还本金',
  `re_nrepayp` varchar(255) NOT NULL COMMENT '未还本金',
  `re_yinterest` varchar(255) NOT NULL COMMENT '已还利息',
  `re_ninterest` varchar(255) NOT NULL COMMENT '未还利息',
  `re_demurrage` double(11,2) NOT NULL COMMENT '滞纳金',
  `re_unworktime` int(10) NOT NULL,
  PRIMARY KEY (`re_id`),
  UNIQUE KEY `re_bid` (`re_bid`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COMMENT='还款表';

-- ----------------------------
-- Records of bypal_repay_info
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_repay_method
-- ----------------------------
DROP TABLE IF EXISTS `bypal_repay_method`;
CREATE TABLE `bypal_repay_method` (
  `repay_id` int(11) NOT NULL AUTO_INCREMENT,
  `repay_name` varchar(50) DEFAULT NULL COMMENT '还款方式',
  PRIMARY KEY (`repay_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_repay_method
-- ----------------------------
INSERT INTO `bypal_repay_method` VALUES ('1', '等额本息');
INSERT INTO `bypal_repay_method` VALUES ('2', '一次还本付息');

-- ----------------------------
-- Table structure for bypal_sign_state
-- ----------------------------
DROP TABLE IF EXISTS `bypal_sign_state`;
CREATE TABLE `bypal_sign_state` (
  `state_id` int(11) NOT NULL COMMENT '签约状态id',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL COMMENT '签约状态'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bypal_sign_state
-- ----------------------------
INSERT INTO `bypal_sign_state` VALUES ('0', '未签约');
INSERT INTO `bypal_sign_state` VALUES ('1', '已签约');

-- ----------------------------
-- Table structure for bypal_timer_record
-- ----------------------------
DROP TABLE IF EXISTS `bypal_timer_record`;
CREATE TABLE `bypal_timer_record` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `record_details` varchar(200) DEFAULT NULL COMMENT '日志详情',
  `record_time` varchar(50) DEFAULT NULL,
  `record_type` int(11) DEFAULT NULL COMMENT '日志类型；1、投资打包定时器',
  PRIMARY KEY (`record_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1357 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_timer_record
-- ----------------------------

-- ----------------------------
-- Table structure for bypal_tongdun_takenid
-- ----------------------------
DROP TABLE IF EXISTS `bypal_tongdun_takenid`;
CREATE TABLE `bypal_tongdun_takenid` (
  `taken_id` int(11) NOT NULL AUTO_INCREMENT,
  `taken_borrowid` int(10) NOT NULL COMMENT '申请借款ID',
  `taken_number` varchar(255) NOT NULL COMMENT '设备指纹',
  `taken_time` int(10) NOT NULL COMMENT '时间',
  `taken_type` int(11) NOT NULL COMMENT '同盾方式：1、web，2、ios，3、Android',
  `countcredit_id` int(11) DEFAULT '0' COMMENT 'bypal_impl_countcredit表的ID',
  `tongdun_id` int(11) DEFAULT '0' COMMENT 'bypal_impl_tongdun表的ID',
  `state` int(2) DEFAULT '0' COMMENT '0、未完成，1、已完成',
  `ip_address` varchar(50) DEFAULT NULL COMMENT 'ip地址',
  PRIMARY KEY (`taken_id`)
) ENGINE=MyISAM AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bypal_tongdun_takenid
-- ----------------------------
