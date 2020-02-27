/*
 Navicat Premium Data Transfer

 Source Server         : Ponmma
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : ss

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 27/02/2020 18:32:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_acl
-- ----------------------------
DROP TABLE IF EXISTS `sys_acl`;
CREATE TABLE `sys_acl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `code` varchar(20) NOT NULL DEFAULT '' COMMENT '权限码',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '权限名称',
  `acl_module_id` int(11) NOT NULL DEFAULT '0' COMMENT '权限所在的权限模块id',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '请求的url, 可以填正则表达式',
  `type` int(11) NOT NULL DEFAULT '3' COMMENT '类型，1：菜单，2：按钮，3：其他',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '状态，1：正常，0：冻结',
  `seq` int(11) NOT NULL DEFAULT '0' COMMENT '权限在当前模块下的顺序，由小到大',
  `remark` varchar(200) DEFAULT '' COMMENT '备注',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '操作者',
  `operate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
  `operate_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '最后一个更新者的ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_acl
-- ----------------------------
BEGIN;
INSERT INTO `sys_acl` VALUES (1, '20171015095130_26', '进入产品管理界面', 1, '/sys/product/product.page', 1, 1, 1, '', 'Admin', '2017-10-15 09:51:30', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES (2, '20171015095322_14', '查询产品列表', 1, '/sys/product/page.json', 2, 1, 2, '', 'Admin', '2017-10-15 09:53:22', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES (3, '20171015095350_69', '产品上架', 1, '/sys/product/online.json', 2, 1, 3, '', 'Admin', '2017-10-15 09:53:51', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES (4, '20171015095420_7', '产品下架', 1, '/sys/product/offline.json', 2, 1, 4, '', 'Admin', '2020-02-20 05:31:55', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES (5, '20171015212626_63', '进入订单页', 2, '/sys/order/order.page', 1, 1, 1, '', 'Admin', '2017-10-15 21:26:27', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES (6, '20171015212657_12', '查询订单列表', 2, '/sys/order/list.json', 2, 1, 2, '', 'Admin', '2017-10-15 21:26:57', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES (7, '20171015212907_36', '进入权限管理页', 7, '/sys/aclModule/acl.page', 1, 1, 1, '', 'Admin', '2020-02-20 05:24:15', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES (8, '20171015212938_27', '进入角色管理页', 8, '/sys/role/role.page', 1, 1, 1, '', 'Admin', '2020-02-24 07:58:20', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES (9, '20171015213009_0', '进入用户管理页', 9, '/sys/dept/dept.page', 1, 1, 1, '', 'Admin', '2017-10-15 21:30:09', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES (10, '20171016230429_8', '进入权限更新记录页面', 11, '/sys/log/log.page', 1, 1, 1, '', 'Admin', '2017-10-16 23:04:49', '0:0:0:0:0:0:0:1');
COMMIT;

-- ----------------------------
-- Table structure for sys_acl_module
-- ----------------------------
DROP TABLE IF EXISTS `sys_acl_module`;
CREATE TABLE `sys_acl_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限模块id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '权限模块名称',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级权限模块id',
  `level` varchar(200) NOT NULL DEFAULT '' COMMENT '权限模块层级',
  `seq` int(11) NOT NULL DEFAULT '0' COMMENT '权限模块在当前层级下的顺序，由小到大',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '状态，1：正常，0：冻结',
  `remark` varchar(200) DEFAULT '' COMMENT '备注',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '操作者',
  `operate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次操作时间',
  `operate_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '最后一次更新操作者的ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_acl_module
-- ----------------------------
BEGIN;
INSERT INTO `sys_acl_module` VALUES (1, '产品管理', 0, '0', 1, 1, 'product', 'Admin', '2017-10-14 21:13:15', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl_module` VALUES (2, '订单管理', 0, '0', 2, 1, '', 'Admin', '2017-10-14 20:17:11', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl_module` VALUES (3, '公告管理', 0, '0', 3, 1, '', 'Admin', '2017-10-14 20:17:21', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl_module` VALUES (4, '出售中产品管理', 1, '0.1', 1, 1, '', 'Admin', '2017-10-14 21:13:39', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl_module` VALUES (5, '下架产品管理', 1, '0.1', 2, 1, '', 'Admin', '2020-02-19 07:30:31', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl_module` VALUES (6, '权限管理', 0, '0', 4, 1, '', 'Admin', '2017-10-15 21:27:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl_module` VALUES (7, '权限管理', 6, '0.6', 1, 1, '', 'Admin', '2017-10-15 21:27:57', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl_module` VALUES (8, '角色管理', 6, '0.6', 2, 1, '', 'Admin', '2017-10-15 21:28:22', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl_module` VALUES (9, '用户管理', 6, '0.6', 2, 1, '', 'Admin', '2017-10-15 21:28:36', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl_module` VALUES (11, '权限更新记录管理', 6, '0.6', 4, 1, '', 'Admin', '2020-02-20 05:23:33', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl_module` VALUES (12, '运维管理', 0, '0', 8, 1, '', 'Admin', '2020-02-23 07:06:30', '0:0:0:0:0:0:0:1');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '部门名称',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级部门id',
  `level` varchar(200) NOT NULL DEFAULT '' COMMENT '部门层级',
  `seq` int(11) NOT NULL DEFAULT '0' COMMENT '部门在当前层级下的顺序，由小到大',
  `remark` varchar(200) DEFAULT '' COMMENT '备注',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '操作者',
  `operate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次操作时间',
  `operate_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '最后一次更新操作者的ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` VALUES (1, '技术部', 0, '0', 1, '技术部', 'system', '2017-10-11 07:21:40', '127.0.0.1');
INSERT INTO `sys_dept` VALUES (2, '后端开发', 1, '0.1', 1, '后端', 'system-update', '2017-10-12 07:56:16', '127.0.0.1');
INSERT INTO `sys_dept` VALUES (3, '前端开发', 1, '0.1', 2, '', 'system_test', '2020-02-16 05:27:23', '127.0.0.1');
INSERT INTO `sys_dept` VALUES (4, 'UI设计', 1, '0.1', 3, '', 'system_test', '2020-02-16 05:27:32', '127.0.0.1');
INSERT INTO `sys_dept` VALUES (11, '产品部', 0, '0', 2, '', 'Admin', '2017-10-16 22:52:29', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_dept` VALUES (12, '客服部', 0, '0', 4, '', 'system_test', '2020-02-16 03:38:36', '127.0.0.1');
INSERT INTO `sys_dept` VALUES (19, '公关部', 0, '0', 1, '', 'system', '2020-02-16 03:38:31', '127.0.0.1');
INSERT INTO `sys_dept` VALUES (20, '政府公关', 19, '0.19', 1, '', 'system', '2020-02-16 03:40:40', '127.0.0.1');
INSERT INTO `sys_dept` VALUES (21, '2D设计', 4, '0.1.4', 1, '', 'Admin', '2020-02-19 07:23:33', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_dept` VALUES (23, '企业公关', 19, '0.19', 1, '', 'Admin', '2020-02-18 06:46:52', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_dept` VALUES (24, '3D设计', 4, '0.1.4', 1, '', 'Admin', '2020-02-23 07:05:17', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_dept` VALUES (26, '投资部', 0, '0', 1, '', 'Admin', '2020-02-26 08:20:13', '0:0:0:0:0:0:0:1');
COMMIT;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '权限更新的类型，1：部门，2：用户，3：权限模块，4：权限，5：角色，6：角色用户关系，7：角色权限关系',
  `target_id` int(11) NOT NULL COMMENT '基于type后指定的对象id，比如用户、权限、角色等表的主键',
  `old_value` text COMMENT '旧值',
  `new_value` text COMMENT '新值',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '操作者',
  `operate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新的时间',
  `operate_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '最后一次更新者的ip地址',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '当前是否复原过，0：没有，1：复原过',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_log` VALUES (33, 1, 26, '', '{\"id\":26,\"name\":\"投资部\",\"parentId\":0,\"level\":\"0\",\"seq\":1,\"operator\":\"Admin\",\"operateTime\":1582720771246,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2020-02-26 06:39:31', '0:0:0:0:0:0:0:1', 1);
INSERT INTO `sys_log` VALUES (34, 2, 19, '', '{\"id\":19,\"username\":\"徐静\",\"telephone\":\"12345678901\",\"mail\":\"xunjing@cjh.com\",\"password\":\"073D02F499963FD9EDB9FCD7F3C74286\",\"deptId\":26,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1582720822166,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2020-02-26 06:40:22', '0:0:0:0:0:0:0:1', 1);
INSERT INTO `sys_log` VALUES (35, 2, 19, '{\"id\":19,\"username\":\"徐静\",\"telephone\":\"12345678901\",\"mail\":\"xunjing@cjh.com\",\"password\":\"073D02F499963FD9EDB9FCD7F3C74286\",\"deptId\":26,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1582720822000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":19,\"username\":\"黄静\",\"telephone\":\"12345678901\",\"mail\":\"huangjing@cjh.com\",\"deptId\":26,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1582720872478,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2020-02-26 06:41:12', '0:0:0:0:0:0:0:1', 1);
INSERT INTO `sys_log` VALUES (36, 2, 19, '{\"id\":19,\"username\":\"黄静\",\"telephone\":\"12345678901\",\"mail\":\"huangjing@cjh.com\",\"password\":\"073D02F499963FD9EDB9FCD7F3C74286\",\"deptId\":26,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1582720872000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":19,\"username\":\"徐静\",\"telephone\":\"12345678901\",\"mail\":\"xunjing@cjh.com\",\"password\":\"073D02F499963FD9EDB9FCD7F3C74286\",\"deptId\":26,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1582726622098,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2020-02-26 08:17:02', '0:0:0:0:0:0:0:1', 1);
INSERT INTO `sys_log` VALUES (37, 6, 5, '[]', '[1,2,3,4,5,6,7,8,9,10]', 'Admin', '2020-02-26 08:17:31', '0:0:0:0:0:0:0:1', 1);
INSERT INTO `sys_log` VALUES (38, 6, 5, '[1,2,3,4,5,6,7,8,9,10]', '[]', 'Admin', '2020-02-26 08:17:45', '0:0:0:0:0:0:0:1', 1);
INSERT INTO `sys_log` VALUES (39, 1, 26, '{\"id\":26,\"name\":\"投资部\",\"parentId\":0,\"level\":\"0\",\"seq\":1,\"operator\":\"Admin\",\"operateTime\":1582720771000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":26,\"name\":\"人力资源部\",\"parentId\":0,\"level\":\"0\",\"seq\":1,\"operator\":\"Admin\",\"operateTime\":1582726804715,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2020-02-26 08:20:05', '0:0:0:0:0:0:0:1', 1);
INSERT INTO `sys_log` VALUES (40, 1, 26, '{\"id\":26,\"name\":\"人力资源部\",\"parentId\":0,\"level\":\"0\",\"seq\":1,\"operator\":\"Admin\",\"operateTime\":1582726805000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":26,\"name\":\"投资部\",\"parentId\":0,\"level\":\"0\",\"seq\":1,\"operator\":\"Admin\",\"operateTime\":1582726813095,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2020-02-26 08:20:13', '0:0:0:0:0:0:0:1', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `name` varchar(20) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '角色的类型，1：管理员角色，2：其他',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '状态，1：可用，0：冻结',
  `remark` varchar(200) DEFAULT '' COMMENT '备注',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '操作者',
  `operate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新的时间',
  `operate_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '最后一次更新者的ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, '产品管理员', 1, 1, '', 'Admin', '2020-02-20 06:19:51', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role` VALUES (2, '订单管理员', 1, 1, '', 'Admin', '2017-10-15 12:18:59', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role` VALUES (3, '公告管理员', 1, 1, '', 'Admin', '2017-10-15 12:19:10', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role` VALUES (4, '权限管理员', 1, 1, '', 'Admin', '2017-10-15 21:30:36', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role` VALUES (5, '运维管理员', 1, 1, '运维', 'Admin', '2017-10-17 00:23:28', '0:0:0:0:0:0:0:1');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_acl
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_acl`;
CREATE TABLE `sys_role_acl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `acl_id` int(11) NOT NULL COMMENT '权限id',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '操作者',
  `operate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新的时间',
  `operate_ip` varchar(200) NOT NULL DEFAULT '' COMMENT '最后一次更新者的ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role_acl
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_acl` VALUES (31, 4, 7, 'Jimin', '2020-02-24 07:52:09', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_acl` VALUES (32, 4, 8, 'Jimin', '2020-02-24 07:52:09', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_acl` VALUES (33, 4, 9, 'Jimin', '2020-02-24 07:52:09', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_acl` VALUES (34, 4, 10, 'Jimin', '2020-02-24 07:52:09', '0:0:0:0:0:0:0:1');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '操作者',
  `operate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新的时间',
  `operate_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '最后一次更新者的ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_user` VALUES (27, 4, 2, 'Admin', '2020-02-24 07:40:01', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_user` VALUES (28, 4, 1, 'Admin', '2020-02-24 07:40:01', '0:0:0:0:0:0:0:1');
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名称',
  `telephone` varchar(13) NOT NULL DEFAULT '' COMMENT '手机号',
  `mail` varchar(20) NOT NULL DEFAULT '' COMMENT '邮箱',
  `password` varchar(40) NOT NULL DEFAULT '' COMMENT '加密后的密码',
  `dept_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户所在部门的id',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '状态，1：正常，0：冻结状态，2：删除',
  `remark` varchar(200) DEFAULT '' COMMENT '备注',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '操作者',
  `operate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
  `operate_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '最后一次更新者的ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 'Admin', '18612344321', 'admin@qq.com', '25D55AD283AA400AF464C76D713C07AD', 1, 1, 'admin', 'system-test', '2020-02-17 07:12:47', '127.0.0.1');
INSERT INTO `sys_user` VALUES (2, 'Jimin', '13188889999', 'jimin@qq.com', '25D55AD283AA400AF464C76D713C07AD', 21, 1, 'jimin.zheng', 'system-test', '2020-02-17 07:14:45', '127.0.0.1');
INSERT INTO `sys_user` VALUES (3, 'Jimmy', '13812344311', 'jimmy@qq.com', '25D55AD283AA400AF464C76D713C07AD', 2, 1, '', 'Admin', '2017-10-16 12:57:35', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_user` VALUES (4, 'Kate', '13144445555', 'kate@qq.com', '25D55AD283AA400AF464C76D713C07AD', 1, 1, 'sss', 'Admin', '2017-10-16 23:02:51', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_user` VALUES (5, '服务员A', '18677778888', 'service@qq.com', '25D55AD283AA400AF464C76D713C07AD', 12, 1, '', 'Admin', '2017-10-17 00:22:15', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_user` VALUES (12, 'ponmma', '18782551234', 'ponmmains@aa.edu.cn', '3509D622EAA91E5828341BC875460D6B', 2, 1, '', 'Admin', '2020-02-18 08:22:25', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_user` VALUES (19, '徐静', '12345678901', 'xunjing@cjh.com', '073D02F499963FD9EDB9FCD7F3C74286', 26, 1, '', 'Admin', '2020-02-26 08:17:02', '0:0:0:0:0:0:0:1');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
