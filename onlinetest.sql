/*
Navicat MySQL Data Transfer

Source Server         : zhao
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : onlinetest

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-12-05 21:46:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `ano` varchar(20) NOT NULL,
  `aname` varchar(50) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `nation` varchar(50) DEFAULT NULL,
  `age` date DEFAULT NULL,
  `idCard` varchar(50) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('chengying', '程颖', '女', '山东省 济南市 市辖区', '1996-11-11', '123123', null, '2131232', '143242wdsszcer');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cno` varchar(20) NOT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `college` varchar(50) DEFAULT NULL,
  `openTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `testTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `teststatus` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1001', '数据库', '计算机与信息工程学院', '2017-12-05 21:38:39', '2017-12-05 21:38:39', '1');
INSERT INTO `course` VALUES ('1002', '计算机网络', '计算机与信息工程学院', '2017-12-05 21:38:29', '2017-12-05 21:38:29', '0');
INSERT INTO `course` VALUES ('1003', '计算机系统结构', '计算机与信息工程学院', '2017-12-05 21:38:30', '2017-12-05 21:38:30', '0');
INSERT INTO `course` VALUES ('1004', '数据结构', '计算机与信息工程学院', '2017-12-05 21:38:31', '2017-12-05 21:38:31', '0');
INSERT INTO `course` VALUES ('1005', '外语专业', '文学院', '2017-12-05 21:38:31', '2017-12-05 21:38:31', '0');
INSERT INTO `course` VALUES ('1006', '商学院专业', '商学院', '2017-12-05 21:38:33', '2017-12-05 21:38:33', '0');

-- ----------------------------
-- Table structure for examination
-- ----------------------------
DROP TABLE IF EXISTS `examination`;
CREATE TABLE `examination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testno` int(11) DEFAULT NULL,
  `testType` varchar(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `refanswer` varchar(255) DEFAULT NULL,
  `degree` int(11) DEFAULT NULL,
  `chapter` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `examinationNumber` varchar(100) DEFAULT NULL,
  `cno` varchar(20) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1206 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of examination
-- ----------------------------
INSERT INTO `examination` VALUES ('1094', '11', '0', '数据库系统是由（）组成的。', '数据库、数据库管理系统和用户 |数据文件、命令文件和报表 |数据库文件结构和数据 |常量、变量和函数', '8', '1', '2', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1095', '72', '0', 'SQL Server使用的图形界面管理工具是（    ）。', 'SQL Server Management Studio|SQL Server Configuration Manager|Analysis Services|Notification Services', '5', '2', '2', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1096', '23', '0', '查找工资在600元以上并且职称为工程师的纪录，逻辑表达式为（）', '工资>600 .AND. 职称=”工程师”|工资”>600 .OR. 职称=”工程师” |工资>600 .AND. 职称=工程师|”工资”>600 .AND. “职称”=”工程师”', '6', '3', '2', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1097', '74', '0', '调用标量函数时，至少应使用（    ）和函数名', '数据库架构名|服务器名|数据库名|用户名', '8', '4', '2', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1098', '65', '0', '关于T-SQL语言中的CASE语句，以下说法正确的是（    ）。', 'case语句中else关键字可以省略|then关键字后面可以使用insert、update和delete语句|then关键字后面可以使用print语句|case关键字后面不能有任何的表达式', '6', '5', '2', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1099', '16', '0', '下列四组SQL命令，全部属于数据定义语句的命令是', 'CREATE，DROP，GRANT|CREATE，DROP，ALTER|CREATE，DROP，UPDATE |CREATE，DROP，SELECT', '7', '6', '2', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1100', '47', '0', '在SQL Server中所使用的文件分为三大类，其中不包括哪个选项（    ）。', '逻辑文件|辅助数据文件|日志文件|主数据文件', '8', '7', '2', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1101', '68', '0', '以下哪个选项不属于数据库的逻辑对象', '属性|表|存储过程|触发器', '9', '8', '2', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1102', '19', '0', '关系代数的3个基本运算是 （）、投影、连接。', '选择 |关系与|蕴含 |关系或', '2', '9', '2', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1103', '80', '0', '关于EXISTS谓词的使用，错误的是（    ）。', 'EXISTS既可以用在相关子查询中，又可以用在不相关子查询中|EXISTS谓词返回的结果为TRUE或FALSE|由EXISTS引出的子查询，select语句后一般不写具体的属性列，而使用*|NOT EXISTS与EXISTS返回的结果相反', '7', '10', '2', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1104', '181', '1', 'SQL  Sever将_______命令作为结束批处理的标志。', 'GO', '2', '1', '2', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1105', '162', '1', 'SQL Sever系统数据库包括master、model、tempdb、msdb和resource，最重要的是___________。', 'master', '3', '2', '2', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1106', '173', '1', '多表连接的种类包括内连接、外连接、______________和自连接。', '交叉连接', '2', '3', '2', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1107', '164', '1', '文件组是数据库中数据文件的____________。', '逻辑组合', '1', '4', '2', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1108', '195', '1', '创建索引使用的T –SQL语句是______________.修改索引使用的T-SQL语句是ALTER INDEX。删除索引使用的T-SQL语句是DROP INDEX。', 'CREATE INDEX', '9', '5', '2', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1109', '186', '1', '数据库系统通常采用3级模式结构，即数据库系统由外模式、_______和内模式3级组成。', '模式', '4', '6', '2', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1110', '167', '1', '数据完整性是指保证数据库的表中各字段数据完整而且合理，分为实体完整性、域完整性和_________________。', '引用完整性', '4', '7', '2', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1111', '208', '1', '撤销权限的T-SQL命令是_____________。', 'REVOKE', '7', '8', '2', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1112', '179', '1', 'BREAK语句的作用是______________，CONTINUE语句的作用是中止本轮循环。', '中止循环', '7', '9', '2', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1113', '170', '1', '实现引用完整性的是___________________约束。', 'FOREIGN KEY', '9', '10', '2', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1114', '448', '2', '对表T_STUDENT中的记录按性别进行分组，查询相应的人数。', 'SELECT sex 性别,COUNT(s_number) 人数\r\nFROM t_student\r\nGROUP BY sex\r\n', '1', '4', '5', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1115', '467', '2', '试述视图的作用？', '1）视图能够简化用户的操作。2）视图使用户能以多种角度看待同一数据。 3）视图对重构数据库提供了一定程度的逻辑独立性。4）视图能够对机密数据提供安全保护。', '2', '8', '5', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1116', '474', '2', '说明视图与基本表的区别和联系', '视图是从一个或几个基本表导出的表，它与基本表不同，是一个虚表，数据库中只存放视图的定义，而不存放视图对应的数据，这些数据存放在原来的基本表中，当基本表中的数据发生变化，从视图中查询出的数据也就随之改变\r\n视图一经定义就可以像基本表一样被查询、删除，也可以在一个视图之上再定义新的视图，但是对视图的更新操作有限制\r\n', '5', '5', '5', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1117', '469', '2', ' 设教学数据库中有三个基本表：\r\n学生表S（SNO，SNAME，AGE，SEX），其属性分别表示学号、学生姓名、年龄、性别。课程表C（CNO，CNAME，TEACHER），其属性分别表示课程号、课程名、上课教师名。选修表SC（SNO，CNO，GRADE），其属性分别表示学号、课程号、成绩。\r\n设计查询张三同学没有选修的课程的课程号的SQL查询语句\r\n', 'SELECT CNO\r\nFROM C \r\nWHERE CNO NOT IN\r\n(SELECT CNO \r\nFROM S,SC\r\nWHERE S.SNO=SC.SNO \r\nAND SNAME=\'张三\');\r\n', '4', '10', '5', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1118', '534', '2', '简述事务的特性。', '事务具有四个特性，即ACID特性', '5', '9', '10', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1119', '526', '2', '数据模型的三大要素是什么？', '数据操作，数据结构，完整性约束', '1', '1', '10', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1120', '527', '2', '数据库设计的基本步骤是什么？', '需求分析、概念结构设计、逻辑结构设计、物理结构设计、数据库实施、数据库运行和维护。', '1', '2', '10', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1121', '465', '2', '返回在程序执行过程中上一条SQL语句影响的记录数。', 'INSERT INTO T_STUDENT(\r\nS_NUMBER,S_NAME,SEX)\r\nVALUES(\r\n\'ABCDEF4\',\'小强\',\'男\')\r\n\r\nSELECT @@ROWCOUNT AS \'第一次查询返回的记录数\'\r\n', '8', '1', '10', '946db867-0ce8-4794-b420-9c00d2ecd732', '1001', null);
INSERT INTO `examination` VALUES ('1124', '1', '0', '在数据库技术中，独立于计算机系统的模型是', 'E-R模型|关系模型|面向对象的模型|层次模型', '2', '1', '2', 'b2f05bc8-c234-43a0-98b7-1792cbd12095', '1001', null);
INSERT INTO `examination` VALUES ('1126', '2', '0', '数据库系统的控制中枢是', '数据库管理系统|数据库|数据库管理员|数据库应用系统', '5', '2', '2', 'b2f05bc8-c234-43a0-98b7-1792cbd12095', '1001', null);
INSERT INTO `examination` VALUES ('1127', '4', '0', '在关系数据库中，建立数据库表时，将年龄字段值限制在12～40岁之间的这种约束属于', '域完整性约束|视图完整性约束|参照完整性约束|实体完整性约束', '4', '4', '2', 'b2f05bc8-c234-43a0-98b7-1792cbd12095', '1001', null);
INSERT INTO `examination` VALUES ('1128', '7', '0', '数据库的并发操作可能带来的问题包括', '丢失更新|非法用户的使用|数据独立性会提高|增加数据冗余度', '2', '7', '2', 'b2f05bc8-c234-43a0-98b7-1792cbd12095', '1001', null);
INSERT INTO `examination` VALUES ('1129', '6', '0', '在数据库中，概念模型是', '用于信息世界的建模，与具体的DBMS无关|用于现实的建模，与具体的DBMS有关|用于信息世界的建模，与具体的DBMS有关|用于现实的建模，与具体的DBMS无关', '6', '6', '2', 'b2f05bc8-c234-43a0-98b7-1792cbd12095', '1001', null);
INSERT INTO `examination` VALUES ('1130', '7', '0', '数据库的并发操作可能带来的问题包括', '丢失更新|非法用户的使用|数据独立性会提高|增加数据冗余度', '2', '7', '2', 'b2f05bc8-c234-43a0-98b7-1792cbd12095', '1001', null);
INSERT INTO `examination` VALUES ('1132', '8', '0', '在关系数据库中，模式对应的是', '视图和所有基本表|视图和部分基本表|基本表|索引', '7', '8', '2', 'b2f05bc8-c234-43a0-98b7-1792cbd12095', '1001', null);
INSERT INTO `examination` VALUES ('1133', '17', '0', '通过Internet及浏览器处理的数据库，应该是（）处理。 ', '主从结构式|集中式 |分布式|以上3种模式', '4', '7', '2', 'b2f05bc8-c234-43a0-98b7-1792cbd12095', '1001', null);
INSERT INTO `examination` VALUES ('1134', '441', '2', '查询所有记录的S_NUMBER（别名为学号）、S_NAME（别名为姓名）和BIRTHDAY（别名为出生日期）字段。', 'SELECT s_number 学号,s_name 姓名,birthday 出生日期\r\nFROM t_student\r\n', '1', '7', '5', 'b2f05bc8-c234-43a0-98b7-1792cbd12095', '1001', null);
INSERT INTO `examination` VALUES ('1135', '444', '2', '查询表T_SCORE和表T_STUDENT中的数据，满足条件：T_STUDENT.S_NUMBER=T_SCORE.S_NUMBER。', 'SELECT *\r\nFROM t_student,t_score\r\nWHERE t_student.s_number=t_score.s_number\r\n', '4', '10', '5', 'b2f05bc8-c234-43a0-98b7-1792cbd12095', '1001', null);
INSERT INTO `examination` VALUES ('1136', '451', '2', '假设表T_STUDENT1中的数据如下表所示。对表T_STUDENT1和表T_STUDENT进行联合查询。', 'SELECT * FROM t_student1 UNION \r\nSELECT * FROM t_student \r\n', '6', '7', '10', 'b2f05bc8-c234-43a0-98b7-1792cbd12095', '1001', null);
INSERT INTO `examination` VALUES ('1137', '453', '2', '利用INSERT语句向表T_STUDENT中插入一行数据，只包含S_NUMBER、S_NAME和BIRTHDAY三列。', 'INSERT INTO t_student(s_number,s_name,birthday)\r\nVALUES(\'111111111\',\'简自豪\',\'1995-5-5\')\r\n', '8', '9', '10', 'b2f05bc8-c234-43a0-98b7-1792cbd12095', '1001', null);
INSERT INTO `examination` VALUES ('1138', '444', '2', '查询表T_SCORE和表T_STUDENT中的数据，满足条件：T_STUDENT.S_NUMBER=T_SCORE.S_NUMBER。', 'SELECT *\r\nFROM t_student,t_score\r\nWHERE t_student.s_number=t_score.s_number\r\n', '4', '10', '5', 'b2f05bc8-c234-43a0-98b7-1792cbd12095', '1001', null);
INSERT INTO `examination` VALUES ('1139', '14', '0', '数据库类型是按照（）来划分的。', '数据模型|记录形式|数据存取方法|文件形式', '4', '4', '2', 'b2f05bc8-c234-43a0-98b7-1792cbd12095', '1001', null);
INSERT INTO `examination` VALUES ('1140', '19', '0', '关系代数的3个基本运算是 （）、投影、连接。', '选择 |关系与|蕴含 |关系或', '2', '9', '2', 'b2f05bc8-c234-43a0-98b7-1792cbd12095', '1001', null);
INSERT INTO `examination` VALUES ('1141', '457', '2', '使用Transact-SQL语句创建新视图VIEW_SCORE_SumAndAverage。要求计算各个班级各门课程的总分及平均分。', 'CREATE VIEW VIEW_SCORE_SumAndAverage\r\nAS \r\nSELECT SUBSTRING(T_STUDENT.S_NUMBER,1,\r\n         LEN(T_STUDENT.S_NUMBER)-2) AS 班级,  \r\n       T_COURSE.C_NAME AS 课程名称, \r\n       SUM(SCORE) AS 总分,\r\n       AVG(SCORE) AS 平均分\r\nFROM  T_STUDENT,T_COURSE,T_SCORE\r\n', '8', '3', '10', 'b2f05bc8-c234-43a0-98b7-1792cbd12095', '1001', null);
INSERT INTO `examination` VALUES ('1142', '461', '2', '利用视图VIEW_STUDENT_05541，先插入一条记录，然后删除此条记录。', 'INSERT INTO view_student_05541\r\nVALUES(\'0554113\',\'小明\',\'男\')\r\nDELETE FROM view_student_05541\r\nWHERE s_number=\'0554113\'\r\n', '8', '7', '10', 'b2f05bc8-c234-43a0-98b7-1792cbd12095', '1001', null);
INSERT INTO `examination` VALUES ('1143', '483', '2', '某企业集团有若干工厂，每个工厂生产多种产品，且每一种产品可以在多个工厂生产，每个工厂按照固定的计划数量生产产品；每个工厂聘用多名职工，且每名职工只能在一个工厂工作，工厂聘用职工有聘期和工资。工厂的属性有工厂编号、厂名、地址，产品的属性有产品编号、产品名、规格，职工的属性有职工号、姓名。\r\n写出上述关系的关系模型；\r\n（要求：1:1和1:n的联系进行合并）\r\n', '转化后的关系模式如下|\r\n		工厂（工厂编号，厂名，地址）\r\n     	 产品（产品编号，产品名，规格）\r\n         职工（职工号，姓名，工产编号，聘期，工资）\r\n         生产（工产编号，产品编号，计划数量）\r\n', '7', '4', '10', 'b2f05bc8-c234-43a0-98b7-1792cbd12095', '1001', null);
INSERT INTO `examination` VALUES ('1144', '463', '2', '计算表达式的值，并将结果赋给变量@ExpResult。', 'DECLARE @ExpResult numeric\r\nSET @ExpResult=1235\r\nSELECT @ExpResult AS \'计算结果\'', '9', '9', '10', 'b2f05bc8-c234-43a0-98b7-1792cbd12095', '1001', null);
INSERT INTO `examination` VALUES ('1145', '450', '2', '在表T_SCORE中查询选修了“10010218”课程的学生成绩，并按成绩的降序进行排序。', 'SELECT *\r\nFROM t_score\r\nWHERE c_number=\'10010218\'\r\nORDER BY score DESC\r\n', '5', '6', '5', 'b2f05bc8-c234-43a0-98b7-1792cbd12095', '1001', null);
INSERT INTO `examination` VALUES ('1174', '31', '0', '利用游标来操纵数据时，所用的FOR UPDATE子句充分利用了事务的哪个特性（    ）。', '隔离性|原子性|一致性|永久性', '5', '1', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1175', '61', '0', '创建用户自定数据类型，使用哪个系统定义的存储过程（    ）。', 'sp_addtype|sp_type|type|addtype', '7', '1', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1176', '2', '0', '数据库系统的控制中枢是', '数据库管理系统|数据库|数据库管理员|数据库应用系统', '5', '2', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1177', '52', '0', '在SQL server中以下哪个命令可以用来对指定数据库进行备份（    ）。', 'BACKUP|REBACK|REVOKE|RESTORE', '4', '2', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1178', '53', '0', '定义一个名为t_cur的游标，一个名为@t_cur的游标类型变量，下列语句正确的是（    ）', 'set @t_cur=t_cur|set t_cur=@t_cur|fetch next from t_cur into @t_cur|select t_cur into @t_cur	', '6', '3', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1179', '43', '0', '当表中的某一属性列被设置了主键约束，则该属性列也同时具有如下约束（    ）。', 'unique约束和not null约束|check约束和unique约束|check约束和not null约束|以上选项均错误', '4', '3', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1180', '44', '0', '在数据库系统中，视图可以提供数据的（    ）。', '安全性|完整性|并发性|可恢复性', '1', '4', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1181', '64', '0', '以下关于不相关子查询说法正确的是（    ）。', '子查询只执行一次|不相关子查询的执行顺序是:先执行父查询后执行子查询|子查询不能单独执行，必须依赖于父查询|不相关子查询可以使用谓词EXISTS\r\n', '3', '4', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1182', '35', '0', '能够将‘java’课的学分赋值给变量的语句是哪一个（    ）。', 'select @credit= credit from course where cname=‘java’|select credit into @credit from course where cname=‘java’    |select credit=@credit from course where cname=‘java’|select credit from course where cname=‘java’and credit=@credit', '7', '5', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1183', '45', '0', '有如下语句：\r\n	Declare @x int\r\n    If @x is null\r\n	   Select ‘A’\r\n    If @x=0\r\n       Select ‘B’\r\nIf @x=’’\r\n       Select ‘C’\r\n查询的结果为（    ）。\r\n', 'A|B|C|有编译错误', '7', '5', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1184', '76', '0', '下列聚合函数用法正确的是（ ）', 'COUNT(*)|SUM(*)|MAX(*)|AVG(*)', '10', '6', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1185', '57', '0', 'SQL Server是 ghgh基于哪种模型的数据库管理系统（    ）', '关系模型|层次模型|网状模型|面向对象模型', '9', '7', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1186', '68', '0', '以下哪个选项不属于数据库的逻辑对象', '属性|表|存储过程|触发器', '9', '8', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1187', '9', '0', '能实现绝对的与平台无关性的Web数据库访问技术是', 'JDBC|ADO |ActiveX |WebbaseAPI', '8', '9', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1188', '40', '0', '关于T-SQL语言，以下说法正确的是（    ）。', 'T-SQL语言提供了流程控制功能|T-SQL语言能用于Oracle数据库|SQL Server数据库可以使用PL/SQL语言|T-SQL语言并不提供标准的SQL命令', '5', '10', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1189', '161', '1', 'SQL Sever数据库分为系统数据库和_______________两类。', '用户数据库', '6', '1', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1190', '162', '1', 'SQL Sever系统数据库包括master、model、tempdb、msdb和resource，最重要的是___________。', 'master', '3', '2', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1191', '213', '1', '还原数据库备份的T-SQL命令是________________。', 'RESTORE', '3', '3', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1192', '164', '1', '文件组是数据库中数据文件的____________。', '逻辑组合', '1', '4', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1193', '205', '1', '按照触发器事件的不同，触发器可以分为DML触发器和________触发器两种。', 'DDL', '9', '5', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1194', '166', '1', '________的含义是值未知。', 'NULL', '3', '6', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1195', '177', '1', '关键字UNION的作用________是多个结果集。', '合并', '6', '7', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1196', '198', '1', '调用标量值函数可以使用两种方法，分别是SELECT语句和__________语句。', 'EXEC', '2', '8', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1197', '179', '1', 'BREAK语句的作用是______________，CONTINUE语句的作用是中止本轮循环。', '中止循环', '7', '9', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1198', '190', '1', '关系模型完整性分成三类，是实体完整性、_____________和用户自定义完整性。', '参照完整性', '5', '10', '2', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1199', '441', '2', '查询所有记录的S_NUMBER（别名为学号）、S_NAME（别名为姓名）和BIRTHDAY（别名为出生日期）字段。', 'SELECT s_number 学号,s_name 姓名,birthday 出生日期\r\nFROM t_student\r\n', '1', '7', '5', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1200', '447', '2', '从表T_STUDENT中查询所有姓张的学生信息。', 'SELECT *\r\nFROM t_student\r\nWHERE s_name LIKE \'张%\'\r\n', '2', '3', '5', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1201', '448', '2', '对表T_STUDENT中的记录按性别进行分组，查询相应的人数。', 'SELECT sex 性别,COUNT(s_number) 人数\r\nFROM t_student\r\nGROUP BY sex\r\n', '1', '4', '5', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1202', '450', '2', '在表T_SCORE中查询选修了“10010218”课程的学生成绩，并按成绩的降序进行排序。', 'SELECT *\r\nFROM t_score\r\nWHERE c_number=\'10010218\'\r\nORDER BY score DESC\r\n', '5', '6', '5', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1203', '476', '2', '设有关系STUDENT(S#,SNAME,SDEPT,MNAME,CNAME,GRADE)，（S#,CNAME）为候选码，设关系中有如下函数依赖：  \r\n	（S#,CNAME）→SNAME,SDEPT,MNAME\r\nS#→SNAME,SDEPT,MNAME\r\n（S#,CNAME）→GRADE\r\nSDEPT→MNAME\r\n\r\n关系STUDENT属于第几范式？并说明理由。\r\n', ' 关系STUDENT是1NF，因为F中存在非主属性SNAME，SDEPT，MNAME对侯选码（S#,CNAME）的部分函数依赖。', '6', '7', '10', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1204', '529', '2', '简述数据库并发操作通常会带来哪些问题。', '丢失修改、不可重复读、读“脏”数据。', '2', '4', '10', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);
INSERT INTO `examination` VALUES ('1205', '454', '2', '一个带有WHERE条件的修改语句。', 'UPDATE t_student\r\nSET polity=\'党员\'\r\nWHERE s_name=\'简自豪\'\r\n', '9', '10', '10', '9164584c-c2f9-4705-ba39-1a57d3f4be17', '1001', null);

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `usercode` varchar(20) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`usercode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('chengying', '程颖', '1022', '1');
INSERT INTO `login` VALUES ('zhangxiaoxin', '张晓新', '1022', '2');
INSERT INTO `login` VALUES ('zhaokunsong', '赵焜松', '1022', '0');
INSERT INTO `login` VALUES ('zzzkkksss', '123', '1022', '0');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sno` varchar(20) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `college` varchar(50) DEFAULT NULL,
  `className` varchar(50) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `nation` varchar(50) DEFAULT NULL,
  `age` date DEFAULT NULL,
  `idCard` varchar(50) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('studenttest1', '张', '计算机与信息工程学院', '软件工程1501班', null, null, null, null, null, null, null);
INSERT INTO `student` VALUES ('studenttest2', '程', '计算机与信息工程学院', '软件工程1501班', null, null, null, null, null, null, null);
INSERT INTO `student` VALUES ('test1', '测试一', '文学院', '外语专业', null, null, null, null, null, null, null);
INSERT INTO `student` VALUES ('test2', '测试二', '商学院', '商学院专业', null, null, null, null, null, null, null);
INSERT INTO `student` VALUES ('zhaokunsong', '赵焜松', '计算机与信息工程学院', '软件工程1501班', '女', '辽宁省 本溪市 明山区', '1996-12-19', '140322199612193912', null, '18086431415', 'azksliang@qq.com');

-- ----------------------------
-- Table structure for studentcourse
-- ----------------------------
DROP TABLE IF EXISTS `studentcourse`;
CREATE TABLE `studentcourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` varchar(20) DEFAULT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `cno` varchar(20) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `usualScore` int(11) DEFAULT NULL,
  `paperScore` int(11) DEFAULT NULL,
  `sumScore` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `teststatus` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studentcourse
-- ----------------------------
INSERT INTO `studentcourse` VALUES ('1', 'zhaokunsong', '赵焜松', '1001', '数据库', null, '89', null, '0', '1');
INSERT INTO `studentcourse` VALUES ('2', 'zhaokunsong', '赵焜松', '1002', '计算机网络', '34', '89', '60', '1', '2');
INSERT INTO `studentcourse` VALUES ('4', 'zhangxiaoxin', '张', '1002', '数据库', '34', '54', '53', '1', '2');
INSERT INTO `studentcourse` VALUES ('5', 'studenttest2', '程', '1002', '计算机网络', null, '45', null, '0', null);
INSERT INTO `studentcourse` VALUES ('6', 'studenttest3', '张张hhh', '1002', '数据库', null, '34', null, '0', null);
INSERT INTO `studentcourse` VALUES ('7', 'zhaokunsong', '赵焜松', '1003', '计算机系统结构', '78', '78', '78', '1', '0');
INSERT INTO `studentcourse` VALUES ('8', '111111111', 'zxx2', '1002', '数据库', null, '78', null, '0', null);
INSERT INTO `studentcourse` VALUES ('9', 'zzzkkksss', '123', '1001', '数据库', '90', '51', '66', '1', '1');

-- ----------------------------
-- Table structure for studentexamination
-- ----------------------------
DROP TABLE IF EXISTS `studentexamination`;
CREATE TABLE `studentexamination` (
  `seid` int(11) NOT NULL AUTO_INCREMENT,
  `sno` varchar(20) DEFAULT NULL,
  `testno` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `refanswer` varchar(255) DEFAULT NULL,
  `stuAnswer` varchar(255) DEFAULT NULL,
  `practicalScore` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `examinationNumber` varchar(100) DEFAULT NULL,
  `cno` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`seid`)
) ENGINE=InnoDB AUTO_INCREMENT=2688 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studentexamination
-- ----------------------------

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tno` varchar(20) NOT NULL,
  `tname` varchar(50) DEFAULT NULL,
  `college` varchar(50) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `nation` varchar(50) DEFAULT NULL,
  `age` date DEFAULT NULL,
  `idCard` varchar(50) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('201501', '张张张', '计算机与信息工程学院', '男', null, null, null, null, null, null);
INSERT INTO `teacher` VALUES ('zhangxiaoxin', '张晓新', '计算机与信息工程学院', '女', '辽宁省 沈阳市 和平区', '1996-10-12', '429001199612020429', null, '13016493752', '1193097525@qq.com');

-- ----------------------------
-- Table structure for teachercourse
-- ----------------------------
DROP TABLE IF EXISTS `teachercourse`;
CREATE TABLE `teachercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tno` varchar(20) DEFAULT NULL,
  `tname` varchar(50) DEFAULT NULL,
  `cno` varchar(20) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `college` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teachercourse
-- ----------------------------
INSERT INTO `teachercourse` VALUES ('1', 'zhangxiaoxin', '张晓新', '1001', '数据库', '计算机与信息工程学院');
INSERT INTO `teachercourse` VALUES ('2', 'zhangxiaoxin', '张晓新', '1002', '计算机网络', '计算机与信息工程学院');
INSERT INTO `teachercourse` VALUES ('3', 'testuser', '测试用户', '1001', '数据库', '计算机与信息工程学院');

-- ----------------------------
-- Table structure for testbank
-- ----------------------------
DROP TABLE IF EXISTS `testbank`;
CREATE TABLE `testbank` (
  `testno` int(11) NOT NULL AUTO_INCREMENT,
  `testType` varchar(20) DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `refanswer` varchar(255) DEFAULT NULL,
  `degree` int(11) DEFAULT NULL,
  `chapter` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `cno` varchar(20) DEFAULT '',
  `cname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`testno`)
) ENGINE=InnoDB AUTO_INCREMENT=588 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testbank
-- ----------------------------
INSERT INTO `testbank` VALUES ('1', '0', '在数据库技术中，独立于计算机系统的模型是', 'E-R模型|关系模型|面向对象的模型|层次模型', '2', '1', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('2', '0', '数据库系统的控制中枢是', '数据库管理系统|数据库|数据库管理员|数据库应用系统', '5', '2', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('3', '0', '使用SQL命令将学生表STUDENT中的学生年龄AGE字段的值增加1岁，应该使用的命令是', 'UPDATE STUDENT SET AGE＝AGE＋1 |UPDATE SET AGE WITH AGE＋1 |REPLACE AGE WITH AGE＋1| UPDATE STUDENT AGE WITH AGE＋1', '1', '3', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('4', '0', '在关系数据库中，建立数据库表时，将年龄字段值限制在12～40岁之间的这种约束属于', '域完整性约束|视图完整性约束|参照完整性约束|实体完整性约束', '4', '4', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('5', '0', '在 SQL 语句中，与 X BETWEEN 20 AND 30 等价的表达式是', 'X>=20 AND X<=30|X>=20 AND X<30|X>20 AND X<30|X>20 AND X<=30 ', '4', '5', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('6', '0', '在数据库中，概念模型是', '用于信息世界的建模，与具体的DBMS无关|用于现实的建模，与具体的DBMS有关|用于信息世界的建模，与具体的DBMS有关|用于现实的建模，与具体的DBMS无关', '6', '6', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('7', '0', '数据库的并发操作可能带来的问题包括', '丢失更新|非法用户的使用|数据独立性会提高|增加数据冗余度', '2', '7', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('8', '0', '在关系数据库中，模式对应的是', '视图和所有基本表|视图和部分基本表|基本表|索引', '7', '8', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('9', '0', '能实现绝对的与平台无关性的Web数据库访问技术是', 'JDBC|ADO |ActiveX |WebbaseAPI', '8', '9', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('10', '0', '在下列描述中，正确的描述是', 'SQL是集合操作方式|SQL 是一种过程化语言|SQL 不能嵌入到高级语言程序中 |SQL 是一种 DBMS ', '4', '10', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('11', '0', '数据库系统是由（）组成的。', '数据库、数据库管理系统和用户 |数据文件、命令文件和报表 |数据库文件结构和数据 |常量、变量和函数', '8', '1', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('12', '0', '在SQL查询时，使用WHERE子句指出的是', '查询条件|查询目标|查询视图|查询结果', '5', '2', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('13', '0', '在下列 RDMBS 产品中，属于小型数据库系统的是', 'Access|Oracle|Sybase |Informix', '1', '3', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('14', '0', '数据库类型是按照（）来划分的。', '数据模型|记录形式|数据存取方法|文件形式', '4', '4', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('15', '0', '数据库管理系统更适合于（）方面的应用。', '数据处理|CAD |过程控制|科学计算', '2', '5', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('16', '0', '下列四组SQL命令，全部属于数据定义语句的命令是', 'CREATE，DROP，GRANT|CREATE，DROP，ALTER|CREATE，DROP，UPDATE |CREATE，DROP，SELECT', '7', '6', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('17', '0', '通过Internet及浏览器处理的数据库，应该是（）处理。 ', '主从结构式|集中式 |分布式|以上3种模式', '4', '7', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('18', '0', '数据的逻辑独立性是指（）', '数据与程序的逻辑独立性|数据与存储结构的逻辑独立性|数据元素之间的逻辑独立性|存储结构与物理结构的逻辑独立性 ', '6', '8', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('19', '0', '关系代数的3个基本运算是 （）、投影、连接。', '选择 |关系与|蕴含 |关系或', '2', '9', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('20', '0', '下面命题不正确的是（）', '数据库中不存在数据冗余|若冗余数据可以控制，则数据更新的一致性得以保证|数据库减少了不必要的数据冗余 |数据库的数据可以共享', '10', '10', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('21', '0', '在基本SQL中不可以实现（）', '并发控制 |定义视图|定义基表 |查询视图和基表', '9', '1', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('22', '0', '用二维表来表示实体及实体之间联系的数据模型称为（）', '关系模型|实体 – 联系模型|层次模型|网状模型', '7', '2', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('23', '0', '查找工资在600元以上并且职称为工程师的纪录，逻辑表达式为（）', '工资>600 .AND. 职称=”工程师”|工资”>600 .OR. 职称=”工程师” |工资>600 .AND. 职称=工程师|”工资”>600 .AND. “职称”=”工程师”', '6', '3', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('24', '0', '数据库镜像可以用于', '进行数据库恢复或并发操作|实现数据库的安全性|实现数据共享|保证数据库的完整性', '5', '4', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('25', '0', '在下列类型的数据库系统中，应用最广泛的是', '关系型数据库系统|分布型数据库系统|逻辑型数据库系统|层次型数据库系统', '8', '5', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('26', '0', '在下列描述中，正确的描述是（）', 'SQL 采用集合操作方式|SQL 是一种过程化语言|SQL 不能嵌入到高级语言程序中|SQL 是一种 DBMS', '9', '6', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('27', '0', '下列说法错误的是（    ）。', '多语句表值函数的功能可以用标量函数来实现|内嵌表值函数没有函数主体，返回的表是单个SELECT语句的结果集|多语句表值函数的调用与内嵌表值函数的调用方法相同|在内嵌表值函数的定义中，不使用BEGIN…END块定义函数主体\r\n', '5', '7', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('28', '0', '以下哪个事件不能激活DML触发器的执行（    ）。', 'SELECT|UPDATE|INSERT|DELETE', '4', '8', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('29', '0', '以以下哪个数据库实例不属于系统数据库（    ）。', 'temp|master|model|msdb', '2', '9', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('30', '0', '执行以下语句：\r\nDECLARE @n int\r\nSet @n=3\r\nWHILE @n<5 \r\nBegin \r\nIF @n=4 \r\n	  Print ltrim(@n)+‘的平方数为’+ltrim(@n*@n)\r\n   Set @n=@n+1\r\nEnd \r\n执行完成后循环次数为（    ）。\r\n', '2次|0次|1次|死循环', '3', '10', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('31', '0', '利用游标来操纵数据时，所用的FOR UPDATE子句充分利用了事务的哪个特性（    ）。', '隔离性|原子性|一致性|永久性', '5', '1', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('32', '0', '关于触发器的描述，下列说法正确的是（    ）。', '触发器是一个能自动执行的特殊的存储过程|触发器是在数据修改前被触发，约束是在数据修改后被触发|触发器作为一个独立的对象存在，与数据库中其他对象无关|inserted表和deleted表是数据库中的物理表', '5', '2', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('33', '0', '关于服务器角色与数据库角色，说法正确的是（    ）。', '只能将一个登录名添加为某个固定服务器角色的成员|只能将一个登录名添加为某个固定数据库角色的成员|sysadmin是固定数据库角色|db_owner是固定服务器角色', '5', '3', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('34', '0', '关于创建永久备份设备，下列说法错误的是（    ）。', '只须指定该命名备份设备的物理名，无须指定该命名备份设备的逻辑名|执行系统存储过程sp_addumpdevice创建永久备份设备|执行系统存储过程sp_dropdevice删除永久备份设备|若被删除的“命名备份设备”的类型为磁盘，那么必须指定DELFILE选项', '8', '4', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('35', '0', '能够将‘java’课的学分赋值给变量的语句是哪一个（    ）。', 'select @credit= credit from course where cname=‘java’|select credit into @credit from course where cname=‘java’    |select credit=@credit from course where cname=‘java’|select credit from course where cname=‘java’and credit=@credit', '7', '5', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('36', '0', '游标的处理步骤的第二步是（    ）', '打开游标|定义游标|关闭游标|取值到变量', '8', '6', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('37', '0', '在定义存储过程时，下面说法不正确的是（    ）。', 'OUTPUT关键词用于指定参数为输入参数类型|不要以sp_为前缀创建任何存储过程，因为sp_前缀是SQL Server用来命名系统存储过程的|如果定义了默认值，执行存储过程时可以不提供实参|VARYING用于指定作为输出参数支持的结果集，且仅适用于定义cursor输出参数', '9', '7', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('38', '0', '调用标量函数时，至少应使用（    ）和函数名。', '数据库架构名|服务器名|数据库名|用户名', '5', '8', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('39', '0', '下面关于数据操纵语句，说法错误的是（    ）。', '使用Insert语句一次只能插入一行数据|使用Insert语句一次可以插入多行数据|使用Update语句一次可以更新多行数据|使用Delete语句一次可以删除多行数据', '10', '9', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('40', '0', '关于T-SQL语言，以下说法正确的是（    ）。', 'T-SQL语言提供了流程控制功能|T-SQL语言能用于Oracle数据库|SQL Server数据库可以使用PL/SQL语言|T-SQL语言并不提供标准的SQL命令', '5', '10', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('41', '0', 'SQL Server可以识别的日期常量，格式错误的是（    ）。', '’2013:10:15’|’October 15,2013’|’10/15/2013’|’2013-10-15‘', '1', '1', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('42', '0', '假设表中没有数据，下列语句中能够正确执行的是（    ）。', 'alter table student drop column age|alter table student drop age|alter table student add column memo|alter table student add memo', '3', '2', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('43', '0', '当表中的某一属性列被设置了主键约束，则该属性列也同时具有如下约束（    ）。', 'unique约束和not null约束|check约束和unique约束|check约束和not null约束|以上选项均错误', '4', '3', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('44', '0', '在数据库系统中，视图可以提供数据的（    ）。', '安全性|完整性|并发性|可恢复性', '1', '4', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('45', '0', '有如下语句：\r\n	Declare @x int\r\n    If @x is null\r\n	   Select ‘A’\r\n    If @x=0\r\n       Select ‘B’\r\nIf @x=’’\r\n       Select ‘C’\r\n查询的结果为（    ）。\r\n', 'A|B|C|有编译错误', '7', '5', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('46', '0', 'SQL Server服务的启动模式默认为（    ）。', '自动|恢复|手动|已禁用', '4', '6', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('47', '0', '在SQL Server中所使用的文件分为三大类，其中不包括哪个选项（    ）。', '逻辑文件|辅助数据文件|日志文件|主数据文件', '8', '7', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('48', '0', '查询course表中的前5行，正确的语法是（    ）。', 'select top 5 * from course|select top(5) from course\r\n|select top 5 from course\r\n|select top(5*) from course\r\n', '9', '8', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('49', '0', '下面哪个选项不是SQL Server支持的存储过程类型（    ）。', '应用存储过程|系统存储过程\r\n|扩展存储过程\r\n|用户存储过程\r\n', '10', '9', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('50', '0', '以下有关TRUNCATE TABLE命令说法正确的是（    ）。', 'TRUNCATE TABLE相当于无条件的DELETE FROM|TRUNCATE TABLE相当于DROP TABLE|TRUNCATE TABLE是删除表数据以及表结构|TRUNCATE TABLE可以有选择性的截断表中的数据', '1', '10', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('51', '0', 'select * from student where sno=’05880101’\r\nunion \r\nselect * from student where sno=’05880102’\r\n与此查询语句等价的选项是（    ）\r\n', 'select * from student where sno=’05880101’ or sno= ’05880102’|select * from student where sno=’05880101’ and sno= ’05880102’|select * from student where sno=’05880101’|select * from student where sno=’05880102’', '2', '1', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('52', '0', '在SQL server中以下哪个命令可以用来对指定数据库进行备份（    ）。', 'BACKUP|REBACK|REVOKE|RESTORE', '4', '2', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('53', '0', '定义一个名为t_cur的游标，一个名为@t_cur的游标类型变量，下列语句正确的是（    ）', 'set @t_cur=t_cur|set t_cur=@t_cur|fetch next from t_cur into @t_cur|select t_cur into @t_cur	', '6', '3', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('54', '0', '定义了一个FORWARD_ONLY类型的游标，以下操作能正确执行的是（    ）', 'fetch next from 游标|fetch first from 游标|fetch prior from 游标|fetch last from 游标', '5', '4', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('55', '0', 'SQL Server有两种身份验证模式（    ）', 'Windows身份验证模式、SQL Server身份验证模式|Windows身份验证模式、sa身份验证模式|SQL Server身份验证模式、sa身份验证模式|以上选项均不正确', '8', '5', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('56', '0', '关于触发器叙述错误的是（    ）', '触发器不可以同步数据库的相关表进行级联更改|触发器是不需要调用的，当触发事件发生时它就会被激活|当触发器的功能与表的约束条件发生冲突时，触发器将被停止|触发器是一类特殊的存储过程', '2', '6', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('57', '0', 'SQL Server是 ghgh基于哪种模型的数据库管理系统（    ）', '关系模型|层次模型|网状模型|面向对象模型', '9', '7', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('58', '0', '在SQL Server数据库中修改表的某一属性数据类型的命令，正确的是（    ）。', 'alter table 表名 alter column 属性 新数据类型|alter table 表名 modify 属性 新数据类型|alter table 表名 modify column属性 新数据类型|alter table 表名 alter 属性 新数据类型', '10', '8', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('59', '0', '为变量赋值的写法，错误的是（    ）。', 'set @a=3,@b=4|select @a=3,@b=4|set @a=3;set @b=4|select @a=3;select @b=4', '10', '9', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('60', '0', '以下哪个选项不是SQL Server支持的用户自定义函数（    ）。', '矢量函数|标量函数|内嵌表值函数|多语句表值函数', '9', '10', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('61', '0', '创建用户自定数据类型，使用哪个系统定义的存储过程（    ）。', 'sp_addtype|sp_type|type|addtype', '7', '1', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('62', '0', '为数据库重命名的语法是（    ）。', 'Alter databse 旧名字 Modify Name=新名字|Alter databse 旧名字 Alter Name=新名字|Alter databse 旧名字 Modify Name 新名字|Rename databse 旧名字 To 新名字', '6', '2', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('63', '0', '下面关于触发器的描述正确的是（    ）。', 'TRUCATE TALBE语句虽然能够删除表记录，但它不会触发DELETE触发器|DML触发器中可以包含CREATE DATABASE、ALTER DATABASE或DROP DATABASE语句|只有执行UPDATA语句时UPDATE()函数的返回值为真|触发器只能作用在表上，不能作用在数据库或服务器上', '2', '3', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('64', '0', '以下关于不相关子查询说法正确的是（    ）。', '子查询只执行一次|不相关子查询的执行顺序是:先执行父查询后执行子查询|子查询不能单独执行，必须依赖于父查询|不相关子查询可以使用谓词EXISTS\r\n', '3', '4', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('65', '0', '关于T-SQL语言中的CASE语句，以下说法正确的是（    ）。', 'case语句中else关键字可以省略|then关键字后面可以使用insert、update和delete语句|then关键字后面可以使用print语句|case关键字后面不能有任何的表达式', '6', '5', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('66', '0', '对于标量函数的调用方法，下面哪一项是正确的（    ）。', 'print \'姓名为:\'ltrim(dbo.getname(\'05880103\'))|exec dbo.getname(\'05880103\')|select getname(\'05880103\')|select * from dbo.getname(\'05880103\')', '4', '6', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('67', '0', '以下关于变量定义，写法正确的是（    ）', 'declare @x int,@y int|declare @x,@y int| declare int @x,@y|declare int @x,int @y', '5', '7', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('68', '0', '以下哪个选项不属于数据库的逻辑对象', '属性|表|存储过程|触发器', '9', '8', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('69', '0', 'SQL Server是基于哪种模型的数据库管理系统', '关系模型|层次模型|网状模型|面向对象模型', '10', '9', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('70', '0', '对SQL Server数据库权限的管理有三种操作，以下哪个是错误的（    ）', 'STOP|REVOKE|GRANT|DENY', '7', '10', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('71', '0', '以下哪种情况，@@fetch_status全局变量的取值为-2（    ）。', '被读取的记录不存在|fetch语句执行成功|fetch语句执行失败|被读取的记录存在', '4', '1', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('72', '0', 'SQL Server使用的图形界面管理工具是（    ）。', 'SQL Server Management Studio|SQL Server Configuration Manager|Analysis Services|Notification Services', '5', '2', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('73', '0', '通过游标对表进行删除或者更新操作时，WHERE CURRENT OF的作用是（    ）。', '允许更新或删除当前游标的记录|为了提交请求|释放游标当前的操作记录|锁定游标当前的操作记录', '6', '3', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('74', '0', '调用标量函数时，至少应使用（    ）和函数名', '数据库架构名|服务器名|数据库名|用户名', '8', '4', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('75', '0', '若表中某个属性的值为NULL，则表示该数据值是', '无任何数据|空字符|空隔|0', '9', '5', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('76', '0', '下列聚合函数用法正确的是（ ）', 'COUNT(*)|SUM(*)|MAX(*)|AVG(*)', '10', '6', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('77', '0', '要删除一个名为A1的存储过程，应用使用命令（    ）。', 'drop procedure A1|delete procedure A1| alter procedure A1|execute C procedure A1', '3', '7', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('78', '0', '关于DDL触发器下面说法错误的是（    ）', 'DDL触发器可以作用在表上|DDL触发器可以作用在数据库上|DDL触发器可以作用在服务器上|DDL触发器的触发事件包含CREATE、ALTER和DROP', '5', '8', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('79', '0', '用于求系统日期的函数是（    ）。', 'GETDATE（）|YEAR（）|COUNT（）|SUM（）', '3', '9', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('80', '0', '关于EXISTS谓词的使用，错误的是（    ）。', 'EXISTS既可以用在相关子查询中，又可以用在不相关子查询中|EXISTS谓词返回的结果为TRUE或FALSE|由EXISTS引出的子查询，select语句后一般不写具体的属性列，而使用*|NOT EXISTS与EXISTS返回的结果相反', '7', '10', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('81', '0', '19世纪初，大肆向中国走私鸦片的国家是', '英国|美国|日本|俄国', '2', '1', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('82', '0', '中国半殖民地半封建社会最主要的矛盾是', '帝国主义与中华民族的矛盾|地主阶级与农民阶级的矛盾|资产阶级与工人阶级的矛盾|封建主义与人民大众的矛盾', '5', '2', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('83', '0', '1860年洗劫和烧毁圆明园的是', '英法联军|日本侵略军|俄国侵略军|八国联军', '1', '3', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('84', '0', '基督教在中国设立的最大出版机构广学会发行的报刊是', '《万国公报》|《中国丛报》|《北华捷报》|《字林西报》', '4', '4', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('85', '0', '旧民主主义革命时期中国反侵略斗争失败的最根本原因是', '社会制度腐败|经济技术落后|思想文化保守|军事装备落后', '4', '5', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('86', '0', '鸦片战争后，提出“师夷长技以制夷”思想的是', '魏源|林则徐|龚自珍|王韬', '6', '6', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('87', '0', '太平天国后期，提出《资政新篇》这一具有资本主义色彩改革方案的是', '洪仁玕|洪秀全|杨秀清|石达开', '2', '7', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('88', '0', '太平天国在1853年冬颁布的纲领性文件是', '《天朝田亩制度》|《十款天条》|《原道醒世训》|《原道觉世训》', '7', '8', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('89', '0', '洋务派创办的第一个规模较大的近代军事工业是', '江南制造总局|马尾船政局|天津机器局|湖北枪炮厂', '8', '9', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('90', '0', '近代中国派遣第一批留学生是在', '洋务运动时期|戊戌维新时期|清末“新政”时期|辛亥革命时期', '4', '10', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('91', '0', '谭嗣同在戊戌维新时期撰写的宣传变法维新主张的著作是', '《仁学》|《新学伪经考》|《变法通义》|《日本变政考》', '8', '1', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('92', '0', '严复将英国人赫胥黎的《进化与伦理》的前两章翻译为', '《天演论》|《穆勒名学》|《原富》|《法意》', '5', '2', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('93', '0', '鲁迅在《新青年》上发表的第一篇白话小说是', '《狂人日记》|《孔乙己》|《药》|《阿Q正传》', '1', '3', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('94', '0', '《共产党宣言》第一个中文全译本的译者是', '陈望道|李大钊|陈独秀|毛泽东', '4', '4', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('95', '0', '1925年国民政府将所辖各部队统一改编为', '国民革命军|国民军|东征军|北伐军', '2', '5', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('96', '0', '1931年日本帝国主义制造了侵略中国的', '九一八事变|一二八事变|七七事变|八一三事变', '7', '6', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('97', '0', '1935年中国共产党北平临时工作委员会领导发动的抗日救亡运动是', '一二•九运动|五卅运动|一二•一运动|一二•三〇运动', '4', '7', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('98', '0', '全国性抗战开始后，中国军队取得第一次重大胜利的战役是', '平型关战役|台儿庄战役|昆仑关战役|百团大战', '6', '8', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('99', '0', '中国共产党制定《抗日救国十大纲领》的重要会议是', '洛川会议|瓦窑堡会议|中共六届六中全会|中共六届七中全会', '2', '9', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('100', '0', '1945年8月，毛泽东发表的号召对日本侵略者实行全国规模反攻的文章是', '《对日寇的最后一战》|《为抗日救国告全国同胞书》|《关于目前形势与党的任务的决定》|《论持久战》', '10', '10', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('101', '0', '中国西藏和平解放的时间是', '1951年10月|1948年10月|1949年10月|1950年10月', '9', '1', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('102', '0', '1951年底到1952年春，中国共产党在党政机关中开展的“三反”运动是', '反贪污、反浪费、反官僚主义|反主观主义、反宗派主义、反党八股|反受贿、反贪污、反自由主义|反浪费、反行贿、反形式主义', '7', '2', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('103', '0', '中国进入新民主主义社会后，经济上处于领导地位的是', '国营经济|私人资本主义经济|国家资本主义经济|合作社经济', '6', '3', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('104', '0', '中国共产党在过渡时期总路线的主体是实现', '国家的社会主义工业化|对个体农业的社会主义改造|对个体手工业的社会主义改造|对资本主义工商业的社会主义改造', '5', '4', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('105', '0', '在农业合作化过程中，具有半社会主义性质的农业合作组织是', '初级农业生产合作社|互助组|高级农业生产合作社|人民公社', '8', '5', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('106', '0', '我国进入社会主义社会的最主要标志是', '社会主义改造的完成|中华人民共和国的成立|发展国民经济第一个五年计划的制定|第一届全国人民代表大会的召开', '9', '6', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('107', '0', '将社会主义初级阶段基本路线概括为“一个中心，两个基本点”的会议是', '中共十三大|中共十二大|中共十五大|中共十六大', '5', '7', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('108', '0', '1992年召开的中共十四大明确提出，我国经济体制改革的目标是建立', '社会主义市场经济体制|社会主义有计划商品经济体制|计划为主、市场为辅的经济体制|市场为主、计划为辅的经济体制', '4', '8', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('109', '0', '正式提出以人为本、全面协调可持续的科学发展观的会议是', '中共十六届三中全会|中共十五届五中全会|中共十五届六中全会|中共十六届四中全会', '2', '9', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('110', '0', '中国的社会生产力在改革开放后迅速发展，到2006年经济总量已居世界', '第四位|第二位|第三位|第五位', '3', '10', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('111', '0', '洪秀全在广西发动金田起义的时间是', '1851年|1853年|1856年|1864年', '5', '1', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('112', '0', '中国近代史上第一个具有资本主义色彩的改革方案是', '《资政新篇》|《海国图志》|《救亡决论》|《天朝天田制度》', '5', '2', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('113', '0', '19世纪60年代，清朝统治集团中倡导洋务的首领人物是', '奕诉|桂良|曾国藩|李鸿章', '5', '3', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('114', '0', '19世纪60年代到90年代，洋务派兴办洋务事业的指导思想是', '中学为体，西学为用|师夷长技以制夷|物竞天择，适者生存|变法维新，救亡图存', '8', '4', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('115', '0', '1894年，孙中山在檀香山建立的资产阶级革命组织是', '兴中会|华兴会|光复会|岳王会', '7', '5', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('116', '0', '1905年，中国同盟会成立后的机关报是', '《民报》|《时务报》|《国闻报》|《新民丛报》', '8', '6', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('117', '0', '1911年夏，湖北、湖南、广东和四川爆发的民众运动是', '保路运动|拒俄运动|拒法运动|立宪运动', '9', '7', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('118', '0', '1911年10月，资产阶级革命派发动了将辛亥革命推向高潮的', '武昌起义|惠州起义|河口起义|广州起义', '5', '8', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('119', '0', '1920年，陈独秀等建立的中国共产党早期组织是', '上海共产主义小组|北京共产主义小组|武汉共产主义小组|广州共产主义小组', '10', '9', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('120', '0', '中国共产党第一次明确提出反帝反封建民主革命纲领的会议是', '中共二大|中共一大|中共三大|中共四大', '5', '10', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('121', '0', '第一次国共合作的政治基础是', '新三民主义|三民主义|新民主主义|社会主义', '1', '1', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('122', '0', '1927年，汪精卫在武汉制造了屠杀共产党人和革命群众的', '七一五事变|中山舰事件|整理党务案事件|四一二事变', '3', '2', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('123', '0', '中国共产党独立领导革命战争和创建人民军队的开端是', '南昌起义|秋收起义|平江起义|百色起义', '4', '3', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('124', '0', '1927年，中共八七会议确定的总方针是', '开展土地革命和武装斗争|推翻北洋军阀黑暗统治|开辟农村革命根据地|建立工农民主统一战线', '1', '4', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('125', '0', '1930年1月，毛泽东论述中国革命“以乡村为中心”思想的著作是', '《星星之火，可以燎原》|《井冈山的斗争》|《反对本本主义》|《中国革命和中国共产党》', '7', '5', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('126', '0', '1930年到1931年，在红一方面军三次反“围剿”斗争胜利的基础上形成了', '中央革命根据地|鄂豫皖革命根据地|左右江革命根据地|湘鄂西革命根据地', '4', '6', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('127', '0', '抗日战争进入相持阶段后，日本帝国主义对国民党政府采取的政策是', '以政治诱降为主，军事打击为辅|以军事打击为主，政治诱降为辅|军事打击和政治诱降并重|速战速决，武力征服', '8', '7', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('128', '0', '中国共产党制定《抗日救国十大纲领》的重要会议是', '洛川会议|瓦窑堡会议|中共六届六中全会|中共六届七中全会', '9', '8', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('129', '0', '1947年10月10日，《中国人民解放军总部宣言》正式提出的口号是', '打倒蒋介石，解放全中国|向北发展，向南防御|和平、民主、团结|将革命进行到底', '10', '9', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('130', '0', '1946年，中共决定将减租减息政策改为实现“耕者有其田”政策的文件是', '《关于清算、减租及土地问题的指示》|《井冈山土地法》|《兴国土地法》|《中国土地法大纲》', '1', '10', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('131', '0', '1949年6月，毛泽东发表的系统论述中国共产党建国主张的著作是', '《论人民民主专政》|《新民主主义论》|《目前形势和我们的任务》|《论联合政府》', '2', '1', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('132', '0', '1948年秋，中国人民解放军进行战略决战的第一个战役是', '辽沈战役|淮海战役|平津战役|渡江战役', '4', '2', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('133', '0', '1950年6月，中共七届三中全会确定的中心任务是', '争取国家财政经济状况的基本好转|迅速消灭国民党残余势力|完成新解放区土地改革|统一全国财政经济工作', '6', '3', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('134', '0', '新中国成立后，社会主义国营经济建立的主要途径是', '没收官僚资本|没收帝国主义在华企业|没收民族资本|没收地主阶级的土地和财产', '5', '4', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('135', '0', '1951年底到1952年春，中国共产党在党政机关中开展的“三反”运动是', '反贪污、反浪费、反官僚主义|反主观主义、反宗派主义、反党八股|反贪污、反受贿、反自由主义|反浪费、反行贿、反形式主义', '8', '5', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('136', '0', '我国进入社会主义社会的最主要标志是', '社会主义改造的基本完成|中华人民共和国的成立|发展国民经济第一个五年计划的制定|第一届全国人民代表大会的召开', '2', '6', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('137', '0', '毛泽东《论十大关系》报告所围绕的基本方针是', '调动一切积极因素，为社会主义事业服务|独立自主，艰苦创业|自力更生为主，争取外援为辅|走中国特色社会主义道路', '9', '7', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('138', '0', '1956年，在中共八大上提出“三个主体，三个补充”思想的是', '陈云|毛泽东|周恩来|邓小平', '10', '8', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('139', '0', '新中国第一颗原子弹试验成功是在', '1964年10月|1966年10月|1967年6月|1970年4月', '10', '9', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('140', '0', '新中国恢复在联合国合法席位的时间是', '1971年|1949年|1966年|1978', '9', '10', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('141', '0', '鸦片战争前中国封建社会的主要', '地主阶级和农民阶级的矛盾|帝国主义和中华民族的矛盾|资产阶级和工人阶级的矛盾|封建主义和资本主义的矛盾', '7', '1', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('142', '0', '中国封建社会产生过诸多“盛世”，出现在清代的是', '康乾盛世|文景之治|贞观之治|开元之治', '6', '2', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('143', '0', '将中国领土台湾割让给日本的不平等条约是', '《马关条约》|《南京条约》|《北京条约》|《瑗珲条约》', '2', '3', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('144', '0', '西方列强对中国的侵略，首先和主要的是', '经济掠夺|政治控制|.军事侵略|文化渗透', '3', '4', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('145', '0', '1839年组织编写成《四洲志》，向中国人介绍西方情况的是', '林则徐|魏源|马建忠|郑观应', '6', '5', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('146', '0', '19世纪末，在帝国主义列强瓜分中国的狂潮中提出“门户开放”政策的国家是', '美国|俄国|日本|德国', '4', '6', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('147', '0', '太平天国农民起义爆发的时间是', '1851年|1853年|1856年|1864年', '5', '7', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('148', '0', '太平天国由盛而衰的转折点是', '天京事变|永安建制|北伐失利|洪秀全病逝', '9', '8', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('149', '0', '最早对兴办洋务的指导思想作出完整表述的人是', '冯桂芬|马建忠|王韬|郑观应', '10', '9', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('150', '0', '洋务运动时期最早创办的翻译学堂是', '同文馆|广方言馆|译书局|译书馆', '7', '10', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('151', '0', '1898年发表《劝学篇》一文，对抗维新变法的洋务派官僚是', '张之洞|李鸿章|左宗棠|刘坤一', '4', '1', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('152', '0', '戊戌维新时期，维新派在上海创办的影响较大的报刊是', '《时务报》|《国闻报》|《湘报》|《万国公报》', '5', '2', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('153', '0', '中国第一个资产阶级革命政党是', '中国同盟会|兴中会|中华革命党|中国国民党', '6', '3', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('154', '0', '武昌起义前夕，在保路运动中规模最大、斗争最激烈的省份是', '四川|湖南|湖北|广东', '8', '4', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('155', '0', '中国历史上第一部具有资产阶级共和国宪法性质的法典是', '《中华民国临时约法》|《中华民国宪法》|《钦定宪法大纲》|《中华民国约法》', '9', '5', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('156', '0', '为反对袁世凯刺杀宋教仁和“善后大借款”，孙中山在1913年领导革命党人发动了', '二次革命|护国战争|护法战争|北伐战争', '10', '6', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('157', '0', '1930年成立的中国国民党临时行动委员会（又称第三党），其主要领导人是', '邓演达|梁漱溟|黄炎培|张君劢', '3', '7', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('158', '0', '1930年1月，毛泽东进一步从理论上阐述农村包围城市、武装夺取政权理论的文章是', '《星星之火，可以燎原》|《中国的红色政权为什么能够存在?》|《井冈山的斗争》|《中国革命战争的战略问题》', '5', '8', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('159', '0', '1928年l2月，毛泽东主持制定的中国共产党历史上第一个土地法是', '《井冈山土地法》|《兴国土地法》|《关于清算、减租及土地问题的指示》|《中国土地法大纲》', '3', '9', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('160', '0', '国民党四大家族官僚资本的性质是', '封建的买办的国家垄断资本主义|私人垄断资本主义|私人资本主义|国家资本主义', '7', '10', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('161', '1', 'SQL Sever数据库分为系统数据库和_______________两类。', '用户数据库', '6', '1', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('162', '1', 'SQL Sever系统数据库包括master、model、tempdb、msdb和resource，最重要的是___________。', 'master', '3', '2', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('163', '1', '创建数据库时创建文件组使用的T-SQL语句是CREATE DATABASE 。已创建数据库时创建文件组使用的T-SQL语句是__________________________。', 'ALTER  DATABASE', '5', '3', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('164', '1', '文件组是数据库中数据文件的____________。', '逻辑组合', '1', '4', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('165', '1', 'SQL Sever数据库的文件包括主要数据文件、次要数据文件和____________3类。', '事务日志', '5', '5', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('166', '1', '________的含义是值未知。', 'NULL', '3', '6', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('167', '1', '数据完整性是指保证数据库的表中各字段数据完整而且合理，分为实体完整性、域完整性和_________________。', '引用完整性', '4', '7', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('168', '1', '实现实体完整性是指PRIMARY KEY约束和____________约束。', 'UNIQUE', '6', '8', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('169', '1', '实现域完整性的是CHECK约束和_______________。', 'DEFAULT定义', '8', '9', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('170', '1', '实现引用完整性的是___________________约束。', 'FOREIGN KEY', '9', '10', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('171', '1', '修改表中记录的操作包括插入、_________和删除。', '更新', '10', '1', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('172', '1', '清空表中的记录，可以使用语句______________TABLE ，也可以使用语句TRUNCATE TABLE，其中TRUNCATE TABLE速度更快，并且使用更少的系统资源和事务日志资源。', 'DELETE', '4', '2', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('173', '1', '多表连接的种类包括内连接、外连接、______________和自连接。', '交叉连接', '2', '3', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('174', '1', '关键字ANY的作用是___________________。', '集合中任意值', '2', '4', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('175', '1', '关键字ALL的作用是___________________。', '集合中所有值', '5', '5', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('176', '1', '关键字EXISTS的作用是判断____________是否有记录。', '结果集合', '10', '6', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('177', '1', '关键字UNION的作用________是多个结果集。', '合并', '6', '7', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('178', '1', 'SQL Sever中的标识符有两类，分别是常规标识符和_______________。', '分隔标识符', '4', '8', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('179', '1', 'BREAK语句的作用是______________，CONTINUE语句的作用是中止本轮循环。', '中止循环', '7', '9', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('180', '1', '事务是SQL Sever单个逻辑工作单元。事务有4个属性，包括__________、一致性、隔离性和持久性。事务分成3类：显示事务、自动提交事务和隐式事务。', '原子性', '8', '10', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('181', '1', 'SQL  Sever将_______命令作为结束批处理的标志。', 'GO', '2', '1', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('182', '1', '数据库是一个长期存储在计算机内的、有组织的、可共享的、统一管理的数据集合。数据库中的数据是按照一定的数据模型组织、描述和存储的，有较小的冗余度，较高的______________和易扩展性。', '数据独立性', '4', '2', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('183', '1', '数据库管理系统是使用和管理数据库的____________，负责对数据库进行统一的管理和控制。', '系统软件', '4', '3', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('184', '1', '数据库管理员是专门负责______________数据库服务器的人。', '管理和维护', '6', '4', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('185', '1', '数据库的发展大致划分为以下几个阶段：________________、文件系统阶段和数据库系统阶段。', '人工管理阶段', '8', '5', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('186', '1', '数据库系统通常采用3级模式结构，即数据库系统由外模式、_______和内模式3级组成。', '模式', '4', '6', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('187', '1', '数据库设计实施整个过程包括需求分析、概念模型设计、_______________、物理模型设计、数据库实施运行和维护5个阶段。', '逻辑模型设计', '4', '7', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('188', '1', '实体-联系模型属于概念模型，实体-联系模型是用_______图来描述现实世界的概念模型。', 'E-R', '3', '8', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('189', '1', '辑模型通常由数据结构、_____________和完整性约束。', '数据操作', '1', '9', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('190', '1', '关系模型完整性分成三类，是实体完整性、_____________和用户自定义完整性。', '参照完整性', '5', '10', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('191', '1', '视图是一个__________，除索引视图意外，视图在数据库中仅保存其定义，其中的记录在使用视图时动态生成', '虚拟表', '6', '1', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('192', '1', '创建视图使用的T-SQL语句是CREATE VIEW。修改视图使用的T-SQL语句是__________________。删除视图使用的T-SQL语句是DROP VIEW。', 'ALTER VIEW', '3', '2', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('193', '1', 'SQL Sever数据库的索引分为聚集索引和________________两类。', '非聚集索引', '2', '3', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('194', '1', '带有聚集索引的表中，记录根据聚集索引的________排列顺序存储在物理介质上，因此一个表最多只能有一个聚集索引。', '键值', '8', '4', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('195', '1', '创建索引使用的T –SQL语句是______________.修改索引使用的T-SQL语句是ALTER INDEX。删除索引使用的T-SQL语句是DROP INDEX。', 'CREATE INDEX', '9', '5', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('196', '1', '用户自定义函数分为标量值函数、_____________函数和多语句表值函数3种。', '内联表值', '4', '6', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('197', '1', '创建用户自定义函数使用T-SQL语句是____________________________。', 'CREATE FUNCTION', '5', '7', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('198', '1', '调用标量值函数可以使用两种方法，分别是SELECT语句和__________语句。', 'EXEC', '2', '8', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('199', '1', '调用内联表值函数和多语句表值函数只能使用____________语句。', 'SELECT', '5', '9', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('200', '1', '存储过程分为系统存储过程、_________________和用户存储过程3种。', '扩展存储过程', '7', '10', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('201', '1', '创建存储过程使用的T-SQL语句是__________________________。', 'CREATE PROCEDURE', '8', '1', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('202', '1', '创建存储过程时，参数的默认值必须是常量或_________。', 'NULL', '4', '2', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('203', '1', '在查询编辑器中执行存储过程使用_______________语句。', 'EXECUTE', '8', '3', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('204', '1', '在SQL Server2008中，系统存储过程的名称是以________为前缀的。', 'sp_', '10', '4', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('205', '1', '按照触发器事件的不同，触发器可以分为DML触发器和________触发器两种。', 'DDL', '9', '5', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('206', '1', '替代触发器需要使用____________________关键字说明。', 'INSTEAD OF', '4', '6', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('207', '1', 'SQL Server 2008中的身份验证有Windows身份验证和____________________两种。', '混合身份验证', '5', '7', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('208', '1', '撤销权限的T-SQL命令是_____________。', 'REVOKE', '7', '8', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('209', '1', '授权的T-SQL命令是_____________。', 'GRANT', '2', '9', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('210', '1', '为一个用户指派角色时需要使用_______________________存储过程。', 'sp_addrolemember', '2', '10', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('211', '1', '在SQL Server系统中，数据库备份的类型有完整数据库备份、差异备份、______________________和文件或文件组设备。', '数据库和事务日志备份', '4', '1', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('212', '1', '创建数据库备份的T-SQL命令是______________。', 'BACKUP', '1', '2', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('213', '1', '还原数据库备份的T-SQL命令是________________。', 'RESTORE', '3', '3', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('214', '1', '创建备份设备的存储过程是________________________。', 'sp_addumpdevice', '10', '4', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('215', '1', '只记录自上次数据库备份后发生更改的数据的设备称为_________设备。', '差异', '3', '5', '2', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('216', '1', '近代中国向资本--帝国主义列强赔款最多的不平等条约是', '《辛丑条约》', '6', '1', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('217', '1', '担任中国海关总税务司，掌握中国海关大权达40年之久的外国人是', '赫德', '3', '2', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('218', '1', '资本—帝国主义列强不能灭亡和瓜分近代中国的最根本原因是', '中国人不屈不挠的反侵略斗争', '5', '3', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('219', '1', '太平天国农民战争由兴盛走向衰败的转折点是', '天京事变', '1', '4', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('220', '1', '洋务派所标榜的目标是', '“自强”、“求富”', '5', '5', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('221', '1', '兴办洋务事业的指导思想是', '“中学为体，西学为用”', '3', '6', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('222', '1', '戊戌维新运动兴起的社会物质条件是', '中国民族资本主义的初步发展', '4', '7', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('223', '1', '三民主义中民权主义的内容是', '创立民国', '6', '8', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('224', '1', '民生主义的内容是', '平均地权', '8', '9', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('225', '1', '民族主义的内容是', '驱除鞑虏，恢复中华', '9', '10', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('226', '1', '资产阶级革命派和改良派论战的焦点是', '要不要以革命的手段推翻清政府', '10', '1', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('227', '1', '窃夺辛亥革命胜利果实的北洋军阀头领是', '袁世凯', '4', '2', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('228', '1', '五四运动的直接导火线是', '巴黎和会上中国外交的失败', '2', '3', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('229', '1', '国最早接受、宣传马克思主义的先进分子中发表《马克思主义》一文的是', '杨匏安', '2', '4', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('230', '1', '1925年5月，上海工人反日大罢工中被日本资本家枪杀的共产党员是', '顾正红', '5', '5', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('231', '1', '蒋介石反动政权的经济基础是', '国家垄断资本主义', '10', '6', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('232', '1', '由大革命失败到土地革命战争兴起的历史转折点是', '八七会议', '6', '7', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('233', '1', '中国革命的特点和优点是', '武装的革命反对武装的反革命', '4', '8', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('234', '1', '936年5月，放弃“反蒋抗日”口号，第一次公开把蒋介石作为联合的对象的标志是', '《停战议和一致抗日通电》', '7', '9', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('235', '1', '全国性抗战开始后中国军队取得第一次重大胜利，粉碎了日军不可战胜的神话的战役是', '平型关大捷', '8', '10', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('236', '1', '将毛泽东思想规定为党的一切工作的指针的会议是', '中共七大', '2', '1', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('237', '1', '毛泽东指出：“人民解放军转入全面反攻，这是一个历史的转折点，这是蒋介石二十年反革命统治由发展到消灭的转折点，这是一百多年来帝国主义在中国统治由发展到消灭的转折点。”提出这一观点的文献是', '《目前形势和我们的任务》', '4', '2', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('238', '1', '人民解放军战略决战的三大战役，开始最早的是', '辽沈战役', '4', '3', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('239', '1', '表明中国各民主党派和无党派人士自愿地接受中国共产党的领导，决心走人民革命的道路，拥护建立人民民主的新中国的文献是', '《对时局的意见》', '6', '4', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('240', '1', '新中国成立初期，除了人民解放军在前线的胜利之外，中央人民政府为人民所作的最大一件工作是', '稳定物价和统一财政工作', '8', '5', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('241', '1', '1952年10月，新中国成立后主持召开的第一次大型国际会议是', '亚洲太平洋地区和平会议', '4', '6', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('242', '1', '在农业合作化运动中，具有社会主义性质的经济组织形式是', '高级农业生产合作社', '4', '7', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('243', '1', '毛泽东在《关于正确处理人民内部矛盾的问题》中认为中国工人阶级同民族资产阶级的矛盾属于', '人民内部矛盾', '3', '8', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('244', '1', '1958年兴起的人民公社的基本特点是', '一大二公', '1', '9', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('245', '1', '\r1965年1月，错误的提出运动“整党内那些走资本主义道路的当权派”观点的文件是', '《农村社会主义教育运动中目前提出的一些问题》', '5', '10', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('246', '1', '中共十三大最主要的贡献是', '比较系统地阐述了社会主义初级阶级理论', '6', '1', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('247', '1', '提出“八个坚持、八个反对”要求，把党的作风建设提高到一个新的水平的文献是', '《关于加强党的作风建设的决定》', '3', '2', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('248', '1', '鸦片战争前中国封建社会的基本生产结构是小农经济,其主要特征', '个体家庭为单位并与家庭手工业结合的自给自足的自然经济', '2', '3', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('249', '1', '割去中国西北44万多平方公里领土的不平等条约是', '《中俄勘分西北界约记》', '8', '4', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('250', '1', '19世纪下半叶到20世纪初,长期担任中国海关总税务司,掌握中国海关大权达40余年之久的外国人是', '赫德', '9', '5', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('251', '1', '天京被湘军攻破,太平天国农民战争失败是在', '1864年', '4', '6', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('252', '1', '甲午战争后,维新救亡运动逐步兴起,为宣传变法维新主张,维新派创办学会、报纸,开设学堂,其中在天津创办的影响较大的报刊是', '《国闻报》', '5', '7', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('253', '1', '1911年5月,清政府成立责任内阁,这个内阁被讥为', '皇族内阁', '2', '8', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('254', '1', '蔡元培担任会长的资产阶级革命团体是', '光复会', '5', '9', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('255', '1', '1917年6月,率领\"辫子军\"北上,拥清废帝溥仪复辟的前清官僚是', '张勋', '7', '10', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('256', '1', '由李中在1920年11月主持建立的共产党早期组织领导的第一个产业工会是', '上海机器工会', '8', '1', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('257', '1', '在中共第一次全国代表大会上,选举陈独秀为', '中央局书记', '4', '2', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('258', '1', '中共四大的中心议题是', '讨论党如何领导即将到来的革命高潮', '8', '3', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('259', '1', '以王明为代表的\"左\"倾教条主义在党内斗争和组织问题上推行的方针是', '\"残酷斗争、无情打击”', '10', '4', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('260', '1', '遵义会议后接替博古担任中共中央总负责人的是', '张闻天', '9', '5', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('261', '1', '1935年6月,中国工农红军第一、四方面军会师于', '四川懋功地区', '4', '6', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('262', '1', '\"一二·九\"运动爆发的导火线是', '日本制造华北\"自治\"运动,加紧侵略华北', '5', '7', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('263', '1', '在敌后战场抗日斗争中为国捐躯的八路军副参谋长是', '左权', '7', '8', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('264', '1', '抗日民族统一战线策略总方针的中心环节是', '发展进步势力', '2', '9', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('265', '1', '中国共产党明确提出\"和平民主团结\"口号的文献是', '《对目前时局的宣言》', '2', '10', '2', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('266', '0', 'Stop making so much noise ____ the neighbor will start complaining.', 'or else|but still|and then|so that', '2', '1', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('267', '0', 'We hope to go to the beach tomorrow, but we won’t go ____ it’s raining.', 'if|when|though|because', '5', '2', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('268', '0', 'He is only too ready to help others, seldom, ____, refusing them when they turn to him.', 'if ever|if never|if not|if any', '1', '3', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('269', '0', 'I’d like to live somewhere ____ the sun shines all year long.', 'Where|which|that|in which', '4', '4', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('270', '0', 'I ____ to go for a walk, but someone called and I couldn’t get away.', 'had planned|was planning|planned|would plan', '4', '5', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('271', '0', 'Now that we ____ all the money, it’s no use turning on me and saying it’s all my fault.', 'have lost|had lost|lost|lose', '6', '6', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('272', '0', 'We had a really bad time about six months ago but now things are ____.', 'looking up|coming up|making up|turning up', '2', '7', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('273', '0', '——When did it begin to snow?\r\n    ——It started ____ the night.\r\n', 'during|by|from|at', '7', '8', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('274', '0', '____ from endless homework on weekends, the students now find their own activities, such as taking a ride together to watch the sunwise.', 'Freed|Freeing|To free|Having freed', '8', '9', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('275', '0', '——Do you mind if I smoke?\r\n    ——____\r\n', 'Go ahead|Why not?|Yes, help yourself|Yes, but you’d better not', '4', '10', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('276', '0', '____ the temperature might drop, coal was prepared for warming.', 'Considering|To consider|Considered|To be considered', '8', '1', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('277', '0', 'The engineers made two big plans for the dam, ____ was never put in force.', 'one of which|one of them|which|every one of which', '5', '2', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('278', '0', 'I have no one ____ me, for I am a new comer here.', 'to help|help|helping|to have helped', '1', '3', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('279', '0', 'The little girl couldn’t work the problem out. She wasn’t ____ clever.', 'that|much|enough|too', '4', '4', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('280', '0', 'Listen! His family must be quarrelling, ____?', 'aren’t they|mustn’t it|isn’t it|needn’t they', '2', '5', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('281', '0', 'Jack felt unhappy as they all went outing ____ him.', 'without|except|but|besides', '7', '6', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('282', '0', 'That she hadn’t kept her ____ on her work resulted in the failure.', 'mind|head|heart|brain', '4', '7', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('283', '0', 'The students spent as much time getting trained as they ____ studying.', 'did|disliked|were|had', '6', '8', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('284', '0', 'It was believed that things would get worse, but ____ it is they are getting better.', 'as|before|after|because', '2', '9', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('285', '0', 'As time went by, the plan stuck ____ fairly practical.', 'to proved|to proving|、proved|to be proved', '10', '10', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('286', '0', 'More than one ____ the people heart and soul.', 'official has served|officials have served|official has served for|officials have served for', '9', '1', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('287', '0', 'Though I ____ to go abroad, I changed my mind and decided to stay with my family.', 'had wanted|wanted|would want|did want', '7', '2', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('288', '0', 'My brother is very tall. The little bed won’t ____ for him.', 'do|prepare|match|fit', '6', '3', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('289', '0', 'Scientists say they have found a way to produce the human body’s own cancer-killing cells through gene treatment, ____ new hope to cancer sufferers.', 'offering|showing|taking|making', '5', '4', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('290', '0', 'We are going to discuss the way of reading works ____ it is used for real life purposes, and this should give you a better understanding of it.', 'when|that|which|where', '8', '5', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('291', '0', 'We should know that we can only reach the top if we are ready to ____ and learn from failure.', 'deal with|depend on|carry on|go with', '9', '6', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('292', '0', 'A terrible earthquake happened in that district at the end of 2004, ____ many countries in the world paid close attention to this.', 'when|what|where|which', '5', '7', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('293', '0', '——How do you think I should receive the reporter?\r\n    ——____ you feel about him, try to be polite.\r\n', 'However|Whatever|What|When', '4', '8', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('294', '0', 'As we have much time left, let’s discuss the matter ____ tea and cake.', 'over|with|by|at', '2', '9', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('295', '0', 'Mr Black must be worried about something. You can ____ it from the look on his face.', 'read|realize|reason|recognize', '3', '10', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('296', '0', 'If you win the competition, you will be given ____ to Europe for two.', 'a free 7-day trip|a free trip for 7-day|a 7-day free trip|a trip for 7-day fre', '5', '1', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('297', '0', 'If you live in the country or have ever visited there, ____ are that you have heard birds singing to welcome the new day.', 'dances|sings|fact|reals', '5', '2', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('298', '0', 'I ____ you, but I didn’t think you would listen to me.', 'could have told|must have told|should tell|might rell', '5', '3', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('299', '0', 'This problem may lead to more serious ones if ____ unsolved.', 'left|right|making|reminding', '8', '4', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('300', '0', 'I have no dreams ____ to have a happy life.', 'other than|rather than|more than|less than', '7', '5', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('301', '0', '$100 a month could hardly ____ the cost of his life in such a big city in this country.', 'cover|spend|afford|meet', '8', '6', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('302', '0', 'Working in the kitchen for years made Tom ____ a good cook.', 'into|for|with|as', '9', '7', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('303', '0', 'She was such a proud person that she would die ____ she would admit she was wrong.', 'before|rather than|until|after', '5', '8', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('304', '0', '——Are you through with your homework?\r\n    ——Well, ____.\r\n', 'sort of|go ahead|why not|that’s OK', '10', '9', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('305', '0', 'My mother is always warning me when I go out, “Don’t get off the bus ____ it is stopping.”', 'while|until|when|that', '5', '10', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('306', '0', 'The dance performed by the disabled actors is really a hit, but years ago no one ____ they were to achieve such great success.', 'could have imagined|must have imagined|would have imagined|vshould have imagined', '1', '1', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('307', '0', 'The young lady prefers dressing up for a party to ____ by others.', 'be noticed|being noticed|having been noticed|have been noticed', '3', '2', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('308', '0', 'Before the war broke out, many people ____  possessions they could not take with them.', 'put away|gave away|carried away|threw away', '4', '3', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('309', '0', '____ children tend to prefer sweets to meat.', 'Most|The most|Most of|The most of the', '1', '4', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('310', '0', 'In 1927 Benjamin Franklin founded one of the first adult-education organizations,  ____ the Junto.', 'a group called|to call|has been called|which group called', '7', '5', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('311', '0', 'The car ____ at the present speed until it reaches the foot of the mountain at about nine o’clock tonight.', 'will be going|went|is going|goes', '4', '6', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('312', '0', 'The number 9.11 is a special number, ____, I think, that will be remembered by the Americans forever.', 'one|which|it|what', '8', '7', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('313', '0', 'Will you see to ____ that my birds are looked after well while I’m away?', 'it|me|yourself|them', '9', '8', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('314', '0', 'Many teens don’t get enough sleep because they have too much homework, which ____ them up at night.', 'keeps|makes|breaks|turns', '10', '9', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('315', '0', '——Ms Lin looks rather a kind lady.\r\n    ——But in fact she is cold and hard on us. You ____ believe it!\r\n', 'wouldn’t|shouldn’t|mustn’t|needn’t', '1', '10', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('316', '0', 'The program is like a window on the world ____ you sit by it and fix your attention on what it shows.', 'if|as|while|unless', '2', '1', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('317', '0', 'In fact, more and more people ____ to live a greener, healthier and more environmentally “green life”.', 'are choosing|have chosen|chose|choose', '4', '2', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('318', '0', 'The professor walked onto the platform and seated himself in a chair, ____ for answering questions.', 'or else|but still|and then|so that', '6', '3', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('319', '0', 'In Scandinavian countries it is common ____ for the husband to stay at home to look after the baby.', 'if|when|though|because', '5', '4', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('320', '0', '____ abroad for a tour can be a great honor for an ordinary person like me.', 'if ever|if never|if not|if any', '8', '5', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('321', '0', 'I spent the whole day repairing the motorbike. The work was ____ simple.', 'Where|which|that|in which', '2', '6', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('322', '0', 'To get as much firsthand information as possible, inspectors will hold workshops and distribute questionnaires, ____?', 'had planned|was planning|planned|would plan', '9', '7', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('323', '0', 'It’s a bad practice to ____ children much money as a New Year gift.', 'have lost|had lost|lost|lose', '10', '8', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('324', '0', 'By the time you arrive home, I ____, so please don’t make any noise when you come in.', 'looking up|coming up|making up|turning up', '10', '9', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('325', '0', 'If you don’t keep the meat in the refrigerator on such a hot day, it may ____.', 'during|by|from|at', '9', '10', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('326', '0', 'His letter was especially welcome as I ____ from him for long.', 'Freed|Freeing|To free|Having freed', '2', '1', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('327', '0', 'There aren’t many seats left for the concert; you had better make sure ____ two today.', 'Go ahead|Why not?|Yes, help yourself|Yes, but you’d better not', '5', '2', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('328', '0', '____ friend of my grandfather’s will come tomorrow. I’m wondering how old ____ man he might be.', 'Considering|To consider|Considered|To be considered', '1', '3', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('329', '0', 'The Cleveland Cavaliers ____ the Los Angeles Lakers 108-89 in the NBA on Sunday.', 'mind|head|heart|brain', '4', '4', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('330', '0', 'To read Tolstoy and ____ to the nineteenth century Russian literature are two excellent reasons for taking Professor Morrel’s course.', 'did|disliked|were|had', '4', '5', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('331', '0', 'You’d better not wear such ties, because they ____ three years ago.', 'as|before|after|because', '6', '6', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('332', '0', 'He ____ writing the paper now. He hadn’t written a single word when I left him ten minutes ago.', 'to proved|to proving|、proved|to be proved', '2', '7', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('333', '0', 'She felt sorry that she had disturbed the ____ calmness of a man she respected.', 'official has served|officials have served|official has served for|officials have served for', '7', '8', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('334', '0', 'I haven’t read ____ of his books, but judging from the one I have read I think he’s a very promising writer.', 'had wanted|wanted|would want|did want', '8', '9', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('335', '0', 'Women have ____ equal say in affairs at home.', 'do|prepare|match|fit', '4', '10', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('336', '0', 'Parents are advised to take pressure ____ a child and give him some encouragement before an exam.', 'offering|showing|taking|making', '8', '1', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('337', '0', 'The generous donation from China to the sufferers in the killing Indian Ocean Quake-tsunami has ____ the Chinese people’s unselfishness and internationalism.', 'when|that|which|where', '5', '2', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('338', '0', 'My command of English is not ____ yours.', 'deal with|depend on|carry on|go with', '1', '3', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('339', '0', 'I know the man by ____ but I have never spoken to him.', 'when|what|where|which', '4', '4', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('340', '0', '____ nearly all behavior is learned behavior is a basic assumption of social scientists.', 'That|/|It is acceptable|When', '2', '5', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('341', '2', '为什么说鸦片战争是中国近代史的开端？', '1840年的鸦片战争，是中国由封建社会逐渐沦为半殖民地半封建社会的一个历史转折点。它使中国社会性质开始发生根本的变化。\r\n鸦片战争前，中国在政治上是一个独立自立统一的国家；战后，中国的领土开始被割裂，主动的不完整遭到破坏，中国已经丧失独立自立的地位。\r\n鸦片战争前，中国在经济上是自给自足的自然经济占统治地位的国家；战后，西方资本主义国家不断向中国倾销商品，掠夺原料，逐渐破坏了中国自给自足的自然经济的基础，中国逐渐被纳入世界殖民主义体系，日益成为世界资本主义的附庸。\r\n', '1', '1', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('342', '2', '鸦片战争失败的原因是什么？', '鸦片战争对中国来说，是一场正义的民族自卫战争。战争在中国领土上进行，中国本来具有许多击败侵略者的有利条件，但最后却失败了，主要原因是|\r\n第一，在于清朝政治的腐败。道光帝本人就战和不定，不战有失体统，战争失利又怕引起国内矛盾加剧。\r\n第二，没有发动群众，依靠群众，反而打击压制群众的爱国激情。\r\n第三，军队素质差和战略失误。\r\n', '2', '2', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('343', '2', '说明《南京条约》及其附件的主要内容，有何危害？', '1842年8月，在英国侵略者的军事压力下，清朝最高统治集团向侵略者屈膝投降。8月29日，在南京下关江面英舰上，清政府代表耆英、伊里布，与英国代表璞鼎查签订了中国近代史上第一个不平等条约——中英《南京条约》。', '3', '3', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('344', '2', '试述洪秀全革命思想的形成过程。', '洪秀全（1814—1864年），广东花县人，出身农民家庭，自幼读书，16岁时因家贫辍学，即随父兄务农，18岁时当了村塾教师。他了解和同情农民疾苦。从18岁到31岁，洪秀全曾4次去广州应试，皆落第。在此期间偶读《劝世良言》，被天父的单一神权思想和基督教教义中的平等观念所吸引，自称是天父第二子，耶稣弟，反映了向西方学习的愿望。他联系到中国传统的大同思想和病中的梦幻，创立了拜上帝教，反清思想进一步增长。为了树立上帝威严，洪秀全毁塾中孔子牌位及向传统的神权挑战。', '4', '4', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('345', '2', '分析太平军从广西胜利进军南京的原因及建都天京，北伐、西征的战略得失。', '太平军自1851年1月金田起义到1853年3月攻克南京，仅用两年时间，人数由二万扩至百万，其进军之速，为历史上农民起义军所罕见。究其原因，主要有以下几点|第一，注重政治宣传。第二，有一条较为正确的方针。能积极联络天地会等反清力量，壮大革命队伍。沿途杀赃宫，毁田契，赈饥民，抚百姓，深得人民拥护；第三，有严格的纪律。第四，能运用灵活的战略战术。如避实打虚，声东击西，集中使用兵力等有效地消来敌人；第五，领导集团团结一致。', '4', '5', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('346', '2', '评析《天朝田亩制度》。', '天朝田亩制度》（以下简称《制度》）是太平天国的革命纲领和基本大法。它颁布于1853年冬。是中国历史上第一次以革命纲领的形式提出，以废除封建土地所有制为核心的全面的社会改革方案。基本内容包括两个方面|第一，绝对平分土地。第二，按太平军编制建立农村基层政权，组织人民生产和生活。《制度》是历代农民革命纲领的高度发展。它彻底否定了封建土地所有制，体现了千百年来农民对土地的要求，具有强烈的反封建性，同时又给农民描绘出一幅理想的生活蓝图。', '3', '6', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('347', '2', '简述《资政新篇》的主要内容并对其作出评价。', '《新篇》主张创办近代工矿交通事业，建立以机器工业为主体的经济体系，发展资本主义生产，同时效法资本主义经济制度，主张保护“富农”及“百万家财者”的私人财产，允许他们投资开采矿藏、创办邮亭和设立银行；规定“有能造精奇利便者，准其自售，他人仿造，罪而罚之”，奖励创造发明，实行专利政策；“准富者请人雇工”，实行雇用劳动。这些主张带有鲜明的资本主义色彩。《新篇》中发展资本主义的主张，正反映了当时中国社会发展的趋势。', '2', '7', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('348', '2', '试述太平天国革命失败的原因及历史意义。', '波澜壮阔的太平天国革命历时14年之久，波及18省，占领过六百多个县城以上城市，是中国两千多年农民战争发展的最高峰，具有伟大深远的历史意义。第一，太平天国革命沉重打击了清王朝的统治。第二，太平天国革命也打击了资本主义侵略势力。第三，太平天国革命精神鼓舞了中国人民反帝反封建斗争，后来的义务团和辛亥革命都从太平天国革命的事迹中得到不同程度的启示。第四，太平天国革命具有重大的国际意义。第五，各方面有着高度成就的太平天国革命，最后还是被中外反动势力镇压了。', '1', '8', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('349', '2', '综评洋务运动。', '“洋务”最早被称为“夷务”或“夷事”。它是指牵连到对外关系的一切事务，以至一切与外洋来的事物有关的各种事情，洋务运动也就是对这些事务活动的历史的概括。十九世纪六十年代至九十年代，洋务运动的主要内容是兴办军事工业和民用企业，用新式武器装备新编陆海军。', '5', '9', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('350', '2', '洋务派所办军事工业和民用工业的特点各是什么？', '洋务派所办军事工业，实际上是采用机器生产的官府工业。具有下列特点|第一，具有浓厚的封建性。第二，具有浓厚的依赖性和买办性。第三，随着时间的推移，后来军事工业中出现了微弱的资本主义因素。\r\n洋务派所办民用工业有下列特点|第一，基本上是资本主义性质的企业。第二，既是外资的对立物就有和它竞争的一面，但对外资又存在很大的依赖性。第三，洋务派的民用企业在国内实行专利，带有封建的垄断性。\r\n', '5', '10', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('351', '2', '试述中国民族资本主义的产生及其特点。', '中国民族资本主义（主要指工业资本）出现在十九世纪六十年代末七十年代初。中国民族资本主义工业的产生有两种途径|一是由一部分官僚、地主和商人（包括买办商人在内）直接投资兴办近代工矿企业，这是主要的；另一种是由原来的旧式手工工场或大作坊采用机器生产，转变为近代企业的。这些是极少数。', '6', '1', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('352', '2', '早期资产阶级维新思想的主要内容是什么？', '“一定的文化是一定社会的政治经济在观念形态上的反映。”随着中国民族资本近代工业的产生，从十九世纪七十年代后，中国出现了资产阶级改良思想。这种思想的早期代表人物主要有|王韬、薛福成、马建忠、郑观应、陈虬、陈炽、何启、胡礼垣等。尽管这些人的出身各不相同，但他们的思想言论代表着初生民族资产阶级利益，要求改变现状。早期资产阶级维新思想的主要内容，归结起来有下列几点。第一，要求维护国家主权和民族独立。第二，要求发展民族资本主义工商业。第三，在政治上，他们向往君主立宪制度。', '7', '2', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('353', '2', '如何认识洋务派与顽固派的争论?', '第二次鸦片战争以后，清朝统治集团中明显地分裂为对立的两派。历史学家把主张学习西方，采用机器生产的称为洋务派，而把反对派称为顽固派。洋务派主要是在第二次鸦片战争和镇压太平天国革命过程中与外国打交道较多，并掌握了中央和地方军政实权的官僚、买办军阀集团。他们整军制械，办厂开矿，掌握着一定的军事、经济实权。顽固派以倭仁、徐桐、李鸿藻等为代表，他们对洋务派纠举弹劾，呼风唤雨，有一定的政治影响，并拥有相当广泛的社会基础。', '8', '3', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('354', '2', '试述19世纪七八十年代我国边疆和邻邦发生危机的原因和概况。', '十九世纪七八十年代我国边疆和邻邦普遍发生危机，其主要原因是|\r\n第一，世界自由资本主义向垄断资本主义的过渡是发生危机的总根源，这是最根本的原因。第二，技术的进步，工业的高速发展和政治的改革，使一些新的资本主义国家迅速崛起。第三，这一时期，帝国主义国家内部工人阶级与资产阶级矛盾达到了空前尖锐的程度，为了转移工人阶级的斗争视线，摆脱困境，必然要发动对外侵略。\r\n', '9', '4', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('355', '2', '概述左宗棠一生的政治活动并简述其历史功绩。', '左宗棠一生的政治活动主要有下列几个方面。第一，镇压太平天国农民起义。\r\n第二，镇区西捻军与陕甘回民起义。第三，从事洋务活动。第四，收复新疆。\r\n左宗棠为了维护清政府的封建统治秩序，先后参与了镇压太平天国，西捻军和陕甘回民起义。特别是残酷屠杀了回民起义军，虽妇孺老弱也在所不免，表明他是封建统治的忠实卫道士，是镇压农民起义的刽子手。这方面的罪责是由他所处的历史时代和阶级本性所决定的。\r\n', '10', '5', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('356', '2', '甲午战争中国失败的原因是什么？', '甲午战争在中国方面说是正义的反侵略战争，有广大人民和爱国官兵的支援和参加。从军力对比看，中国并不亚于日本。中国完全有取胜的可能，失败的结局不应该落在中国一方。但事实上结果却是中国失败，以订立屈辱的《马关条约》而告终。甲午战争中国之所以失败，有主观和客观两方面的原因。', '9', '6', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('357', '2', '试述《马关条约》的主要内容和对中国社会的影响。', '中日甲午战争，中国失败。1895年4月17日，双方签订《马关条约》11款。其主要内容可概括为以下几个方面|第一、承认朝鲜为“独立”国；实际为日本控制；第二、中国割让辽东半岛、台湾全岛及所属岛屿和彭湖列岛给日本；第三，中国赔偿日本军费二万万两白银，分八次交清；第四、开放沙市、重庆、苏州、杭州为通商口岸，日本轮船可沿内河驶入以上各口，并可在通商口岸设立领事馆；第五、日本人可以在中国通商口岸城邑设厂制造，产品依进口货纳税，免征其它杂税，并可在内地设栈寄放；第六、条约规定，日本以占领威海卫保证赔款兑现和条约落实。', '8', '7', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('358', '2', '试评美国的“门户开放”政策。', '“门户开放”政策是为了确保美国在国际资本侵华竞争中处于有利地位而设计的。甲午战争以后几年里，列强正在华抢夺势力范围，而美国却忙于美西战争，无暇东顾。当它于1898年战胜西班牙，夺取了关岛与菲律宾之后，列强在华分割势力范围已成定局，它无法改变这一既成事实。于是“门户开放”的外交政策便炮制了出来。', '7', '8', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('359', '2', '维新派同顽固派、洋务派论战的主要内容和历史意义是什么？', '维新派的宣传和组织工作引起了封建守旧势力的恐惧。在这个时期，顽固派已经与洋务派互相勾结起来，共同反对任何形式的资产阶级改革，坚决维护封建君主专制制度和封建的文化思想，攻击维新变法主张。因此，在当时引起了一场激烈的论战。这次论战的中心问题有三个|第一，要不要变法。第二，要不要在中国兴民权、设议院，实行君主立宪制。第三，要不要废科举、办学校，提倡新学。', '6', '9', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('360', '2', '分析戊戌变法的性质、失败的原因和历史意义。', '1898年6月11日至9月21日，历时103天的变法运动被封建顽固势力所扼杀。其失败的具体原因是|第一，维新派是中国民族资产阶级上层的代表，他们既不想推翻清王朝的封建统治，又不敢触动帝国主义，只依靠一个并无实权的皇帝，又寄希望于某些帝国主义国家的支持，因而在变法运动中不可避免地暴露出严重的软弱性和妥协性，这是戊戌变法失败的基本原因。第二，维新派歧视人民，脱离了以农民为主体的广大人民群众，使自身陷于孤立无援的境地。第三，维新派既不反对帝国主义，又幻想依靠帝国主义的支持实行变法，同时也不从根本上反对封建势力。', '6', '10', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('361', '2', '《辛丑条约》的主要内容是什么？', '1901年9月7日清政府签订了丧权辱国的《辛丑条约》。该约12款，并附件19通，主要内容如下|第一，清政府向德、日“谢罪”。第二，惩办“祸首”。\r\n第三，永远禁止中国人民的反帝组织和进行一切反侵略斗争。第四，将总理衙门改为外务部，班列六部之首。第五，巨额赔款。条约规定清政府向各国赔款盛。4.5亿两白银，39年付清，本息共计9.8亿两，以海关、常关、盐课等作担保。\r\n第六，从军事上控制中国。\r\n', '8', '1', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('362', '2', '资产阶级革命派同改良派论战的主要问题和实质是什么？', '戊戌变法失败以后，康有为、梁启超逃往日本，坚持保皇，反对革命。1902年，梁启超在日本主办《新民丛报》，以此作喉舌，发表了大量攻击革命、鼓吹君主立宪的文章。1905年同盟会成立以后，改良派对民主革命运动更加仇视和恐惧，对同盟会的纲领进行恶毒的诋毁。1905年到1907年间，革命派以《民报》为主要阵地，改良派以《新民丛报》为喉舌，展开了激烈的论战。论战的主要问题是|第一，要不要革命。第二，要不要实行民主政治。第三，要不要改变封建土地制度。', '7', '2', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('363', '2', '南京临时政府成立的历史意义？', '对帝国主义抱有幻想。它宣布承认清政府和帝国主义签订的不平等条约，保护帝国主义在华的特权，想以此换取帝〖BF〗国主义的承认。但是，帝国主义一直不承认这个政府。第三，没有把革命进行列底的决心和勇气。它不是集中主要精力，把革命推向前进，而是对袁世凯抱以莫大希望，指望靠他反正，推翻清朝。这样的政府，自然缺乏深厚的群众基础，面临严重的困难，难以长期存在。', '9', '3', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('364', '2', '辛亥革命的伟大意义和经验教训是什么？', '辛亥革命是一次极其重要的革命，它具有伟大的历史意义。第一，辛亥革命是中国历史上第一次真正的资产阶级民主革命。第二，辛亥革命推翻了清王朝的反动统治，结束了二千多年的君主专制制度，这是它最主要的历史功绩。第三，辛亥革命沉重地打击了帝国主义。第四，这次革命对整个亚洲乃至全世界，都产生了重大影响。', '10', '4', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('365', '2', '辛亥革命后中国出现长期军阀纷争局面的原因是什么？', '首先，是在近代封建地壤中滋生的结果。近代始终末形成资经济，封建经济一直在社会经济中占主导地位，地方性农业经济和封建地主经济占极大优势，这使军阀得以割据一方，称霸称王，封建经济是军阀赖以依存的土壤军阀本身多出身于地主，或本身即为地主，是中国最反动，最落后的生产关系代表，所有军阀集团都极力维护地主对农民的反动统治。中国经济发展的不平衡、不统一、势必造成政治发展的不统一、不平衡，军阀可以轻易割据一方。农业经济占优势，地主对农民的剥削是主要的，为保证剥削就要建立自己的武装。', '8', '5', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('366', '1', 'It’s no ____ that he didn’t come.', 'matter', '6', '1', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('367', '1', '——Do you have ____ trouble finishing the work?\r\n ——The work is not so difficult as you think. We have finished it already.\r\n', 'much', '3', '2', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('368', '1', 'Why don’t you try on this jacket? It ____ nice on you.', 'will look', '5', '3', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('369', '1', 'Let’s go out now. It ____ any more.', 'isn’t raining', '1', '4', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('370', '1', 'The central government is sparing no efforts to ____ the officials’ overuse of power to make up a healthier Party.', 'keep down', '5', '5', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('371', '1', 'It was only after some progress ____ in the use and development of electricity that men began to realize the importance and possibilities of magnetism.', 'had been made', '3', '6', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('372', '1', 'If you think that the illness might be serious, you should not ____ going to the doctor.', 'put off', '4', '7', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('373', '1', 'I invited five people to my party. Out of those five people, only John and Mary can come. ____ people can’t come.', 'The other', '6', '8', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('374', '1', '——Excuse me, Professor Smith, I was wondering if I could leave a quarter earlier today.\r\n     ——____.\r\n', 'go ahead', '8', '9', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('375', '1', '——Have you heard the new benefit system is to take effect?\r\n ——Yes. That’s great, yet some worry it may ____ laziness.\r\n', 'encourage', '10', '10', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('376', '1', 'I don’t want to be interrupted, for my paper is due tomorrow. If ____ asks where I am. Just say I’ve gone out.', 'anyone', '3', '1', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('377', '1', 'The heroic story that the university student had saved a peasant’s life hit the ____ in “China Youth Daily”.', 'headlines', '4', '2', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('378', '1', 'In the traffic accident, his father came close to ____.', 'being killed', '2', '3', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('379', '1', 'When he realized the police had seen him, the man ____ the exit as quickly as possible.', 'made for', '2', '4', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('380', '1', '——So you are not spending your holiday in Wuhan this year.\r\n ——No, ____.\r\n', 'somewhere', '5', '5', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('381', '1', 'As the proverb ____, an enemy in disguise is a wolf in sheep’s.', 'goes', '6', '6', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('382', '1', '——What can I do for you, sir?\r\n     ——I want ____.\r\n', 'worth', '6', '7', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('383', '1', 'One of the requirements for a fire is that the material ____ to its burning temperature.', 'be heated', '4', '8', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('384', '1', '——Were you busy last weekend?\r\n ——Very. Rather than ____ time playing cards as usual, I devoted every effort to an advertisement.\r\n', 'A、wasting', '7', '9', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('385', '1', 'Most of the audience wondered what ider a man who’s deaf from birth can have ____ music.', 'of', '8', '10', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('386', '1', 'Passenger: Look out! There’s a kangaroo wandering on the road!\r\n     Driver:   ____ it! That was lucky. It can damage my car really badly.\r\n', 'Missed', '2', '1', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('387', '1', 'An actor can not well play the role without life experience ____ more than a dancer can make a difference without much practice.', 'any', '4', '2', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('388', '1', 'Lang Ping, who is said to have started her coaching career in America, ____ volleyball in China for almost twenty years.', 'played', '4', '3', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('389', '1', 'Small as it is, the ant is as much a creature as ____ all other animals on the earth.', 'are', '6', '4', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('390', '1', 'She’s fainted. Throw some water on her face and she’ll ____.', 'come round', '8', '5', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('391', '1', 'Never in my wildest dreams ____ lead to a career in the NBA, which has allowed me to give back to my people in Africa.', 'thought', '4', '6', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('392', '1', 'Nothing in my life has meant ____ to me as his praise.', 'as much', '4', '7', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('393', '1', 'The size of the generation gap seems to be spreading with ____ rapid changes in technology, in education.', 'the', '3', '8', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('394', '1', 'The inspector ____ his fingers over the sheet of newspaper. There were some marks on the surface of the paper.', 'ran', '1', '9', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('395', '1', 'Experience is believing. If you’d like to know what it ____ like to be a soldier in World War Ⅱ.', 'was', '5', '10', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('396', '1', 'Shanghai is the first city in the world ____a high-speed maglev train, from the city to Pudong Airport.', 'to have built', '6', '1', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('397', '1', 'I know the man by ____ but I have never spoken to him.', 'sight', '3', '2', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('398', '1', 'The generous donation from China to the sufferers in the killing Indian Ocean Quake-tsunami has ____ the Chinese people’s unselfishness and internationalism.', 'brought out', '2', '3', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('399', '1', 'Parents are advised to take pressure ____ a child and give him some encouragement before an exam.', 'off', '8', '4', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('400', '1', 'Women have ____ equal say in affairs at home.', 'an', '9', '5', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('401', '1', 'I haven’t read ____ of his books, but judging from the one I have read I think he’s a very promising writer.', 'both', '4', '6', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('402', '1', 'She felt sorry that she had disturbed the ____ calmness of a man she respected.', 'usual', '5', '7', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('403', '1', 'He ____ writing the paper now. He hadn’t written a single word when I left him ten minutes ago.', 'finished', '2', '8', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('404', '1', 'You’d better not wear such ties, because they ____ three years ago.', 'went out', '5', '9', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('405', '1', 'To read Tolstoy and ____ to the nineteenth century Russian literature are two excellent reasons for taking Professor Morrel’s course.', 'to be introduced', '7', '10', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('406', '1', 'The Cleveland Cavaliers ____ the Los Angeles Lakers 108-89 in the NBA on Sunday.', 'beat', '8', '1', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('407', '1', 'There aren’t many seats left for the concert; you had better make sure ____ two today.', 'that you get', '4', '2', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('408', '1', 'Examination compositions, together with most business letters and government reports, are the main situations ____ formal language is used.', 'in which', '8', '3', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('409', '1', 'His letter was especially welcome as I ____ from him for long.', 'hadn’t heard', '8', '4', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('410', '1', 'If you don’t keep the meat in the refrigerator on such a hot day, it may ____.', 'go off', '9', '5', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('411', '1', 'Doing your homework is a sure way to improve your test scores, and this is especially true ____ it comes to classroom tests.', 'when', '4', '6', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('412', '1', 'It’s a bad practice to ____ children much money as a New Year gift.', 'allow', '5', '7', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('413', '1', 'I spent the whole day repairing the motorbike. The work was ____ simple.', 'anything but', '7', '8', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('414', '1', 'In Scandinavian countries it is common ____ for the husband to stay at home to look after the baby.', 'practice', '2', '9', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('415', '1', 'The professor walked onto the platform and seated himself in a chair, ____ for answering questions.', 'prepared', '2', '10', '2', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('416', '2', '翻译：人生短短几十年，不要给自己留下了什么遗憾，想笑就笑，想哭就哭，该爱的时候就去爱，无谓压抑自己。', 'Be sure that you have never had any regrets in your life which only lasts for a few decades. Laugh or cry as you like, and it is meaningless to oppress yourself.', '1', '1', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('417', '2', '翻译：于千万人之中，遇见你所遇见的人；于千万年之中，时间的无涯荒野里，没有早一步，也没有晚一步，刚巧赶上了。', 'Among thousands of people, you meet those you\'ve met. Through thousands of years, with the boundlessness of time, you happen to meet them, neither earlier nor a bit too late.', '2', '2', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('418', '2', '翻译：记住该记住的，忘记该忘记的。改变能改变的，接受不能改变的。', 'Remember what should be remembered, and forget what should be forgotten. Alter what is changeable, and accept what is mutable.', '3', '3', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('419', '2', '翻译：能冲刷一切的除了眼泪，就是时间，以时间来推移感情，时间越长，冲突越淡，仿佛不断稀释的茶。', 'Apart from tears, only time could wear everything away. While feeling is being processed by time, conflicts would be reconciled as time goes by, just like a cup of tea that is being continuously diluted.', '4', '4', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('420', '2', '翻译：鱼对水说你看不到我的眼泪，因为我在水里.水说我能感觉到你的眼泪，因为你在我心里。', '“You couldn\'t see my tears cause I am in the water.” Fish said to water.　“But I could feel your tears cause you are in me.”Answered water.', '4', '5', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('421', '2', '翻译：后悔是一种耗费精神的情绪.后悔是比损失更大的损失,比错误更大的错误.所以不要后悔。', 'Penitence is something that enervates our spirit, causing a greater loss than loss itself and making.', '3', '6', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('422', '2', '翻译：按人口计算，中国是世界上最大的国家；按领土面积计算，是第三大国家，仅次于俄罗斯和加拿大。', 'In terms of population, China is the largest country in the world; and in terms of territorial area, it is the third, ranking only after Russia and Canada.', '2', '7', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('423', '2', '翻译：众所周知，中国的自然资源十分丰富，这使得中国具备良好的条件发展工农业。', 'China is known to be very rich in natural resources; this puts her in a good position to develop her industry and agriculture.', '1', '8', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('424', '2', '翻译：历史记载表明，到16世纪时，中国人已经发明了纸，并且传入了欧洲，使欧洲人大感惊奇。', 'Historical records indicate that by the 16th century the Chinese had already invented paper and had it brought to Europe, causing great amazement among the Europeans. ', '5', '9', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('425', '2', '翻译：中国的1800公里长的大运河，建成于公元610年，流经17个城市，是世界上最古老、最长的人工水道。', 'China’s 1800-kilometer long Grand Canal, which was completed in 610 AD and flows through 17cities, is the world’s oldest and longest human-made waterway. ', '5', '10', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('426', '2', '翻译：为了改善环境，中国最大的、人口最密的城市——上海，正在计划建造一座占地300多公顷的森林公园，称为“超级绿肺”。', 'In order to better its environment, Shanghai, China’s largest and most populous city, is planning to build a forest park spreading out over 300 hectares of land, to be known as the “Super Green Lung”.', '6', '1', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('427', '2', '翻译：长江三角洲区域，占有全国人口的6％，提供全国国内生产总值的1/5以上，所以这一区域的发展，必然会对促进中国的经济建设起很大的作用。', 'As the Yangtze River Delta area takes up 6% of China’s total population and contributes more than 1/5 of the country’s total GDP, its development will certainly play a great role in speeding up China’s economic construction. ', '7', '2', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('428', '2', '翻译：亚马逊河流域具有世界上有名的复杂生态系统，中国的科学家在2004年7月首次来到该地区，进行科学考察研究。', 'The Amazon Basin has a world-famous, complex ecosystem. China scientists, for the first time, came to this region in July, 2004, to make scientific probes and studies. ', '8', '3', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('429', '2', '翻译：在华南，春天和初夏是多雨季节，有许多日子会见到倾盆大雨，或者是跟随着台风而来的暴雨。', 'In south China, spring and early summer are wet seasons, with quite a number of days experiencing torrential downpours or rainstorms that accompany typhoons. ', '9', '4', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('430', '2', '翻译：橡胶原来是南美巴西的产物，在19世纪下半叶传到别的国家。现在，世界上大部分的橡胶，是生产在赤道南北各10°的中间地带上。', 'Rubber, originally a product of Brazil in South America, spread to other countries in the latter half of the 19th century. Now, the bulk of the world’s rubber is grown between 10N and 10 S of the equator. ', '10', '5', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('431', '2', '翻译：令人意料不到的是，硅谷既不是一个富有硅的地方，也不是一个山谷。 它之所以得名，仅仅是因为它是一个新兴的、以硅为基础的电子工业的中心。', 'Unexpectedly, Silicon Valley is neither a place abundant in silicon nor a mountain valley. It has gained its name simply because it is a newly developed center of silicon-based electronics industry. ', '9', '6', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('432', '2', '翻译：亚洲是最大的洲，在地理上变化最多，其地貌包括巨大的、由沙漠覆盖着的高原，也包括象喜马拉雅山这样的高山，而喜玛拉雅山上的珠穆朗玛峰是世界上最高的山峰。', 'Asia, the largest continent, is the most geographically diverse, its landforms including large desert-covered plateaus and such high mountains as the Himalayas, whose Mt. Qomolangma is the tallest in the world. ', '8', '7', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('433', '2', '翻译：太平洋几乎和其他三个大洋加起来一样大，其最深部分达到海面下10973米，这个深度甚至超过了喜玛拉雅山上世界最高峰的高度。', 'The Pacific Ocean is almost as large as the other three combined, its deepest part being 10,973m below sea level---a distance even greater than the height of Earth’s tallest peak in the Himalayas. ', '7', '8', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('434', '2', '翻译：所谓岛屿，就是一块四面环水的陆地，地球上有无数的岛屿，从最大的格陵兰到只有几米宽的小点陆地不等。中国的两个最大岛屿是台湾和海南。', 'An island is land completely surrounded by water. The earth has countless islands, ranging from Greenland, the largest one. to tiny spots of land that are only a few meters wide. China’s two largest islands are Taiwan and Hainan. ', '6', '9', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('435', '2', '翻译：全球性的气候变迁，主要见于地球大气的逐渐变暖，现正受到全世界的注意，因为这种变迁会对世界人民的生活产生巨大的影响。', 'Global climate changes, mainly seen in the gradual warming of the earth’s atmosphere, are attracting worldwide attention, because such changes will have a great effect on the lives of world people.', '6', '10', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('436', '2', '翻译：长江是中国最长的河流，长江上的三峡发电厂是一项正在进行中的十分巨大的工程，该厂所需要的发电机将是世界上最大的机组。', 'The Yangtze is the longest river in China. Its Three Gorges Power Station is a gigantic project under construction; the generators the station is to use will be the largest units in the world. ', '8', '1', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('437', '2', '翻译：北京人大约生活在公元460000年到230000年之间，能够用火，并能制造石头工具，是早期旧石器时期人类的一个好实例。', 'Peking Man, who lived from about 460000 BC to 230,000 BC and who was able to use fire and make stone tools, is a good example of early Old Stone Age men. ', '7', '2', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('438', '2', '翻译：中国的万里长城是在两千多年前建成的，是在封建王公们为了防御野蛮民族入侵而建筑的城堡连接起来的基础上建成的。', 'The Great Wall of China was built more than two thousand years ago on the basis of joining together the forts built by feudal lords to protect their land against invasions by barbarians. ', '9', '3', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('439', '2', '翻译：中国的大河流都是从西流向东，使得南北之间的交通相对来说比较困难，因此铁路和公路成为了国家经济上必不可少的设施。', 'All China’s big rivers flow from west to east, making transportation between the north and the south relatively difficult.\r\nAs a result, railroads and highways have become indispensable for the nation’s economy.\r\n', '10', '4', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('440', '2', '翻译：在中世纪，有大量的丝绸从中国运到中东和欧洲，走的是古代的丝绸之路，到今天这条路还有痕迹可循。', 'During the Middle Ages, large amounts of silk were brought to the Middle East and Europe from China along the ancient Silk Road, which is still traceable nowadays. ', '8', '5', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('441', '2', '查询所有记录的S_NUMBER（别名为学号）、S_NAME（别名为姓名）和BIRTHDAY（别名为出生日期）字段。', 'SELECT s_number 学号,s_name 姓名,birthday 出生日期\r\nFROM t_student\r\n', '1', '7', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('442', '2', '查询得到每个学生的年龄。', 'SELECT 2017-year(birthday) 年龄\r\nFROM t_student\r\n', '2', '8', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('443', '2', '统计男同学的人数。', 'SELECT COUNT(sex) 男同学人数\r\nFROM t_student\r\nWHERE sex=\'男\'\r\n', '3', '9', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('444', '2', '查询表T_SCORE和表T_STUDENT中的数据，满足条件：T_STUDENT.S_NUMBER=T_SCORE.S_NUMBER。', 'SELECT *\r\nFROM t_student,t_score\r\nWHERE t_student.s_number=t_score.s_number\r\n', '4', '10', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('445', '2', '从表T_SCORE中查询成绩在80~90分的学生的信息。', 'SELECT *\r\nFROM t_score\r\nWHERE score<=90 AND score>=80\r\n', '4', '1', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('446', '2', '从表T_STUDENT中查询所有非党员的学生信息。', 'SELECT *\r\nFROM t_student\r\nWHERE polity<>\'党员\'\r\n', '3', '2', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('447', '2', '从表T_STUDENT中查询所有姓张的学生信息。', 'SELECT *\r\nFROM t_student\r\nWHERE s_name LIKE \'张%\'\r\n', '2', '3', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('448', '2', '对表T_STUDENT中的记录按性别进行分组，查询相应的人数。', 'SELECT sex 性别,COUNT(s_number) 人数\r\nFROM t_student\r\nGROUP BY sex\r\n', '1', '4', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('449', '2', '在表T_SCORE中求选修了两门及以上课程的学生学号。', 'SELECT s_number\r\nFROM t_score\r\nGROUP BY s_number\r\nHAVING COUNT(*)>=2\r\n', '5', '5', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('450', '2', '在表T_SCORE中查询选修了“10010218”课程的学生成绩，并按成绩的降序进行排序。', 'SELECT *\r\nFROM t_score\r\nWHERE c_number=\'10010218\'\r\nORDER BY score DESC\r\n', '5', '6', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('451', '2', '假设表T_STUDENT1中的数据如下表所示。对表T_STUDENT1和表T_STUDENT进行联合查询。', 'SELECT * FROM t_student1 UNION \r\nSELECT * FROM t_student \r\n', '6', '7', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('452', '2', '查询选修了两门及以上课程的学生的基本信息。', 'SELECT * FROM t_student\r\nWHERE s_number=ANY(SELECT s_number\r\n                   FROM t_score\r\n                   GROUP BY s_number\r\n				   HAVING COUNT(c_number)>=2)\r\n', '7', '8', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('453', '2', '利用INSERT语句向表T_STUDENT中插入一行数据，只包含S_NUMBER、S_NAME和BIRTHDAY三列。', 'INSERT INTO t_student(s_number,s_name,birthday)\r\nVALUES(\'111111111\',\'简自豪\',\'1995-5-5\')\r\n', '8', '9', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('454', '2', '一个带有WHERE条件的修改语句。', 'UPDATE t_student\r\nSET polity=\'党员\'\r\nWHERE s_name=\'简自豪\'\r\n', '9', '10', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('455', '2', '使用Transact-SQL语句创建一个新视图，命名为VIEW_SCORE，要求基表的来源为：T_STUDENT、T_SCORE和T_COURSE，选择的字段为：T_STUDENT表中的S_NUMBER和S_NAME字段、T_COURSE表中的C_NAME字段及T_SCORE表中的SCORE字段，要求查询的数据为05541班学生的考试成绩。', 'CREATE VIEW VIEW_SCORE\r\nAS\r\nSELECT t_student.s_number,t_student.s_name,\r\n       t_course1.c_name,t_score.score\r\nFROM t_student,t_course1,t_score\r\n', '10', '1', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('456', '2', '使用Transact-SQL语句创建新视图VIEW_SCORE_NotPass。对数据表和对字段的选择同上，要求只显示各班不及格的学生的学号、姓名、课程名及成绩。并加密视图的定义。', 'CREATE VIEW VIEW_SCORE_NotPass\r\nWITH ENCRYPTION\r\nAS \r\nSELECT T_STUDENT.S_NUMBER,T_STUDENT.S_NAME,\r\n       T_COURSE.C_NAME,   T_SCORE.SCORE\r\n', '9', '2', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('457', '2', '使用Transact-SQL语句创建新视图VIEW_SCORE_SumAndAverage。要求计算各个班级各门课程的总分及平均分。', 'CREATE VIEW VIEW_SCORE_SumAndAverage\r\nAS \r\nSELECT SUBSTRING(T_STUDENT.S_NUMBER,1,\r\n         LEN(T_STUDENT.S_NUMBER)-2) AS 班级,  \r\n       T_COURSE.C_NAME AS 课程名称, \r\n       SUM(SCORE) AS 总分,\r\n       AVG(SCORE) AS 平均分\r\nFROM  T_STUDENT,T_COURSE,T_SCORE\r\n', '8', '3', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('458', '2', '首先创建一个包含限制条件的视图VIEW_STUDENT_05541_男，限制条件为显示05541班的男同学信息，然后插入了一条不满足限制条件的记录，再用SELECT语句检索视图和表。', 'CREATE VIEW view_student_05541_男\r\nAS \r\nSELECT * FROM t_student\r\nWHERE s_number LIKE \'05541%\'\r\n      AND sex=\'男\'\r\n', '7', '4', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('459', '2', '在上例的基础上添加WITH CHECK OPTION选项。', 'CREATE VIEW view_student_05541_男\r\nAS \r\nSELECT * FROM t_student\r\nWHERE s_number LIKE \'05541%\'\r\n      AND sex=\'男\'\r\nWITH CHECK OPTION\r\n', '6', '5', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('460', '2', '创建一个基于表T_STUDENT的视图VIEW_STUDENT_05541_Modify，条件是显示05541班的学生的学号、姓名和性别，然后通过该视图修改表T_STUDENT中的记录。', 'CREATE VIEW view_student_05541_modify\r\n(s_number,s_name,sex)\r\nAS\r\nSELECT s_number,s_name,sex\r\nFROM t_student\r\nWHERE s_number LIKE \'05541%\'\r\nUPDATE view_student_05541_modify\r\nsex=\'男\'\r\nWHERE s_name=\'小红\'\r\n', '6', '6', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('461', '2', '利用视图VIEW_STUDENT_05541，先插入一条记录，然后删除此条记录。', 'INSERT INTO view_student_05541\r\nVALUES(\'0554113\',\'小明\',\'男\')\r\nDELETE FROM view_student_05541\r\nWHERE s_number=\'0554113\'\r\n', '8', '7', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('462', '2', '删除视图VIEW_STUDENT_05541_Modify和视图VIEW_STUDENT_05541_男。', 'DROP VIEW view_student_05541_modify AND view_student_05541_男', '7', '8', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('463', '2', '计算表达式的值，并将结果赋给变量@ExpResult。', 'DECLARE @ExpResult numeric\r\nSET @ExpResult=1235\r\nSELECT @ExpResult AS \'计算结果\'', '9', '9', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('464', '2', '查询05541班的学生信息，要求列出的字段为：班级、本班内的学号、姓名、性别、出生日期、政治面貌。', 'SELECT 班级=SUBSTRING(S_NUMBER,1,5),\r\n       本班内的学号=SUBSTRING(S_NUMBER,6,7),\r\n       姓名=S_NAME,\r\n       性别=SEX,\r\n       出生日期=BIRTHDAY,\r\n       政治面貌=POLITY\r\nFROM T_STUDENT\r\nWHERE SUBSTRING(S_NUMBER,1,5)=\'05541\'\r\n', '10', '10', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('465', '2', '返回在程序执行过程中上一条SQL语句影响的记录数。', 'INSERT INTO T_STUDENT(\r\nS_NUMBER,S_NAME,SEX)\r\nVALUES(\r\n\'ABCDEF4\',\'小强\',\'男\')\r\n\r\nSELECT @@ROWCOUNT AS \'第一次查询返回的记录数\'\r\n', '8', '1', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('466', '2', '试述关系模型的参照完整性规则？', '参照完整性规则|若属性（或属性组）F是基本关系R的外码，它与基本关系S的主码Ks相对应（基本关系R和S不一定是不同的关系），则对于R中每个元组在F上的值必须为|取空值（F的每个属性值均为空值）或者等于S中某个元组的主码值。', '1', '7', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('467', '2', '试述视图的作用？', '1）视图能够简化用户的操作。2）视图使用户能以多种角度看待同一数据。 3）视图对重构数据库提供了一定程度的逻辑独立性。4）视图能够对机密数据提供安全保护。', '2', '8', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('468', '2', '登记日志文件时必须遵循什么原则？', '登记日志文件时必须遵循两条原则|\r\n登记的次序严格按并发事务执行的时间次序。\r\n必须先写日志文件，后写数据库。\r\n', '3', '9', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('469', '2', ' 设教学数据库中有三个基本表：\r\n学生表S（SNO，SNAME，AGE，SEX），其属性分别表示学号、学生姓名、年龄、性别。课程表C（CNO，CNAME，TEACHER），其属性分别表示课程号、课程名、上课教师名。选修表SC（SNO，CNO，GRADE），其属性分别表示学号、课程号、成绩。\r\n设计查询张三同学没有选修的课程的课程号的SQL查询语句\r\n', 'SELECT CNO\r\nFROM C \r\nWHERE CNO NOT IN\r\n(SELECT CNO \r\nFROM S,SC\r\nWHERE S.SNO=SC.SNO \r\nAND SNAME=\'张三\');\r\n', '4', '10', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('470', '2', '设有职工基本表：EMP（ENO，ENAME，AGE，SEX，SALARY），其属性分别表示职工号、姓名、年龄、性别、工资。为每个工资低于1000元的女职工加薪200元，试写出这个操作的SQL语句。', 'UPDATE EMP \r\nSET SALARY=SALARY|200 \r\nWHERE SALARY<1000 AND SEX=\'女\';\r\n', '4', '1', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('471', '2', '设某工厂数据库中有两个基本表：\r\n车间基本表：DEPT（DNO，DNAME，MGR_ENO），其属性分别表示车间编号、车间名和车间主任的职工号。\r\n职工基本表：ERP（ENO，ENAME，AGE，SEX，SALARY，DNO），其属性分别表示职工号、姓名、年龄、性别、工资和所在车间的编号。\r\n建立一个有关女车间主任的职工号和姓名的视图，其结构如下：\r\nVIEW6（ENO，ENAME）。试写出创建该视图VIEW6的SQL语句。\r\n', 'CREATE VIEW VIEW6\r\nAS\r\nSELECT ENO, ENAME FROM EMP\r\nWHERE SEX=\'女\' AND ENO IN \r\n(SELECT MGR_ENO FROM DEPT) \r\n', '3', '2', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('472', '2', '设有关系R和函数依赖F： \r\nR（A，B，C，D，E），F = { ABC→DE，BC→D，D→E }。\r\n试求下列问题：\r\n（1）关系R的侯选码是什么？R属于第几范式？并说明理由。\r\n', '关系R的候选码是（A，B，C），R∈1NF，因为R中存在非主属性D，E对候选码（A，B，C）的部分函数依赖。', '2', '3', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('473', '2', '试述数据、数据库、数据库管理系统、数据库系统的概念。', '数据:描述事物的符号记录。\r\n数据库:长期存储在计算机内的、有组织的、可共享的数据集合。\r\n数据库管理系统:是位于用户与操作系统之间的具有数据定义、数据操纵、数据库的运行管理、数据库的建立和维护功能的一层数据管理软件。\r\n数据库系统:在计算机系统中引入数据库后的系统，一般由数据库、数据库管理系统(及其开发工具)、应用系统、数据库管理员和用户构成。\r\n', '1', '4', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('474', '2', '说明视图与基本表的区别和联系', '视图是从一个或几个基本表导出的表，它与基本表不同，是一个虚表，数据库中只存放视图的定义，而不存放视图对应的数据，这些数据存放在原来的基本表中，当基本表中的数据发生变化，从视图中查询出的数据也就随之改变\r\n视图一经定义就可以像基本表一样被查询、删除，也可以在一个视图之上再定义新的视图，但是对视图的更新操作有限制\r\n', '5', '5', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('475', '2', '数据库系统的故障有哪些类型？', '故障主要有下面三种类型|\r\n	事务故障\r\n	系统故障\r\n       介质故障\r\n', '5', '6', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('476', '2', '设有关系STUDENT(S#,SNAME,SDEPT,MNAME,CNAME,GRADE)，（S#,CNAME）为候选码，设关系中有如下函数依赖：  \r\n	（S#,CNAME）→SNAME,SDEPT,MNAME\r\nS#→SNAME,SDEPT,MNAME\r\n（S#,CNAME）→GRADE\r\nSDEPT→MNAME\r\n\r\n关系STUDENT属于第几范式？并说明理由。\r\n', ' 关系STUDENT是1NF，因为F中存在非主属性SNAME，SDEPT，MNAME对侯选码（S#,CNAME）的部分函数依赖。', '6', '7', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('477', '2', '数据库管理系统有哪些功能?', '（1）数据定义功能:DBMS提供数据描述语言（DDL），用户可通过它来定义数据对象。\r\n（2）数据操纵功能:DBMS还提供数据操纵语言（DML），实现对数据库的基本操作|查询、插入、删除和修改。\r\n（3）数据库的运行管理:这是DBMS运行时的核心部分，它包括并发控制，安全性检查，完整性约束条件的检查和执行，发生故障后的恢复等。\r\n（4）数据库的建立和维护功能:它包括数据库初始数据的输入及转换，数据库的转储与恢复，数据库的重组功能和性能的监视与分析功能等。\r\n', '7', '8', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('478', '2', '数据库设计分哪几个阶段？', '需求分析   概念结构设计   逻辑结构设计  物理结构设计   数据库实施 数据库运行和维护', '8', '9', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('479', '2', '设有学生选课关系SC（学号，课程号，成绩），试用SQL语句检索每门课程的最高分。', 'SELECT 课程号,MAX(成绩) FROM SC GROUP BY 课程号', '9', '10', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('480', '2', '简述三级封锁协议的内容以及不同级别的封锁协议能解决哪些数据不一致性\r\n问题?\r\n', '（1）	一级封锁协议是|事务T在修改数据R之前必须先对其加X锁，直到事务结束才释放。一级封锁协议能够解决“丢失修改”问题。\r\n（2）	二级封锁协议是|一级封锁协议加上事务在读取数据R之前必须先对其加S锁 ，读完后即可释放S锁。二级封锁不仅可以解决“丢失修改”问题，而且可以解决读“脏“数据问题。\r\n（3）	三级封锁协议是|一级封锁协议加上事务在读取数据R之前必须先对其加S锁，直到事务结束才释放。三级封锁协议不仅解决了“丢失修改”、读“脏”数据问题，而且进一步解决了“不可重复读”问题。\r\n', '10', '1', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('481', '2', '简述等值连接与自然连接的区别和联系。', '连接运算符是“=”的连接运算称为等值连接。它是从关系R与S的广义笛卡尔积中选取A，B属性值相等的那些元组，自然连接是一种特殊的等值连接，它要求两个关系中进行比较的分量必须是相同的属性组，并且在结果中把重复的属性列去掉。', '9', '2', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('482', '2', '简述事务的特性。', '答:事务具有四个特性，即ACID特性:\r\n1）原子性:事务中包括的所有操作要么都做，要么都不做。\r\n2）一致性:事务必须使数据库从一个一致性状态变到另一个一致性状态。\r\n3）隔离性:一个事务内部的操作及使用的数据对并发的其他事务是隔离的。\r\n4）持续性:事务一旦提交，对数据库的改变是永久的。', '8', '3', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('483', '2', '某企业集团有若干工厂，每个工厂生产多种产品，且每一种产品可以在多个工厂生产，每个工厂按照固定的计划数量生产产品；每个工厂聘用多名职工，且每名职工只能在一个工厂工作，工厂聘用职工有聘期和工资。工厂的属性有工厂编号、厂名、地址，产品的属性有产品编号、产品名、规格，职工的属性有职工号、姓名。\r\n写出上述关系的关系模型；\r\n（要求：1:1和1:n的联系进行合并）\r\n', '转化后的关系模式如下|\r\n		工厂（工厂编号，厂名，地址）\r\n     	 产品（产品编号，产品名，规格）\r\n         职工（职工号，姓名，工产编号，聘期，工资）\r\n         生产（工产编号，产品编号，计划数量）\r\n', '7', '4', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('484', '2', '某企业集团有若干工厂，每个工厂生产多种产品，且每一种产品可以在多个工厂生产，每个工厂按照固定的计划数量生产产品；每个工厂聘用多名职工，且每名职工只能在一个工厂工作，工厂聘用职工有聘期和工资。工厂的属性有工厂编号、厂名、地址，产品的属性有产品编号、产品名、规格，职工的属性有职工号、姓名。\r\n（1）写出上述关系的关系模型；（5分）\r\n（要求：1:1和1:n的联系进行合并）\r\n（2）指出转换结果中每个关系模式的主码和外码。（5分）\r\n', '（1）转化后的关系模式如下:\r\n工厂（工厂编号，厂名，地址）\r\n产品（产品编号，产品名，规格）\r\n职工（职工号，姓名，工产编号，聘期，工资）\r\n生产（工产编号，产品编号，计划数量）\r\n（2）工厂:主码是工产编号；\r\n产品:主码是产品编号；\r\n职工:职工号，外码是工厂编号；\r\n生产:主码是（工产编号，产品编号），外码是工产编号、产品编号。', '6', '5', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('485', '2', '设有关系R和函数依赖F： \r\nR（W，X，Y，Z），F = { X→Z，WX→Y }。\r\n试求下列问题：关系R属于第几范式？如果关系R不属于BCNF，请将关系R逐步分解为BCNF。\r\n要求：写出达到每一级范式的分解过程，并指明消除什么类型的函数依赖。\r\n', '设有关系R和函数依赖F| \r\nR（W，X，Y，Z），F = { X→Z，WX→Y }。\r\n试求下列问题|关系R属于第几范式？如果关系R不属于BCNF，请将关系R逐步分解为BCNF。\r\n要求|写出达到每一级范式的分解过程，并指明消除什么类型的函数依赖。\r\n', '10', '5', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('486', '2', '翻译：徐霞客一生周游考察了十六个省，足迹几乎遍及全国。他在考察的过程中，从来不盲目迷信书本上的结论。', 'Xu Xiake toured and investigated/inspect/observe 16 provinces in his lifetime, covering almost the whole of China/ the whole country. When he was carrying out his investigations, he never took blind belief in the conclusions in the books. ', '1', '1', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('487', '2', '翻译：可是我却哭了。哭那陌生的、但却疼爱我的卖灶糖(candy)的老汉。\r\n后来我常想，他为什么疼爱我呢？无非我是个贪吃的、因为丑陋而又少人疼爱的吧。\r\n', 'But I cried for the strange old candy peddler who had been so fond of me.\r\n    Later on, I wondered why. For no other reason than that I was a foolish little thing who loved candy, with few to love me because of my plain face.\r\n', '2', '2', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('488', '2', '翻译：等我长大以后，总感到除了母亲，再没有谁能够像他那样朴素地疼爱过我——没有任何希求，也没有任何企望的。\r\n我常常想念他，也常常想要找到我那个像猪肚子一样的烟荷包。可是，它早已不知被我丢到哪里去了。\r\n', 'When I glow up, I could never forget that apart from my own mother, no one had loved me so fondly and so disinterestedly, with no expectations whatever.', '3', '3', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('489', '2', '翻译：多少年来，我养成了一个习惯：每天早晨四点在黎明以前起床工作。我不出去跑步或散步，而是一下床就干活儿。', 'For many years, I have been in the habit of getting up before daybreak to start work at four. Instead of going out for a jog or walk, I’ll set about my work as soon as I’m out of bed. ', '4', '4', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('490', '2', '翻译：因此我对黎明前的北京的了解是在屋子里感觉到的。我从前在什么报上读过一篇文章，讲黎明时分天安门广场上的清洁工人。', ' As a result, it is from inside my study that I\'ve got the feel of predawn Beijing. Years ago, I hit upon a newspaper article about street cleaners in Tian’anmen Square at daybreak. ', '4', '5', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('491', '2', '翻译：那情景必然是非常动人的，可惜我从未能见到，只是心向往之而已。', 'It must have been a very moving scene, but what a pity I haven’t seen it with my own eyes. I can only picture it in my mind longingly.', '3', '6', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('492', '2', '翻译：长沙是一个有3000多年历史的美丽古城。城市的西边是秀美的岳麓山，山下有千年书院“岳麓书院”等众多古迹。', 'Changsha is a beautiful ancient city with a history of over 3,000 years. West of the city is the beautiful Yuelu Hill, at the foot of the hill, are many historic sites such as Yuelu Academy. ', '2', '7', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('493', '2', '翻译：市区中心的古城楼天心阁，距今有1000多年的历史。千百年来水质清纯，终年不断的白沙古井也坐落在长沙城中。', 'In the center of the city is the ancient city gate tower --Tianxin Tower, which was first built 1000 years ago.', '1', '8', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('494', '2', '翻译：洞庭湖是中国第二大淡水湖。洞庭湖畔的岳阳楼，是中国三大名楼中唯一保持原址原貌的国家重点保护文物。', 'Lake Dongting is China’s second largest freshwater lake. Yueyang Tower, which is located on its shores, is a national key cultural relic for protection as the only one of China’s famous towers that is kept in its original condition at its original site.', '5', '9', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('495', '2', '翻译：岳阳楼所处的位置极好，它屹立于岳阳古城之上，背靠岳阳城，俯瞰洞庭湖，遥对君山岛，北依长江，南通湘江。', 'The tower is very favorably located, standing as it does on Yueyang’s ancient city wall with the city behind and overlooking Lake Dongting to the distant Junshan Isle; to its north is the Yangtze River and to the south the Xiang River. ', '5', '10', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('496', '2', '翻译：自古以来，就是人们观光旅游的好地方。', 'Since ancient times, the tower has been a good place for sightseeing and touring.', '6', '1', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('497', '2', '翻译：正当这位美军飞虎队员一筹莫展眼看只能坐以待毙时，两名中国男孩从杂草丛钻出出现在他的面前，男孩一样个头，都才十二、三岁年纪。', 'This American “Flying Tiger” was at a loss, thinking that he could do nothing but await his doom, when out of the jumble of rank grass emerged two Chinese boys, both of the same height and just a dozen years old.', '7', '2', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('498', '2', '翻译：两个男孩稍作迟疑，立即来到了他的身边。在他的指点下，男孩利索地帮他解开了降落伞，并一边一个迅速扶起他往前走。', 'The boys hesitated a little and came over to him. With his instructions, they dexterously unfastened his parachute, and helped him along with one of them on each side. ', '8', '3', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('499', '2', '翻译：才走不到200米，已经看到了挂太阳旗的日军汽艇，两个男孩简短地商量了几句，就果断地把这名飞虎队员推到山坡边的一丛很深的杂草中，并扯来一大把芦苇将四周盖严后，箭似般消失在树林中。', 'The boys talked a moment and then, without delay, hid the “Flying Tiger” in a thick growth of grass by the hillside, and putting around him more reeds they had quickly pulled out, they vanished swiftly into the wood.', '9', '4', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('500', '2', '翻译：家庭是社会的基本单位，它的结构随着社会的发展而变化。', '  The structure of the family, which is a basic unit of the society, changes along with the development of the society. ', '10', '5', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('501', '2', '翻译：在中国几千年的封建社会里，自给自足的小农经济占主导地位，家庭不仅是日常生活的基本单位，也是生产单位。', 'In China\'s feudal society which lasted several thousand years, a self-sufficient small peasant economy predominated. ', '9', '6', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('502', '2', '翻译：理想的、令人羡慕的家庭是五世同堂，家里的大事由男人做主。近百年来，中国发生了巨大变化，中国社会经过漫长的封建时期，半封建、半殖民地时期进入了社会主义社会。', 'An ideal family admired by all consisted of 5 generations, with the male members making all the important decisions. During the last hundred years, great changes have taken place in China.', '8', '7', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('503', '2', '翻译：现在我自己已是几个孩子的父亲了。我爱孩子，但我没有前一辈父亲的想法，帮孩子一直帮到老，帮到死还不足。', 'Now I myself am a father of several children. Though I love my kids, still I do not share the idea of father and people of his time that one can never do too much in his lifetime to help his children.', '7', '8', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('504', '2', '翻译：我觉得我的孩子累我，使我受到极大的束缚。我没有对他们的永久的计划，甚至连最短促的也没有。', 'I think of my children as an encumbrance to me. I haven\'t worked out a long-term plan for them, nay, not even a short-term one.', '6', '9', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('505', '2', '翻译： 目前，人类的生存环境正在遭到破坏，美丽的大自然已经不那么美丽了。', 'At present, man’s living environment is being ruined, and beautiful nature is no longer so beautiful.', '10', '10', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('506', '2', '为什么说鸦片战争是中国近代史的起点？', '鸦片战争和《南京条约》等一系列不平等条约的签订，为外国资本—帝国主义的侵入打开了中国的大门，使中国社会发生了两大方面的变化，导致中国社会性质的变化，由封建社会逐渐变为半殖民地半封建社会。', '1', '1', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('507', '2', '简述鸦片战争后中国社会发生的两个根本性变化。', '独立变为半殖民地（领土割让、主权分割—领土主权/关税主权/司法主权）；封建变为半封建（商品输出，卷入世界市场，自然经济解体，民族资本主义产生）。', '2', '2', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('508', '2', '简述中国半殖民地半封建社会的基本特征。', '○1资本—帝国主义侵略势力不但逐步操纵了中国的财政和经济命脉，而且逐步控制了中国的政治，日益成为支配中国的决定性力量；\r\n○2中国的封建势力日益衰败并同外国侵略势力勾结，成为资本—帝国主义压迫、奴役中国人民的社会基础和统治支柱；\r\n', '3', '3', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('509', '2', '资本—帝国主义对中国的侵略方式有哪些？', '○1军事侵略。包括|发动侵略战争，屠杀中国人民；侵占中国领土，划分势力范围；勒索赔款，抢掠财富；\r\n○2政治控制。包括|控制中国的内政、外交；镇压中国人民的反抗；扶植、收买代理人；\r\n', '4', '4', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('510', '2', '简述帝国主义列强不能灭亡和瓜分中国的原因。', '帝国主义列强之间的矛盾和互相制约，是一个重要但非根本原因。其根本原因是中华民族进行的不屈不挠的反侵略斗争。\r\n历次的反帝爱国运动中，中国人民以其不畏强暴、敢与敌人血战到底的英雄气概，沉痛打击和教训了帝国主义者，使他们不敢为所欲为瓜分中国。', '4', '5', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('511', '2', '简述近代中国反侵略战争失败的主要原因。', '近代中国人民对外来侵略进行过了英勇顽强的反抗，但历次的反侵略战争都以中国的失败和被迫签订丧权辱国的不平等条约而告终。究其原因，从中国的内部因素分析主要有两方面|一是社会制度的腐败，二是经济技术的落后，前者则为更根本，后者因前者而致', '3', '6', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('512', '2', '简述近代中国人民反侵略斗争的意义。', '○1沉重打击了资本—帝国主义的侵华野心，粉碎了他们瓜分中国和把中国变成完全殖民地的图谋；\r\n○2教育了中国人民，促进了中国人民的奋起直追，大大提高了中国人民的民族觉醒意识。（反面教育、痛定思痛、历史灾难以历史进步为补偿）\r\n', '2', '7', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('513', '2', '简述《资政新篇》的主要内容。', '政治方面|主张“禁朋党之弊”，加强中央集权，学习西方，制定法律、制度；\r\n经济方面|发展近代工矿、交通、邮政、金融等事业，奖励科技发明和机器制造，提出“准富有者请人雇工”，穷人“宜令作工受其值”，对西方的学习从生产力扩大到生产关系（开始学习资本主义的雇佣劳动制）；\r\n', '1', '8', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('514', '2', '洋务运动失败的原因是什么？', '○1洋务运动具有封建性|中体西用，维护封建的上层建筑，维护清王朝的封建统治，不可能适应新的生产力发展；\r\n○2洋务运动对外国具有依赖性|帝国主义通过条约的种种特权加紧对中国的侵略和控制，洋务官员和洋务官办企业都对外国有很强的仰赖性；\r\n', '5', '9', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('515', '2', '简述“百日维新”的主要内容。', '政治方面|改革行政机构，裁撤闲散、重叠的机关，裁汰冗员，提倡廉政，提倡向皇帝上书言事，准许旗人自谋生计，取消其受国家供养的特权；\r\n经济方面|保护、奖励农工商业和交通采矿业，中央和各省设立农工商矿局，提倡开办实业，注重用西式新法开办农场发展农业，广办邮政，修筑铁路，在大城市开办商学、商报，设立商会等组织，改革财政，编制国家预算；\r\n', '5', '10', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('516', '2', '简述戊戌维新运动的历史意义。', '○1是一次爱国救亡运动。在民族危亡的时刻，维新派要求通过变法、发展资本主义，使中国走向富强之路，体现强烈的爱国主义精神；○2是一场资产阶级性质的政治改革运动，在政治经济等领域一定程度上冲击了封建制度；○3是一场思想绮梦运动。对民主思想在中国的传播，对中国近代教育的发展起了积极的推动作用；', '6', '1', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('517', '2', '简述三民主义的主要内容。', '○1民族主义。包括“驱除鞑虏，恢复中华”两项内容|一是要以革命手段推翻清政府，改变其一贯推行的民族歧视和民族压迫政策；二是追求独立，建立“民族独立的国家”。\r\n○2民权主义。内容是“创立民国”，即推翻封建君主专制制度，建立资产阶级民主共和国，此为孙中山所言政治革命。\r\n○3民生主义。当时指“平均地权”，此为孙中山所言社会革命。（这一主张没有正面触及封建土地所有制，不能满足广大农民要求，在革命中难以成为发动群众的理论武器）。\r\n', '7', '2', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('518', '2', '资产阶级革命派和改良派关于革命与改良的辩论的主要内容是什么？', '○1要不要以革命手段推翻清王朝。这是双方论战的焦点，改良派主张立宪，认为革命会引发暴乱及外国干涉，“血流成河”“亡国灭种”；革命派则认为清政府是帝国主义的鹰犬，只有革命推翻才能获得民族独立和社会进步。\r\n○2要不要推翻帝制，实行共和。改良派认为中国“国民低劣”没有实行民主共和政治的能力，革命派则指出不论“国民低劣”还是“政府低劣”，实行民主共和为大势所趋民心所向，拯救和建设中国必须直接推行民主。\r\n', '8', '3', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('519', '2', '简述《中华民国临时约法》的主要内容。', '《中华民国临时约法》是中国历史上第一部具有资产阶级共和国宪法性质的发电。《临时约法》规定“中华民国之主权属于国民全体”，而“以参议院、临时大总统、国务员、法院行使其统治权”。《临时约法》还规定“增设国务总理，作为政府首脑；内阁辅佐临时大总统，为行政机关，行使行政权；增设法院，行使司法权；参议院为立法机关，行使立法权，参议院还有弹劾大总统和国务员的权力。”（简言之就是三权分立）', '9', '4', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('520', '2', '简述辛亥革命的历史意义。', '辛亥革命是近代中国人民为救亡图存、振兴中华而奋起革命的一个里程碑，它使中国发生了历史性的巨变，具有伟大的历史意义。\r\n○1它推翻了封建势力的政治代表、帝国主义在中国的代理人清王朝的统治，沉重打击了中外反动势力，使中国反动统治者在政治上乱了阵脚，为中国人民斗争的发展开辟了道路；\r\n○2结束了统治中国两千多年的封建君主专制制度，建立了中国历史上第一个资产阶级共和政府，使民主共和的观念开始深入人心，并在中国形成了“敢有帝制自为者，天下共击之”的民主主义观念；\r\n', '10', '5', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('521', '2', '中国民族资本主义经济的发展受到哪些阻碍？', '外国资本的压迫|外国资本在中国的商品倾销及直接投资经营企业，致使中国的市场被其廉价商品占领，民族工业规模小技术落后，产品难以与之竞争；○2官僚资本的排挤|官僚资本在国民经济的许多部门占据垄断地位，其工业在资金技术设备原料等方面优势极大，民族工业难以抗衡；○3封建生产关系的束缚|农民受制于封建地主土地所有制，农村生产力水平低购买力有限，内需狭小，轻工原料供应不足，民族工商业发展受限；', '9', '6', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('522', '2', '简述中国民族资本主义经济的特点。', '中国民族资本主义经济是在半殖民地半封建社会条件下艰难生长起来的，具有以下特点|○1民族资本主义经济在国民经济中所占比重很小，力量十分微弱，它始终没有成为中国社会经济的主要形式；○2在民族工业中，工业资本所占的比重小，商业资本和金融资本所占的比重大；○3民族资本主义工业主要是以纺织、食品工业为主的轻工业，缺乏重工业的基础，不能构成一个完整的工业体系和国民经济体系；', '8', '7', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('523', '2', '简述新民主主义革命时期中国存在的三种政治力量及各自建国方案。', '○1地主阶级与买办性的大资产阶级的方案。长期以来他们都是半殖民地半封建社会的统治力量，与广大人民处于尖锐对立的地位，因而主张继续实行地主阶级、买办性的大资产阶级的军事独裁统治，使中国继续走半殖民地半封建社会的道路。\r\n○2民族资产阶级的方案。旧中国民族资产阶级在政治上始终没有占据统治地位，他们的基本政治主张是建立一个名副其实的资产阶级共和国，以便使资本主义得到自由的和充分的发展，使中国成为一个独立的资本主义社会。\r\n○3工人阶级和其他进步势力的方案。', '7', '8', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('524', '2', '简述新文化运动的进步性与局限性。', '进步性|○1是一场反封建的思想解放运动，动摇了封建思想的统治地位，使人们的思想得到空前的解放；○2提倡民主和科学，弘扬资产阶级民主思想，推动中国自然科学的发展；○3后期传播的马克思主义，对五四运动的爆发起到了宣传动员作用。\r\n局限性（针对五四前资产阶级旧民主主义性质的思想运动）|○1倡导者所提倡的资产阶级民主主义，并不能为人们提供一种思想武器去认识中国；○2离开改造产生封建思想的社会环境的革命实践，回避当时对军阀政府的实际斗争', '6', '9', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('525', '2', '简述五四运动的历史意义。', '○1是一次彻底反对帝国主义和封建主义的爱国运动；○2是中国新民主主义革命的开端，无产阶级在运动中登上政治舞台并起到主力军的作用；○3促进了马克思主义在中国的传播，促使其与中国工人运动相结合，从思想上和干部上为中国共产党的成立作准备。\r\n21.简述中国早期马克思主义思想运动的特点。\r\n○1重视对马克思主义基本理论的学习，明确同第二国际的社会民主主义划清界限。', '10', '10', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('526', '2', '数据模型的三大要素是什么？', '数据操作，数据结构，完整性约束', '1', '1', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('527', '2', '数据库设计的基本步骤是什么？', '需求分析、概念结构设计、逻辑结构设计、物理结构设计、数据库实施、数据库运行和维护。', '1', '2', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('528', '2', '什么是事务？事务具有哪些特性？', '事务是用户定义的一个数据库操作序列，这些操作要么全做要么全不做，是一个不可分割的工作单位。事务具有原子性、一致性、隔离性和持续性等特性。', '2', '3', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('529', '2', '简述数据库并发操作通常会带来哪些问题。', '丢失修改、不可重复读、读“脏”数据。', '2', '4', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('530', '2', '简述系统故障时的数据库恢复策略。', '正像扫描日志文件，找出在故障发生前已经提交的事务，将其事务标识记入REDO队列。同时找出故障发生时尚未完成的事务，将其事务标识记入UNDO队列。对UNDO队列中的各个事务进行撤销处理。对REDO队列中的各个事务进行重做处理。', '3', '5', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('531', '2', '设有关系EMP（ENO，ENAME，SALARY，DNO），其中各属性的含义依次为职工号、姓名、工资和所在部门号，以及关系DEPT（DNO，DNAME，MANAGER），其中各属性含义依次为部门号、部门名称、部门经理的职工号。\r\n\r\n试用SQL语句完成以下查询：列出各部门中工资不低于600元的职工的平均工资。\r\n', 'SELECT DNO, AVG (SALARY) \r\nFROM EMP\r\nWHERE SALARY＞=600\r\nGROUP BY DNO\r\n', '3', '6', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('532', '2', '设有关系EMP（ENO，ENAME，SALARY，DNO），其中各属性的含义依次为职工号、姓名、工资和所在部门号，以及关系DEPT（DNO，DNAME，MANAGER），其中各属性含义依次为部门号、部门名称、部门经理的职工号。\r\n\r\n请用SQL语句将“销售部”的那些工资数额低于600的职工的工资上调10%。\r\n', 'UPDATE EMP\r\nSET SALARY=SALARY*1.1\r\nWHERE ENO IN\r\n( SELECT ENO\r\nFROM EMP, DEPT\r\nWHERE EMP.DNO=DEPT.DNO\r\nAND DNAME=’销售部’\r\nAND SALARY＜600）\r\n', '4', '7', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('533', '2', '说明视图与基本表的区别和联系。', '视图是从一个或几个基本表导出的表，它与基本表不同，它是一个虚表，数据库中只存放视图的定义，而不存放视图对应的数据，这些数据存放在原来的基本表中，当基本表中的数据发生变化，从视图中查询出的数据也就随之改变。视图一经定义就可以像基本表一样被查询、删除，也可以在一个视图之上再定义新的视图，但是对视图的更新操作有限制', '4', '8', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('534', '2', '简述事务的特性。', '事务具有四个特性，即ACID特性', '5', '9', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('535', '2', '试述关系模型的参照完整性规则。', '参照完整性规则：若属性（或属性组）F是基本关系R的外码，它与基本关系S的主码Ks相对应（基本关系R和S不一定是不同的关系），则对于R中每个元组在F上的值必须为：取空值（F的每个属性值均为空值）（或者等于S中某个元组的主码值', '5', '10', '10', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('536', '2', '简述系统故障时的数据库恢复策略。', '正像扫描日志文件，找出在故障发生前已经提交的事务，将其事务标识记入REDO队列，同时找出故障发生时尚未完成的事务，将其事务标识记入UNDO队列；对UNDO队列中的各个事务进行撤销处理；对REDO队列中的各个事务进行重做处理。', '6', '1', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('537', '2', '现有关系数据库如下：\r\n学生（学号，姓名，性别，专业）\r\n课程（课程号，课程名，学分）\r\n学习（学号，课程号，分数）\r\n请用SQL语句实现：\r\n检索所有选修了课程号为“C112”的课程的学生的学号和分数；\r\n', 'SQL语句：\r\nSELECT 学号,分数 FROM 学习 WHERE 课程号=’C112’\r\n（SELECT 学号,分数 FROM 学习1分，WHERE 课程号=’C112’1分\r\n', '6', '2', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('538', '2', '现有关系数据库如下：\r\n学生（学号，姓名，性别，专业）\r\n课程（课程号，课程名，学分）\r\n学习（学号，课程号，分数）\r\n请用SQL语句实现：                  \r\n检索“英语”专业学生所学课程的信息，包括学号、姓名、课程名和分数；\r\n', 'SQL语句：\r\nSELECT 学生.学号,姓名,课程名,分数\r\nFROM 学生,学习,课程\r\nWHERE 学习.学号=学生.学号 AND 学习.课程号=课程.课程号 AND 专业=’英语’\r\n', '7', '3', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('539', '2', '现有关系数据库如下：\r\n学生（学号，姓名，性别，专业）\r\n课程（课程号，课程名，学分）\r\n学习（学号，课程号，分数）\r\n请用SQL语句实现：                  \r\n检索“数据库原理”课程成绩高于90分的所有学生的学号、姓名、专业和分数；\r\n', ' SQL语句：\r\nSELECT 学生.学号,姓名,专业,分数 \r\nFROM 学生,学习,课程\r\nWHERE 学生.学号=学习.学号 AND 学习.课程号=课程.课程号 AND分数>90 AND 课程名=‘数据库原理’ \r\n', '7', '4', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('540', '2', '现有关系数据库如下：\r\n学生（学号，姓名，性别，专业）\r\n课程（课程号，课程名，学分）\r\n学习（学号，课程号，分数）\r\n请用SQL语句实现：                  \r\n检索没学课程号为“C135”课程的学生信息，包括学号，姓名和专业；\r\n', 'SQL语句：\r\nSELECT 学号,姓名,专业 \r\nFROM 学生\r\n	        WHERE 学号 NOT IN\r\n（SELECT 学号 FROM 学习 WHERE 课程号=‘C135’）\r\n', '8', '5', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('541', '2', '现有关系数据库如下：\r\n学生（学号，姓名，性别，专业）\r\n课程（课程号，课程名，学分）\r\n学习（学号，课程号，分数）\r\n请用SQL语句实现：                  \r\n检索至少学过课程号为“C135”和“C219”的课程的学生的信息，包括学号、姓名和专业。\r\n', 'SQL语句：\r\nSELECT 学号,姓名,专业 FROM 学生 WHERE 学号 IN\r\n（SELECT X1.学号 FROM  学习 X1，学习 X2  WHERE X1.学号=X2.学号 AND X1.课程号=‘C135’AND X2.课程号=‘C219’）\r\n', '8', '6', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('542', '2', '假设存在名为AAA的数据库，包括S（S#  char(8)，SN varchar(8)，AGE int，DEPT varchar(20)，DateT DateTime）和SC（S# char(8)，CN varchar(10)，GRADE numeric(5,2)）两张表。请按下列要求写一存储过程PROC3。\r\n要求为：修改SC表中学号为@s1的值、课程名为@c1的值的学生成绩为@g1的值。\r\n', 'CREATE PROCEDURE  PROC3\r\n (@s1 char(8),@c1 varchar(10),@g1 numeric(5,2))\r\nAS BEGIN UPDATE  SC SET  GRADE=@g1 \r\n WHERE  S#=@s1  AND CN=@c1         \r\n       END\r\n', '9', '7', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('543', '2', 'E－R图的主要元素是？', '数据查询、数据控制、数据定义、数据操纵', '9', '8', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('544', '2', 'SQL语言集那些功能于一体？', '实体、属性、联系', '10', '9', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('545', '2', '关系系统的完整性控制包括？', '实体完整性、参照完整性、用户定义完整性', '10', '10', '5', '1001', '数据库设计');
INSERT INTO `testbank` VALUES ('546', '2', '为了把女人吃惊时的样子演活，梅兰芳曾花费了不少心思，但总是找不到感觉。', 'Mei Lanfang took great pains to act an astonished woman in a lifelike way, but he could never find the right feel. ', '1', '1', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('547', '2', '一天，他从剧场回到家里，见妻子正聚精会神地整理衣服', 'One day, when he came home from the theater, he saw his wife absorbed in tidying up clothes.', '1', '2', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('548', '2', '他忽然灵机一动，抄起身旁的一个兰花瓷盆，使劲摔在地上。', 'He hit upon a bright idea, and, seizing a porcelain pot with designs of orchid he smashed it onto the floor.', '2', '3', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('549', '2', '“哐”的一声，瓷盆粉碎。妻子大吃一惊，惊慌地转过身来。', 'With a crash the pot broke into pieces. Astonished, his wife turned around in panic.', '2', '4', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('550', '2', '就在这一瞬间，梅兰芳及时地捕捉住了妻子的表情和动作，并牢牢地记在了心里', 'In this instant, Mei Lanfang captured her expression and actions and kept them firmly in his mind. ', '3', '5', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('551', '2', '经过反复练习，然后运用到戏里，终于把女人吃惊的样于演得活灵活现。', 'After repeated practice, he employed them in his acting, and at last succeeded in vivid acting of an astonished woman.', '3', '6', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('552', '2', '目前，人类的生存环境正在遭到破坏，美丽的大自然已经不那么美丽了。', 'At present, man’s living environment is being ruined, and beautiful nature is no longer so beautiful. ', '4', '7', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('553', '2', '保护野生动物，也就是保护人娄自己。', 'Protection of wild life is protection of man himself.', '4', '8', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('554', '2', '我强烈呼吁：不要再捕杀黑猩猩，不要再捕杀野生动物了', 'So I appeal strongly to all to stop killing the chimpanzee or any other wild animal.', '5', '9', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('555', '2', '让我们人类多一些地球上的朋友，多给我们下一代保留一些野生动物吧!', 'Let us human beings have more friends on the earth, and leave more wild life for future generations.', '5', '10', '10', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('556', '2', '否则，地球将毁灭在人类手中，人类将毁灭在自己手中。', 'Or the earth would be destroyed by man, and man by man himself.', '6', '1', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('557', '2', ' 现在我自己已是几个孩子的父亲了。我爱孩子，但我没有前一辈父亲的想法，帮孩子一直帮到老，帮到死还不足。', 'Now I myself am a father of several children. Though I love my kids, still I do not share the idea of father and people of his time that one can never do too much in his lifetime to help his children. ', '6', '2', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('558', '2', '我赞美前一辈父亲的美德，而自己却不能跟着他们的步伐走去。', 'Much as I admire father and people of his time for their moral excellence, I can never follow in their footsteps.', '7', '3', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('559', '2', '我觉得我的孩子累我，使我受到极大的束缚。我没有对他们的永久的计划，甚至连最短促的也没有。', 'I think of my children as an encumbrance to me. I haven\'t worked out a long-term plan for them, nay, not even a short-term one.', '7', '4', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('560', '2', '“倘使有人要，我愿意把他们送给人家!”我常常这样说，当我厌烦孩子的时候。', '\"I\'d like to give away my kids to anyone who\'s willing to take them!\" That\'s what I say whenever I am fed up with them.', '8', '5', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('561', '2', '唉，和前一辈做父亲的一比，我觉得我们这一辈生命力薄弱得可怜', 'Alas, compared with father and people of his time, the present generation, I think, have regrettably low vitality.', '8', '6', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('562', '2', '我们二三十岁的人比不上六七十岁的前辈', 'We in our twenties or thirties prove inferior to our elders in their sixties or seventies. ', '9', '7', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('563', '2', '他们虽然老的老死的死了，但是他们才是真正活着到现在到将来。', 'Today they may be advanced in years or even no more, but they will, nevertheless, live forever and ever.', '9', '8', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('564', '2', '而我们呢，虽然活着，却是早已死了', 'As for us, though still alive, we have long been dead.', '10', '9', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('565', '2', '人口众多的大家庭开始分成较小的家庭和直系家庭，总的趋势是出现了越来越多的核心家庭。', 'Large families began to divide into smaller extended families and stem families, with the trend pointing toward the emergence of more and more nuclear families.', '10', '10', '5', '0501', '大学英语');
INSERT INTO `testbank` VALUES ('566', '2', '为什么中国共产党的建国方案最终成为中国人民的共同选择？', '其他阶级（地主买办阶级、民族资产阶级）方案行不通；中共方案符合国情、代表…利益，现实可行性，阶段性，团结不损各方。', '1', '1', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('567', '2', '十月革命是怎样推动中国先进分子从资产阶级民主主义转向社会主义的？', '○1十月革命鼓舞中国人民的革命斗志，经济文化落后的国家也可以用社会主义思想指引自己走向解放之路；中俄国情近似（农业基础、封建压迫），对中国先进分子具有特殊的吸引力。\r\n○2社会主义俄国号召反对帝国主义，并以新的平等的态度对待中国，有力地推动了社会主义思想在中国的传播；饱受列强欺凌，忽听颠覆世界的喊声，格外入耳，苏俄宣布放弃在中国的一切特权，极大震动。\r\n', '1', '2', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('568', '2', '为什么说五四运动是中国新民主主义革命的开端？', '  1919年五四运动爆发，是中国近代史上一个划时代的事件，它是在新的历史和社会条件下发生的，包括中国资产阶级和工人阶级等新的社会力量的成长壮大，新文化运动掀起思想解放的潮流，以及俄国十月革命胜利对中国的影响等', '2', '3', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('569', '2', '为什么说中国共产党的成立是“开天辟地的大事变”？', '中共成立，时间，历史条件（思想基础、舆论条件、组织准备），时代需要\r\n中国共产党成立使中国革命的面貌焕然一新\r\n', '2', '4', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('570', '2', '为什么说中国共产党是中国人民抗日战争的中流砥柱？', '○1以毛泽东为代表的中共共产党人，把马列主义的基本原理同中国具体实际相结合，创立和发展了毛泽东思想，对抗日战争发挥了重要的指导作用。\r\n○2中国共产党积极倡导、促成和维护抗日民族统一战线，最大限度地动员全国军民共同抗战，成为凝聚全民族力量的杰出组织者和鼓舞者；\r\n', '3', '5', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('571', '2', '如何理解中国的抗日战争是神圣的民族解放战争？', '日本帝国主义的罪行：残暴的殖民统治和中华民族的深重灾难，人民水深火热，抗击日寇、救亡图存、争取民族独立和人民解放成为全民族共同的历史使命，民族圣战。\r\n抗日战争是近代以来中华民族反抗外敌入侵第一次取得完全胜利的民族解放战争。彻底打败日侵略者，捍卫国家主权和领土完整，使人民免遭殖民奴役；促进了民族的伟大觉醒和思想进步，促进全民族的大团结，弘扬民族精神。\r\n', '3', '6', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('572', '2', '中国共产党领导的多党合作和政治协商制度是怎样形成的？', '1948.4.30中央在纪念五一口号中提出：各民主党派、各人民团体、各社会贤达迅速召开政治协商会议，讨论并实现召集人民代表大会，成立民主联合政府。得到热烈响应，各党派负责人及无党派民主人士受邀迅速进入解放区，章伯钧等提出召开政协会议等于临时人民代表会议，产生临时中央政府，为中央接受。', '4', '7', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('573', '2', '为什么说“没有共产党就没有新中国”？', '○1近代历次救国尝试均告失败，农民阶级、资产阶级都不能完成救亡图存的民族使命和反帝反封历史任务。○2马列传入，中共应运而生，承担重任，领导取得胜利，建设。○3中共领导实现了中国从最悲惨的境遇向光明的前途实现伟大历史转折，“没有…就没有…有了…焕然一新”这是中国人民从长期奋斗历程中得到的最基本最重要的结论。', '4', '8', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('574', '2', '为什么说中华人民共和国的成立开创了中国历史的新纪元？', '…国体…它的成立宣告中国人民当家作主的时代已经到来，中国的历史从此开辟了一个新纪元。\r\n○1帝国主义列强压迫奴役的命运结束，洗雪百年耻辱，开始以崭新的姿态自立于世界民族之林；○2封建…官僚资本主义统治结束，长期受压迫和欺凌的国人在政治上翻了身，第一次成为新社会、新国家的主人，真正属于人民的共和国建立；', '5', '9', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('575', '2', '为什么说辛亥革命是一次比较完全意义上的资产阶级民主革命。', '革命性：历史意义（推翻清王朝、封建专制制度，资产阶级民主共和国，民主观念，社会风俗）\r\n不彻底：没有完成彻底反帝反封建（纲领不彻底，不发动群众，执政党内部不团结）\r\n', '5', '10', '10', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('576', '2', '试述辛亥革命失败的原因和教训。', '原因：从客观上说，帝国主义用政治、外交、军事、经济、财政等各种手段来破坏、干涉中国革命，扶植并支持它们的代理人袁世凯夺取政权。帝国主义与以袁世凯为代表的大地主大买办势力以及旧官僚、立宪派一齐勾结起来，从外部和内部绞杀了这场革命。\r\n从主观方面来说，这场革命失败的根本原因，在于它的领导者资产阶级革命派本身存在着许多弱点和错误。\r\n', '6', '1', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('577', '2', '试述三民主义的进步性及其缺陷。', '进步性：中国同盟会以“驱除鞑虏，恢复中华，建立民国，平均地权”为政治纲领，孙中山将其阐发为民族、民权、民生三民主义。三民主义主张以革命手段推翻清王朝的封建统治，建立资产阶级共和国，平均地权。表达了资产阶级在政治上和经济上的利益和要求，反应了中国人民要求民族独立和民主权利的共同愿望，推动了资产阶级民族革命运动的发展，因而是一个比较完整的资产阶级革命纲领，在当时的历史条件下产生过重大的积极作用。', '6', '2', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('578', '2', '试析洋务运动与戊戌变法的区别与联系。', '区别：领导阶级（封建地主官僚、民族资产阶级/资产阶级改良派），采取方式（实业技术、军工民用工业、翻译西学，舆论宣传、讲学，立宪变法），关注层次（技术、制度）\r\n联系：结果一致，代表着领导阶级的进化和关注领域的升级\r\n', '7', '3', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('579', '2', '试述《天朝田亩制度》的进步意义与历史局限性。', '进步性：《天朝田亩制度》提出一个以解决土地问题为中心的比较完整的社会改革方案。从根本上否定了封建社会的基础即封建地主的土地所有制，表现了广大农民要求平均分配土地的强烈愿望，具有进步意义。', '7', '4', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('580', '2', '近代以来资本—帝国主义的入侵给中国带来了什么？', '.近代以来资本—帝国主义的入侵给中国带来了什么？', '8', '5', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('581', '2', '为什么说外帝国主义和封建主义的联合统治导致近代中国经济落后和人民贫困？', '为什么说外帝国主义和封建主义的联合统治导致近代中国经济落后和人民贫困？', '8', '6', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('582', '2', '为什么说外帝国主义和封建主义的联合统治导致近代中国经济落后和人民贫困？', '不平等条约，特权，商品倾销和资本输出，卷入世界市场，原料产地；自然经济解体，活跃商品经济，客观上创造条件刺激民族资本主义工商业的兴起；但遭三座大山压迫，依赖性，发展缓慢困难。', '9', '7', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('583', '2', '简述近代中国两大历史任务及其关系。', '近代中国有两大历史任务，即争取民族独立、人民解放和实现国家富强、人民富裕，这两个任务是相互区别又相互联系的。由于腐朽的社会制度束缚着生产力的发展，阻碍了经济技术的进步，所以必须首先改变这种社会制度争取民族独立和解放。', '9', '8', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('584', '2', '简述新中国成立以来取得的历史性成就。', '简述新中国成立以来取得的历史性成就。', '10', '9', '5', '0301', '中国近代史纲要');
INSERT INTO `testbank` VALUES ('585', '2', '新中国成立初期为克服当时的困难，中国共产党和人民政府着重抓的工作有哪些方面？', '○1完成民主革命的遗留任务。包括：追剿残敌完成大陆基本统一，继续实行土地改革，制定婚姻法废除旧式婚姻制度，镇压反革命肃清国民党在大陆遗留的反动势力等；\r\n○2领导国民经济恢复工作。包括：没收官僚资本，实行企业内民主和生产改革，确立社会主义性质的国营经济在国民经济中领导地位，开展稳定物价斗争，统一全国财政并建立集中管理机制等\r\n', '10', '10', '5', '0301', '中国近代史纲要');
