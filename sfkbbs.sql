-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-08-17 13:37:29
-- 服务器版本： 5.7.26
-- PHP 版本： 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `sfkbbs`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED DEFAULT '0',
  `power` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `module_id`, `power`) VALUES
(1, 1, 1),
(2, 35, 2);

-- --------------------------------------------------------

--
-- 表的结构 `sfk_content`
--

CREATE TABLE `sfk_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `time` datetime NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `click` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sfk_content`
--

INSERT INTO `sfk_content` (`id`, `module_id`, `title`, `content`, `time`, `member_id`, `click`) VALUES
(61, 32, '一血', '<p><img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/a6/x_thumb.gif\" alt=\"[嘘]\" data-w-e=\"1\"><br></p>', '2020-08-10 13:51:15', 35, 51),
(62, 32, '每日水贴', '<p>每日水贴每日水贴</p>', '2020-08-10 19:04:36', 1, 12);

-- --------------------------------------------------------

--
-- 表的结构 `sfk_father_module`
--

CREATE TABLE `sfk_father_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_name` varchar(66) NOT NULL,
  `sort` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='父版块信息表';

--
-- 转存表中的数据 `sfk_father_module`
--

INSERT INTO `sfk_father_module` (`id`, `module_name`, `sort`) VALUES
(7, '畅所欲言', 2),
(41, '技术交流', 1);

-- --------------------------------------------------------

--
-- 表的结构 `sfk_member`
--

CREATE TABLE `sfk_member` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL,
  `photo` varchar(255) DEFAULT '0',
  `register_time` datetime NOT NULL,
  `last_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sfk_reply`
--

CREATE TABLE `sfk_reply` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_id` int(10) UNSIGNED NOT NULL,
  `quote_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `other_id` int(10) UNSIGNED DEFAULT '0',
  `content` text NOT NULL,
  `time` datetime NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sfk_reply`
--

INSERT INTO `sfk_reply` (`id`, `content_id`, `quote_id`, `other_id`, `content`, `time`, `member_id`) VALUES
(97, 61, 0, 0, '<p><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/3c/pcmoren_wu_org.png\" alt=\"[污]\" data-w-e=\"1\"><br></p>', '2020-08-10 19:43:51', 1),
(100, 61, 97, 35, '<p><img src=\"//img.t.sinajs.cn/t4/appstyle/expression/ext/normal/83/2018new_kuxiao_org.png\" alt=\"[允悲]\" data-w-e=\"1\"></p>', '2020-08-11 00:54:36', 35),
(99, 61, 97, 0, '<p>12312311</p>', '2020-08-11 00:51:13', 35),
(101, 61, 97, 0, '<p>asdasdasdasdasdasdasdasdasdasdasd<img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/71/2018new_touxiao_org.png\" alt=\"[偷笑]\"> asdasdasdasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdas<img src=\"//img.t.sinajs.cn/t4/appstyle/expression/ext/normal/49/2018new_chijing_org.png\" alt=\"[吃惊]\" data-w-e=\"1\"><br></p>', '2020-08-11 00:55:00', 35),
(102, 61, 97, 0, '<p>asdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddasdasdassssssssssssssssssssss</p>', '2020-08-11 00:55:23', 35),
(103, 61, 0, 0, '<p>&nbsp;asdasdasdasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasda sasdasdasdasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdas</p>', '2020-08-11 00:59:26', 35),
(104, 61, 97, 35, '<p>哈as的接口骑久了温江区来加我了哈as的接口骑久了温江区来加我了哈as的接口骑久了温江区来加我了哈as的接口骑久了温江区来加我了哈as的接口骑久了温江区来加我了哈as的接口骑久了哈as的接口骑久了温江区来加我了asda温江区来加我了哈as的接口骑久了温江区来加我了</p>', '2020-08-11 01:12:08', 35),
(105, 61, 97, 0, '<p>as的接口骑久了温江区来加我了哈as的接口骑久了温江区来加我了哈as的接口骑久了温江区来加我了哈as的接<img src=\"//img.t.sinajs.cn/t4/appstyle/expression/ext/normal/71/2018new_touxiao_org.png\" alt=\"[偷笑]\" data-w-e=\"1\">口骑久了温江区来加我了哈as的接口骑久了温江区来加我了哈as的接口骑久了哈as的接口骑久了温江区来加我了asda温江区来加我了哈as<img src=\"//img.t.sinajs.cn/t4/appstyle/expression/ext/normal/41/xhrnew_gaoxing_org.png\" alt=\"[小黄人高兴]\" data-w-e=\"1\">的接口骑久了温江区来加我了</p>', '2020-08-11 01:12:27', 35);

-- --------------------------------------------------------

--
-- 表的结构 `sfk_son_module`
--

CREATE TABLE `sfk_son_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `father_module_id` int(10) UNSIGNED NOT NULL,
  `module_name` varchar(66) NOT NULL,
  `info` varchar(255) NOT NULL,
  `member_id` int(10) UNSIGNED DEFAULT '0',
  `sort` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sfk_son_module`
--

INSERT INTO `sfk_son_module` (`id`, `father_module_id`, `module_name`, `info`, `member_id`, `sort`) VALUES
(27, 41, '前端技术', '前端技术交流分享', 0, 1),
(29, 41, '后端技术', '后端技术交流分享', 0, 2),
(32, 7, '留言交流建议', '留言交流建议', 0, 0);

--
-- 转储表的索引
--

--
-- 表的索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sfk_content`
--
ALTER TABLE `sfk_content`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sfk_father_module`
--
ALTER TABLE `sfk_father_module`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `module_name` (`module_name`);

--
-- 表的索引 `sfk_member`
--
ALTER TABLE `sfk_member`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sfk_reply`
--
ALTER TABLE `sfk_reply`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sfk_son_module`
--
ALTER TABLE `sfk_son_module`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `sfk_content`
--
ALTER TABLE `sfk_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- 使用表AUTO_INCREMENT `sfk_father_module`
--
ALTER TABLE `sfk_father_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- 使用表AUTO_INCREMENT `sfk_member`
--
ALTER TABLE `sfk_member`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用表AUTO_INCREMENT `sfk_reply`
--
ALTER TABLE `sfk_reply`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- 使用表AUTO_INCREMENT `sfk_son_module`
--
ALTER TABLE `sfk_son_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
