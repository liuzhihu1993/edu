/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : ems

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2017-06-17 09:11:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `anthorty_info`
-- ----------------------------
DROP TABLE IF EXISTS `anthorty_info`;
CREATE TABLE `anthorty_info` (
  `anthorty_id` int(11) NOT NULL AUTO_INCREMENT,
  `anthorty_pid` int(11) DEFAULT NULL,
  `anthorty_name` varchar(100) DEFAULT NULL,
  `anthorty_desc` varchar(1000) DEFAULT NULL,
  `anthorty_url` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`anthorty_id`),
  KEY `FK_Reference_2` (`anthorty_pid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of anthorty_info
-- ----------------------------
INSERT INTO `anthorty_info` VALUES ('1', '-1', '根目录', '', '');
INSERT INTO `anthorty_info` VALUES ('2', '1', '系统管理', '管理ixinxi', null);
INSERT INTO `anthorty_info` VALUES ('9', '1', '营销管理', '', '');
INSERT INTO `anthorty_info` VALUES ('11', '2', '员工管理', 'system/list.do', 'system/list.do');
INSERT INTO `anthorty_info` VALUES ('12', '2', '角色管理', 'roleinfo/list.do', 'roleinfo/list.do');
INSERT INTO `anthorty_info` VALUES ('13', '2', '角色变更', 'roleinfo/staffinforolelist.do', 'roleinfo/staffinforolelist.do');
INSERT INTO `anthorty_info` VALUES ('14', '2', '权限管理', 'anthorty/list.do', 'anthorty/list.do');
INSERT INTO `anthorty_info` VALUES ('15', '2', '权限变更', 'anthotychange/list.do', 'anthotychange/list.do');
INSERT INTO `anthorty_info` VALUES ('16', '2', '数据字典', 'datadictionary/list.do', 'datadictionary/list.do');
INSERT INTO `anthorty_info` VALUES ('17', '9', '模板管理', 'template/list.do', 'template/list.do');
INSERT INTO `anthorty_info` VALUES ('18', '9', '短信管理', 'messafeinfo/list.do', 'messafeinfo/list.do');
INSERT INTO `anthorty_info` VALUES ('19', '9', '邮件管理', 'email/list.do', 'email/list.do');
INSERT INTO `anthorty_info` VALUES ('20', '9', '营销活动', 'marketactive/list.do', 'marketactive/list.do');
INSERT INTO `anthorty_info` VALUES ('21', '1', '招生管理', '', '');
INSERT INTO `anthorty_info` VALUES ('22', '21', '学员池', 'studentpool/list.do', 'studentpool/list.do');
INSERT INTO `anthorty_info` VALUES ('23', '21', '招生线索', 'recruitstudent/list.do', 'recruitstudent/list.do');
INSERT INTO `anthorty_info` VALUES ('24', '21', '跟踪记录', 'trackrecordinfo/list.do', 'trackrecordinfo/list.do');
INSERT INTO `anthorty_info` VALUES ('25', '21', '试听记录', 'auditioninfo/list.do', 'auditioninfo/list.do');
INSERT INTO `anthorty_info` VALUES ('26', '1', '班级管理', '', '');
INSERT INTO `anthorty_info` VALUES ('27', '26', '学科信息', 'disciplineinfo/list.do', 'disciplineinfo/list.do');
INSERT INTO `anthorty_info` VALUES ('28', '26', '教室管理', 'classroominfo/list.do', 'classroominfo/list.do');
INSERT INTO `anthorty_info` VALUES ('29', '26', '课程表', 'syllabusinfo/list.do', 'syllabusinfo/list.do');
INSERT INTO `anthorty_info` VALUES ('30', '26', '教师管理', 'teacher/list.do', 'teacher/list.do');
INSERT INTO `anthorty_info` VALUES ('31', '26', '班级管理', 'classinfo/list.do', 'classinfo/list.do');
INSERT INTO `anthorty_info` VALUES ('32', '1', '学员管理', '', '');
INSERT INTO `anthorty_info` VALUES ('33', '32', '学员评价', 'evaluationinfo/list.do', 'evaluationinfo/list.do');
INSERT INTO `anthorty_info` VALUES ('34', '32', '学员沟通', 'communicateinfo/list.do', 'communicateinfo/list.do');
INSERT INTO `anthorty_info` VALUES ('35', '32', '学员成绩', 'studentwritegrade/list.do', 'studentwritegrade/list.do');
INSERT INTO `anthorty_info` VALUES ('36', '32', '学员管理', 'student/list.do', 'student/list.do');
INSERT INTO `anthorty_info` VALUES ('37', '1', '教务管理', '', '');
INSERT INTO `anthorty_info` VALUES ('38', '37', '班级事务', 'classtransactioninfo/list.do', 'classtransactioninfo/list.do');
INSERT INTO `anthorty_info` VALUES ('39', '37', '学员考勤', 'attendanceinfo/list.do', 'attendanceinfo/list.do');
INSERT INTO `anthorty_info` VALUES ('40', '1', '财务管理', '', '');
INSERT INTO `anthorty_info` VALUES ('41', '40', '学员缴费', 'studentpayment/list.do', 'studentpayment/list.do');
INSERT INTO `anthorty_info` VALUES ('42', '40', '员工薪水发放', 'staffsalary/list.do', 'staffsalary/list.do');

-- ----------------------------
-- Table structure for `attendance_info`
-- ----------------------------
DROP TABLE IF EXISTS `attendance_info`;
CREATE TABLE `attendance_info` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `attendance_desc` varchar(100) DEFAULT NULL,
  `attendance_state` varchar(10) DEFAULT NULL,
  `attendance_time` datetime DEFAULT NULL,
  `attendance_remark` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`attendance_id`),
  KEY `FK_Reference_22` (`student_id`),
  CONSTRAINT `FK_Reference_22` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attendance_info
-- ----------------------------
INSERT INTO `attendance_info` VALUES ('1', '1', '堵车了1', '迟到+早退', '2014-12-02 00:00:00', '下次注意1');

-- ----------------------------
-- Table structure for `audition_info`
-- ----------------------------
DROP TABLE IF EXISTS `audition_info`;
CREATE TABLE `audition_info` (
  `audition_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `audition_time` datetime DEFAULT NULL,
  `audition_addr` varchar(300) DEFAULT NULL,
  `audition_course` varchar(100) DEFAULT NULL,
  `audition_desc` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`audition_id`),
  KEY `FK_Reference_10` (`student_id`),
  CONSTRAINT `FK_Reference_10` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of audition_info
