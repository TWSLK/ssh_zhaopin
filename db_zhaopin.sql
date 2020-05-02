/*
MySQL Data Transfer
Source Host: localhost
Source Database: db_zhaopin
Target Host: localhost
Target Database: db_zhaopin
Date: 2014-04-12 18:25:59
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) character set utf8 default NULL,
  `userPw` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for t_gonggao
-- ----------------------------
CREATE TABLE `t_gonggao` (
  `gonggao_id` int(11) NOT NULL,
  `gonggao_title` varchar(50) default NULL,
  `gonggao_content` text,
  `gonggao_data` varchar(50) default NULL,
  `gonggao_fabuzhe` varchar(255) default NULL,
  `gonggao_del` varchar(50) default NULL,
  `gonggao_one1` varchar(50) default NULL,
  `gonggao_one2` varchar(50) default NULL,
  `gonggao_one3` varchar(50) default NULL,
  `gonggao_one4` varchar(50) default NULL,
  `gonggao_one5` datetime default NULL,
  `gonggao_one6` datetime default NULL,
  `gonggao_one7` int(11) default NULL,
  `gonggao_one8` int(11) default NULL,
  PRIMARY KEY  (`gonggao_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for t_liuyan
-- ----------------------------
CREATE TABLE `t_liuyan` (
  `liuyan_id` int(11) NOT NULL,
  `liuyan_title` varchar(50) default NULL,
  `liuyan_content` text,
  `liuyan_date` varchar(50) default NULL,
  `liuyan_user` varchar(50) default NULL,
  PRIMARY KEY  (`liuyan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for t_news
-- ----------------------------
CREATE TABLE `t_news` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(50) default NULL,
  `news_content` text,
  `news_date` varchar(50) default NULL,
  `news_one1` varchar(50) default NULL,
  `news_one2` varchar(50) default NULL,
  `news_one3` varchar(50) default NULL,
  `news_one4` varchar(50) default NULL,
  `news_one5` int(11) default NULL,
  `news_one6` int(11) default NULL,
  `news_one7` datetime default NULL,
  `news_one8` datetime default NULL,
  PRIMARY KEY  (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for t_toujijianli
-- ----------------------------
CREATE TABLE `t_toujijianli` (
  `id` int(11) NOT NULL,
  `zhaopinId` int(11) default NULL,
  `userId` int(11) default NULL,
  `toudishijian` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for t_toupiao
-- ----------------------------
CREATE TABLE `t_toupiao` (
  `toupiao_id` int(11) NOT NULL,
  `toupiao_name` varchar(50) default NULL,
  `toupiao_date` varchar(255) default NULL,
  PRIMARY KEY  (`toupiao_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) character set utf8 default NULL,
  `user_pw` varchar(50) character set utf8 default NULL,
  `user_type` int(11) default NULL,
  `user_realname` varchar(50) character set utf8 default NULL,
  `user_address` varchar(50) character set utf8 default NULL,
  `user_sex` varchar(50) default NULL,
  `user_tel` varchar(50) default NULL,
  `user_email` varchar(50) default NULL,
  `user_qq` varchar(50) default NULL,
  `user_man` varchar(50) default NULL,
  `user_age` varchar(50) default NULL,
  `user_birthday` varchar(50) default NULL,
  `user_xueli` varchar(50) default NULL,
  `user_del` varchar(50) default NULL,
  `user_one1` mediumtext,
  `user_one2` varchar(50) default NULL,
  `user_one3` varchar(50) default NULL,
  `user_one4` varchar(50) default NULL,
  `user_one5` varchar(50) default NULL,
  `user_one6` int(11) default NULL,
  `user_one7` int(11) default NULL,
  `user_one8` int(11) default NULL,
  `user_one9` datetime default NULL,
  `user_one10` datetime default NULL,
  `user_one11` bigint(20) default NULL,
  `user_one12` bigint(20) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for t_zhaopin
-- ----------------------------
CREATE TABLE `t_zhaopin` (
  `id` int(11) NOT NULL,
  `zhiwei` varchar(50) default NULL,
  `xuliyaoqiu` varchar(50) default NULL,
  `daiyui` varchar(50) default NULL,
  `gongzuodidian` varchar(50) default NULL,
  `gongzuojingyan` varchar(50) default NULL,
  `youxiaoqi` varchar(50) default NULL,
  `qitashuoming` varchar(50) default NULL,
  `userId` int(11) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', 'admin');
INSERT INTO `t_user` VALUES ('1', 'qiuzhi', 'qiuzhi', '1', '张三丰', '武安大', '男', '10010', '13123@qq.com', null, null, '21', null, '高中', 'no', '<p>张三丰求职</p>', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('2', 'zhaopin', 'zhaopin', '2', '招聘公司', '乌干达', null, '10020', '12312313@qq.com', null, null, null, null, null, 'no', '<p>招人了</p>', 'IT', null, null, null, null, null, null, null, null, null, null);
