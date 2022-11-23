/*
Navicat MySQL Data Transfer

Source Server         : exp
Source Server Version : 50740
Source Host           : localhost:3306
Source Database       : finally

Target Server Type    : MYSQL
Target Server Version : 50740
File Encoding         : 65001

Date: 2022-11-23 19:00:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for body
-- ----------------------------
DROP TABLE IF EXISTS `body`;
CREATE TABLE `body` (
  `num` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `postTime` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content` text,
  `updateTime` datetime DEFAULT NULL,
  `projectname` varchar(255) DEFAULT NULL,
  `technology` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of body
-- ----------------------------
INSERT INTO `body` VALUES ('1', '1', '2021-12-06 20:49:31', '1', '前端', '<p><img src=\"/ueditor/php/upload/image/20211207/1638808415410003.jpg\" title=\"1638808415410003.jpg\" alt=\"背景图.jpg\"/></p>', '2021-12-07 00:33:38', '在线学习网站的设计与实现', '微信小程序，java web，php，javascript+mysql', '设计一个在线学习网站，提供学习资源、学习笔记、学习交流等功能。');
INSERT INTO `body` VALUES ('2', '2', '2021-12-06 15:37:07', '2', '后端', '', '2021-12-07 00:04:18', '基于线性回归房价预测系统的设计与实现', 'java、C、C++、Python', '设计一个房价预测系统，根据房价样本数据进行线性回归分析，得出房价走势。');
INSERT INTO `body` VALUES ('3', '3', '2021-12-06 22:53:33', '3', '前端', '', '2021-12-07 00:05:52', '网络教学平台的设计与实现', '微信小程序，java web，php，javascript+mysql', '设计一个网络教学平台，教师可以创建课程，并可以发布课程文件和课程资源，并对加入课程学习的学生进行管理，包括（考勤、作业批改、答疑等）学生可以申请加入课程学习，查看课程信息和课程资源，与教师或其他同学互动。');
INSERT INTO `body` VALUES ('4', '4', '2021-12-06 22:53:48', '4', '前端', '', '2021-12-06 22:53:48', '新闻内容管理系统的设计与实现', '微信小程序，java web，php，javascript+mysql', '设计一个新闻内容管理系统，实现新闻添加、编辑、删除、审核等功能。');
INSERT INTO `body` VALUES ('5', '51111', '2021-12-06 22:53:57', '5', '前端', '', '2021-12-14 10:11:41', '企业生产设计资料保存系统', '微信小程序，java web，php，javascript+mysql', '资料管理（客户及公司设计人员产品数据的管理）\r\n权限管理（公司不同人员对资料有不同的管理权限）');
INSERT INTO `body` VALUES ('6', '9', '2021-12-07 16:26:32', '6', '前端', '', '2021-12-14 10:08:42', '巴厘岛项目', '微信小程序，java web，php，javascript+mysql', '旅游网站：前台全部功能性展示，并处理好每个模块的页面结构，构建后台管理系统，控制前台输出的所有内容');
INSERT INTO `body` VALUES ('7', 'tyu', '2021-12-14 09:31:40', '7', '前端', '', '2021-12-14 09:31:40', '游电影', '微信小程序，java web，php，javascript+mysql', '完成前台功能性的展示，并完善好每个功能点的实现，优化代码结构，管理好后台的内容控制');
INSERT INTO `body` VALUES ('8', '12121', '2021-12-14 10:05:41', '8', '后端', '<p><img src=\"/ueditor/php/upload/image/20211214/1639447533180320.jpg\" title=\"1639447533180320.jpg\" alt=\"1.jpg\"/></p>', '2021-12-14 10:05:41', '智能天气预报提示系统', 'java、C、C++、Python', '不同城市天气数据读取，分析和显示');
INSERT INTO `body` VALUES ('9', '12', '2022-11-19 19:16:28', '9', '后端', '', '2022-11-19 19:16:28', '数字图像加密与实现', 'java、C、C++、Python', '采用主流的算法进行数字加密和解密');
INSERT INTO `body` VALUES ('10', '122', '2022-11-19 19:18:37', '10', '前端', '', '2022-11-19 19:18:37', '在线考试系统的设计与实现', 'DIV+CSS、JS、jQuery等前端开发技术，Java、PHP、Android等后台开发技术、数据库', '实现一个系统，有前台和后台功能，主要完成在线出卷、批改试卷、统计分数以及试卷分析等一系列工作。');
INSERT INTO `body` VALUES ('11', '1', '2022-11-19 19:27:54', '11', '前端', '<p><img src=\"/ueditor/php/upload/image/20221119/1668857264142260.jpg\" title=\"1668857264142260.jpg\" alt=\"8.jpg\"/></p>', '2022-11-19 19:27:54', '家政服务管理系统设计与实现', 'DIV+CSS、JS、jQuery等前端开发技术，Java、PHP、Android等后台开发技术、数据库', '实现一个系统，能够实现家政服务的所有功能。前台能够查询个人信息、家政服务信息');
INSERT INTO `body` VALUES ('12', '1', '2022-11-19 21:29:25', '12', '前端', '', '2022-11-19 21:29:25', '基于Web的教学进度管理系统', '微信小程序，java web，php，javascript+mysql', '教学进度管理（需要登录，进度的创建、管理和打印功能），教学进度查询（实现按时间，周次，教师，课程查询）。');

-- ----------------------------
-- Table structure for com
-- ----------------------------
DROP TABLE IF EXISTS `com`;
CREATE TABLE `com` (
  `username` varchar(255) DEFAULT NULL,
  `word` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com
-- ----------------------------
INSERT INTO `com` VALUES ('郑老师', '2222', '1');
INSERT INTO `com` VALUES ('王老师', 'ok', '2');
INSERT INTO `com` VALUES ('101', '老师好', null);

-- ----------------------------
-- Table structure for progress
-- ----------------------------
DROP TABLE IF EXISTS `progress`;
CREATE TABLE `progress` (
  `num` int(11) NOT NULL,
  `stuid` varchar(11) DEFAULT NULL,
  `teacherid` varchar(11) DEFAULT NULL,
  `projectname` varchar(255) DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  `teachername` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `content` text,
  `updateTime` datetime DEFAULT NULL,
  `postTime` datetime DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of progress
-- ----------------------------
INSERT INTO `progress` VALUES ('0', '101', null, '1', '1', '1', null, '', '2022-11-20 17:54:07', '2022-11-19 21:36:53');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sno` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sname` varchar(20) NOT NULL,
  `sclass` varchar(20) NOT NULL,
  `steacher` varchar(20) NOT NULL,
  `sbody` varchar(256) NOT NULL,
  `sscore` int(3) NOT NULL,
  `ssex` varchar(5) NOT NULL,
  `swhy` varchar(50) NOT NULL,
  `stel` varchar(11) NOT NULL,
  `test1` int(1) NOT NULL DEFAULT '0',
  `sbudabian` int(1) NOT NULL DEFAULT '0',
  `content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('22001', '张三', '22计科1班', '王老师	', '在线学习网站的设计与实现', '80', '男', '获得国赛二等奖', '19047170001', '0', '1', null);
INSERT INTO `student` VALUES ('22002', '李四', '22计科1班', '王老师	', '基于线性回归房价预测系统的设计与实现', '80', '男', '', '19047170002', '0', '1', null);
INSERT INTO `student` VALUES ('22003', '王五', '22计科2班', '王老师	', '新闻内容管理系统的设计与实现', '0', '男', '', '19047170003', '0', '0', null);
INSERT INTO `student` VALUES ('22004', '小丽', '22计科1班', '王老师', '基于Web的教学进度管理系统', '0', '女', '获得国赛一等奖', '19047170010', '0', '0', null);
INSERT INTO `student` VALUES ('22005', '萧炎', '22计科1班', '王老师	', '数字图像加密与实现	', '0', '男', '', '19047170011', '0', '0', null);
INSERT INTO `student` VALUES ('22006', '张小小', '22计科2班', '', '数字图像加密与实现', '0', '女', '', '19047170012', '0', '0', null);
INSERT INTO `student` VALUES ('22007', '苏小小', '22计科1班', '王老师	', '家政服务管理系统设计与实现	', '0', '男', '不想答辩', '19047170013', '0', '0', null);
INSERT INTO `student` VALUES ('22008', '梁静', '22计科1班', '王老师	', '智能天气预报提示系统', '0', '女', '', '19047170020', '0', '0', null);
INSERT INTO `student` VALUES ('101', '101 1', '1', '', '111web', '0', '2', 'why', '134', '0', '0', '');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `password` varchar(255) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `surplusnum` int(11) DEFAULT NULL,
  `direction` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('001', '1', '郑老师', '男', '13411111111', '计算机系', '100', '前端', '001');
INSERT INTO `teacher` VALUES ('002', '2', '王老师', '女', '13400000000', '计算机系', '100', '后端', '002');

-- ----------------------------
-- Table structure for uploadfile
-- ----------------------------
DROP TABLE IF EXISTS `uploadfile`;
CREATE TABLE `uploadfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uploadfile` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uploadfile
-- ----------------------------
INSERT INTO `uploadfile` VALUES ('1', '999fde6dacf0f2cccd2f12b10d96752b.jpg', null, null, null);
INSERT INTO `uploadfile` VALUES ('2', '1.jpg', null, null, null);
INSERT INTO `uploadfile` VALUES ('3', 'main1.jpg', null, null, null);
INSERT INTO `uploadfile` VALUES ('6', 'main1.jpg', null, null, null);
INSERT INTO `uploadfile` VALUES ('7', '1.jpg', null, null, null);
INSERT INTO `uploadfile` VALUES ('8', '1.txt', null, null, null);
INSERT INTO `uploadfile` VALUES ('9', '8.jpg', null, null, null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `teacher` varchar(255) DEFAULT NULL,
  `projectname` varchar(255) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id` int(10) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `usertype` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (null, null, 'admin', 'admin', '1', '1234567890', 'admin');
INSERT INTO `user` VALUES (null, null, '123', '123', '2', '2345678901', 'admin');
INSERT INTO `user` VALUES (null, null, '456', '456', '3', '3456789012', 'admin');
INSERT INTO `user` VALUES (null, null, '001', '001', '4', '13411111111', 'teacher');
INSERT INTO `user` VALUES (null, null, '002', '002', '5', '13410000000', 'teacher');
INSERT INTO `user` VALUES ('郑老师', '1011', '101', '101', '6', '13422222222', 'stu');