-- ----------------------------
INSERT INTO `audition_info` VALUES ('1', '1', '2014-11-25 00:00:00', '上海分部培训室一', 'javaSE基础', '完全听不懂11111111111');
INSERT INTO `audition_info` VALUES ('2', '1', '2014-11-25 00:00:00', '培训室一', 'PHP', '听懂了');
INSERT INTO `audition_info` VALUES ('3', '2', '2014-11-25 00:00:00', '大唐寺庙', 'JSP', '完全不想听');

-- ----------------------------
-- Table structure for `classroom_info`
-- ----------------------------
DROP TABLE IF EXISTS `classroom_info`;
CREATE TABLE `classroom_info` (
  `classroom_id` int(11) NOT NULL AUTO_INCREMENT,
  `classroom_name` varchar(100) DEFAULT NULL,
  `classroom_max` int(11) DEFAULT NULL,
  `classroom_info` varchar(1000) DEFAULT NULL,
  `classroom_remark` varchar(1000) DEFAULT NULL,
  `classroom_mark` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`classroom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classroom_info
-- ----------------------------
INSERT INTO `classroom_info` VALUES ('1', '培训一', '28', '电脑、投影仪', '培训一', '1');
INSERT INTO `classroom_info` VALUES ('2', '培训二', '45', '电脑、投影仪', '培训一', '1');
INSERT INTO `classroom_info` VALUES ('3', '大培训', '111', '电脑、投影仪', 'a单算', '1');
INSERT INTO `classroom_info` VALUES ('4', '', null, '', '', '0');

-- ----------------------------
-- Table structure for `class_info`
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `discipline_id` int(11) DEFAULT NULL,
  `syllabus_id` int(11) DEFAULT NULL,
  `classroom_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `class_name` varchar(100) DEFAULT NULL,
  `class_number` int(11) DEFAULT NULL,
  `class_start_time` datetime DEFAULT NULL,
  `class_end_time` datetime DEFAULT NULL,
  `class_isuesd` varchar(10) DEFAULT NULL,
  `class_state` varchar(10) DEFAULT NULL,
  `class_desc` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`class_id`),
  KEY `FK_Reference_17` (`discipline_id`),
  KEY `FK_Reference_18` (`syllabus_id`),
  KEY `FK_Reference_19` (`classroom_id`),
  KEY `FK_Reference_20` (`staff_id`),
  CONSTRAINT `FK_Reference_17` FOREIGN KEY (`discipline_id`) REFERENCES `discipline_info` (`discipline_id`),
  CONSTRAINT `FK_Reference_18` FOREIGN KEY (`syllabus_id`) REFERENCES `syllabus_info` (`syllabus_id`),
  CONSTRAINT `FK_Reference_19` FOREIGN KEY (`classroom_id`) REFERENCES `classroom_info` (`classroom_id`),
  CONSTRAINT `FK_Reference_20` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES ('1', '1', '1', '1', '17', 'java一班', '20', '2014-10-31 00:00:00', '2014-11-29 00:00:00', null, '1', '1111111111');
