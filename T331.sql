/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t331`;
CREATE DATABASE IF NOT EXISTS `t331` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t331`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'jianli_types', '求职意向', 1, '求职意向1', NULL, NULL, '2023-03-16 01:43:05'),
	(2, 'jianli_types', '求职意向', 2, '求职意向2', NULL, NULL, '2023-03-16 01:43:05'),
	(3, 'jianli_types', '求职意向', 3, '求职意向3', NULL, NULL, '2023-03-16 01:43:05'),
	(4, 'zhaopin_types', '招聘岗位', 1, '招聘岗位1', NULL, NULL, '2023-03-16 01:43:05'),
	(5, 'zhaopin_types', '招聘岗位', 2, '招聘岗位2', NULL, NULL, '2023-03-16 01:43:05'),
	(6, 'zhaopin_types', '招聘岗位', 3, '招聘岗位3', NULL, NULL, '2023-03-16 01:43:05'),
	(7, 'shangxia_types', '是否上架', 1, '上架', NULL, NULL, '2023-03-16 01:43:05'),
	(8, 'shangxia_types', '是否上架', 2, '下架', NULL, NULL, '2023-03-16 01:43:05'),
	(9, 'sex_types', '性别', 1, '男', NULL, NULL, '2023-03-16 01:43:05'),
	(10, 'sex_types', '性别', 2, '女', NULL, NULL, '2023-03-16 01:43:05'),
	(13, 'news_types', '公告信息类型', 1, '公告信息类型1', NULL, NULL, '2023-03-16 01:43:05'),
	(14, 'news_types', '公告信息类型', 2, '公告信息类型2', NULL, NULL, '2023-03-16 01:43:05'),
	(15, 'news_types', '公告信息类型', 3, '公告信息类型3', NULL, NULL, '2023-03-16 01:43:05'),
	(17, 'gongsi_types', '企业类型', 1, '企业类型1', NULL, NULL, '2023-03-16 01:43:05'),
	(18, 'gongsi_types', '企业类型', 2, '企业类型2', NULL, NULL, '2023-03-16 01:43:05'),
	(19, 'gongsi_types', '企业类型', 3, '企业类型3', NULL, NULL, '2023-03-16 01:43:05'),
	(20, 'leixing_types', '招聘类型', 1, '招聘类型', NULL, NULL, '2023-03-16 01:43:05'),
	(21, 'leixing_types', '招聘类型', 2, '校园招聘', NULL, NULL, '2023-03-16 01:43:05'),
	(22, 'zhaopin_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-03-16 01:43:05'),
	(23, 'zhaopin_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-03-16 01:43:05'),
	(24, 'zhaopin_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-03-16 01:43:05'),
	(25, 'zhaopin_yuyue_yesno_types', '申请状态', 1, '未回复', NULL, NULL, '2023-03-16 01:43:06'),
	(26, 'zhaopin_yuyue_yesno_types', '申请状态', 2, '通过', NULL, NULL, '2023-03-16 01:43:06'),
	(27, 'zhaopin_yuyue_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2023-03-16 01:43:06'),
	(28, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-03-16 01:43:06'),
	(29, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-03-16 01:43:06');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `gongsi_id` int DEFAULT NULL COMMENT '企业',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `gongsi_id`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', NULL, 3, NULL, '发布内容1', 160, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(2, '帖子标题2', NULL, 1, NULL, '发布内容2', 162, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(3, '帖子标题3', NULL, 1, NULL, '发布内容3', 7, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(4, '帖子标题4', NULL, 1, NULL, '发布内容4', 404, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(5, '帖子标题5', NULL, 2, NULL, '发布内容5', 203, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(6, '帖子标题6', NULL, 2, NULL, '发布内容6', 368, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(7, '帖子标题7', NULL, 1, NULL, '发布内容7', 41, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(8, '帖子标题8', NULL, 2, NULL, '发布内容8', 97, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(9, '帖子标题9', NULL, 2, NULL, '发布内容9', 199, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(10, '帖子标题10', NULL, 1, NULL, '发布内容10', 108, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(11, '帖子标题11', NULL, 1, NULL, '发布内容11', 172, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(12, '帖子标题12', NULL, 1, NULL, '发布内容12', 226, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(13, '帖子标题13', NULL, 1, NULL, '发布内容13', 220, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(14, '帖子标题14', NULL, 3, NULL, '发布内容14', 361, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(15, NULL, 1, NULL, NULL, '123123', 14, 2, '2023-03-16 02:39:49', NULL, '2023-03-16 02:39:49'),
	(16, NULL, NULL, 1, NULL, '123123123', 14, 2, '2023-03-16 02:39:57', NULL, '2023-03-16 02:39:57'),
	(17, NULL, NULL, NULL, 1, '123123', 14, 2, '2023-03-16 02:40:52', NULL, '2023-03-16 02:40:52'),
	(18, NULL, NULL, 1, NULL, '666', 11, 2, '2024-08-04 02:46:20', NULL, '2024-08-04 02:46:20');

DROP TABLE IF EXISTS `gongsi`;
CREATE TABLE IF NOT EXISTS `gongsi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `gongsi_name` varchar(200) DEFAULT NULL COMMENT '企业名称 Search111 ',
  `gongsi_types` int DEFAULT NULL COMMENT '企业类型',
  `gongsi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gongsi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `gongsi_photo` varchar(200) DEFAULT NULL COMMENT '企业封面',
  `gongsi_content` text COMMENT '企业简介 ',
  `gongsi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='企业';

DELETE FROM `gongsi`;
INSERT INTO `gongsi` (`id`, `username`, `password`, `gongsi_name`, `gongsi_types`, `gongsi_phone`, `gongsi_email`, `gongsi_photo`, `gongsi_content`, `gongsi_delete`, `create_time`) VALUES
	(1, '企业1', '123456', '企业名称1', 2, '17703786901', '1@qq.com', 'upload/gongsi1.jpg', '企业简介1', 1, '2023-03-16 01:43:23'),
	(2, '企业2', '123456', '企业名称2', 2, '17703786902', '2@qq.com', 'upload/gongsi2.jpg', '企业简介2', 1, '2023-03-16 01:43:23'),
	(3, '企业3', '123456', '企业名称3', 2, '17703786903', '3@qq.com', 'upload/gongsi3.jpg', '企业简介3', 1, '2023-03-16 01:43:23');

DROP TABLE IF EXISTS `jianli`;
CREATE TABLE IF NOT EXISTS `jianli` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jianli_uuid_number` varchar(200) DEFAULT NULL COMMENT '简历唯一编号 ',
  `jianli_name` varchar(200) DEFAULT NULL COMMENT '简历标题',
  `jianli_xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jianli_types` int DEFAULT NULL COMMENT '求职意向 Search111',
  `jianli_xinzi` varchar(200) DEFAULT NULL COMMENT '期望工资 Search111',
  `jianli_xueli` varchar(200) DEFAULT NULL COMMENT '学历 Search111',
  `jianli_jingli` varchar(200) DEFAULT NULL COMMENT '工作经历 Search111',
  `jianli_file` varchar(200) DEFAULT NULL COMMENT '简历文件',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `jianli_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jianli_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `jianli_address` varchar(200) DEFAULT NULL COMMENT '位置',
  `jiaoyu_text` text COMMENT '教育经历',
  `shixi_text` text COMMENT '实习或工作经历',
  `geren_text` text COMMENT '个人介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='简历';

DELETE FROM `jianli`;
INSERT INTO `jianli` (`id`, `yonghu_id`, `jianli_uuid_number`, `jianli_name`, `jianli_xingming`, `jianli_types`, `jianli_xinzi`, `jianli_xueli`, `jianli_jingli`, `jianli_file`, `sex_types`, `jianli_phone`, `jianli_photo`, `jianli_address`, `jiaoyu_text`, `shixi_text`, `geren_text`, `create_time`) VALUES
	(1, 3, '1678931003169', '简历标题1', '姓名1', 3, '期望工资1', '学历1', '工作经历1', 'upload/file.rar', 1, '17703786901', 'upload/jianli1.jpg', '位置1', '教育经历1', '实习或工作经历1', '个人介绍1', '2023-03-16 01:43:23'),
	(2, 3, '1678931003160', '简历标题2', '姓名2', 2, '期望工资2', '学历2', '工作经历2', 'upload/file.rar', 2, '17703786902', 'upload/jianli2.jpg', '位置2', '教育经历2', '实习或工作经历2', '个人介绍2', '2023-03-16 01:43:23'),
	(3, 2, '1678931003155', '简历标题3', '姓名3', 3, '期望工资3', '学历3', '工作经历3', 'upload/file.rar', 2, '17703786903', 'upload/jianli3.jpg', '位置3', '教育经历3', '实习或工作经历3', '个人介绍3', '2023-03-16 01:43:23'),
	(4, 2, '1678931003129', '简历标题4', '姓名4', 2, '期望工资4', '学历4', '工作经历4', 'upload/file.rar', 1, '17703786904', 'upload/jianli4.jpg', '位置4', '教育经历4', '实习或工作经历4', '个人介绍4', '2023-03-16 01:43:23'),
	(5, 3, '1678931003166', '简历标题5', '姓名5', 1, '期望工资5', '学历5', '工作经历5', 'upload/file.rar', 2, '17703786905', 'upload/jianli5.jpg', '位置5', '教育经历5', '实习或工作经历5', '个人介绍5', '2023-03-16 01:43:23'),
	(6, 3, '1678931003189', '简历标题6', '姓名6', 1, '期望工资6', '学历6', '工作经历6', 'upload/file.rar', 2, '17703786906', 'upload/jianli6.jpg', '位置6', '教育经历6', '实习或工作经历6', '个人介绍6', '2023-03-16 01:43:23'),
	(7, 3, '1678931003155', '简历标题7', '姓名7', 3, '期望工资7', '学历7', '工作经历7', 'upload/file.rar', 2, '17703786907', 'upload/jianli7.jpg', '位置7', '教育经历7', '实习或工作经历7', '个人介绍7', '2023-03-16 01:43:23'),
	(8, 2, '1678931003185', '简历标题8', '姓名8', 3, '期望工资8', '学历8', '工作经历8', 'upload/file.rar', 1, '17703786908', 'upload/jianli8.jpg', '位置8', '教育经历8', '实习或工作经历8', '个人介绍8', '2023-03-16 01:43:23'),
	(9, 1, '1678931003179', '简历标题9', '姓名9', 1, '期望工资9', '学历9', '工作经历9', 'upload/file.rar', 2, '17703786909', 'upload/jianli9.jpg', '位置9', '教育经历9', '实习或工作经历9', '个人介绍9', '2023-03-16 01:43:23'),
	(10, 1, '1678931003142', '简历标题10', '姓名10', 2, '期望工资10', '学历10', '工作经历10', 'upload/file.rar', 1, '17703786910', 'upload/jianli10.jpg', '位置10', '教育经历10', '实习或工作经历10', '个人介绍10', '2023-03-16 01:43:23'),
	(11, 3, '1678931003166', '简历标题11', '姓名11', 1, '期望工资11', '学历11', '工作经历11', 'upload/file.rar', 2, '17703786911', 'upload/jianli11.jpg', '位置11', '教育经历11', '实习或工作经历11', '个人介绍11', '2023-03-16 01:43:23'),
	(12, 3, '1678931003158', '简历标题12', '姓名12', 3, '期望工资12', '学历12', '工作经历12', 'upload/file.rar', 1, '17703786912', 'upload/jianli12.jpg', '位置12', '教育经历12', '实习或工作经历12', '个人介绍12', '2023-03-16 01:43:23'),
	(13, 1, '1678931003196', '简历标题13', '姓名13', 1, '期望工资13', '学历13', '工作经历13', 'upload/file.rar', 2, '17703786913', 'upload/jianli13.jpg', '位置13', '教育经历13', '实习或工作经历13', '个人介绍13', '2023-03-16 01:43:23'),
	(14, 2, '1678931003181', '简历标题14', '姓名14', 3, '期望工资14', '学历14', '工作经历14', 'upload/file.rar', 1, '17703786914', 'upload/jianli14.jpg', '位置14', '教育经历14', '实习或工作经历14', '个人介绍14', '2023-03-16 01:43:23');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告信息类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告信息时间',
  `news_content` text COMMENT '公告信息详情',
  `news_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `news_delete`, `create_time`) VALUES
	(1, '公告信息标题1', 2, 'upload/news1.jpg', '2023-03-16 01:43:23', '公告信息详情1', 1, '2023-03-16 01:43:23'),
	(2, '公告信息标题2', 1, 'upload/news2.jpg', '2023-03-16 01:43:23', '公告信息详情2', 1, '2023-03-16 01:43:23'),
	(3, '公告信息标题3', 3, 'upload/news3.jpg', '2023-03-16 01:43:23', '公告信息详情3', 1, '2023-03-16 01:43:23'),
	(4, '公告信息标题4', 1, 'upload/news4.jpg', '2023-03-16 01:43:23', '公告信息详情4', 1, '2023-03-16 01:43:23'),
	(5, '公告信息标题5', 2, 'upload/news5.jpg', '2023-03-16 01:43:23', '公告信息详情5', 1, '2023-03-16 01:43:23'),
	(6, '公告信息标题6', 3, 'upload/news6.jpg', '2023-03-16 01:43:23', '公告信息详情6', 1, '2023-03-16 01:43:23'),
	(7, '公告信息标题7', 2, 'upload/news7.jpg', '2023-03-16 01:43:23', '公告信息详情7', 1, '2023-03-16 01:43:23'),
	(8, '公告信息标题8', 3, 'upload/news8.jpg', '2023-03-16 01:43:23', '公告信息详情8', 1, '2023-03-16 01:43:23'),
	(9, '公告信息标题9', 3, 'upload/news9.jpg', '2023-03-16 01:43:23', '公告信息详情9', 1, '2023-03-16 01:43:23'),
	(10, '公告信息标题10', 1, 'upload/news10.jpg', '2023-03-16 01:43:23', '公告信息详情10', 1, '2023-03-16 01:43:23'),
	(11, '公告信息标题11', 1, 'upload/news11.jpg', '2023-03-16 01:43:23', '公告信息详情11', 1, '2023-03-16 01:43:23'),
	(12, '公告信息标题12', 2, 'upload/news12.jpg', '2023-03-16 01:43:23', '公告信息详情12', 1, '2023-03-16 01:43:23'),
	(13, '公告信息标题13', 2, 'upload/news13.jpg', '2023-03-16 01:43:23', '公告信息详情13', 1, '2023-03-16 01:43:23'),
	(14, '公告信息标题14', 2, 'upload/news14.jpg', '2023-03-16 01:43:23', '公告信息详情14', 1, '2023-03-16 01:43:23');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '采购员id',
  `username` varchar(100) NOT NULL COMMENT '采购员名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'o9e3dx1hdhdo0snslpx3618t52clp59x', '2023-03-16 02:08:35', '2024-08-04 03:46:10'),
	(2, 1, 'admin', 'users', '管理员', 'nwu2zkt5rhttnuy6wcgjfpjrtjddmptk', '2023-03-16 02:11:11', '2024-08-04 03:44:41'),
	(3, 1, 'a1', 'gongsi', '企业', 'eu5ar39o2olguo5me58hqhdrpuwa281x', '2023-03-16 02:39:20', '2024-08-04 03:45:57');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '采购员名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-16 01:43:05');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `sex_types`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'upload/yonghu1.jpg', '17703786901', '410224199010102001', '1@qq.com', 2, 1, '2023-03-16 01:43:23'),
	(2, '用户2', '123456', '用户姓名2', 'upload/yonghu2.jpg', '17703786902', '410224199010102002', '2@qq.com', 1, 1, '2023-03-16 01:43:23'),
	(3, '用户3', '123456', '用户姓名3', 'upload/yonghu3.jpg', '17703786903', '410224199010102003', '3@qq.com', 1, 1, '2023-03-16 01:43:23');

DROP TABLE IF EXISTS `zhaopin`;
CREATE TABLE IF NOT EXISTS `zhaopin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongsi_id` int DEFAULT NULL COMMENT '企业',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '招聘信息名称  Search111 ',
  `zhaopin_photo` varchar(200) DEFAULT NULL COMMENT '招聘信息照片',
  `zhaopin_daiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhaopin_address` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人',
  `zhaopin_phone` varchar(200) DEFAULT NULL COMMENT '招聘电话',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `zhaopin_types` int DEFAULT NULL COMMENT '招聘岗位 Search111',
  `leixing_types` int DEFAULT NULL COMMENT '招聘类型 Search111',
  `zhaopin_renshu_number` int DEFAULT NULL COMMENT '招聘人数',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `zhaopin_content` text COMMENT '招聘信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='职位招聘';

DELETE FROM `zhaopin`;
INSERT INTO `zhaopin` (`id`, `gongsi_id`, `zhaopin_name`, `zhaopin_photo`, `zhaopin_daiyu`, `zhaopin_address`, `lianxiren_name`, `zhaopin_phone`, `zan_number`, `cai_number`, `zhaopin_types`, `leixing_types`, `zhaopin_renshu_number`, `shangxia_types`, `zhaopin_content`, `create_time`) VALUES
	(1, 2, '招聘信息名称1', 'upload/zhaopin1.jpg', '薪资待遇1', '上班地点1', '联系人1', '17703786901', 78, 487, 2, 2, 424, 1, '招聘信息详情1', '2023-03-16 01:43:23'),
	(2, 2, '招聘信息名称2', 'upload/zhaopin2.jpg', '薪资待遇2', '上班地点2', '联系人2', '17703786902', 345, 439, 2, 1, 389, 1, '招聘信息详情2', '2023-03-16 01:43:23'),
	(3, 2, '招聘信息名称3', 'upload/zhaopin3.jpg', '薪资待遇3', '上班地点3', '联系人3', '17703786903', 9, 423, 2, 2, 72, 1, '招聘信息详情3', '2023-03-16 01:43:23'),
	(4, 1, '招聘信息名称4', 'upload/zhaopin4.jpg', '薪资待遇4', '上班地点4', '联系人4', '17703786904', 127, 267, 2, 2, 90, 1, '招聘信息详情4', '2023-03-16 01:43:23'),
	(5, 1, '招聘信息名称5', 'upload/zhaopin5.jpg', '薪资待遇5', '上班地点5', '联系人5', '17703786905', 27, 164, 3, 2, 376, 1, '招聘信息详情5', '2023-03-16 01:43:23'),
	(6, 2, '招聘信息名称6', 'upload/zhaopin6.jpg', '薪资待遇6', '上班地点6', '联系人6', '17703786906', 17, 424, 2, 1, 363, 1, '招聘信息详情6', '2023-03-16 01:43:23'),
	(7, 1, '招聘信息名称7', 'upload/zhaopin7.jpg', '薪资待遇7', '上班地点7', '联系人7', '17703786907', 438, 102, 3, 2, 365, 1, '招聘信息详情7', '2023-03-16 01:43:23'),
	(8, 1, '招聘信息名称8', 'upload/zhaopin8.jpg', '薪资待遇8', '上班地点8', '联系人8', '17703786908', 459, 38, 3, 2, 314, 1, '招聘信息详情8', '2023-03-16 01:43:23'),
	(9, 2, '招聘信息名称9', 'upload/zhaopin9.jpg', '薪资待遇9', '上班地点9', '联系人9', '17703786909', 480, 373, 2, 2, 329, 1, '招聘信息详情9', '2023-03-16 01:43:23'),
	(10, 2, '招聘信息名称10', 'upload/zhaopin10.jpg', '薪资待遇10', '上班地点10', '联系人10', '17703786910', 290, 388, 1, 1, 167, 1, '招聘信息详情10', '2023-03-16 01:43:23'),
	(11, 1, '招聘信息名称11', 'upload/zhaopin11.jpg', '薪资待遇11', '上班地点11', '联系人11', '17703786911', 146, 367, 3, 1, 9, 1, '招聘信息详情11', '2023-03-16 01:43:23'),
	(12, 1, '招聘信息名称12', 'upload/zhaopin12.jpg', '薪资待遇12', '上班地点12', '联系人12', '17703786912', 279, 177, 3, 2, 91, 1, '招聘信息详情12', '2023-03-16 01:43:23'),
	(13, 3, '招聘信息名称13', 'upload/zhaopin13.jpg', '薪资待遇13', '上班地点13', '联系人13', '17703786913', 335, 408, 3, 2, 132, 1, '招聘信息详情13', '2023-03-16 01:43:23'),
	(14, 1, '招聘信息名称14', 'upload/zhaopin14.jpg', '薪资待遇14', '上班地点14', '联系人14', '17703786914', 196, 235, 1, 2, 136, 2, '招聘信息详情14', '2023-03-16 01:43:23');

DROP TABLE IF EXISTS `zhaopin_collection`;
CREATE TABLE IF NOT EXISTS `zhaopin_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int DEFAULT NULL COMMENT '职位',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zhaopin_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='职位收藏';

DELETE FROM `zhaopin_collection`;
INSERT INTO `zhaopin_collection` (`id`, `zhaopin_id`, `yonghu_id`, `zhaopin_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(5, 5, 3, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(6, 6, 2, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(7, 7, 1, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(8, 8, 1, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(9, 9, 3, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(10, 10, 2, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(11, 11, 2, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(12, 12, 1, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(13, 13, 2, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(14, 14, 1, 1, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(15, 12, 1, 2, '2023-03-16 02:25:06', '2023-03-16 02:25:06'),
	(16, 5, 1, 2, '2023-03-16 02:36:36', '2023-03-16 02:36:36'),
	(17, 6, 1, 1, '2024-08-04 02:46:39', '2024-08-04 02:46:39');

DROP TABLE IF EXISTS `zhaopin_liuyan`;
CREATE TABLE IF NOT EXISTS `zhaopin_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int DEFAULT NULL COMMENT '职位',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zhaopin_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='职位留言';

DELETE FROM `zhaopin_liuyan`;
INSERT INTO `zhaopin_liuyan` (`id`, `zhaopin_id`, `yonghu_id`, `zhaopin_liuyan_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '留言内容1', '回复信息1', '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(2, 2, 3, '留言内容2', '回复信息2', '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(3, 3, 3, '留言内容3', '回复信息3', '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(4, 4, 1, '留言内容4', '回复信息4', '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(5, 5, 3, '留言内容5', '回复信息5', '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(6, 6, 3, '留言内容6', '回复信息6', '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(7, 7, 2, '留言内容7', '回复信息7', '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(8, 8, 3, '留言内容8', '回复信息8', '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(9, 9, 1, '留言内容9', '回复信息9', '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(10, 10, 1, '留言内容10', '回复信息10', '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(11, 11, 2, '留言内容11', '回复信息11', '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(12, 12, 3, '留言内容12', '回复信息12', '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(13, 13, 1, '留言内容13', '回复信息13', '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(14, 14, 1, '留言内容14', '回复信息14', '2023-03-16 01:43:23', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(15, 5, 1, '123123', NULL, '2023-03-16 02:36:42', NULL, '2023-03-16 02:36:42');

DROP TABLE IF EXISTS `zhaopin_yuyue`;
CREATE TABLE IF NOT EXISTS `zhaopin_yuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zhaopin_id` int DEFAULT NULL COMMENT '招聘',
  `zhaopin_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `zhaopin_yuyue_text` text COMMENT '申请原因',
  `zhaopin_yuyue_yesno_types` int DEFAULT NULL COMMENT '申请状态 Search111',
  `zhaopin_yuyue_yesno_text` text COMMENT '投递回复',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 COMMENT='面试申请';

DELETE FROM `zhaopin_yuyue`;
INSERT INTO `zhaopin_yuyue` (`id`, `yonghu_id`, `zhaopin_id`, `zhaopin_yuyue_time`, `zhaopin_yuyue_text`, `zhaopin_yuyue_yesno_types`, `zhaopin_yuyue_yesno_text`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, '2023-03-16 01:43:23', '申请原因1', 1, NULL, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(2, 3, 2, '2023-03-16 01:43:23', '申请原因2', 1, NULL, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(3, 2, 3, '2023-03-16 01:43:23', '申请原因3', 1, NULL, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(4, 2, 4, '2023-03-16 01:43:23', '申请原因4', 1, NULL, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(5, 1, 5, '2023-03-16 01:43:23', '申请原因5', 1, NULL, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(6, 2, 6, '2023-03-16 01:43:23', '申请原因6', 1, NULL, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(7, 1, 7, '2023-03-16 01:43:23', '申请原因7', 1, NULL, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(8, 2, 8, '2023-03-16 01:43:23', '申请原因8', 1, NULL, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(9, 3, 9, '2023-03-16 01:43:23', '申请原因9', 1, NULL, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(10, 2, 10, '2023-03-16 01:43:23', '申请原因10', 1, NULL, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(11, 3, 11, '2023-03-16 01:43:23', '申请原因11', 1, NULL, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(12, 3, 12, '2023-03-16 01:43:23', '申请原因12', 1, NULL, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(13, 3, 13, '2023-03-16 01:43:23', '申请原因13', 1, NULL, '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(14, 2, 14, '2023-03-16 01:43:23', '申请原因14', 2, '123123', '2023-03-16 01:43:23', '2023-03-16 01:43:23'),
	(31, 1, 6, '2024-08-04 02:46:39', '66', 1, NULL, '2024-08-04 02:46:43', '2024-08-04 02:46:43');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