INSERT INTO `class_info` VALUES ('2', '2', '2', '2', '15', 'C++', '20', '2014-11-07 00:00:00', '2014-11-28 00:00:00', null, '0', 'www');
INSERT INTO `class_info` VALUES ('3', '1', '1', '1', '17', '', null, null, null, null, '0', '');
INSERT INTO `class_info` VALUES ('4', '1', '1', '1', '17', '', null, null, null, null, '0', '');
INSERT INTO `class_info` VALUES ('5', '1', '1', '1', '17', '11', null, null, null, null, '0', '11');
INSERT INTO `class_info` VALUES ('6', '1', '1', '1', '17', '', null, null, null, null, '0', '');
INSERT INTO `class_info` VALUES ('7', '2', '2', '2', '15', 'C++二班', null, '2014-11-12 00:00:00', '2014-11-28 00:00:00', null, '0', '11111111');

-- ----------------------------
-- Table structure for `class_transaction_info`
-- ----------------------------
DROP TABLE IF EXISTS `class_transaction_info`;
CREATE TABLE `class_transaction_info` (
  `class_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `class_transaction_title` varchar(100) DEFAULT NULL,
  `class_transaction_content` varchar(2000) DEFAULT NULL,
  `class_transaction_person` varchar(100) DEFAULT NULL,
  `class_transaction_time` datetime DEFAULT NULL,
  `class_transaction_remark` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`class_transaction_id`),
  KEY `FK_Reference_21` (`class_id`),
  CONSTRAINT `FK_Reference_21` FOREIGN KEY (`class_id`) REFERENCES `class_info` (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_transaction_info
-- ----------------------------
INSERT INTO `class_transaction_info` VALUES ('3', '1', '平安夜', '平安夜', '平安夜', '2014-12-31 00:00:00', '平安夜');

-- ----------------------------
-- Table structure for `communicate_info`
-- ----------------------------
DROP TABLE IF EXISTS `communicate_info`;
CREATE TABLE `communicate_info` (
  `communicate_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `communicate_time` datetime DEFAULT NULL,
  `communicate_content` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`communicate_id`),
  KEY `FK_Reference_12` (`student_id`),
  KEY `FK_Reference_13` (`staff_id`),
  CONSTRAINT `FK_Reference_12` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`),
  CONSTRAINT `FK_Reference_13` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of communicate_info
-- ----------------------------
INSERT INTO `communicate_info` VALUES ('1', '1', '15', '2014-11-20 00:00:00', '阿三大苏打');
INSERT INTO `communicate_info` VALUES ('2', '3', '15', '2014-11-20 00:00:00', '啊实打实的sss');
INSERT INTO `communicate_info` VALUES ('3', '1', '15', '2014-11-20 00:00:00', 'asda是d');

-- ----------------------------
-- Table structure for `data_dictionary`
-- ----------------------------
DROP TABLE IF EXISTS `data_dictionary`;
CREATE TABLE `data_dictionary` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `data_content` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `data_desc` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data_dictionary
-- ----------------------------
INSERT INTO `data_dictionary` VALUES ('5', '计划中', 'active_state', '营销活动状态');
INSERT INTO `data_dictionary` VALUES ('6', '激活', 'active_state', '');
INSERT INTO `data_dictionary` VALUES ('7', '完成', 'active_state', '');
INSERT INTO `data_dictionary` VALUES ('8', '取消', 'active_state', '');
INSERT INTO `data_dictionary` VALUES ('9', '网络广告', 'active_type', '营销活动类型');
INSERT INTO `data_dictionary` VALUES ('10', '电话营销', 'active_type', '');
INSERT INTO `data_dictionary` VALUES ('11', '邮件营销', 'active_type', '');
INSERT INTO `data_dictionary` VALUES ('12', '微信营销', 'active_type', '');
INSERT INTO `data_dictionary` VALUES ('13', '非常好', 'active_refect_estimate', '预期反应');
INSERT INTO `data_dictionary` VALUES ('14', '好', 'active_refect_estimate', '');
INSERT INTO `data_dictionary` VALUES ('15', '一般', 'active_refect_estimate', '');
INSERT INTO `data_dictionary` VALUES ('16', '差', 'active_refect_estimate', '');
INSERT INTO `data_dictionary` VALUES ('17', '意向非常强', 'student_sate', '学生意向状态');
INSERT INTO `data_dictionary` VALUES ('18', '意向强', 'student_sate', '');
INSERT INTO `data_dictionary` VALUES ('19', '意向中', 'student_sate', '');
INSERT INTO `data_dictionary` VALUES ('20', '意向低', 'student_sate', '');
INSERT INTO `data_dictionary` VALUES ('21', '完全没兴趣', 'student_sate', '');
INSERT INTO `data_dictionary` VALUES ('22', '现金', 'payment_method', '缴费方式');
INSERT INTO `data_dictionary` VALUES ('23', '信用卡', 'payment_method', 'payment_method');
INSERT INTO `data_dictionary` VALUES ('24', '银行卡', 'payment_method', '缴费方式');

-- ----------------------------
-- Table structure for `discipline_info`
-- ----------------------------
DROP TABLE IF EXISTS `discipline_info`;
CREATE TABLE `discipline_info` (
  `discipline_id` int(11) NOT NULL AUTO_INCREMENT,
  `discipline_name` varchar(100) DEFAULT NULL,
  `discipline_tuition` int(11) DEFAULT NULL,
  `discipline_bring` int(11) DEFAULT NULL,
  `discipline_desc` varchar(2000) DEFAULT NULL,
  `discipline_isuesd` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`discipline_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discipline_info
-- ----------------------------
INSERT INTO `discipline_info` VALUES ('1', 'java基础课程', '10200', '120', '面向对象', '1');
INSERT INTO `discipline_info` VALUES ('2', 'C++课程', '10200', '11', '11', '1');
INSERT INTO `discipline_info` VALUES ('3', '.Net基础课程', '1580', '30', '学习基础  学习框架 基础', '1');
INSERT INTO `discipline_info` VALUES ('4', '11', '11', '111', '111', '0');

-- ----------------------------
-- Table structure for `email_info`
-- ----------------------------
DROP TABLE IF EXISTS `email_info`;
CREATE TABLE `email_info` (
  `email_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `email_title` varchar(1000) DEFAULT NULL,
  `email_content` varchar(2000) DEFAULT NULL,
  `email_time` datetime DEFAULT NULL,
  `email_man` varchar(100) DEFAULT NULL,
  `email_addr` varchar(300) DEFAULT NULL,
  `email_state` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`email_id`),
  KEY `FK_Reference_7` (`staff_id`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of email_info
-- ----------------------------
INSERT INTO `email_info` VALUES ('3', '15', '国庆节送礼', '国庆节国庆节国庆节国庆节', '2014-11-22 17:07:46', '张三', 'beifeng1003@163.com', null);
INSERT INTO `email_info` VALUES ('4', '15', '今天晚上去吃火锅', '今天晚上去吃火锅今天晚上去吃火锅今天晚上去吃火锅今天晚上去吃火锅今天晚上去吃火锅今天晚上去吃火锅今天晚上去吃火锅今天晚上去吃火锅今天晚上去吃火锅', '2014-11-22 17:08:42', '王麻子', 'beifeng1003@163.com', null);
INSERT INTO `email_info` VALUES ('6', '15', '明天去爬山', '明天去爬山明天去爬山明天去爬山明天去爬山明天去爬山', '2014-11-22 17:28:58', '张三', 'beifeng1003@163.com', null);

-- ----------------------------
-- Table structure for `evaluation_info`
-- ----------------------------
DROP TABLE IF EXISTS `evaluation_info`;
CREATE TABLE `evaluation_info` (
  `evaluation_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `evaluation_title` varchar(100) DEFAULT NULL,
  `evaluation_content` varchar(2000) DEFAULT NULL,
  `evaluation_course` varchar(100) DEFAULT NULL,
  `evaluation_teacher` varchar(100) DEFAULT NULL,
  `evaluation_time` datetime DEFAULT NULL,
  PRIMARY KEY (`evaluation_id`),
  KEY `FK_Reference_11` (`student_id`),
  CONSTRAINT `FK_Reference_11` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evaluation_info
-- ----------------------------
INSERT INTO `evaluation_info` VALUES ('1', '1', '上课内容', '很好', 'java基础', '白龙马', '2014-11-30 01:36:13');
INSERT INTO `evaluation_info` VALUES ('2', null, '啊啊啊', '很不哈哦', 'java', '牛老师', '2014-11-30 00:00:00');
INSERT INTO `evaluation_info` VALUES ('3', null, '啊啊啊', '事实上', 'java', '牛老师', '2014-11-07 00:00:00');

-- ----------------------------
-- Table structure for `market_active`
-- ----------------------------
DROP TABLE IF EXISTS `market_active`;
CREATE TABLE `market_active` (
  `active_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `active_name` varchar(300) DEFAULT NULL,
  `active_state` int(11) DEFAULT NULL,
  `active_start` datetime DEFAULT NULL,
  `active_end` datetime DEFAULT NULL,
  `active_type` int(11) DEFAULT NULL,
  `active_coste_emtimate` double DEFAULT NULL,
  `active_coste` double DEFAULT NULL,
  `active_refect_estimate` int(11) DEFAULT NULL,
  `active_student` varchar(300) DEFAULT NULL,
  `active_content` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`active_id`),
  KEY `FK_Reference_5` (`staff_id`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of market_active
-- ----------------------------
INSERT INTO `market_active` VALUES ('1', '15', '招生信息', '6', '2014-10-31 00:00:00', '2014-11-27 00:00:00', '11', '200', '150', '13', '150个', '123131');
INSERT INTO `market_active` VALUES ('3', '15', '很好的的活动', '5', '2014-11-18 00:00:00', '2014-11-26 00:00:00', '9', '11', '11', '14', '11', '11');

-- ----------------------------
-- Table structure for `messafe_info`
-- ----------------------------
DROP TABLE IF EXISTS `messafe_info`;
CREATE TABLE `messafe_info` (
  `messafe_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `messafe_content` varchar(1000) DEFAULT NULL,
  `messafe_man` varchar(50) DEFAULT NULL,
  `messafe_phone` varchar(50) DEFAULT NULL,
  `messafe_time` datetime DEFAULT NULL,
  `messafe_state` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`messafe_id`),
  KEY `FK_Reference_6` (`staff_id`),
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of messafe_info
-- ----------------------------
INSERT INTO `messafe_info` VALUES ('1', '13', '生日快乐', '李四', '111111111', '2014-11-20 15:29:01', null);
INSERT INTO `messafe_info` VALUES ('15', '13', '祝您生日快乐222222222222', '王五', '2222222', '2014-11-20 16:07:40', null);
INSERT INTO `messafe_info` VALUES ('16', '15', '春节要送礼', '张小三', '123443309', '2014-11-20 16:12:24', null);
INSERT INTO `messafe_info` VALUES ('17', '15', '祝您生日快乐', '45', '1521111111', '2014-11-20 16:13:04', null);
INSERT INTO `messafe_info` VALUES ('18', '15', '祝您生日快乐', '12321', '1234433094', '2014-11-20 16:13:34', null);
INSERT INTO `messafe_info` VALUES ('20', null, '祝您生日快乐', '123', '213213123', null, null);
INSERT INTO `messafe_info` VALUES ('21', '15', '春节要送礼11111111111111111', '1111111111', '11111111', '2014-11-20 16:22:46', null);

-- ----------------------------
-- Table structure for `role_anthority_info`
-- ----------------------------
DROP TABLE IF EXISTS `role_anthority_info`;
CREATE TABLE `role_anthority_info` (
  `role_anthority_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `anthorty_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_anthority_id`),
  KEY `FK_Reference_3` (`role_id`),
  KEY `FK_Reference_4` (`anthorty_id`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`role_id`) REFERENCES `role_info` (`role_id`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`anthorty_id`) REFERENCES `anthorty_info` (`anthorty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=477 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_anthority_info
-- ----------------------------
INSERT INTO `role_anthority_info` VALUES ('419', '1', '2');
INSERT INTO `role_anthority_info` VALUES ('420', '1', '11');
INSERT INTO `role_anthority_info` VALUES ('421', '1', '12');
INSERT INTO `role_anthority_info` VALUES ('422', '1', '13');
INSERT INTO `role_anthority_info` VALUES ('423', '1', '14');
INSERT INTO `role_anthority_info` VALUES ('424', '1', '15');
INSERT INTO `role_anthority_info` VALUES ('425', '1', '16');
INSERT INTO `role_anthority_info` VALUES ('426', '1', '9');
INSERT INTO `role_anthority_info` VALUES ('427', '1', '17');
INSERT INTO `role_anthority_info` VALUES ('428', '1', '18');
INSERT INTO `role_anthority_info` VALUES ('429', '1', '19');
INSERT INTO `role_anthority_info` VALUES ('430', '1', '20');
INSERT INTO `role_anthority_info` VALUES ('431', '1', '21');
INSERT INTO `role_anthority_info` VALUES ('432', '1', '22');
INSERT INTO `role_anthority_info` VALUES ('433', '1', '23');
INSERT INTO `role_anthority_info` VALUES ('434', '1', '24');
INSERT INTO `role_anthority_info` VALUES ('435', '1', '25');
INSERT INTO `role_anthority_info` VALUES ('436', '1', '26');
INSERT INTO `role_anthority_info` VALUES ('437', '1', '27');
INSERT INTO `role_anthority_info` VALUES ('438', '1', '28');
INSERT INTO `role_anthority_info` VALUES ('439', '1', '29');
INSERT INTO `role_anthority_info` VALUES ('440', '1', '30');
INSERT INTO `role_anthority_info` VALUES ('441', '1', '31');
INSERT INTO `role_anthority_info` VALUES ('442', '1', '32');
INSERT INTO `role_anthority_info` VALUES ('443', '1', '33');
INSERT INTO `role_anthority_info` VALUES ('444', '1', '34');
INSERT INTO `role_anthority_info` VALUES ('445', '1', '35');
INSERT INTO `role_anthority_info` VALUES ('446', '1', '36');
INSERT INTO `role_anthority_info` VALUES ('447', '1', '37');
INSERT INTO `role_anthority_info` VALUES ('448', '1', '38');
INSERT INTO `role_anthority_info` VALUES ('449', '1', '39');
INSERT INTO `role_anthority_info` VALUES ('450', '1', '40');
INSERT INTO `role_anthority_info` VALUES ('451', '1', '41');
INSERT INTO `role_anthority_info` VALUES ('452', '1', '42');
INSERT INTO `role_anthority_info` VALUES ('453', '2', '21');
INSERT INTO `role_anthority_info` VALUES ('454', '2', '22');
INSERT INTO `role_anthority_info` VALUES ('455', '2', '23');
INSERT INTO `role_anthority_info` VALUES ('456', '2', '24');
INSERT INTO `role_anthority_info` VALUES ('457', '2', '25');
INSERT INTO `role_anthority_info` VALUES ('458', '4', '26');
INSERT INTO `role_anthority_info` VALUES ('459', '4', '27');
INSERT INTO `role_anthority_info` VALUES ('460', '4', '28');
INSERT INTO `role_anthority_info` VALUES ('461', '4', '29');
INSERT INTO `role_anthority_info` VALUES ('462', '4', '30');
INSERT INTO `role_anthority_info` VALUES ('463', '4', '31');
INSERT INTO `role_anthority_info` VALUES ('464', '4', '32');
INSERT INTO `role_anthority_info` VALUES ('465', '4', '33');
INSERT INTO `role_anthority_info` VALUES ('466', '4', '34');
INSERT INTO `role_anthority_info` VALUES ('467', '4', '35');
INSERT INTO `role_anthority_info` VALUES ('468', '4', '36');
INSERT INTO `role_anthority_info` VALUES ('469', '4', '37');
INSERT INTO `role_anthority_info` VALUES ('470', '4', '38');
INSERT INTO `role_anthority_info` VALUES ('471', '4', '39');
INSERT INTO `role_anthority_info` VALUES ('472', '3', '9');
INSERT INTO `role_anthority_info` VALUES ('473', '3', '17');
INSERT INTO `role_anthority_info` VALUES ('474', '3', '18');
INSERT INTO `role_anthority_info` VALUES ('475', '3', '19');
INSERT INTO `role_anthority_info` VALUES ('476', '3', '20');

-- ----------------------------
-- Table structure for `role_info`
-- ----------------------------
DROP TABLE IF EXISTS `role_info`;
CREATE TABLE `role_info` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL,
  `role_desc` varchar(1000) DEFAULT NULL,
  `role_state` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_info
-- ----------------------------
INSERT INTO `role_info` VALUES ('1', '超级管理员', '天天管学生', '0');
INSERT INTO `role_info` VALUES ('2', '招生人员', '找人培训 ', '1');
INSERT INTO `role_info` VALUES ('3', '网大管', '天天修电脑，天天接网线', '1');
INSERT INTO `role_info` VALUES ('4', 'java老师', '上javaSE 课程', '1');

-- ----------------------------
-- Table structure for `staff_info`
-- ----------------------------
DROP TABLE IF EXISTS `staff_info`;
CREATE TABLE `staff_info` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `staff_name` varchar(100) DEFAULT NULL,
  `staff_sex` varchar(10) DEFAULT NULL,
  `staff_age` int(10) DEFAULT NULL,
  `staff_native_place` varchar(10) DEFAULT NULL,
  `staff_idcard` varchar(100) DEFAULT NULL,
  `staff_brithday` datetime DEFAULT NULL,
  `staff_office_phone` varchar(50) DEFAULT NULL,
  `staff_mobile_phone` varchar(50) DEFAULT NULL,
  `staff_eamil` varchar(100) DEFAULT NULL,
  `staff_addr` varchar(200) DEFAULT NULL,
  `staff_qq` varchar(30) DEFAULT NULL,
  `staff_entry_time` datetime DEFAULT NULL,
  `staff_eduction_level` varchar(20) DEFAULT NULL,
  `staff_remark` varchar(2000) DEFAULT NULL,
  `staff_state` varchar(10) DEFAULT NULL COMMENT '1 ��Ч Ա��\r\n            0 ��Ч\r\n            2 ��ʦ\r\n            ',
  `user_number` varchar(100) DEFAULT NULL,
  `user_passowrd` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `unq_user_number` (`user_number`),
  KEY `FK_Reference_1` (`role_id`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`role_id`) REFERENCES `role_info` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff_info
-- ----------------------------
INSERT INTO `staff_info` VALUES ('13', '4', '悟空', '保密', null, '', '', null, '', '', '', '', '', null, '保密', '', '1', 'user', '123');
INSERT INTO `staff_info` VALUES ('14', '1', '唐僧123', '女', '25', '大唐', '5001420198820203xxxxx', '2014-11-08 00:00:00', '123-12313213111', '2234567890', 'xxxxx123@qq.com', '长安寺庙123', '123123', '2014-11-18 00:00:00', '硕士', '念经的 念经的 念经的 ', '0', 'admin1', '123');
INSERT INTO `staff_info` VALUES ('15', '2', '白龙马', '男', '400', '', '', '2014-11-06 00:00:00', '', '', '', '', '', '2014-11-01 00:00:00', '保密', '    ', '1', 'teacher', '123');
INSERT INTO `staff_info` VALUES ('16', '1', '管理员', '保密', null, '', '', null, '', '', '', '', '', null, '保密', '', '1', 'admin', '123');
INSERT INTO `staff_info` VALUES ('17', null, '张三', '保密', '123', '大唐', '5001420198820203432', '2014-11-29 00:00:00', '123-12313213111', '1234567890', '1321313', '12', '21313', '2014-11-29 00:00:00', '博士', ' ', '2', 'admin123', '123123');

-- ----------------------------
-- Table structure for `staff_salary`
-- ----------------------------
DROP TABLE IF EXISTS `staff_salary`;
CREATE TABLE `staff_salary` (
  `staff_salary_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `sta_staff_id` int(11) DEFAULT NULL,
  `total_salary` double DEFAULT NULL,
  `deduct_salary` double DEFAULT NULL,
  `real_salary` double DEFAULT NULL,
  `is_uesd` varchar(10) DEFAULT NULL,
  `staff_salary_time` datetime DEFAULT NULL,
  `staff_remark` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`staff_salary_id`),
  KEY `FK_Reference_25` (`staff_id`),
  KEY `FK_Reference_26` (`sta_staff_id`),
  CONSTRAINT `FK_Reference_25` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`),
  CONSTRAINT `FK_Reference_26` FOREIGN KEY (`sta_staff_id`) REFERENCES `staff_info` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff_salary
-- ----------------------------
INSERT INTO `staff_salary` VALUES ('1', '13', '15', '100', '200', '800', '0', null, '萨达');
INSERT INTO `staff_salary` VALUES ('2', '17', '15', '1000', '200', '800', '1', '2014-12-02 21:21:35', '水水水水水水水');
INSERT INTO `staff_salary` VALUES ('3', '13', '15', '1000', '200', '800', '1', '2014-12-02 21:21:59', '111');

-- ----------------------------
-- Table structure for `student_info`
-- ----------------------------
DROP TABLE IF EXISTS `student_info`;
CREATE TABLE `student_info` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `student_sex` varchar(10) DEFAULT NULL,
  `student_age` int(11) DEFAULT NULL,
  `student_tellphone` varchar(100) DEFAULT NULL,
  `student_email` varchar(200) DEFAULT NULL,
  `student_idcard` varchar(30) DEFAULT NULL,
  `student_address` varchar(300) DEFAULT NULL,
  `student_birthday` varchar(100) DEFAULT NULL,
  `student_school` varchar(100) DEFAULT NULL,
  `student_qq` varchar(100) DEFAULT NULL,
  `student_parents_name` varchar(100) DEFAULT NULL,
  `student_parents_phone` varchar(100) DEFAULT NULL,
  `student_pro` varchar(100) DEFAULT NULL,
  `student_pro_city` varchar(100) DEFAULT NULL,
  `student_type` varchar(10) DEFAULT NULL,
  `student_ispay` varchar(10) DEFAULT NULL,
  `student_sate` int(10) DEFAULT NULL,
  `student_mark` varchar(10) DEFAULT NULL,
  `student_desc` varchar(2000) DEFAULT NULL,
  `student_number` varchar(100) DEFAULT NULL,
  `student_password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `FK_stu_number` (`student_number`),
  KEY `FK_Reference_16` (`class_id`),
  KEY `FK_Reference_8` (`staff_id`),
  CONSTRAINT `FK_Reference_16` FOREIGN KEY (`class_id`) REFERENCES `class_info` (`class_id`),
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_info
-- ----------------------------
INSERT INTO `student_info` VALUES ('1', '15', null, '朱八戒', '男', '1500', '3213131231231', '11231313@qq.com', '324234242234242x', '高老庄x', '', '社会大学x', '10001', '不知道x', '123445611', '上海x', '上海x', null, '1', '17', '2', '萨达的x', 'admin', '123456');
INSERT INTO `student_info` VALUES ('2', '15', '1', '123456', '男', '3500', '1231313', '1231313@qq.com', '5020310230213xxxx', '上海', '2014-11-05', '社会大学', '12111', '天地', '11111', '花果山', '水帘洞', null, null, '18', '2', '1111111111111111111', '1231313@qq.com', null);
INSERT INTO `student_info` VALUES ('3', null, null, '111111', '保密', null, '', '', '', '', '', '', '', '', '', '', '', null, null, '17', '-1', '', null, null);
INSERT INTO `student_info` VALUES ('4', '15', null, '111', '保密', null, '', '', '', '', '', '', '', '', '', '', '', null, null, null, '-1', '', null, null);
INSERT INTO `student_info` VALUES ('5', '15', null, '张三', '保密', null, '13423333333', '', '', '', '', '', '31231313', '', '', '广州', '', null, null, '17', '1', '', null, null);
INSERT INTO `student_info` VALUES ('6', null, null, '111', '保密', null, '', '', '', '', '', '', '', '', '', '重庆', '', null, null, '20', '0', '', null, null);
INSERT INTO `student_info` VALUES ('7', '15', null, '13213', '保密', null, '13422222222', '', '', '', '', '', '13422222222', '', '', '重庆', '', null, null, '19', '1', '', null, null);
INSERT INTO `student_info` VALUES ('8', '15', null, '21321', '保密', null, '', '', '', '', '', '', '', '', '', '上海', '', null, null, '19', '1', '', null, null);
INSERT INTO `student_info` VALUES ('9', '15', null, '231313', '保密', null, '', '', '', '', '', '', '', '', '', '北京', '', null, null, '21', '1', '', null, null);

-- ----------------------------
-- Table structure for `student_payment`
-- ----------------------------
DROP TABLE IF EXISTS `student_payment`;
CREATE TABLE `student_payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `payment_situation` varchar(1000) DEFAULT NULL,
  `payment_method` int(11) DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `should_amount` double DEFAULT NULL,
  `real_amount` double DEFAULT NULL,
  `debt_amount` double DEFAULT NULL,
  `payment_remark` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `FK_Reference_23` (`student_id`),
  KEY `FK_Reference_24` (`staff_id`),
  CONSTRAINT `FK_Reference_23` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`),
  CONSTRAINT `FK_Reference_24` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_payment
-- ----------------------------
INSERT INTO `student_payment` VALUES ('1', '1', '15', '今天缴费', null, '2014-12-02 00:00:00', '200', '1000', '600', '200', '阿迪仨');
INSERT INTO `student_payment` VALUES ('3', '1', '15', 'java基础费用', '22', '2014-12-04 00:00:00', '200', '1000', '600', '200', '阿斯顿撒');
INSERT INTO `student_payment` VALUES ('4', '1', '15', 'java基础费用', '22', '2014-12-04 00:00:00', '200', '1000', '600', '200', '阿斯顿撒');

-- ----------------------------
-- Table structure for `student_write_grade`
-- ----------------------------
DROP TABLE IF EXISTS `student_write_grade`;
CREATE TABLE `student_write_grade` (
  `write_grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `write_grade_subject` varchar(1000) DEFAULT NULL,
  `write_grade` varchar(50) DEFAULT NULL,
  `write_grade_time` datetime DEFAULT NULL,
  `write_grade_note` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`write_grade_id`),
  KEY `FK_Reference_14` (`student_id`),
  KEY `FK_Reference_15` (`staff_id`),
  CONSTRAINT `FK_Reference_14` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`),
  CONSTRAINT `FK_Reference_15` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_write_grade
-- ----------------------------
INSERT INTO `student_write_grade` VALUES ('1', '1', '15', 'java', '60', '2014-11-18 00:00:00', 'aaaaaaaaaaaa');
INSERT INTO `student_write_grade` VALUES ('2', '1', '15', 'C++', '80', '2014-11-30 00:00:00', 'cccccccccccc');
INSERT INTO `student_write_grade` VALUES ('3', '3', '15', 'java', '79', '2014-11-30 00:00:00', '');

-- ----------------------------
-- Table structure for `syllabus_info`
-- ----------------------------
DROP TABLE IF EXISTS `syllabus_info`;
CREATE TABLE `syllabus_info` (
  `syllabus_id` int(11) NOT NULL AUTO_INCREMENT,
  `syllabus_yi` varchar(50) DEFAULT NULL,
  `syllabus_er` varchar(50) DEFAULT NULL,
  `syllabus_san` varchar(50) DEFAULT NULL,
  `syllabus_si` varchar(50) DEFAULT NULL,
  `syllabus_wu` varchar(50) DEFAULT NULL,
  `syllabus_liu` varchar(50) DEFAULT NULL,
  `syllabus_qi` varchar(50) DEFAULT NULL,
  `is_uesd` varchar(50) DEFAULT NULL,
  `syllabus_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`syllabus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syllabus_info
-- ----------------------------
INSERT INTO `syllabus_info` VALUES ('1', '上午上课', '上下上课', '上下上课', '上下上课', '上下上课', '不上课', '不上课', '1', 'java课程');
INSERT INTO `syllabus_info` VALUES ('2', '上午上课', '上下上课', '', '', '', '', '', '0', 'C++课程');
INSERT INTO `syllabus_info` VALUES ('3', '', '', '', '', '', '', '', '0', '');

-- ----------------------------
-- Table structure for `template_info`
-- ----------------------------
DROP TABLE IF EXISTS `template_info`;
CREATE TABLE `template_info` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_title` varchar(200) DEFAULT NULL,
  `template_content` varchar(2000) DEFAULT NULL,
  `template_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of template_info
-- ----------------------------
INSERT INTO `template_info` VALUES ('1', '生日提醒', '祝您生日快乐', '短信');
INSERT INTO `template_info` VALUES ('3', '春节', '春节要送礼', '短信');
INSERT INTO `template_info` VALUES ('4', '国庆节送礼', '国庆节国庆节国庆节国庆节', '邮件');

-- ----------------------------
-- Table structure for `track_record_info`
-- ----------------------------
DROP TABLE IF EXISTS `track_record_info`;
CREATE TABLE `track_record_info` (
  `track_record_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `track_record_title` varchar(200) DEFAULT NULL,
  `track_record_content` varchar(2000) DEFAULT NULL,
  `track_record_time` datetime DEFAULT NULL,
  `enrollment` int(11) DEFAULT NULL,
  `next_record_time` datetime DEFAULT NULL,
  PRIMARY KEY (`track_record_id`),
  KEY `FK_Reference_9` (`student_id`),
  CONSTRAINT `FK_Reference_9` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of track_record_info
-- ----------------------------
INSERT INTO `track_record_info` VALUES ('5', '1', 'java项目学习', 'java项目学习java项目学习java项目学习java项目学习', '2014-11-26 00:00:00', '18', '2014-11-28 00:00:00');
