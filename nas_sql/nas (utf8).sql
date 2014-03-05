-- phpMyAdmin SQL Dump
-- version 3.5.0
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生日期: 2014 年 03 月 05 日 20:25
-- 伺服器版本: 5.1.67
-- PHP 版本: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫: `nas`
--

-- --------------------------------------------------------

--
-- 表的結構 `buildresult`
--

CREATE TABLE IF NOT EXISTS `buildresult` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECT_ID` int(11) DEFAULT NULL,
  `REVISION` int(11) DEFAULT NULL,
  `LABEL` varchar(255) NOT NULL DEFAULT '',
  `BUILDRESULT` tinyint(1) DEFAULT '0',
  `BUILDMESSAGE` text,
  `HASTESTRESULT` tinyint(1) DEFAULT '0',
  `TESTRESULT` tinyint(1) DEFAULT '0',
  `TESTMESSAGE` text,
  `HASCOVERAGERESULT` tinyint(1) DEFAULT '0',
  `CLASSCOVERAGE` varchar(255) NOT NULL DEFAULT '',
  `METHODCOVERAGE` varchar(255) NOT NULL DEFAULT '',
  `BLOCKCOVERAGE` varchar(255) NOT NULL DEFAULT '',
  `LINECOVERAGE` varchar(255) NOT NULL DEFAULT '',
  `BUILDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `commit_log`
--

CREATE TABLE IF NOT EXISTS `commit_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AUTHOR` varchar(255) DEFAULT NULL,
  `CHANGEDFILES` text,
  `LOG` text,
  `REVISION` int(11) DEFAULT NULL,
  `COMMITTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PROJECT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `commit_story_relation`
--

CREATE TABLE IF NOT EXISTS `commit_story_relation` (
  `COMMITID` int(11) DEFAULT NULL,
  `ISSUEID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的結構 `ezkanban_statusorder`
--

CREATE TABLE IF NOT EXISTS `ezkanban_statusorder` (
  `issueID` int(10) NOT NULL DEFAULT '0',
  `order` tinyint(3) NOT NULL DEFAULT '0',
  KEY `issueID` (`issueID`),
  KEY `order` (`order`),
  KEY `order_2` (`order`),
  KEY `order_3` (`order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的結構 `ezscrum_story_relation`
--

CREATE TABLE IF NOT EXISTS `ezscrum_story_relation` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `storyID` int(10) unsigned NOT NULL,
  `projectID` int(10) unsigned NOT NULL,
  `releaseID` int(10) DEFAULT NULL,
  `sprintID` int(10) DEFAULT NULL,
  `estimation` int(8) DEFAULT NULL,
  `importance` int(8) DEFAULT NULL,
  `updateDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `estimation` (`estimation`,`importance`),
  KEY `updateDate` (`sprintID`,`projectID`,`storyID`,`updateDate`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- 轉存資料表中的資料 `ezscrum_story_relation`
--

INSERT INTO `ezscrum_story_relation` (`id`, `storyID`, `projectID`, `releaseID`, `sprintID`, `estimation`, `importance`, `updateDate`) VALUES
(40, 37, 1, -1, 1, NULL, NULL, '2013-11-26 12:59:32'),
(49, 15, 1, 0, 2, NULL, NULL, '2013-12-03 13:11:13'),
(55, 37, 1, -1, 6, NULL, NULL, '2013-12-03 13:42:07'),
(52, 26, 1, 0, 4, NULL, NULL, '2013-12-03 13:41:47'),
(46, 22, 1, 0, 3, NULL, NULL, '2013-12-03 12:30:54'),
(37, 33, 1, NULL, NULL, NULL, NULL, '2013-11-26 12:58:46'),
(30, 11, 1, -1, 1, NULL, NULL, '2013-11-26 12:04:16'),
(34, 22, 1, -1, 1, NULL, NULL, '2013-11-26 12:55:29'),
(43, 15, 1, -1, 3, NULL, NULL, '2013-12-03 11:30:19'),
(39, 37, 1, NULL, NULL, NULL, NULL, '2013-11-26 12:59:32'),
(48, 11, 1, 0, 1, NULL, NULL, '2013-12-03 12:32:04'),
(54, 33, 1, 0, 5, NULL, NULL, '2013-12-03 13:41:58'),
(51, 26, 1, -1, 4, NULL, NULL, '2013-12-03 13:41:47'),
(45, 22, 1, -1, 3, NULL, NULL, '2013-12-03 12:30:54'),
(36, 26, 1, -1, 1, NULL, NULL, '2013-11-26 12:56:38'),
(29, 11, 1, NULL, NULL, NULL, NULL, '2013-11-26 12:04:16'),
(33, 22, 1, NULL, NULL, NULL, NULL, '2013-11-26 12:55:29'),
(42, 11, 1, 0, 2, NULL, NULL, '2013-12-03 11:26:41'),
(38, 33, 1, -1, 1, NULL, NULL, '2013-11-26 12:58:46'),
(47, 11, 1, 0, 1, NULL, NULL, '2013-12-03 12:32:04'),
(53, 33, 1, -1, 5, NULL, NULL, '2013-12-03 13:41:58'),
(50, 15, 1, 0, 2, NULL, NULL, '2013-12-03 13:11:13'),
(44, 15, 1, 0, 3, NULL, NULL, '2013-12-03 11:30:19'),
(35, 26, 1, NULL, NULL, NULL, NULL, '2013-11-26 12:56:38'),
(31, 15, 1, NULL, NULL, NULL, NULL, '2013-11-26 12:32:13'),
(32, 15, 1, -1, 1, NULL, NULL, '2013-11-26 12:32:13'),
(41, 11, 1, -1, 2, NULL, NULL, '2013-12-03 11:26:41'),
(56, 37, 1, 0, 6, NULL, NULL, '2013-12-03 13:42:07'),
(57, 43, 1, NULL, NULL, NULL, NULL, '2013-12-10 14:00:23'),
(58, 43, 1, -1, 1, NULL, NULL, '2013-12-10 14:00:23'),
(59, 44, 1, NULL, NULL, NULL, NULL, '2013-12-10 14:26:12'),
(60, 44, 1, -1, 1, NULL, NULL, '2013-12-10 14:26:12'),
(61, 45, 1, NULL, NULL, NULL, NULL, '2013-12-10 14:50:57'),
(62, 45, 1, -1, 1, NULL, NULL, '2013-12-10 14:50:57'),
(63, 46, 1, NULL, NULL, NULL, NULL, '2014-01-02 13:07:18');

-- --------------------------------------------------------

--
-- 表的結構 `ezscrum_tag_relation`
--

CREATE TABLE IF NOT EXISTS `ezscrum_tag_relation` (
  `tag_id` int(10) NOT NULL,
  `story_id` int(10) NOT NULL,
  KEY `tag_id` (`tag_id`),
  KEY `story_id` (`story_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `ezscrum_tag_relation`
--

INSERT INTO `ezscrum_tag_relation` (`tag_id`, `story_id`) VALUES
(5, 46),
(7, 46);

-- --------------------------------------------------------

--
-- 表的結構 `ezscrum_tag_table`
--

CREATE TABLE IF NOT EXISTS `ezscrum_tag_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`project_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 轉存資料表中的資料 `ezscrum_tag_table`
--

INSERT INTO `ezscrum_tag_table` (`id`, `project_id`, `name`) VALUES
(1, 1, 'a0028322'),
(2, 1, 'a0028352'),
(3, 1, 'a0028338'),
(4, 1, 'a0028412'),
(5, 1, '系統設計'),
(6, 1, '系統分析'),
(7, 1, '系統驗證');

-- --------------------------------------------------------

--
-- 表的結構 `eztrack_combofield`
--

CREATE TABLE IF NOT EXISTS `eztrack_combofield` (
  `TypeFieldID` int(10) unsigned NOT NULL,
  `ComboName` varchar(40) NOT NULL DEFAULT '',
  KEY `TypeFieldID` (`TypeFieldID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的結構 `eztrack_issuerelation`
--

CREATE TABLE IF NOT EXISTS `eztrack_issuerelation` (
  `IssueID_src` int(10) unsigned NOT NULL,
  `IssueID_des` int(10) unsigned NOT NULL,
  `Type` int(2) NOT NULL DEFAULT '1' COMMENT 'Relation的關係'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的結構 `eztrack_issuetype`
--

CREATE TABLE IF NOT EXISTS `eztrack_issuetype` (
  `IssueTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProjectID` int(10) unsigned NOT NULL DEFAULT '0',
  `IssueTypeName` varchar(20) NOT NULL DEFAULT '',
  `IsPublic` tinyint(2) NOT NULL DEFAULT '0',
  `IsKanban` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IssueTypeID`),
  KEY `ProjectID` (`ProjectID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=70 ;

-- --------------------------------------------------------

--
-- 表的結構 `eztrack_report`
--

CREATE TABLE IF NOT EXISTS `eztrack_report` (
  `ReportID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProjectID` int(10) unsigned NOT NULL DEFAULT '0',
  `IssueTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `ReportDescription` longtext NOT NULL,
  `ReporterName` varchar(50) NOT NULL DEFAULT '',
  `ReporterEmail` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`ReportID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `eztrack_typefield`
--

CREATE TABLE IF NOT EXISTS `eztrack_typefield` (
  `TypeFieldID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IssueTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `TypeFieldName` varchar(20) NOT NULL DEFAULT '',
  `TypeFieldCategory` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`TypeFieldID`),
  KEY `IssueTypeID` (`IssueTypeID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=193 ;

-- --------------------------------------------------------

--
-- 表的結構 `eztrack_typefieldvalue`
--

CREATE TABLE IF NOT EXISTS `eztrack_typefieldvalue` (
  `IssueID` int(10) unsigned NOT NULL DEFAULT '0',
  `TypeFieldID` int(10) unsigned NOT NULL DEFAULT '0',
  `FieldValue` text NOT NULL,
  KEY `IssueID` (`IssueID`),
  KEY `TypeFieldID` (`TypeFieldID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的結構 `keyword`
--

CREATE TABLE IF NOT EXISTS `keyword` (
  `k_id` int(11) NOT NULL AUTO_INCREMENT,
  `k_value` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `k_project` int(11) NOT NULL,
  PRIMARY KEY (`k_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=492 ;

--
-- 轉存資料表中的資料 `keyword`
--

INSERT INTO `keyword` (`k_id`, `k_value`, `k_project`) VALUES
(7, '系統', 3),
(10, '雲端', 3),
(11, '伺服器', 3),
(12, '網頁', 3),
(13, 'load balance', 3),
(14, 'cluster', 3),
(15, 'android', 4),
(16, '智慧型手機', 4),
(17, '行動裝置 ', 4),
(19, '智慧型手機', 6),
(20, '行動服務應', 6),
(21, 'android', 6),
(26, '旅遊服務', 8),
(27, '情境感知', 8),
(28, 'CRM', 9),
(29, '保健資訊', 9),
(30, '資訊系統', 9),
(31, '電子商務', 10),
(32, '實體銷售', 10),
(33, '整合實驗', 10),
(34, '退化性', 11),
(35, '策略研究', 11),
(36, '臉像', 2),
(37, '老人醫護', 1),
(38, '可行性', 1),
(39, '賽局理論', 5),
(40, '護航策略', 5),
(41, '策略分析', 5),
(42, '馬可夫模型', 7),
(43, '搜救效益', 7),
(44, '無人空中載具', 7),
(45, '直升機', 7),
(46, '情境感知', 8),
(47, '旅遊', 8),
(48, '財經', 12),
(49, '股市', 12),
(50, '內文分析', 12),
(51, '炭足跡', 13),
(52, '開發研究', 13),
(53, '隨身碟', 13),
(54, '客製化', 14),
(55, '顧客關係管理', 14),
(56, '寵物', 15),
(57, '資訊平台', 15),
(58, 'QR-CODE', 15),
(59, 'PRET', 16),
(60, '可行性', 16),
(61, '方案評估', 16),
(62, '第一失敗', 17),
(63, '績效評估', 17),
(64, '社會事件', 18),
(65, '經濟景氣', 18),
(66, '關聯分析', 18),
(67, '行動交友', 19),
(68, '定位系統', 19),
(69, '經典演算法', 20),
(70, '居家老人、醫療資源、十年長照、線性規劃、模型', 21),
(71, '核心能力', 22),
(72, '軟性能力', 22),
(73, '資訊管理', 22),
(74, '資訊能力', 22),
(75, '預置資源', 23),
(76, '線性規劃', 23),
(77, '演算法', 23),
(78, '路網', 23),
(79, '模型', 23),
(80, '擴增實境', 24),
(81, '情境感知', 24),
(82, '體適能、顧客關係管理、顧客滿意度、顧客忠誠度', 25),
(91, '顧客關係管理', 30),
(92, '忠誠度', 30),
(93, '顧客輪廓', 30),
(94, '資料擷取', 31),
(95, ' 手持裝置', 31),
(96, ' 職涯', 31),
(97, '旅遊、行動旅遊App、智慧型手機、Android、實踐大學', 32),
(98, 'a', 33),
(99, 'a', 33),
(100, 'a', 33),
(101, 'gewgwe', 34),
(102, 'gwegwe', 34),
(103, 'gwe', 34),
(104, 'g', 35),
(105, 'ew', 35),
(106, 'sd', 35),
(107, 'geg', 36),
(108, 'gwehwe', 36),
(109, 'gwe', 36),
(110, 'dwf', 37),
(111, 'gweg', 37),
(112, 'hweh', 37),
(113, 'EWHWEH', 38),
(114, 'htrh', 39),
(115, 'htrhtrj', 39),
(116, 'trj', 39),
(117, 'jttjtrj', 40),
(118, 'saf', 41),
(119, 'fas', 41),
(120, 'fg', 41),
(121, 'e', 41),
(122, 'yuluyl', 42),
(123, '資訊安全管理系統、投票式權重評選模式、關鍵成功因素', 43),
(124, '線上訂票', 44),
(125, ' 返鄉專車', 44),
(126, ' 實踐大學', 44),
(127, '資料探勘(Data Mining)', 45),
(128, ' 支援向量機(SVM)', 45),
(129, ' 時間序列(Time Series)', 45),
(130, ' 技術指標', 45),
(131, '行銷', 46),
(132, '電腦病毒', 47),
(133, '電子付款', 48),
(134, 'E化銷售', 49),
(135, 'Asp.net', 50),
(136, 'SQL', 50),
(137, '資料採礦', 51),
(138, '就業市場需求', 51),
(139, '平衡計分卡', 52),
(140, '績效衡量', 52),
(141, '競爭優勢', 52),
(142, '非營利組織', 52),
(143, '選址', 53),
(144, ' 地理資訊系統', 53),
(145, ' 顧客購買力', 53),
(146, 'SCM', 54),
(147, '虛擬實境', 55),
(148, '醫院導覽', 55),
(149, '3D模型', 55),
(150, 'Virtools', 55),
(151, '旅遊', 56),
(152, '旅遊指南', 56),
(153, '預設行程', 56),
(154, '自助旅行', 56),
(155, '留言版系統', 57),
(156, '留言版系統', 58),
(157, '線上', 59),
(158, '客服系統', 59),
(159, '電話客服', 59),
(160, '問卷調查', 59),
(161, '線上會員管理', 60),
(162, '留言板系統', 60),
(163, '電腦動畫', 61),
(164, '網頁探勘', 62),
(165, '搜尋引擎', 62),
(166, '類神經網路', 62),
(167, 'Web Mining', 62),
(168, 'Search Engine', 62),
(169, 'Neural Network', 62),
(170, '互動式虛擬實境', 63),
(171, '網頁探勘', 64),
(172, '搜尋引擎', 64),
(173, '類神經網路', 64),
(174, 'Web Mining', 64),
(175, 'Search Engine', 64),
(176, 'Neural Network', 64),
(177, '網頁探勘', 65),
(178, '搜尋引擎', 65),
(179, '類神經網路', 65),
(180, 'JAVA、VB', 66),
(181, '3D', 67),
(182, '霸王別姬', 67),
(183, '3D動畫', 68),
(184, '3D動畫', 69),
(185, '人力網站', 70),
(186, '資管系學生', 70),
(187, '虛擬實境、3D模型動畫', 71),
(188, '數位多媒體', 72),
(189, '服裝展演', 72),
(190, '展場', 72),
(191, '宿舍網路', 73),
(192, '角色扮演，網際網路(Internet)，電子商務', 74),
(193, '資料庫', 75),
(194, '多媒體', 75),
(195, 'ERP企業資源再造', 76),
(196, '線上訂票、返鄉專車、實踐大學', 77),
(197, '電子錢包', 78),
(198, '多媒體電腦輔助教學', 79),
(199, '體育教學', 79),
(200, 'Flash動畫', 79),
(201, '虛擬主播', 80),
(202, '中文語音', 80),
(203, '虛擬3DSMax人物', 80),
(204, 'Dijkstra、模型、建模、最快路徑、損壞、矩陣', 81),
(205, '多媒體', 82),
(206, '輔助教學', 82),
(207, '旅遊', 83),
(208, ' 旅遊指南', 83),
(209, ' 預設行程', 83),
(210, ' 自助旅行', 83),
(211, 'Flash', 84),
(212, '即時訊息需求之系統', 85),
(213, '網路監控', 86),
(214, '企業資源管理', 87),
(215, '網路書店', 88),
(216, '資料探勘', 89),
(217, ' 類神經網路', 89),
(218, ' 付款方式', 89),
(219, '無線網路', 90),
(220, ' 封包', 90),
(221, '卡方檢定', 91),
(222, '選址', 91),
(223, 'DIRECTX', 92),
(224, 'RPG互動', 92),
(225, '色彩', 93),
(226, '網頁配置', 93),
(227, '虛擬數位', 94),
(228, '傳統技藝', 94),
(229, '布袋戲', 94),
(230, '服務品質衡量', 95),
(231, 'MinnSketch', 96),
(232, 'UNIX系統', 96),
(233, '軟體平台移植', 96),
(234, '診療區設置', 97),
(235, '旗山醫院', 97),
(236, '健康管理網站', 98),
(237, '線上訂餐系統', 99),
(238, '手術室醫療模型', 100),
(239, '互動式購物網站', 101),
(240, '線上房屋網', 102),
(241, '郵件管理系統', 103),
(242, '校友問卷調查系統', 104),
(243, '校園選址', 105),
(244, '人臉辨識', 106),
(245, '3D立體影像', 106),
(246, '村里網站', 107),
(247, '租書管理系統', 108),
(248, '民宿經營策略', 109),
(249, '大學資源規劃', 110),
(250, '校友', 110),
(251, '產學合作', 110),
(252, '數位學習', 111),
(253, '線上遊戲', 111),
(254, '數位遊戲', 111),
(255, 'Flash', 111),
(256, 'Three-Tier', 111),
(257, 'PHP', 111),
(258, '動態網頁', 111),
(259, '新生訓練', 111),
(260, 'Database ', 111),
(261, '地理資訊檢索', 112),
(262, '文字探勘', 112),
(263, '網頁探勘', 112),
(264, '訂位系統', 113),
(265, '數位學習', 114),
(266, '遊戲', 114),
(267, '虛擬實境', 114),
(268, '多人連線', 114),
(269, '資管系課程', 115),
(270, '產業工作', 115),
(271, '資訊技術', 115),
(272, '相關性分析', 115),
(273, '網頁探勘', 116),
(274, '股市', 116),
(275, '3D Animation', 117),
(276, '草地囝仔', 117),
(277, '互動式行動學習軟體', 118),
(278, '購買意願', 119),
(279, '顧客滿意度', 119),
(280, '假設檢定', 119),
(281, '行銷策略', 119),
(282, '防毒', 120),
(283, '價格平台', 121),
(284, '網頁探勘', 122),
(285, '股票投資', 122),
(286, '禽流感疫情爆發模擬分析', 123),
(287, '製程能力分析', 124),
(288, '即時商業智慧', 124),
(289, '品質績效決策系統', 124),
(290, '網路模擬教學環境', 125),
(291, '發展策略', 126),
(292, '「顧客-內部流程-學習與成長-財務」分析', 126),
(293, '投票式權重評選法', 126),
(294, '法拍屋資訊網', 127),
(295, '製程能力分析', 128),
(296, '設限資料', 128),
(297, '即時商業智慧', 128),
(298, '品質績效評估系統', 128),
(299, '非常態分配', 128),
(300, '場地租借', 129),
(301, '系所網站建置架構', 130),
(302, '餐飲管理系統', 131),
(303, '無線射頻識別 RFID', 131),
(304, '行動部落格', 132),
(305, '社團選填系統', 133),
(306, '網路技術', 134),
(307, '整合式服務', 134),
(308, '貢獻', 134),
(309, '查詢', 135),
(310, '比較網', 135),
(311, '資訊安全通報系統', 136),
(312, '資訊安全', 137),
(313, '專案管理', 137),
(314, '校友', 138),
(315, 'Facebook社群', 138),
(316, '行動平台', 138),
(317, '蒙地卡羅模擬法', 139),
(318, '海上搜索', 139),
(319, '偵測率', 139),
(320, '遲到時間', 139),
(321, '模型', 139),
(322, '機率分配', 139),
(323, '賽局理論', 140),
(324, '反潛作戰', 140),
(325, '民俗技藝', 141),
(326, '宋江陣', 141),
(327, '水滸傳', 141),
(328, '3DSMAX', 141),
(329, '內門', 141),
(330, '三十六天罡', 141),
(331, '資料擷取', 142),
(332, '資料探勘', 142),
(333, 'HTTP', 142),
(334, 'HTML', 142),
(335, 'Javascript', 142),
(336, 'CSS ', 142),
(337, 'RFID', 143),
(338, '倉儲系統', 143),
(339, '自動流程', 143),
(340, '漁業生產履歷', 144),
(341, 'RFID', 144),
(342, '產銷履歷追溯碼', 144),
(343, '失效模式與效應分析', 145),
(344, 'ISO27001', 145),
(345, '資訊安全管理系統', 145),
(346, '品質機能展開法', 146),
(347, 'House of Quality', 146),
(348, '馬可夫鏈', 147),
(349, '颱風釀災之機率', 147),
(350, '決策風險', 148),
(351, '效用函數', 148),
(352, '效益分析', 148),
(353, '部落格', 149),
(354, '承諾', 149),
(355, '多媒體教學網站', 150),
(356, 'CCNA', 150),
(357, '專案管理系統', 151),
(358, '畢業專題', 151),
(359, '整合管理   ', 151),
(360, '畢業專題', 152),
(361, '專案管理', 152),
(362, '時間管理', 152),
(363, '學生專題', 152),
(364, '科技接受模式', 153),
(365, '變異數分析', 153),
(366, '迴歸分析', 153),
(367, '網路硬碟', 154),
(368, 'FireFox擴充套件', 154),
(369, '專案管理系統', 155),
(370, '人力資源管理', 155),
(371, '溝通管理', 155),
(372, '學生畢業專題', 155),
(373, '資訊管理研究', 156),
(374, '資料探勘', 156),
(375, '趨勢分析', 156),
(376, '網際網路', 157),
(377, 'ASP.NET', 157),
(378, 'C#', 157),
(379, '汽車保養廠', 158),
(380, '保養維修', 158),
(381, '汽車', 158),
(382, '保養', 158),
(383, '滿意度', 158),
(384, 'Google Map', 159),
(385, '電子地圖', 159),
(386, '租屋', 159),
(387, '售屋', 159),
(388, 'WEB2.0', 159),
(389, 'ASP.NET 2.0', 159),
(390, 'AJAX', 159),
(391, '多媒體', 160),
(392, '網球教學', 160),
(393, '搜尋引擎(Search Engines)', 161),
(394, '搜尋清單(Search List)', 161),
(395, '網頁排序(Page Rank)', 161),
(396, '垃圾網頁(Web   Spam)', 161),
(397, 'E化網', 162),
(398, 'Office PowerPoint', 163),
(399, '自動簡報系統', 163),
(400, '教室預借系統', 164),
(401, '校園e化', 165),
(402, '3D動畫', 166),
(403, '蟻后', 166),
(404, '返鄉專車訂票系統', 167),
(405, '無線射頻技術、圖書管理', 168),
(406, '動畫製作', 169),
(407, 'Web Online game', 170),
(408, '多人互動', 170),
(409, 'JSP+ JS結合', 170),
(410, 'RFID', 171),
(411, '校園安全管理', 171),
(412, '幼稚園', 171),
(413, '電腦素養', 172),
(414, '網路教學', 172),
(415, '網路學園', 172),
(416, '手機購物網', 173),
(417, '虛擬實境', 174),
(418, '模擬景觀', 174),
(419, '互動性', 174),
(420, '石窟', 174),
(421, '宋江', 175),
(422, '線上虛擬展示網站', 176),
(423, '網路拍賣', 177),
(424, '剩餘土石方資源管理系統', 178),
(425, '資料探勘', 179),
(426, '惡意程式', 179),
(427, '病毒偵測', 179),
(428, '貝氏分類', 179),
(429, '決策樹', 179),
(430, 'Information Gain', 179),
(431, 'PE Table', 179),
(432, 'BCG矩陣', 180),
(433, '3C產業', 180),
(434, '產業策略組合', 180),
(435, '資料包絡法', 180),
(436, '電子商店', 181),
(437, '網路商店', 181),
(438, '學習績效評估', 182),
(439, '養護中心', 183),
(440, '策略規劃', 184),
(441, '「優勢、劣勢、機會及威脅」分析', 184),
(442, '投票式權重評選法', 184),
(443, '環境管理系統', 184),
(444, '型', 185),
(445, '理定儲利率指數', 185),
(446, '貸款利率', 185),
(447, '指數型', 185),
(448, '固定財型', 185),
(449, '南臺灣', 186),
(450, '美食', 186),
(451, '二手書', 187),
(452, ' 電子商務', 187),
(453, ' 電子書店', 187),
(454, '禽流感疫情爆發', 188),
(455, '以物易物', 189),
(456, ' 電子商務', 189),
(457, '擬實境', 190),
(458, '旗山導覽', 190),
(459, '3D模型', 190),
(460, 'Virtools', 190),
(461, '網頁分析擷取', 191),
(462, '虛擬實境', 192),
(463, '內灣老街導覽', 192),
(464, '3D模型', 192),
(465, '互動式電腦維修', 193),
(466, '虛擬實境', 194),
(467, '3D模型', 194),
(468, '赤崁樓虛擬實境', 194),
(469, '遊行程規劃', 195),
(470, '高雄', 195),
(471, '症狀', 196),
(472, '睡眠', 196),
(473, '問卷', 196),
(474, '遊戲', 197),
(475, '自然環境生態保育', 197),
(476, 'QR code', 198),
(477, '手機拍攝', 198),
(478, '快速瀏覽商品頁面', 198),
(479, 'facebook', 199),
(480, '系友', 199),
(481, '實踐大學', 199),
(482, '資管系', 199),
(483, '品質管理', 200),
(484, '製程能力分析', 200),
(485, '品質績效評估系統', 200),
(486, '韋伯分配', 200),
(487, '逐步第一失敗設限抽樣方案', 200),
(488, '商業智慧', 200),
(489, '行動旅遊APP', 201),
(490, '行動商務', 201),
(491, '福壽山農場', 201);

-- --------------------------------------------------------

--
-- 表的結構 `mantis_bugnote_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bugnote_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reporter_id` int(10) unsigned NOT NULL DEFAULT '0',
  `bugnote_text_id` int(10) unsigned NOT NULL DEFAULT '0',
  `view_state` smallint(6) NOT NULL DEFAULT '10',
  `date_submitted` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `last_modified` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `note_type` int(11) DEFAULT '0',
  `note_attr` varchar(250) DEFAULT '',
  `time_tracking` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_bug` (`bug_id`),
  KEY `idx_last_mod` (`last_modified`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- 轉存資料表中的資料 `mantis_bugnote_table`
--

INSERT INTO `mantis_bugnote_table` (`id`, `bug_id`, `reporter_id`, `bugnote_text_id`, `view_state`, `date_submitted`, `last_modified`, `note_type`, `note_attr`, `time_tracking`) VALUES
(1, 1, 2, 1, 10, '2013-11-19 19:40:38', '2013-11-19 19:40:38', 0, '', 0),
(2, 2, 2, 2, 10, '2013-11-19 19:42:51', '2013-11-19 19:42:51', 0, '', 0),
(3, 3, 2, 3, 10, '2013-11-19 19:46:26', '2013-11-19 19:46:26', 0, '', 0),
(4, 4, 2, 4, 10, '2013-11-19 19:56:52', '2013-11-19 19:56:52', 0, '', 0),
(5, 5, 2, 5, 10, '2013-11-19 19:57:43', '2013-11-19 19:57:43', 0, '', 0),
(6, 6, 2, 6, 10, '2013-11-19 19:58:34', '2013-11-19 19:58:34', 0, '', 0),
(7, 7, 2, 7, 10, '2013-11-19 19:59:18', '2013-11-19 19:59:18', 0, '', 0),
(8, 8, 2, 8, 10, '2013-11-19 20:00:13', '2013-11-19 20:00:13', 0, '', 0),
(9, 9, 2, 9, 10, '2013-11-19 20:00:44', '2013-11-19 20:00:44', 0, '', 0),
(10, 10, 3, 10, 10, '2013-11-26 19:49:43', '2013-11-26 19:49:43', 0, '', 0),
(11, 11, 3, 11, 10, '2013-11-26 20:04:16', '2013-11-26 20:04:16', 0, '', 0),
(12, 12, 3, 12, 10, '2013-11-26 20:20:58', '2013-11-26 20:20:58', 0, '', 0),
(13, 15, 3, 13, 10, '2013-11-26 20:32:13', '2013-11-26 20:32:13', 0, '', 0),
(14, 14, 3, 14, 10, '2013-11-26 20:39:25', '2013-11-26 20:39:25', 0, '', 0),
(15, 22, 3, 15, 10, '2013-11-26 20:55:29', '2013-11-26 20:55:29', 0, '', 0),
(16, 26, 3, 16, 10, '2013-11-26 20:56:38', '2013-11-26 20:56:38', 0, '', 0),
(17, 33, 3, 17, 10, '2013-11-26 20:58:46', '2013-11-26 20:58:46', 0, '', 0),
(18, 37, 3, 18, 10, '2013-11-26 20:59:32', '2013-11-26 20:59:32', 0, '', 0),
(19, 18, 3, 19, 10, '2013-11-26 21:21:55', '2013-11-26 21:21:55', 0, '', 0),
(20, 19, 3, 20, 10, '2013-11-26 21:22:06', '2013-11-26 21:22:06', 0, '', 0),
(21, 23, 3, 21, 10, '2013-11-26 21:22:14', '2013-11-26 21:22:14', 0, '', 0),
(22, 32, 3, 22, 10, '2013-11-26 21:22:23', '2013-11-26 21:22:23', 0, '', 0),
(23, 34, 3, 23, 10, '2013-11-26 21:22:34', '2013-11-26 21:22:34', 0, '', 0),
(24, 38, 3, 24, 10, '2013-11-26 21:22:40', '2013-11-26 21:22:40', 0, '', 0),
(25, 17, 3, 25, 10, '2013-11-26 21:27:23', '2013-11-26 21:27:23', 0, '', 0),
(26, 21, 3, 26, 10, '2013-11-26 21:27:39', '2013-11-26 21:27:39', 0, '', 0),
(27, 31, 3, 27, 10, '2013-11-26 21:28:26', '2013-11-26 21:28:26', 0, '', 0),
(28, 36, 3, 28, 10, '2013-11-26 21:28:33', '2013-11-26 21:28:33', 0, '', 0),
(29, 40, 3, 29, 10, '2013-11-26 21:28:38', '2013-11-26 21:28:38', 0, '', 0),
(30, 16, 3, 30, 10, '2013-11-26 21:29:38', '2013-11-26 21:29:38', 0, '', 0),
(31, 20, 3, 31, 10, '2013-11-26 21:30:17', '2013-11-26 21:30:17', 0, '', 0),
(32, 24, 3, 32, 10, '2013-11-26 21:30:42', '2013-11-26 21:30:42', 0, '', 0),
(33, 30, 3, 33, 10, '2013-11-26 21:30:51', '2013-11-26 21:30:51', 0, '', 0),
(34, 13, 3, 34, 10, '2013-11-26 21:31:17', '2013-11-26 21:31:17', 0, '', 0),
(35, 27, 3, 35, 10, '2013-11-26 21:32:14', '2013-11-26 21:32:14', 0, '', 0),
(36, 25, 3, 36, 10, '2013-11-26 21:32:32', '2013-11-26 21:32:32', 0, '', 0),
(37, 29, 3, 37, 10, '2013-11-26 21:33:35', '2013-11-26 21:33:35', 0, '', 0),
(38, 28, 3, 38, 10, '2013-11-26 21:33:39', '2013-11-26 21:33:39', 0, '', 0),
(39, 42, 3, 39, 10, '2013-11-26 22:45:18', '2013-11-26 22:45:18', 0, '', 0),
(40, 43, 2, 40, 10, '2013-12-10 22:00:23', '2013-12-10 22:00:23', 0, '', 0),
(41, 44, 2, 41, 10, '2013-12-10 22:26:12', '2013-12-10 22:26:12', 0, '', 0),
(42, 45, 2, 42, 10, '2013-12-10 22:50:57', '2013-12-10 22:50:57', 0, '', 0);

-- --------------------------------------------------------

--
-- 表的結構 `mantis_bugnote_text_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bugnote_text_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `note` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- 轉存資料表中的資料 `mantis_bugnote_text_table`
--

INSERT INTO `mantis_bugnote_text_table` (`id`, `note`) VALUES
(1, '<JCIS id="20131119194038">\r\n  <Importance>100</Importance>\r\n  <Estimation>3</Estimation>\r\n  <Value>90</Value>\r\n  <HowToDemo>可以顯示學生姓名、指導老師、專題名稱</HowToDemo>\r\n  <Notes>需正確地將從資料庫中引入資料</Notes>\r\n</JCIS>\r\n<JCIS id="20131120080820">\r\n  <Release>1</Release>\r\n</JCIS>\r\n<JCIS id="20131120093349">\r\n  <Release>0</Release>\r\n  <Iteration>0</Iteration>\r\n</JCIS>'),
(2, '<JCIS id="20131119194251">\r\n  <Importance>100</Importance>\r\n  <Estimation>3</Estimation>\r\n  <Value>90</Value>\r\n  <HowToDemo>搜尋結果從Database中抓取資料，在行動裝置分享到dropbox或google雲端</HowToDemo>\r\n  <Notes>搜尋結果需正確的從Database中抓取資料</Notes>\r\n</JCIS>\r\n<JCIS id="20131119200200">\r\n  <HowToDemo>搜尋結果從Database中抓取資料在行動裝置分享到dropbox或google雲端</HowToDemo>\r\n</JCIS>\r\n<JCIS id="20131119201036">\r\n  <Estimation>4</Estimation>\r\n  <Value>93</Value>\r\n</JCIS>\r\n<JCIS id="20131120080820">\r\n  <Release>1</Release>\r\n</JCIS>\r\n<JCIS id="20131120093349">\r\n  <Release>0</Release>\r\n  <Iteration>0</Iteration>\r\n</JCIS>'),
(3, '<JCIS id="20131119194626">\r\n  <Importance>100</Importance>\r\n  <Estimation>3</Estimation>\r\n  <Value>90</Value>\r\n  <HowToDemo>系統管理員進入專題搜尋系統後，會有下拉式選單中有「學生姓名」、「指導老師」、「專題名稱」，按下載檔案，在行動裝置中分享到dropbox 或是 google 雲端</HowToDemo>\r\n  <Notes>搜尋結果需正確的從Database中抓取下拉是選單的資料</Notes>\r\n</JCIS>\r\n<JCIS id="20131119200230">\r\n  <HowToDemo>系統管理員進入專題搜尋系統後，會有下拉式選單中有「學生姓名」、「指導老師」、「專題名稱」，按下載檔案，在行動裝置中分享到dropbox 或是google 雲端</HowToDemo>\r\n  <Notes>搜尋結果需正確的從Database中抓取下拉式選單的資料</Notes>\r\n</JCIS>\r\n<JCIS id="20131119201047">\r\n  <Estimation>5</Estimation>\r\n  <Value>95</Value>\r\n</JCIS>\r\n<JCIS id="20131120080820">\r\n  <Release>1</Release>\r\n</JCIS>\r\n<JCIS id="20131120093349">\r\n  <Release>0</Release>\r\n  <Iteration>0</Iteration>\r\n</JCIS>'),
(4, '<JCIS id="20131119195652">\r\n  <Importance>100</Importance>\r\n  <Estimation>3</Estimation>\r\n  <Value>90</Value>\r\n  <HowToDemo>註冊專題輸入「專題名稱」、「指導教授」、「專題類型」、「關鍵字」、「專題描述」、「組長及組員姓名和學號」</HowToDemo>\r\n  <Notes>需正確地將輸入的資料放置資料庫中</Notes>\r\n</JCIS>\r\n<JCIS id="20131119201100">\r\n  <Value>95</Value>\r\n</JCIS>\r\n<JCIS id="20131120080820">\r\n  <Release>1</Release>\r\n</JCIS>\r\n<JCIS id="20131120093349">\r\n  <Release>0</Release>\r\n  <Iteration>0</Iteration>\r\n</JCIS>'),
(5, '<JCIS id="20131119195743">\r\n  <Importance>100</Importance>\r\n  <Estimation>3</Estimation>\r\n  <Value>90</Value>\r\n  <HowToDemo>須從Database中抓取「指導教授」的資料\r\n上傳檔案存至NAS system裡面\r\n先判斷帳號密碼才能進入專題註冊介面</HowToDemo>\r\n  <Notes>需正確地將輸入的資料放置資料庫中</Notes>\r\n</JCIS>\r\n<JCIS id="20131119201110">\r\n  <Estimation>2</Estimation>\r\n  <Value>92</Value>\r\n</JCIS>\r\n<JCIS id="20131120080820">\r\n  <Release>1</Release>\r\n</JCIS>\r\n<JCIS id="20131120093349">\r\n  <Release>0</Release>\r\n  <Iteration>0</Iteration>\r\n</JCIS>'),
(6, '<JCIS id="20131119195834">\r\n  <Importance>100</Importance>\r\n  <Estimation>3</Estimation>\r\n  <Value>90</Value>\r\n  <HowToDemo>學生進入專題註冊系統後，需填寫「專題名稱」、「指導教授」、「專題類型」、「關鍵字」、「專題描述」、「組長及組員姓名和學號」，其中「指導教授」為下拉式選單</HowToDemo>\r\n  <Notes>需正確地將輸入的資料放置資料庫中</Notes>\r\n</JCIS>\r\n<JCIS id="20131120080820">\r\n  <Release>1</Release>\r\n</JCIS>\r\n<JCIS id="20131120093349">\r\n  <Release>0</Release>\r\n  <Iteration>0</Iteration>\r\n</JCIS>'),
(7, '<JCIS id="20131119195918">\r\n  <Importance>100</Importance>\r\n  <Estimation>3</Estimation>\r\n  <Value>90</Value>\r\n  <HowToDemo>修改專題輸入「專題名稱」、「指導教授」、「專題類型」、「關鍵字」、「專題描述」、「組長及組員姓名和學號」，修改專題輸入的資料都存入Database</HowToDemo>\r\n  <Notes />\r\n</JCIS>\r\n<JCIS id="20131119200948">\r\n  <Estimation>2</Estimation>\r\n  <Value>85</Value>\r\n</JCIS>\r\n<JCIS id="20131120080820">\r\n  <Release>1</Release>\r\n</JCIS>\r\n<JCIS id="20131120093349">\r\n  <Release>0</Release>\r\n  <Iteration>0</Iteration>\r\n</JCIS>'),
(8, '<JCIS id="20131119200013">\r\n  <Importance>100</Importance>\r\n  <Estimation>3</Estimation>\r\n  <Value>90</Value>\r\n  <HowToDemo>需從Database中抓取「專題名稱」、「指導教授」、「專題類型」、「關鍵字」、「專題描述」、「組長及組員姓名和學號」，從NAS system抓取原先的檔案</HowToDemo>\r\n  <Notes>需正確地將取出資料庫內的資料</Notes>\r\n</JCIS>\r\n<JCIS id="20131119200959">\r\n  <Estimation>4</Estimation>\r\n  <Value>88</Value>\r\n</JCIS>\r\n<JCIS id="20131120080820">\r\n  <Release>1</Release>\r\n</JCIS>\r\n<JCIS id="20131120093349">\r\n  <Release>0</Release>\r\n  <Iteration>0</Iteration>\r\n</JCIS>'),
(9, '<JCIS id="20131119200044">\r\n  <Importance>100</Importance>\r\n  <Estimation>3</Estimation>\r\n  <Value>90</Value>\r\n  <HowToDemo>學生進入專題修改系統後，將顯示原先填寫「專題名稱」、「指導教授」、「專題類型」、「關鍵字」、「專題描述」、「組長及組員姓名和學號」，其中「指導教授」為下拉式選單，可以修改裡面的資料和上傳的檔案</HowToDemo>\r\n  <Notes>需正確地將輸入的資料放置資料庫中</Notes>\r\n</JCIS>\r\n<JCIS id="20131119201012">\r\n  <Estimation>5</Estimation>\r\n</JCIS>\r\n<JCIS id="20131120080820">\r\n  <Release>1</Release>\r\n</JCIS>\r\n<JCIS id="20131120093349">\r\n  <Release>0</Release>\r\n  <Iteration>0</Iteration>\r\n</JCIS>'),
(10, '<JCIS id="20131126194943">\r\n  <HowToDemo />\r\n  <Notes />\r\n</JCIS>'),
(11, '<JCIS id="20131126200416">\r\n  <HowToDemo />\r\n  <Notes />\r\n</JCIS>\r\n<JCIS id="20131126200416">\r\n  <Iteration>1</Iteration>\r\n</JCIS>\r\n<JCIS id="20131126201052">\r\n  <Importance>0</Importance>\r\n  <Estimation>0</Estimation>\r\n  <Value>0</Value>\r\n</JCIS>\r\n<JCIS id="20131126213558">\r\n  <Estimation>31</Estimation>\r\n</JCIS>\r\n<JCIS id="20131203192641">\r\n  <Iteration>2</Iteration>\r\n</JCIS>\r\n<JCIS id="20131203192641">\r\n  <Release>0</Release>\r\n</JCIS>\r\n<JCIS id="20131203203204">\r\n  <Iteration>1</Iteration>\r\n</JCIS>\r\n<JCIS id="20131203221118">\r\n  <Notes>搜尋關鍵字連結資料庫顯示抓取後資料庫的內容</Notes>\r\n</JCIS>\r\n<JCIS id="20131203221644">\r\n  <Notes>搜尋關鍵字後連結資料庫並且顯示資料庫內容，包含標籤雲和歷史記錄，可點選檔案下載，顯示資料庫內容</Notes>\r\n</JCIS>\r\n<JCIS id="20131203222257">\r\n  <HowToDemo>搜尋關鍵字時可成功顯示標籤雲及歷史記錄，連結資料庫後可正確顯示資料庫內容</HowToDemo>\r\n</JCIS>'),
(12, '<JCIS id="20131126202058">\r\n  <Estimation>5</Estimation>\r\n</JCIS>\r\n<JCIS id="20131126212657">\r\n  <Estimation>6</Estimation>\r\n</JCIS>\r\n<JCIS id="20131203214658">\r\n  <Partners>hahayuju;love5622004</Partners>\r\n</JCIS>\r\n<JCIS id="20131203215047">\r\n  <Notes>需要連結資料庫且讀取其內容</Notes>\r\n</JCIS>'),
(13, '<JCIS id="20131126203213">\r\n  <HowToDemo />\r\n  <Notes />\r\n</JCIS>\r\n<JCIS id="20131126203213">\r\n  <Iteration>1</Iteration>\r\n</JCIS>\r\n<JCIS id="20131126203328">\r\n  <Importance>0</Importance>\r\n  <Estimation>0</Estimation>\r\n  <Value>0</Value>\r\n</JCIS>\r\n<JCIS id="20131126213626">\r\n  <Estimation>10</Estimation>\r\n</JCIS>\r\n<JCIS id="20131203193019">\r\n  <Iteration>3</Iteration>\r\n</JCIS>\r\n<JCIS id="20131203193019">\r\n  <Release>0</Release>\r\n</JCIS>\r\n<JCIS id="20131203211113">\r\n  <Iteration>2</Iteration>\r\n</JCIS>\r\n<JCIS id="20131203222556">\r\n  <HowToDemo>資料庫內是否存取正確的資料</HowToDemo>\r\n  <Notes>輸入資料送出後可正確存取在資料庫內</Notes>\r\n</JCIS>'),
(14, '<JCIS id="20131126203925">\r\n  <Estimation>1</Estimation>\r\n</JCIS>\r\n<JCIS id="20131126204009">\r\n  <Estimation>0</Estimation>\r\n</JCIS>\r\n<JCIS id="20131126213112">\r\n  <Estimation>8</Estimation>\r\n</JCIS>\r\n<JCIS id="20131126224646">\r\n  <ActualHour>6</ActualHour>\r\n</JCIS>\r\n<JCIS id="20131126224655">\r\n  <ActualHour>0</ActualHour>\r\n</JCIS>'),
(15, '<JCIS id="20131126205529">\r\n  <HowToDemo />\r\n  <Notes />\r\n</JCIS>\r\n<JCIS id="20131126205529">\r\n  <Iteration>1</Iteration>\r\n</JCIS>\r\n<JCIS id="20131126213647">\r\n  <Importance>0</Importance>\r\n  <Estimation>10</Estimation>\r\n  <Value>0</Value>\r\n</JCIS>\r\n<JCIS id="20131203203054">\r\n  <Iteration>3</Iteration>\r\n</JCIS>\r\n<JCIS id="20131203203054">\r\n  <Release>0</Release>\r\n</JCIS>\r\n<JCIS id="20131203223209">\r\n  <HowToDemo>正確執行抓取資料庫內容，並可正確執行新增或移除檔案</HowToDemo>\r\n  <Notes>連結資料庫內容資料，顯示抓取資料庫的內容，並可新增或移除檔案</Notes>\r\n</JCIS>'),
(16, '<JCIS id="20131126205638">\r\n  <HowToDemo />\r\n  <Notes />\r\n</JCIS>\r\n<JCIS id="20131126205638">\r\n  <Iteration>1</Iteration>\r\n</JCIS>\r\n<JCIS id="20131126213727">\r\n  <Importance>0</Importance>\r\n  <Estimation>36</Estimation>\r\n  <Value>0</Value>\r\n</JCIS>\r\n<JCIS id="20131203214147">\r\n  <Iteration>4</Iteration>\r\n</JCIS>\r\n<JCIS id="20131203214147">\r\n  <Release>0</Release>\r\n</JCIS>\r\n<JCIS id="20131203223332">\r\n  <Notes>搜尋關鍵字後連結資料庫並且顯示資料庫內容，包含標籤雲和歷史記錄，顯示資料庫內容</Notes>\r\n</JCIS>\r\n<JCIS id="20131203223344">\r\n  <HowToDemo>搜尋關鍵字時可成功顯示標籤雲及歷史記錄，連結資料庫後可正確顯示資料庫內容</HowToDemo>\r\n</JCIS>'),
(17, '<JCIS id="20131126205846">\r\n  <HowToDemo />\r\n  <Notes />\r\n</JCIS>\r\n<JCIS id="20131126205846">\r\n  <Iteration>1</Iteration>\r\n</JCIS>\r\n<JCIS id="20131126213741">\r\n  <Importance>0</Importance>\r\n  <Estimation>7</Estimation>\r\n  <Value>0</Value>\r\n</JCIS>\r\n<JCIS id="20131203214158">\r\n  <Iteration>5</Iteration>\r\n</JCIS>\r\n<JCIS id="20131203214158">\r\n  <Release>0</Release>\r\n</JCIS>\r\n<JCIS id="20131203223401">\r\n  <Notes>輸入資料送出後可正確存取在資料庫內</Notes>\r\n</JCIS>\r\n<JCIS id="20131203223416">\r\n  <HowToDemo>資料庫內是否存取正確的資料</HowToDemo>\r\n</JCIS>'),
(18, '<JCIS id="20131126205932">\r\n  <HowToDemo />\r\n  <Notes />\r\n</JCIS>\r\n<JCIS id="20131126205932">\r\n  <Iteration>1</Iteration>\r\n</JCIS>\r\n<JCIS id="20131126213745">\r\n  <Importance>0</Importance>\r\n  <Estimation>7</Estimation>\r\n  <Value>0</Value>\r\n</JCIS>\r\n<JCIS id="20131203214207">\r\n  <Iteration>6</Iteration>\r\n</JCIS>\r\n<JCIS id="20131203214207">\r\n  <Release>0</Release>\r\n</JCIS>\r\n<JCIS id="20131203223928">\r\n  <Notes>可以正確連結資料庫內容資料，並且可以新增或是刪除抓取資料庫的內容</Notes>\r\n</JCIS>\r\n<JCIS id="20131203223944">\r\n  <HowToDemo>正確執行抓取資料庫內容，</HowToDemo>\r\n</JCIS>\r\n<JCIS id="20131203224155">\r\n  <HowToDemo>正確執行抓取資料庫內容，並可執行新增或刪除資料儲存至資料庫</HowToDemo>\r\n</JCIS>'),
(19, '<JCIS id="20131126212155">\r\n  <Estimation>2</Estimation>\r\n</JCIS>'),
(20, '<JCIS id="20131126212206">\r\n  <Estimation>2</Estimation>\r\n</JCIS>'),
(21, '<JCIS id="20131126212214">\r\n  <Estimation>2</Estimation>\r\n</JCIS>'),
(22, '<JCIS id="20131126212223">\r\n  <Estimation>3</Estimation>\r\n</JCIS>'),
(23, '<JCIS id="20131126212234">\r\n  <Estimation>3</Estimation>\r\n</JCIS>'),
(24, '<JCIS id="20131126212240">\r\n  <Estimation>3</Estimation>\r\n</JCIS>'),
(25, '<JCIS id="20131126212723">\r\n  <Estimation>3.5</Estimation>\r\n</JCIS>\r\n<JCIS id="20131126212757">\r\n  <Estimation>3</Estimation>\r\n</JCIS>\r\n<JCIS id="20131203215751">\r\n  <Partners>bluesky;love5622004</Partners>\r\n</JCIS>'),
(26, '<JCIS id="20131126212739">\r\n  <Estimation>3.5</Estimation>\r\n</JCIS>\r\n<JCIS id="20131126212748">\r\n  <Estimation>3</Estimation>\r\n</JCIS>'),
(27, '<JCIS id="20131126212826">\r\n  <Estimation>4</Estimation>\r\n</JCIS>\r\n<JCIS id="20131126213318">\r\n  <Estimation>4.5</Estimation>\r\n</JCIS>'),
(28, '<JCIS id="20131126212833">\r\n  <Estimation>4</Estimation>\r\n</JCIS>'),
(29, '<JCIS id="20131126212838">\r\n  <Estimation>4</Estimation>\r\n</JCIS>'),
(30, '<JCIS id="20131126212938">\r\n  <Estimation>4</Estimation>\r\n</JCIS>\r\n<JCIS id="20131126212950">\r\n  <Estimation>5</Estimation>\r\n</JCIS>\r\n<JCIS id="20131126213010">\r\n  <Estimation>3</Estimation>\r\n</JCIS>\r\n<JCIS id="20131126213027">\r\n  <Estimation>4</Estimation>\r\n</JCIS>'),
(31, '<JCIS id="20131126213017">\r\n  <Estimation>4</Estimation>\r\n</JCIS>\r\n<JCIS id="20131126213034">\r\n  <Estimation>5</Estimation>\r\n</JCIS>'),
(32, '<JCIS id="20131126213042">\r\n  <Estimation>5</Estimation>\r\n</JCIS>'),
(33, '<JCIS id="20131126213051">\r\n  <Estimation>4</Estimation>\r\n</JCIS>'),
(34, '<JCIS id="20131126213117">\r\n  <Estimation>8</Estimation>\r\n</JCIS>'),
(35, '<JCIS id="20131126213214">\r\n  <Estimation>6.5</Estimation>\r\n</JCIS>'),
(36, '<JCIS id="20131126213232">\r\n  <Estimation>3</Estimation>\r\n</JCIS>'),
(37, '<JCIS id="20131126213335">\r\n  <Estimation>9</Estimation>\r\n</JCIS>'),
(38, '<JCIS id="20131126213339">\r\n  <Estimation>9</Estimation>\r\n</JCIS>'),
(39, '<JCIS id="20131126224518">\r\n  <Estimation>6</Estimation>\r\n</JCIS>\r\n<JCIS id="20131126224554">\r\n  <Estimation>0</Estimation>\r\n</JCIS>'),
(40, '<JCIS id="20131210220023">\r\n  <Importance>95</Importance>\r\n  <Estimation>10</Estimation>\r\n  <HowToDemo />\r\n  <Notes />\r\n</JCIS>\r\n<JCIS id="20131210220023">\r\n  <Iteration>1</Iteration>\r\n</JCIS>\r\n<JCIS id="20131210220539">\r\n  <Estimation>30</Estimation>\r\n  <Value>0</Value>\r\n  <HowToDemo>1.當選取搜尋類別時，需要對應到乙所選的類別\r\n2.在連結資料庫時，需正確顯示資料庫的內容\r\n3.當點選所選的專題，需正確地將檔案下載下來。</HowToDemo>\r\n  <Notes>1.選取想搜尋的類別，關鍵字、專題名稱或是指導老師。\r\n2.按下搜尋鍵，即從資料庫中讀取資料，顯示於網頁中。\r\n3.點選所選的專題，即可下載檔案。</Notes>\r\n</JCIS>'),
(41, '<JCIS id="20131210222612">\r\n  <Importance>90</Importance>\r\n  <Estimation>30</Estimation>\r\n  <HowToDemo>1.點選專題註冊，需正確的執行該內容\r\n2.要判斷表格內容是否已經填寫完畢，如果沒有則無法送出，並顯示尚未填寫。\r\n3.送出的內容，需正確的存入資料庫中。</HowToDemo>\r\n  <Notes>1.點選專題註冊，顯示其內容。\r\n2.須將專題註冊中的內容填寫完整，才可送出。\r\n3.送出內容之後將內容存置資料庫中</Notes>\r\n</JCIS>\r\n<JCIS id="20131210222612">\r\n  <Iteration>1</Iteration>\r\n</JCIS>'),
(42, '<JCIS id="20131210225057">\r\n  <Importance>92</Importance>\r\n  <Estimation>30</Estimation>\r\n  <HowToDemo />\r\n  <Notes>2.\r\n3.</Notes>\r\n</JCIS>\r\n<JCIS id="20131210225057">\r\n  <Iteration>1</Iteration>\r\n</JCIS>\r\n<JCIS id="20131210230613">\r\n  <Value>0</Value>\r\n  <HowToDemo>1.在手機上正確的執行apk 檔案。\r\n2.當進行搜尋專題的功能時，需正確的顯示其搜尋內容。\r\n3.當下在搜尋檔案時，需正確的下載其檔案。</HowToDemo>\r\n  <Notes>1.執行apk 的檔案。\r\n2.進行搜尋的功能。\r\n3.並下載搜尋專題的檔案。</Notes>\r\n</JCIS>');

-- --------------------------------------------------------

--
-- 表的結構 `mantis_bug_file_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bug_file_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `diskfile` varchar(250) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `folder` varchar(250) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `file_type` varchar(250) NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `idx_bug_file_bug_id` (`bug_id`),
  KEY `idx_diskfile` (`diskfile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `mantis_bug_history_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bug_history_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_modified` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `field_name` varchar(64) NOT NULL,
  `old_value` varchar(255) NOT NULL,
  `new_value` varchar(255) NOT NULL,
  `type` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_bug_history_bug_id` (`bug_id`),
  KEY `idx_history_user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=199 ;

--
-- 轉存資料表中的資料 `mantis_bug_history_table`
--

INSERT INTO `mantis_bug_history_table` (`id`, `user_id`, `bug_id`, `date_modified`, `field_name`, `old_value`, `new_value`, `type`) VALUES
(1, 2, 1, '2013-11-19 19:40:38', 'null', '0', '0', 1),
(2, 2, 1, '2013-11-19 19:41:00', 'summary', 'Story1', '搜尋專題', 0),
(3, 2, 2, '2013-11-19 19:42:51', 'null', '0', '0', 1),
(4, 2, 1, '2013-11-19 19:43:32', 'summary', '搜尋專題', '搜尋專題(內部介面需求)', 0),
(5, 2, 2, '2013-11-19 19:43:47', 'summary', '搜尋專題', '搜尋專題(外部介面需求)', 0),
(6, 2, 3, '2013-11-19 19:46:26', 'null', '0', '0', 1),
(7, 2, 4, '2013-11-19 19:56:52', 'null', '0', '0', 1),
(8, 2, 5, '2013-11-19 19:57:43', 'null', '0', '0', 1),
(9, 2, 6, '2013-11-19 19:58:34', 'null', '0', '0', 1),
(10, 2, 7, '2013-11-19 19:59:18', 'null', '0', '0', 1),
(11, 2, 8, '2013-11-19 20:00:13', 'null', '0', '0', 1),
(12, 2, 9, '2013-11-19 20:00:44', 'null', '0', '0', 1),
(13, 3, 10, '2013-11-26 19:49:43', 'null', '0', '0', 1),
(14, 3, 11, '2013-11-26 20:04:16', 'null', '0', '0', 1),
(15, 3, 11, '2013-11-26 20:04:16', 'Sprint', '-1', '1', 0),
(16, 3, 12, '2013-11-26 20:05:00', 'null', '0', '0', 1),
(17, 3, 11, '2013-11-26 00:00:00', 'null', '2', '12', 18),
(18, 3, 12, '2013-11-26 00:00:00', 'null', '3', '11', 18),
(19, 3, 11, '2013-11-26 20:10:52', 'summary', ' 專題搜尋子系統', '電腦-專題搜尋子系統', 0),
(20, 3, 12, '2013-11-26 20:18:49', 'summary', '電腦-關鍵字', '關鍵字', 0),
(21, 3, 13, '2013-11-26 20:18:59', 'null', '0', '0', 1),
(22, 3, 11, '2013-11-26 00:00:00', 'null', '2', '13', 18),
(23, 3, 13, '2013-11-26 00:00:00', 'null', '3', '11', 18),
(24, 3, 12, '2013-11-26 20:20:58', 'handler_id', '0', '2', 0),
(25, 3, 12, '2013-11-26 20:20:58', 'status', '10', '50', 0),
(26, 3, 12, '2013-11-26 20:27:17', 'status', '50', '10', 0),
(27, 3, 11, '2013-11-26 20:27:17', 'null', '2', '12', 19),
(28, 3, 12, '2013-11-26 20:27:17', 'null', '3', '11', 19),
(29, 3, 13, '2013-11-26 20:27:19', 'status', '10', '10', 0),
(30, 3, 11, '2013-11-26 20:27:19', 'null', '2', '13', 19),
(31, 3, 13, '2013-11-26 20:27:19', 'null', '3', '11', 19),
(32, 3, 14, '2013-11-26 20:27:32', 'null', '0', '0', 1),
(33, 3, 11, '2013-11-26 00:00:00', 'null', '2', '14', 18),
(34, 3, 14, '2013-11-26 00:00:00', 'null', '3', '11', 18),
(35, 3, 11, '2013-11-26 20:28:25', 'null', '2', '12', 18),
(36, 3, 12, '2013-11-26 20:28:25', 'null', '3', '11', 18),
(37, 3, 11, '2013-11-26 20:29:44', 'null', '2', '13', 18),
(38, 3, 13, '2013-11-26 20:29:44', 'null', '3', '11', 18),
(39, 3, 15, '2013-11-26 20:32:13', 'null', '0', '0', 1),
(40, 3, 15, '2013-11-26 20:32:13', 'Sprint', '-1', '1', 0),
(41, 3, 14, '2013-11-26 20:32:51', 'summary', '關鍵字', '標籤雲', 0),
(42, 3, 15, '2013-11-26 20:33:28', 'summary', '專題註冊子系統', '電腦-專題註冊子系統', 0),
(43, 3, 16, '2013-11-26 20:34:08', 'null', '0', '0', 1),
(44, 3, 11, '2013-11-26 00:00:00', 'null', '2', '16', 18),
(45, 3, 16, '2013-11-26 00:00:00', 'null', '3', '11', 18),
(46, 3, 17, '2013-11-26 20:35:24', 'null', '0', '0', 1),
(47, 3, 11, '2013-11-26 00:00:00', 'null', '2', '17', 18),
(48, 3, 17, '2013-11-26 00:00:00', 'null', '3', '11', 18),
(49, 3, 18, '2013-11-26 20:36:54', 'null', '0', '0', 1),
(50, 3, 11, '2013-11-26 00:00:00', 'null', '2', '18', 18),
(51, 3, 18, '2013-11-26 00:00:00', 'null', '3', '11', 18),
(52, 3, 19, '2013-11-26 20:37:06', 'null', '0', '0', 1),
(53, 3, 15, '2013-11-26 00:00:00', 'null', '2', '19', 18),
(54, 3, 19, '2013-11-26 00:00:00', 'null', '3', '15', 18),
(55, 3, 14, '2013-11-26 20:39:40', 'handler_id', '0', '2', 0),
(56, 3, 14, '2013-11-26 20:39:40', 'status', '10', '50', 0),
(57, 3, 18, '2013-11-26 20:40:58', 'status', '10', '10', 0),
(58, 3, 11, '2013-11-26 20:40:58', 'null', '2', '18', 19),
(59, 3, 18, '2013-11-26 20:40:58', 'null', '3', '11', 19),
(60, 3, 14, '2013-11-26 20:41:09', 'status', '50', '10', 0),
(61, 3, 11, '2013-11-26 20:41:09', 'null', '2', '14', 19),
(62, 3, 14, '2013-11-26 20:41:09', 'null', '3', '11', 19),
(63, 3, 16, '2013-11-26 20:41:13', 'status', '10', '10', 0),
(64, 3, 11, '2013-11-26 20:41:13', 'null', '2', '16', 19),
(65, 3, 16, '2013-11-26 20:41:13', 'null', '3', '11', 19),
(66, 3, 17, '2013-11-26 20:41:18', 'status', '10', '10', 0),
(67, 3, 11, '2013-11-26 20:41:18', 'null', '2', '17', 19),
(68, 3, 17, '2013-11-26 20:41:18', 'null', '3', '11', 19),
(69, 3, 13, '2013-11-26 20:41:20', 'status', '10', '10', 0),
(70, 3, 11, '2013-11-26 20:41:20', 'null', '2', '13', 19),
(71, 3, 13, '2013-11-26 20:41:20', 'null', '3', '11', 19),
(72, 3, 11, '2013-11-26 20:41:26', 'null', '2', '18', 18),
(73, 3, 18, '2013-11-26 20:41:26', 'null', '3', '11', 18),
(74, 3, 11, '2013-11-26 20:41:26', 'null', '2', '17', 18),
(75, 3, 17, '2013-11-26 20:41:26', 'null', '3', '11', 18),
(76, 3, 11, '2013-11-26 20:41:26', 'null', '2', '16', 18),
(77, 3, 16, '2013-11-26 20:41:26', 'null', '3', '11', 18),
(78, 3, 11, '2013-11-26 20:41:26', 'null', '2', '14', 18),
(79, 3, 14, '2013-11-26 20:41:26', 'null', '3', '11', 18),
(80, 3, 11, '2013-11-26 20:41:26', 'null', '2', '13', 18),
(81, 3, 13, '2013-11-26 20:41:26', 'null', '3', '11', 18),
(82, 3, 19, '2013-11-26 20:41:34', 'status', '10', '10', 0),
(83, 3, 15, '2013-11-26 20:41:34', 'null', '2', '19', 19),
(84, 3, 19, '2013-11-26 20:41:34', 'null', '3', '15', 19),
(85, 3, 15, '2013-11-26 20:41:39', 'null', '2', '19', 18),
(86, 3, 19, '2013-11-26 20:41:39', 'null', '3', '15', 18),
(87, 3, 20, '2013-11-26 20:45:33', 'null', '0', '0', 1),
(88, 3, 15, '2013-11-26 00:00:00', 'null', '2', '20', 18),
(89, 3, 20, '2013-11-26 00:00:00', 'null', '3', '15', 18),
(90, 3, 21, '2013-11-26 20:45:45', 'null', '0', '0', 1),
(91, 3, 15, '2013-11-26 00:00:00', 'null', '2', '21', 18),
(92, 3, 21, '2013-11-26 00:00:00', 'null', '3', '15', 18),
(93, 3, 22, '2013-11-26 20:55:29', 'null', '0', '0', 1),
(94, 3, 22, '2013-11-26 20:55:29', 'Sprint', '-1', '1', 0),
(95, 3, 23, '2013-11-26 20:55:55', 'null', '0', '0', 1),
(96, 3, 22, '2013-11-26 00:00:00', 'null', '2', '23', 18),
(97, 3, 23, '2013-11-26 00:00:00', 'null', '3', '22', 18),
(98, 3, 24, '2013-11-26 20:56:05', 'null', '0', '0', 1),
(99, 3, 22, '2013-11-26 00:00:00', 'null', '2', '24', 18),
(100, 3, 24, '2013-11-26 00:00:00', 'null', '3', '22', 18),
(101, 3, 25, '2013-11-26 20:56:17', 'null', '0', '0', 1),
(102, 3, 22, '2013-11-26 00:00:00', 'null', '2', '25', 18),
(103, 3, 25, '2013-11-26 00:00:00', 'null', '3', '22', 18),
(104, 3, 26, '2013-11-26 20:56:38', 'null', '0', '0', 1),
(105, 3, 26, '2013-11-26 20:56:38', 'Sprint', '-1', '1', 0),
(106, 3, 27, '2013-11-26 20:56:50', 'null', '0', '0', 1),
(107, 3, 26, '2013-11-26 00:00:00', 'null', '2', '27', 18),
(108, 3, 27, '2013-11-26 00:00:00', 'null', '3', '26', 18),
(109, 3, 28, '2013-11-26 20:56:58', 'null', '0', '0', 1),
(110, 3, 26, '2013-11-26 00:00:00', 'null', '2', '28', 18),
(111, 3, 28, '2013-11-26 00:00:00', 'null', '3', '26', 18),
(112, 3, 29, '2013-11-26 20:57:06', 'null', '0', '0', 1),
(113, 3, 26, '2013-11-26 00:00:00', 'null', '2', '29', 18),
(114, 3, 29, '2013-11-26 00:00:00', 'null', '3', '26', 18),
(115, 3, 30, '2013-11-26 20:57:14', 'null', '0', '0', 1),
(116, 3, 26, '2013-11-26 00:00:00', 'null', '2', '30', 18),
(117, 3, 30, '2013-11-26 00:00:00', 'null', '3', '26', 18),
(118, 3, 31, '2013-11-26 20:57:24', 'null', '0', '0', 1),
(119, 3, 26, '2013-11-26 00:00:00', 'null', '2', '31', 18),
(120, 3, 31, '2013-11-26 00:00:00', 'null', '3', '26', 18),
(121, 3, 32, '2013-11-26 20:57:48', 'null', '0', '0', 1),
(122, 3, 26, '2013-11-26 00:00:00', 'null', '2', '32', 18),
(123, 3, 32, '2013-11-26 00:00:00', 'null', '3', '26', 18),
(124, 3, 33, '2013-11-26 20:58:46', 'null', '0', '0', 1),
(125, 3, 33, '2013-11-26 20:58:46', 'Sprint', '-1', '1', 0),
(126, 3, 34, '2013-11-26 20:59:02', 'null', '0', '0', 1),
(127, 3, 33, '2013-11-26 00:00:00', 'null', '2', '34', 18),
(128, 3, 34, '2013-11-26 00:00:00', 'null', '3', '33', 18),
(129, 3, 35, '2013-11-26 20:59:10', 'null', '0', '0', 1),
(130, 3, 33, '2013-11-26 00:00:00', 'null', '2', '35', 18),
(131, 3, 35, '2013-11-26 00:00:00', 'null', '3', '33', 18),
(132, 3, 36, '2013-11-26 20:59:17', 'null', '0', '0', 1),
(133, 3, 33, '2013-11-26 00:00:00', 'null', '2', '36', 18),
(134, 3, 36, '2013-11-26 00:00:00', 'null', '3', '33', 18),
(135, 3, 37, '2013-11-26 20:59:32', 'null', '0', '0', 1),
(136, 3, 37, '2013-11-26 20:59:32', 'Sprint', '-1', '1', 0),
(137, 3, 38, '2013-11-26 20:59:45', 'null', '0', '0', 1),
(138, 3, 37, '2013-11-26 00:00:00', 'null', '2', '38', 18),
(139, 3, 38, '2013-11-26 00:00:00', 'null', '3', '37', 18),
(140, 3, 39, '2013-11-26 20:59:53', 'null', '0', '0', 1),
(141, 3, 37, '2013-11-26 00:00:00', 'null', '2', '39', 18),
(142, 3, 39, '2013-11-26 00:00:00', 'null', '3', '37', 18),
(143, 3, 40, '2013-11-26 21:00:10', 'null', '0', '0', 1),
(144, 3, 37, '2013-11-26 00:00:00', 'null', '2', '40', 18),
(145, 3, 40, '2013-11-26 00:00:00', 'null', '3', '37', 18),
(146, 3, 35, '2013-11-26 21:25:13', 'status', '10', '10', 0),
(147, 3, 33, '2013-11-26 21:25:13', 'null', '2', '35', 19),
(148, 3, 35, '2013-11-26 21:25:13', 'null', '3', '33', 19),
(149, 3, 39, '2013-11-26 21:25:18', 'status', '10', '10', 0),
(150, 3, 37, '2013-11-26 21:25:18', 'null', '2', '39', 19),
(151, 3, 39, '2013-11-26 21:25:18', 'null', '3', '37', 19),
(152, 3, 17, '2013-11-26 21:25:52', 'summary', '資料庫建立', '資料庫', 0),
(153, 3, 31, '2013-11-26 21:28:26', 'summary', '資料庫建立', '資料庫', 0),
(154, 2, 13, '2013-11-26 22:35:22', 'handler_id', '0', '2', 0),
(155, 2, 13, '2013-11-26 22:35:22', 'status', '10', '50', 0),
(156, 2, 13, '2013-11-26 22:36:58', 'status', '50', '10', 0),
(157, 2, 12, '2013-11-26 22:37:24', 'handler_id', '0', '2', 0),
(158, 2, 12, '2013-11-26 22:37:24', 'status', '10', '50', 0),
(159, 2, 12, '2013-11-26 22:38:11', 'status', '50', '10', 0),
(160, 3, 41, '2013-11-26 22:42:12', 'null', '0', '0', 1),
(161, 3, 37, '2013-11-27 00:00:00', 'null', '2', '41', 18),
(162, 3, 41, '2013-11-27 00:00:00', 'null', '3', '37', 18),
(163, 2, 42, '2013-11-26 22:44:34', 'null', '0', '0', 1),
(164, 2, 11, '2013-11-26 00:00:00', 'null', '2', '42', 18),
(165, 2, 42, '2013-11-26 00:00:00', 'null', '3', '11', 18),
(166, 3, 42, '2013-11-26 22:46:05', 'status', '10', '10', 0),
(167, 3, 11, '2013-11-26 22:46:05', 'null', '2', '42', 19),
(168, 3, 42, '2013-11-26 22:46:05', 'null', '3', '11', 19),
(169, 2, 14, '2013-11-26 22:46:55', 'handler_id', '0', '2', 0),
(170, 2, 14, '2013-11-26 22:46:55', 'status', '10', '50', 0),
(171, 2, 14, '2013-11-26 22:47:26', 'status', '50', '10', 0),
(172, 3, 18, '2013-12-03 18:14:50', 'status', '10', '10', 0),
(173, 3, 11, '2013-12-03 18:14:50', 'null', '2', '18', 19),
(174, 3, 18, '2013-12-03 18:14:50', 'null', '3', '11', 19),
(175, 3, 11, '2013-12-03 18:15:07', 'null', '2', '18', 18),
(176, 3, 18, '2013-12-03 18:15:07', 'null', '3', '11', 18),
(177, 3, 11, '2013-12-03 19:26:41', 'Sprint', '1', '2', 0),
(178, 3, 15, '2013-12-03 19:30:19', 'Sprint', '1', '3', 0),
(179, 3, 22, '2013-12-03 20:30:54', 'Sprint', '1', '3', 0),
(180, 3, 11, '2013-12-03 20:32:04', 'Sprint', '2', '1', 0),
(181, 3, 15, '2013-12-03 21:11:13', 'Sprint', '3', '2', 0),
(182, 3, 26, '2013-12-03 21:41:47', 'Sprint', '1', '4', 0),
(183, 3, 33, '2013-12-03 21:41:58', 'Sprint', '1', '5', 0),
(184, 3, 37, '2013-12-03 21:42:07', 'Sprint', '1', '6', 0),
(185, 3, 12, '2013-12-03 21:46:58', 'handler_id', '0', '2', 0),
(186, 3, 12, '2013-12-03 21:46:58', 'status', '10', '50', 0),
(187, 3, 17, '2013-12-03 21:57:51', 'handler_id', '0', '2', 0),
(188, 3, 17, '2013-12-03 21:57:51', 'status', '10', '50', 0),
(189, 3, 41, '2013-12-03 22:34:49', 'status', '10', '10', 0),
(190, 3, 37, '2013-12-03 22:34:49', 'null', '2', '41', 19),
(191, 3, 41, '2013-12-03 22:34:49', 'null', '3', '37', 19),
(192, 2, 43, '2013-12-10 22:00:23', 'null', '0', '0', 1),
(193, 2, 43, '2013-12-10 22:00:23', 'Sprint', '-1', '1', 0),
(194, 2, 44, '2013-12-10 22:26:12', 'null', '0', '0', 1),
(195, 2, 44, '2013-12-10 22:26:12', 'Sprint', '-1', '1', 0),
(196, 2, 45, '2013-12-10 22:50:57', 'null', '0', '0', 1),
(197, 2, 45, '2013-12-10 22:50:57', 'Sprint', '-1', '1', 0),
(198, 0, 46, '2014-01-02 21:07:18', 'null', '0', '0', 1);

-- --------------------------------------------------------

--
-- 表的結構 `mantis_bug_monitor_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bug_monitor_table` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的結構 `mantis_bug_relationship_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bug_relationship_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source_bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  `destination_bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  `relationship_type` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_relationship_source` (`source_bug_id`),
  KEY `idx_relationship_destination` (`destination_bug_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- 轉存資料表中的資料 `mantis_bug_relationship_table`
--

INSERT INTO `mantis_bug_relationship_table` (`id`, `source_bug_id`, `destination_bug_id`, `relationship_type`) VALUES
(4, 11, 12, 2),
(13, 11, 14, 2),
(35, 11, 18, 2),
(12, 11, 16, 2),
(11, 11, 17, 2),
(14, 11, 13, 2),
(15, 15, 19, 2),
(16, 15, 20, 2),
(17, 15, 21, 2),
(18, 22, 23, 2),
(19, 22, 24, 2),
(20, 22, 25, 2),
(21, 26, 27, 2),
(22, 26, 28, 2),
(23, 26, 29, 2),
(24, 26, 30, 2),
(25, 26, 31, 2),
(26, 26, 32, 2),
(27, 33, 34, 2),
(29, 33, 36, 2),
(30, 37, 38, 2),
(32, 37, 40, 2);

-- --------------------------------------------------------

--
-- 表的結構 `mantis_bug_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bug_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reporter_id` int(10) unsigned NOT NULL DEFAULT '0',
  `handler_id` int(10) unsigned NOT NULL DEFAULT '0',
  `duplicate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `priority` smallint(6) NOT NULL DEFAULT '30',
  `severity` smallint(6) NOT NULL DEFAULT '50',
  `reproducibility` smallint(6) NOT NULL DEFAULT '10',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `resolution` smallint(6) NOT NULL DEFAULT '10',
  `projection` smallint(6) NOT NULL DEFAULT '10',
  `category` varchar(64) NOT NULL DEFAULT '',
  `date_submitted` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `last_updated` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `eta` smallint(6) NOT NULL DEFAULT '10',
  `bug_text_id` int(10) unsigned NOT NULL DEFAULT '0',
  `os` varchar(32) NOT NULL DEFAULT '',
  `os_build` varchar(32) NOT NULL DEFAULT '',
  `platform` varchar(32) NOT NULL DEFAULT '',
  `version` varchar(64) NOT NULL DEFAULT '',
  `fixed_in_version` varchar(64) NOT NULL DEFAULT '',
  `build` varchar(32) NOT NULL DEFAULT '',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0',
  `view_state` smallint(6) NOT NULL DEFAULT '10',
  `summary` varchar(128) NOT NULL DEFAULT '',
  `sponsorship_total` int(11) NOT NULL DEFAULT '0',
  `sticky` tinyint(4) NOT NULL DEFAULT '0',
  `target_version` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_bug_sponsorship_total` (`sponsorship_total`),
  KEY `idx_bug_fixed_in_version` (`fixed_in_version`),
  KEY `idx_bug_status` (`status`),
  KEY `idx_project` (`project_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- 轉存資料表中的資料 `mantis_bug_table`
--

INSERT INTO `mantis_bug_table` (`id`, `project_id`, `reporter_id`, `handler_id`, `duplicate_id`, `priority`, `severity`, `reproducibility`, `status`, `resolution`, `projection`, `category`, `date_submitted`, `last_updated`, `eta`, `bug_text_id`, `os`, `os_build`, `platform`, `version`, `fixed_in_version`, `build`, `profile_id`, `view_state`, `summary`, `sponsorship_total`, `sticky`, `target_version`) VALUES
(19, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:37:06', '2013-11-26 20:37:06', 10, 19, '', '', '', '', '', '', 0, 10, '專題註冊介面', 0, 0, ''),
(15, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Story', '2013-11-26 20:32:13', '2013-11-26 20:32:13', 10, 15, '', '', '', '', '', '', 0, 10, '電腦-專題註冊子系統', 0, 0, ''),
(16, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:34:08', '2013-11-26 20:34:08', 10, 16, '', '', '', '', '', '', 0, 10, '檔案下載', 0, 0, ''),
(17, 1, 3, 2, 0, 30, 50, 10, 50, 10, 10, 'Task', '2013-11-26 20:35:24', '2013-11-26 20:35:24', 10, 17, '', '', '', '', '', '', 0, 10, '資料庫', 0, 0, ''),
(18, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:36:54', '2013-11-26 20:36:54', 10, 18, '', '', '', '', '', '', 0, 10, '專題搜尋介面', 0, 0, ''),
(14, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:27:32', '2013-11-26 20:27:32', 10, 14, '', '', '', '', '', '', 0, 10, '標籤雲', 0, 0, ''),
(13, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:18:59', '2013-11-26 20:18:59', 10, 13, '', '', '', '', '', '', 0, 10, '歷史紀錄', 0, 0, ''),
(11, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Story', '2013-11-26 20:04:16', '2013-11-26 20:04:16', 10, 11, '', '', '', '', '', '', 0, 10, '電腦-專題搜尋子系統', 0, 0, ''),
(12, 1, 3, 2, 0, 30, 50, 10, 50, 10, 10, 'Task', '2013-11-26 20:05:00', '2013-11-26 20:05:00', 10, 12, '', '', '', '', '', '', 0, 10, '關鍵字', 0, 0, ''),
(20, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:45:33', '2013-11-26 20:45:33', 10, 20, '', '', '', '', '', '', 0, 10, '檔案上傳', 0, 0, ''),
(21, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:45:45', '2013-11-26 20:45:45', 10, 21, '', '', '', '', '', '', 0, 10, '資料庫', 0, 0, ''),
(22, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Story', '2013-11-26 20:55:29', '2013-11-26 20:55:29', 10, 22, '', '', '', '', '', '', 0, 10, '電腦-專題修改子系統', 0, 0, ''),
(23, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:55:55', '2013-11-26 20:55:55', 10, 23, '', '', '', '', '', '', 0, 10, '專題修改介面', 0, 0, ''),
(24, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:56:05', '2013-11-26 20:56:05', 10, 24, '', '', '', '', '', '', 0, 10, '檔案上傳', 0, 0, ''),
(25, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:56:17', '2013-11-26 20:56:17', 10, 25, '', '', '', '', '', '', 0, 10, '資料庫', 0, 0, ''),
(26, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Story', '2013-11-26 20:56:38', '2013-11-26 20:56:38', 10, 26, '', '', '', '', '', '', 0, 10, '手機-專題搜尋子系統', 0, 0, ''),
(27, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:56:50', '2013-11-26 20:56:50', 10, 27, '', '', '', '', '', '', 0, 10, '關鍵字', 0, 0, ''),
(28, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:56:58', '2013-11-26 20:56:58', 10, 28, '', '', '', '', '', '', 0, 10, '歷史紀錄', 0, 0, ''),
(29, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:57:06', '2013-11-26 20:57:06', 10, 29, '', '', '', '', '', '', 0, 10, '標籤雲', 0, 0, ''),
(30, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:57:14', '2013-11-26 20:57:14', 10, 30, '', '', '', '', '', '', 0, 10, '檔案分享', 0, 0, ''),
(31, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:57:24', '2013-11-26 20:57:24', 10, 31, '', '', '', '', '', '', 0, 10, '資料庫', 0, 0, ''),
(32, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:57:48', '2013-11-26 20:57:48', 10, 32, '', '', '', '', '', '', 0, 10, '專題搜尋介面', 0, 0, ''),
(33, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Story', '2013-11-26 20:58:46', '2013-11-26 20:58:46', 10, 33, '', '', '', '', '', '', 0, 10, '手機-專題註冊子系統', 0, 0, ''),
(34, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:59:02', '2013-11-26 20:59:02', 10, 34, '', '', '', '', '', '', 0, 10, '專題註冊介面', 0, 0, ''),
(35, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:59:10', '2013-11-26 20:59:10', 10, 35, '', '', '', '', '', '', 0, 10, '檔案上傳', 0, 0, ''),
(36, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:59:17', '2013-11-26 20:59:17', 10, 36, '', '', '', '', '', '', 0, 10, '資料庫', 0, 0, ''),
(37, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Story', '2013-11-26 20:59:32', '2013-11-26 20:59:32', 10, 37, '', '', '', '', '', '', 0, 10, '手機-專題修改子系統', 0, 0, ''),
(38, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:59:45', '2013-11-26 20:59:45', 10, 38, '', '', '', '', '', '', 0, 10, '專題修改介面', 0, 0, ''),
(39, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:59:53', '2013-11-26 20:59:53', 10, 39, '', '', '', '', '', '', 0, 10, '檔案上傳', 0, 0, ''),
(40, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 21:00:10', '2013-11-26 21:00:10', 10, 40, '', '', '', '', '', '', 0, 10, '資料庫', 0, 0, ''),
(41, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 22:42:12', '2013-11-26 22:42:12', 10, 41, '', '', '', '', '', '', 0, 10, '下載', 0, 0, ''),
(42, 1, 2, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 22:44:34', '2013-11-26 22:44:34', 10, 42, '', '', '', '', '', '', 0, 10, '下載', 0, 0, ''),
(43, 1, 2, 0, 0, 30, 50, 10, 10, 10, 10, 'Story', '2013-12-10 22:00:23', '2013-12-10 22:00:23', 10, 43, '', '', '', '', '', '', 0, 10, '專題搜尋網頁 1.1.0', 0, 0, ''),
(44, 1, 2, 0, 0, 30, 50, 10, 10, 10, 10, 'Story', '2013-12-10 22:26:12', '2013-12-10 22:26:12', 10, 44, '', '', '', '', '', '', 0, 10, '專題註冊網頁 1.2.0', 0, 0, ''),
(45, 1, 2, 0, 0, 30, 50, 10, 10, 10, 10, 'Story', '2013-12-10 22:50:57', '2013-12-10 22:50:57', 10, 45, '', '', '', '', '', '', 0, 10, '專題搜尋APP 1.3.0', 0, 0, ''),
(46, 1, 0, 0, 0, 30, 50, 10, 10, 10, 10, 'Story', '2014-01-02 21:07:18', '2014-01-02 21:07:18', 10, 46, '', '', '', '', '', '', 0, 10, '專案歸檔的確認', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的結構 `mantis_bug_tag_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bug_tag_table` (
  `bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_attached` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  PRIMARY KEY (`bug_id`,`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的結構 `mantis_bug_text_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bug_text_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `steps_to_reproduce` longtext NOT NULL,
  `additional_information` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- 轉存資料表中的資料 `mantis_bug_text_table`
--

INSERT INTO `mantis_bug_text_table` (`id`, `description`, `steps_to_reproduce`, `additional_information`) VALUES
(1, '', '', ''),
(2, '', '', ''),
(3, '', '', ''),
(4, '', '', ''),
(5, '', '', ''),
(6, '', '', ''),
(7, '', '', ''),
(8, '', '', ''),
(9, '', '', ''),
(10, '', '', ''),
(11, '', '', ''),
(12, '', '', ''),
(13, '', '', ''),
(14, '', '', ''),
(15, '', '', ''),
(16, '', '', ''),
(17, '', '', ''),
(18, '', '', ''),
(19, '', '', ''),
(20, '', '', ''),
(21, '', '', ''),
(22, '', '', ''),
(23, '', '', ''),
(24, '', '', ''),
(25, '', '', ''),
(26, '', '', ''),
(27, '', '', ''),
(28, '', '', ''),
(29, '', '', ''),
(30, '', '', ''),
(31, '', '', ''),
(32, '', '', ''),
(33, '', '', ''),
(34, '', '', ''),
(35, '', '', ''),
(36, '', '', ''),
(37, '', '', ''),
(38, '', '', ''),
(39, '', '', ''),
(40, '', '', ''),
(41, '', '', ''),
(42, '', '', ''),
(43, '', '', ''),
(44, '', '', ''),
(45, '', '', ''),
(46, '', '', '');

-- --------------------------------------------------------

--
-- 表的結構 `mantis_config_table`
--

CREATE TABLE IF NOT EXISTS `mantis_config_table` (
  `config_id` varchar(64) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `access_reqd` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '90',
  `value` longtext NOT NULL,
  PRIMARY KEY (`config_id`,`project_id`,`user_id`),
  KEY `idx_config` (`config_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `mantis_config_table`
--

INSERT INTO `mantis_config_table` (`config_id`, `project_id`, `user_id`, `access_reqd`, `type`, `value`) VALUES
('database_version', 0, 0, 90, 1, '63');

-- --------------------------------------------------------

--
-- 表的結構 `mantis_custom_field_project_table`
--

CREATE TABLE IF NOT EXISTS `mantis_custom_field_project_table` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sequence` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的結構 `mantis_custom_field_string_table`
--

CREATE TABLE IF NOT EXISTS `mantis_custom_field_string_table` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `bug_id` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`bug_id`),
  KEY `idx_custom_field_bug` (`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的結構 `mantis_custom_field_table`
--

CREATE TABLE IF NOT EXISTS `mantis_custom_field_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `possible_values` varchar(255) NOT NULL DEFAULT '',
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `valid_regexp` varchar(255) NOT NULL DEFAULT '',
  `access_level_r` smallint(6) NOT NULL DEFAULT '0',
  `access_level_rw` smallint(6) NOT NULL DEFAULT '0',
  `length_min` int(11) NOT NULL DEFAULT '0',
  `length_max` int(11) NOT NULL DEFAULT '0',
  `advanced` tinyint(4) NOT NULL DEFAULT '0',
  `require_report` tinyint(4) NOT NULL DEFAULT '0',
  `require_update` tinyint(4) NOT NULL DEFAULT '0',
  `display_report` tinyint(4) NOT NULL DEFAULT '1',
  `display_update` tinyint(4) NOT NULL DEFAULT '1',
  `require_resolved` tinyint(4) NOT NULL DEFAULT '0',
  `display_resolved` tinyint(4) NOT NULL DEFAULT '0',
  `display_closed` tinyint(4) NOT NULL DEFAULT '0',
  `require_closed` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_custom_field_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `mantis_email_table`
--

CREATE TABLE IF NOT EXISTS `mantis_email_table` (
  `email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(64) NOT NULL DEFAULT '',
  `subject` varchar(250) NOT NULL DEFAULT '',
  `submitted` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `metadata` longtext NOT NULL,
  `body` longtext NOT NULL,
  PRIMARY KEY (`email_id`),
  KEY `idx_email_id` (`email_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `mantis_filters_table`
--

CREATE TABLE IF NOT EXISTS `mantis_filters_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `is_public` tinyint(4) DEFAULT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `filter_string` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `mantis_news_table`
--

CREATE TABLE IF NOT EXISTS `mantis_news_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `poster_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_posted` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `last_modified` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `view_state` smallint(6) NOT NULL DEFAULT '10',
  `announcement` tinyint(4) NOT NULL DEFAULT '0',
  `headline` varchar(64) NOT NULL DEFAULT '',
  `body` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `mantis_project_category_table`
--

CREATE TABLE IF NOT EXISTS `mantis_project_category_table` (
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category` varchar(64) NOT NULL DEFAULT '',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`project_id`,`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的結構 `mantis_project_file_table`
--

CREATE TABLE IF NOT EXISTS `mantis_project_file_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `diskfile` varchar(250) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `folder` varchar(250) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `file_type` varchar(250) NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `content` longblob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `mantis_project_hierarchy_table`
--

CREATE TABLE IF NOT EXISTS `mantis_project_hierarchy_table` (
  `child_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的結構 `mantis_project_table`
--

CREATE TABLE IF NOT EXISTS `mantis_project_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `view_state` smallint(6) NOT NULL DEFAULT '10',
  `access_min` smallint(6) NOT NULL DEFAULT '10',
  `file_path` varchar(250) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `baseLine_velocity` int(10) NOT NULL DEFAULT '50',
  `baseLine_cost_per_storyPoint` int(10) NOT NULL DEFAULT '3',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_project_name` (`name`),
  KEY `idx_project_id` (`id`),
  KEY `idx_project_view` (`view_state`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 轉存資料表中的資料 `mantis_project_table`
--

INSERT INTO `mantis_project_table` (`id`, `name`, `status`, `enabled`, `view_state`, `access_min`, `file_path`, `description`, `baseLine_velocity`, `baseLine_cost_per_storyPoint`) VALUES
(1, 'archive', 10, 1, 50, 10, '', '', 50, 3);

-- --------------------------------------------------------

--
-- 表的結構 `mantis_project_user_list_table`
--

CREATE TABLE IF NOT EXISTS `mantis_project_user_list_table` (
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `access_level` smallint(6) NOT NULL DEFAULT '10',
  PRIMARY KEY (`project_id`,`user_id`),
  KEY `idx_project_user` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `mantis_project_user_list_table`
--

INSERT INTO `mantis_project_user_list_table` (`project_id`, `user_id`, `access_level`) VALUES
(1, 2, 70),
(1, 3, 70),
(1, 4, 70),
(1, 5, 70);

-- --------------------------------------------------------

--
-- 表的結構 `mantis_project_version_table`
--

CREATE TABLE IF NOT EXISTS `mantis_project_version_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `version` varchar(64) NOT NULL DEFAULT '',
  `date_order` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `description` longtext NOT NULL,
  `released` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_project_version` (`project_id`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `mantis_sponsorship_table`
--

CREATE TABLE IF NOT EXISTS `mantis_sponsorship_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bug_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `logo` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(128) NOT NULL DEFAULT '',
  `paid` tinyint(4) NOT NULL DEFAULT '0',
  `date_submitted` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `last_updated` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  PRIMARY KEY (`id`),
  KEY `idx_sponsorship_bug_id` (`bug_id`),
  KEY `idx_sponsorship_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `mantis_tag_table`
--

CREATE TABLE IF NOT EXISTS `mantis_tag_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `date_updated` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  PRIMARY KEY (`id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `mantis_tokens_table`
--

CREATE TABLE IF NOT EXISTS `mantis_tokens_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `expiry` datetime DEFAULT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_typeowner` (`type`,`owner`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 轉存資料表中的資料 `mantis_tokens_table`
--

INSERT INTO `mantis_tokens_table` (`id`, `owner`, `type`, `timestamp`, `expiry`, `value`) VALUES
(1, 1, 4, '2010-01-19 05:41:31', '2010-01-19 05:46:31', '1');

-- --------------------------------------------------------

--
-- 表的結構 `mantis_user_pref_table`
--

CREATE TABLE IF NOT EXISTS `mantis_user_pref_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `default_profile` int(10) unsigned NOT NULL DEFAULT '0',
  `default_project` int(10) unsigned NOT NULL DEFAULT '0',
  `advanced_report` tinyint(4) NOT NULL DEFAULT '0',
  `advanced_view` tinyint(4) NOT NULL DEFAULT '0',
  `advanced_update` tinyint(4) NOT NULL DEFAULT '0',
  `refresh_delay` int(11) NOT NULL DEFAULT '0',
  `redirect_delay` tinyint(4) NOT NULL DEFAULT '0',
  `bugnote_order` varchar(4) NOT NULL DEFAULT 'ASC',
  `email_on_new` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_assigned` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_feedback` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_resolved` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_closed` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_reopened` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_bugnote` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_status` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_priority` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_priority_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_status_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_bugnote_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_reopened_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_closed_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_resolved_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_feedback_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_assigned_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_new_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_bugnote_limit` smallint(6) NOT NULL DEFAULT '0',
  `language` varchar(32) NOT NULL DEFAULT 'english',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `mantis_user_print_pref_table`
--

CREATE TABLE IF NOT EXISTS `mantis_user_print_pref_table` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `print_pref` varchar(64) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的結構 `mantis_user_profile_table`
--

CREATE TABLE IF NOT EXISTS `mantis_user_profile_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `platform` varchar(32) NOT NULL DEFAULT '',
  `os` varchar(32) NOT NULL DEFAULT '',
  `os_build` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `mantis_user_table`
--

CREATE TABLE IF NOT EXISTS `mantis_user_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '',
  `realname` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `last_visit` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `protected` tinyint(4) NOT NULL DEFAULT '0',
  `access_level` smallint(6) NOT NULL DEFAULT '10',
  `login_count` int(11) NOT NULL DEFAULT '0',
  `lost_password_request_count` smallint(6) NOT NULL DEFAULT '0',
  `failed_login_count` smallint(6) NOT NULL DEFAULT '0',
  `cookie_string` varchar(64) NOT NULL DEFAULT '',
  `Baseline_Velocity` int(11) NOT NULL DEFAULT '50',
  `Baseline_Cost_Per_StoryPoint` int(11) NOT NULL DEFAULT '50',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_cookie_string` (`cookie_string`),
  UNIQUE KEY `idx_user_username` (`username`),
  KEY `idx_enable` (`enabled`),
  KEY `idx_access` (`access_level`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 轉存資料表中的資料 `mantis_user_table`
--

INSERT INTO `mantis_user_table` (`id`, `username`, `realname`, `email`, `password`, `date_created`, `last_visit`, `enabled`, `protected`, `access_level`, `login_count`, `lost_password_request_count`, `failed_login_count`, `cookie_string`, `Baseline_Velocity`, `Baseline_Cost_Per_StoryPoint`) VALUES
(1, 'admin', '', 'root@localhost', '63a9f0ea7bb98050796b649e85481845', '2010-01-19 05:41:23', '2010-01-19 05:41:35', 1, 0, 90, 4, 0, 0, 'b9bec1c98360692f7ae7baecd9736deaa511ea87cfda0be2ddac035e208e1069', 50, 50),
(2, 'bluesky', 'bluesky', 'bluesky200936@gmail.com', 'c1a23116461d5856f98ee072ea319bc9', '2013-11-19 07:59:09', '2013-11-19 07:59:09', 1, 0, 25, 0, 0, 0, 'e82d9d13e3839ccfcfd10a18ad966a8d0e8b67feaab5e4791b2fee69fae6906e', 50, 50),
(3, 'love5622004', '楊芸安', 'love5622004@hotmail.com', '46f316774bb49929ededaa1586381575', '2013-11-21 04:39:05', '2013-11-21 04:39:05', 1, 0, 25, 0, 0, 0, '60030980dfd2417518bdd47ccb0be5672b18fa9a00c0e5becd9d3248c957810d', 50, 50),
(4, 'hahayuju', '陳鈺茹', 'hahayuju@gmail.com', '2844dbd0878ddaed3213c17ecffeb4cb', '2013-11-21 04:39:17', '2013-11-21 04:39:17', 1, 0, 25, 0, 0, 0, 'bb9a1e34cedd01f4917290dd0ee8cac73308fcde35cabb4d59c8ef773787a9d9', 50, 50),
(5, 'a0028322', '鄭雅芸', 'erin921025@gmail.com', '4846d77a75558298d921b5f0dfcf832e', '2013-11-21 04:39:28', '2013-11-21 04:39:28', 1, 0, 25, 0, 0, 0, 'ef06b7c10e5ce9209d522f6e95fb80b2f91c55a7f8edd309e5ee5a881e2082c2', 50, 50);

-- --------------------------------------------------------

--
-- 表的結構 `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `s_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `s_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `s_project` int(11) NOT NULL,
  `entre_year` tinyint(4) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 轉存資料表中的資料 `member`
--

INSERT INTO `member` (`s_id`, `s_name`, `s_project`, `entre_year`) VALUES
('A9128022', '陳仕屏', 68, 91),
('A9128107', '邱子翎', 48, 91),
('A9128114', '吳忠翰', 59, 91),
('A9128115', '黃愉津', 67, 91),
('A9128116', '徐鐘琳', 66, 91),
('A9128118', '郭憲聰', 63, 91),
('A9128119', '王信郎', 62, 91),
('A9128121', '曾祐偉', 69, 91),
('A9128124', '周秀娟', 71, 91),
('A9128125', '鄭茱月', 70, 91),
('A9128128', '林沛君', 72, 91),
('A9128130', '李佩璇', 73, 91),
('A9128132', '林達仁', 75, 91),
('A9128134', '徐美惠', 74, 91),
('A9128207', '林彥谷', 48, 91),
('A9128214', '洪偉雄', 59, 91),
('A9128216', '黃世益', 66, 91),
('A9128218', '許銘峯', 63, 91),
('A9128221', '陳怡君', 69, 91),
('A9128224', '楊筠珊', 71, 91),
('A9128228', '曾祥麟', 72, 91),
('A9128234', '林芳玉', 74, 91),
('A9128307', '盧冠杰', 48, 91),
('A9128316', '童立杰', 66, 91),
('A9128318', '賴彥成', 63, 91),
('A9128321', '王詩舒', 69, 91),
('A9128324', '欒家瑢', 71, 91),
('A9128328', '黃依雯', 72, 91),
('A9128369', '馮建國', 54, 91),
('A9128376', '黃俊琳', 61, 91),
('A9128399', '林宛蓉', 54, 91),
('A9128408', '林峰毅', 61, 91),
('A9228019', '吳信賢', 45, 0),
('A9228101', '賴建宏', 76, 0),
('A9228102', '許書豪', 78, 0),
('A9228103', '陳嘉禾', 79, 0),
('A9228105', '賴囿霖', 80, 0),
('A9228106', '陳柏邑', 82, 0),
('A9228107', '官淑暖', 83, 0),
('A9228108', '洪于婷', 84, 0),
('A9228109', '鄭兆庭', 85, 0),
('A9228110', '林祺達', 86, 0),
('A9228111', '賀敬容', 87, 0),
('A9228112', '陳昭蓉', 88, 0),
('A9228113', '謝珮真', 89, 0),
('A9228114', '鄧安琇', 90, 0),
('A9228115', '高聖雅', 91, 0),
('A9228116', '陳培翔', 92, 0),
('A9228117', '張佩君', 93, 0),
('A9228119', '徐惠慈', 46, 0),
('A9228120', '藍玄閔', 47, 0),
('A9228121', '謝佳穎', 49, 0),
('A9228123', '林孟輝', 51, 0),
('A9228124', '張大晉', 52, 0),
('A9228126', '林依萱', 53, 0),
('A9228127', '黃品瑄', 94, 0),
('A9228128', '蔡昶瀚', 95, 0),
('A9228129', '詹世仲', 197, 0),
('A9228131', '吳嘉銘', 55, 0),
('A9228132', '官淑暖', 56, 0),
('A9228133', '陳姿萍', 57, 0),
('A9228201', '廖朝琳', 76, 0),
('A9228202', '呂奇達', 78, 0),
('A9228205', '江忠憲', 80, 0),
('A9228206', '石韻琳', 82, 0),
('A9228207', '李柔瑩', 83, 0),
('A9228208', '劉几維', 84, 0),
('A9228209', '劉容菁', 85, 0),
('A9228210', '林祐沁', 86, 0),
('A9228211', '江佩宜', 87, 0),
('A9228212', '蘇芝漪', 88, 0),
('A9228213', '林怡君', 89, 0),
('A9228214', '黃智鴻', 90, 0),
('A9228215', '許凱茹', 91, 0),
('A9228216', '廖凡儀', 92, 0),
('A9228217', '邵筱嵐', 93, 0),
('A9228219', '許鈴姝', 46, 0),
('A9228220', '林政慶', 47, 0),
('A9228221', '林欣儀', 49, 0),
('A9228223', '劉辰邦', 51, 0),
('A9228224', '陳泰盛', 52, 0),
('A9228226', '陳怡樺', 53, 0),
('A9228227', '茆宏塼', 94, 0),
('A9228228', '李旻穎', 95, 0),
('A9228229', '高澤偉', 197, 0),
('A9228231', '莊昀達', 55, 0),
('A9228232', '李柔瑩', 56, 0),
('A9228233', '何家緯', 57, 0),
('A9228301', '梁嘉偉', 76, 0),
('A9228302', '洪慶源', 78, 0),
('A9228305', '黃登煒', 80, 0),
('A9228306', '盧潔明', 82, 0),
('A9228307', '周于琳 ', 83, 0),
('A9228308', '張朝安', 84, 0),
('A9228309', '張文藍', 85, 0),
('A9228310', '李國彰', 86, 0),
('A9228311', '王奕喬', 87, 0),
('A9228312', '黃硯屏', 88, 0),
('A9228313', '劉新筠', 89, 0),
('A9228314', '羅婉甄', 90, 0),
('A9228315', '徐維陽', 91, 0),
('A9228316', '吳彥君 ', 50, 0),
('A9228317', '劉耀益', 93, 0),
('A9228320', '賴乾建', 47, 0),
('A9228321', '吳惠娟', 49, 0),
('A9228323', '陳婉玲', 51, 0),
('A9228324', '蔡怡婷', 52, 0),
('A9228326', '黃珮瑜', 53, 0),
('A9228327', '李昰瑋', 94, 0),
('A9228328', '黃書彥', 95, 0),
('A9228329', '李政達 ', 197, 0),
('A9228331', '陳尚恩', 55, 0),
('A9228332', '周于琳', 56, 0),
('A9228333', '陳奕廷', 57, 0),
('A9228391', '張芸誨', 50, 0),
('A9228401', '施佑達', 76, 0),
('A9228402', '陳滄旻', 78, 0),
('A9228405', '楊豐銘', 80, 0),
('A9228406', '李佳凌', 82, 0),
('A9228407', '江彥瑾', 83, 0),
('A9228408', '曾江波', 84, 0),
('A9228410', '楊世皇', 86, 0),
('A9228411', '張忻媛', 87, 0),
('A9228412', '陳俊傑', 88, 0),
('A9228413', '林宏洋', 89, 0),
('A9228416', '李文霞', 92, 0),
('A9228418', '陳兆天', 50, 0),
('A9228421', '鍾友華', 96, 0),
('A9228423', '陳怡怡', 51, 0),
('A9228424', '洪郁潾', 52, 0),
('A9228428', '余秉璁', 95, 0),
('A9228429', '鄭宇翔', 197, 0),
('A9228431', '高培茵', 55, 0),
('A9228432', '江彥瑾', 56, 0),
('A9228454', '林展輝', 50, 0),
('A9328008', '朱可云', 161, 0),
('A9328015', '陳品造', 164, 0),
('A9328030', '許哲綸', 173, 0),
('A9328031', '劉春虹', 174, 0),
('A9328102', '邱詩書', 159, 0),
('A9328103', '林仕豪', 160, 0),
('A9328111', '楊雅婷', 162, 0),
('A9328112', '范家勳', 193, 0),
('A9328113', '陳雅雯', 163, 0),
('A9328116', '詹益嘉', 194, 0),
('A9328117', '鄭心平', 192, 0),
('A9328120', '林信安', 166, 0),
('A9328122', '林秉鋒', 167, 0),
('A9328123', '周士峰', 168, 0),
('A9328124', '謝仲威', 169, 0),
('A9328125', '蘇子甯', 170, 0),
('A9328127', '林俊偉', 171, 0),
('A9328128', '龔洺生', 172, 0),
('A9328132', '陳虹蓁', 175, 0),
('A9328133', '侯冠郡', 176, 0),
('A9328134', '黃涵茹', 177, 0),
('A9328136', '鄭弘志', 178, 0),
('A9328138', '邵韻軒', 179, 0),
('A9328202', '徐詠珍', 159, 0),
('A9328211', '林正璿', 162, 0),
('A9328212', '黃建博', 193, 0),
('A9328213', '楊喻婷', 163, 0),
('A9328216', '張瑋哲', 194, 0),
('A9328220', '許育儒', 166, 0),
('A9328222', '羅鉅裕', 167, 0),
('A9328223', '范懋元', 168, 0),
('A9328224', '吳孟峰', 169, 0),
('A9328225', '陳仕傑', 170, 0),
('A9328227', '高琦姝', 171, 0),
('A9328232', '陳庭柔', 175, 0),
('A9328233', '施心惠', 176, 0),
('A9328234', '張文莉', 177, 0),
('A9328236', '張家秉', 178, 0),
('A9328238', '陳淑娟', 179, 0),
('A9328302', '黃雅萍', 159, 0),
('A9328311', '林士展', 181, 0),
('A9328312', '朱宏文', 193, 0),
('A9328313', '黃資雅', 163, 0),
('A9328316', '邱雅雯', 194, 0),
('A9328320', '楊明宗', 166, 0),
('A9328323', '吳俊佑 ', 168, 0),
('A9328324', '謝弼任', 165, 0),
('A9328325', '辛健豪', 170, 0),
('A9328327', '劉軒宏', 171, 0),
('A9328332', '黃鈺文 ', 175, 0),
('A9328333', '方嘉妤', 176, 0),
('A9328334', '楊尚儒', 177, 0),
('A9328336', '王維德', 178, 0),
('A9328338', '柯鈞凱', 179, 0),
('A9328341', '蔡尚玉', 187, 0),
('A9328343', '郭志宇', 146, 0),
('A9328360', '林郁憲', 187, 0),
('A9328366', '王靖渝', 190, 0),
('A9328379', '李承漢', 137, 0),
('A9328384', '黃國柱', 165, 0),
('A9328388', '吳滋瑩', 184, 0),
('A9328389', '高珮瑜', 185, 0),
('A9328394', '徐湘雯', 180, 0),
('A9328396', '蘇怡嘉', 183, 0),
('A9328403', '郭懿萱', 180, 0),
('A9328409', '顏秀婷', 180, 0),
('A9328412', '蕭詒誠', 193, 0),
('A9328413', '陳建任', 137, 0),
('A9328416', '黃琳', 194, 0),
('A9328417', '莊雅惠', 183, 0),
('A9328420', '洪慧薰', 183, 0),
('A9328421', '徐英萍', 180, 0),
('A9328422', '蔡佳容', 185, 0),
('A9328424', '葉耀棋', 169, 0),
('A9328425', '李權桓', 170, 0),
('A9328427', '孫御翔', 182, 0),
('A9328432', '許明惠', 175, 0),
('A9328434', '吳晟瑋', 177, 0),
('A9328436', '蔡政邦', 178, 0),
('A9328438', '楊旻哲', 179, 0),
('A9328439', '陳冠州', 191, 0),
('A9328441', '邱秀玉', 183, 0),
('A9328442', '施凱仁', 191, 0),
('A9328453', '何勇達', 187, 0),
('A9328462', '張華偉', 165, 0),
('A9328468', '盧郁雯', 190, 0),
('A9328479', '吳依靜', 186, 0),
('A9328493', '謝西岳', 191, 0),
('A9428101', '林佳嬑', 99, 0),
('A9428110', '鄭惠薰', 97, 0),
('A9428111', '戴翊森', 98, 0),
('A9428119', '羅婉亭', 100, 0),
('A9428201', '趙上賢', 99, 0),
('A9428210', '蔡孟修 ', 97, 0),
('A9428211', '薛茗方', 98, 0),
('A9428219', '朱彥達', 100, 0),
('A9428301', '潘奕豪', 99, 0),
('A9428306', '張鈞瑞', 188, 0),
('A9428311', '林雅文', 98, 0),
('A9428326', '洪人吉', 101, 0),
('A9428327', '黃合民', 109, 0),
('A9428329', '高隆泰', 103, 0),
('A9428337', '范絲涵', 114, 0),
('A9428339', '郭珮榕', 105, 0),
('A9428340', '戴誌慶', 106, 0),
('A9428345', '陳建廷', 103, 0),
('A9428351', '朱國仁', 109, 0),
('A9428353', ' 陳和奕', 103, 0),
('A9428365', '吳佳玲', 111, 0),
('A9428372', '賴奕蓁', 101, 0),
('A9428378', '游偉璿', 101, 0),
('A9428387', '褚士鈺', 111, 0),
('A9428388', '李育霖', 106, 0),
('A9428394', '林東黎', 107, 0),
('A9428397', '林昭翰', 102, 0),
('A9428401', '范姜文賓', 102, 0),
('A9428410', '張庭銓', 108, 0),
('A9428411', '黃士員', 98, 0),
('A9428413', '沈佩思', 109, 0),
('A9428414', '許昭萍', 107, 0),
('A9428416', '丁元媛', 188, 0),
('A9428417', '劉倩蓉', 102, 0),
('A9428418', '林彥竹', 107, 0),
('A9428420', '黃淑貞', 115, 0),
('A9428421', '鍾國誠', 116, 0),
('A9428422', ' 吳佩軒', 188, 0),
('A9428438', '郭正平', 104, 0),
('A9428482', '曾子豪', 110, 0),
('A9428502', '呂筱萱', 112, 0),
('A9428504', '張政哲', 113, 0),
('A9428511', '葉茹惠', 195, 0),
('A9428538', '潘俊廷', 104, 0),
('A9428550', '郭峻榮', 117, 0),
('A9428582', '王俞閔', 110, 0),
('A9428602', '黃芊瑋', 112, 0),
('A9428604', '蔡孟勳', 113, 0),
('A9428638', '賴秋如', 104, 0),
('A9428704', '劉信宏', 113, 0),
('A9528301', '李易展', 133, 0),
('A9528303', '黃耀世', 135, 0),
('A9528311', '林濬閎', 134, 0),
('A9528313', '黃軫楊', 133, 0),
('A9528316', '許貴婷', 123, 0),
('A9528321', '徐昱歆', 126, 0),
('A9528322', '楊浩旻', 120, 0),
('A9528323', '邱怡亭', 129, 0),
('A9528325', '陳龍輝', 133, 0),
('A9528327', '劉家誠', 133, 0),
('A9528328', '郭彥志', 119, 0),
('A9528336', '鄭峻昇', 122, 0),
('A9528337', '翁韻雯', 126, 0),
('A9528339', '陳詠升', 153, 0),
('A9528340', '王嘉豪', 122, 0),
('A9528343', '張乃文', 129, 0),
('A9528344', '吳俊龍', 118, 0),
('A9528347', '楊峻維', 134, 0),
('A9528363', '林亞亭', 129, 0),
('A9528365', '林倍聖', 135, 0),
('A9528366', '盧明澈 ', 118, 0),
('A9528369', '何雅婷', 121, 0),
('A9528375', '朱威領', 135, 0),
('A9528376', '陳姵如', 130, 0),
('A9528382', '蘇劭崴', 128, 0),
('A9528388', '柯懷仁', 120, 0),
('A9528389', '徐鴻仁', 136, 0),
('A9528391', '郭蕙慈', 121, 0),
('A9528394', '劉德君', 131, 0),
('A9528395', '胡寧芮', 121, 0),
('A9528396', '連翊妘', 126, 0),
('A9528398', '張華纖', 131, 0),
('A9528399', '傅昱瑋', 134, 0),
('A9528402', '林珮瑜 ', 124, 0),
('A9528404', '黃仲榮', 119, 0),
('A9528406', '陳瑜奇', 132, 0),
('A9528407', '蔡政山', 136, 0),
('A9528410', '林宇宏 ', 132, 0),
('A9528411', '顏嘉宏', 136, 0),
('A9528412', '林裕翔', 124, 0),
('A9528414', '呂紀翰', 119, 0),
('A9528415', '李玟娟', 124, 0),
('A9528416', '陳宥勳', 122, 0),
('A9528420', '黃靖晏', 128, 0),
('A9528422', '陳孟輝', 132, 0),
('A9528424', '林宜靜', 130, 0),
('A9528441', '潘心怡', 196, 0),
('A9528445', '蔡媚婷', 125, 0),
('A9528455', '江明育', 127, 0),
('A9528457', '陳鼎元', 137, 0),
('A9528541', '林雅智', 196, 0),
('A9528555', '張書瑋', 127, 0),
('A9528641', '胡紋慈', 196, 0),
('A9628302', '王振陽', 145, 0),
('A9628306', '黃宗緯', 154, 0),
('A9628309', '蘇勝興', 143, 0),
('A9628315', '蘇靜怡', 140, 0),
('A9628316', '方紹昌', 154, 0),
('A9628318', '鄭曳庭', 145, 0),
('A9628327', '楊尚錡', 143, 0),
('A9628331', '郭芷君', 140, 0),
('A9628335', '孫麒翔', 146, 0),
('A9628336', '許博昇', 157, 0),
('A9628346', '張旅綺', 152, 0),
('A9628351', '薛仱芸', 144, 0),
('A9628353', '蕭榮賢', 144, 0),
('A9628357', '李金龍', 153, 0),
('A9628360', '李世韋', 141, 0),
('A9628363', '陳映汎', 147, 0),
('A9628365', '陳珈君', 140, 0),
('A9628366', '陳怡如', 152, 0),
('A9628371', '鄭揚翰', 150, 0),
('A9628372', '陳廷威', 151, 0),
('A9628373', '楊凱祥', 156, 0),
('A9628377', '楊明軒', 150, 0),
('A9628379', '邵婉瑜', 147, 0),
('A9628384', '杜泳昇', 157, 0),
('A9628391', '楊舒涵', 143, 0),
('A9628394', '莊媁鈞', 152, 0),
('A9628395', '黃健沛', 144, 0),
('A9628396', '陳思宇', 141, 0),
('A9628397', '張宸霖', 154, 0),
('A9628400', '郭祐廷', 141, 0),
('A9628401', '陳詩蓁', 155, 0),
('A9628402', '盧佩君', 142, 0),
('A9628407', '蔡宏仁', 157, 0),
('A9628410', '黃詠翔', 189, 0),
('A9628411', '洪嘉勵', 155, 0),
('A9628412', '黃楓菁', 142, 0),
('A9628415', '方慧君', 156, 0),
('A9628416', '林千芸', 142, 0),
('A9628417', '周思慈', 156, 0),
('A9628430', '林嘉煌', 157, 0),
('A9628432', '連偉志', 141, 0),
('A9628448', '卓欣怡', 148, 0),
('A9628454', '林居平', 149, 0),
('A9628528', '曾立甫', 158, 0),
('A9628548', '丘聖琪', 148, 0),
('A9628554', '梁展華', 149, 0),
('A9628628', '蘇峰毅', 158, 0),
('A9628648', '唐佑姍', 148, 0),
('A9628728', '李俊鴻', 158, 0),
('A9728303', '張閔翔', 8, 0),
('A9728306', '郭彥志', 15, 0),
('A9728308', '吳成桓', 19, 0),
('A9728309', '方笙瑋', 5, 0),
('A9728311', '詹森', 5, 0),
('A9728312', '黃子維', 2, 0),
('A9728316', '呂尤雅', 10, 0),
('A9728319', '林佩瑩', 19, 0),
('A9728320', '林佳勳', 15, 0),
('A9728322', '黃芷芸', 15, 0),
('A9728327', '曾顯群', 2, 0),
('A9728330', '黃國榮', 11, 0),
('A9728334', '劉人驊', 20, 0),
('A9728335', '劉靜燕', 16, 0),
('A9728336', '鄭哲婷', 7, 0),
('A9728339', '蔡語涵', 16, 0),
('A9728346', '王鎧華', 21, 0),
('A9728353', '卓仕鈞', 5, 0),
('A9728355', '陳品文', 16, 0),
('A9728361', '陳柏勳', 12, 0),
('A9728362', '徐建軒', 7, 0),
('A9728364', '古蓮華', 14, 0),
('A9728365', '邱羿瑄', 9, 0),
('A9728370', '陳正芬', 19, 0),
('A9728371', '黃郁婷', 13, 0),
('A9728374', '藍郁文', 1, 0),
('A9728384', '索晨華', 20, 0),
('A9728385', '張家豪', 20, 0),
('A9728388', '蕭綉靜', 1, 0),
('A9728389', '甘綉紋', 8, 0),
('A9728390', '杜姿蓉', 1, 0),
('A9728392', '劉錦憓', 4, 0),
('A9728396', '歐尚諭', 13, 0),
('A9728398', '謝佩吟', 2, 0),
('A9728399', '朱宏來', 18, 0),
('A9728400', '郝芷涵', 11, 0),
('A9728401', '羅紹嘉', 18, 0),
('A9728402', '葉香蘭', 7, 0),
('A9728403', '林美妤', 9, 0),
('A9728406', '林佩樺', 1, 0),
('A9728409', '洪婉馨', 17, 0),
('A9728410', '張文政', 4, 0),
('A9728411', '趙一真', 10, 0),
('A9728413', '簡安副', 13, 0),
('A9728417', '陳彥旗', 18, 0),
('A9728419', '王宏達', 8, 0),
('A9728421', '杜政達', 10, 0),
('A9728429', '林芷君', 12, 0),
('A9728434', '謝舒妤', 4, 0),
('A9828305', '華紹傑', 201, 0),
('A9828306', '蔡齡葦', 43, 0),
('A9828307', '鄭伯偉', 200, 0),
('A9828309', '陳政育', 25, 0),
('A9828310', '張宸睿', 23, 0),
('A9828314', '侯柏蒼', 3, 0),
('A9828315', '陳彥志', 200, 0),
('A9828323', '王韋程', 81, 0),
('A9828329', '張凱郁', 198, 0),
('A9828331', '吳彥霖', 32, 0),
('A9828333', '邱冠欣', 200, 0),
('A9828334', '王凱棓', 30, 0),
('A9828336', '黃文鈺', 30, 0),
('A9828339', '張恆巍', 200, 0),
('A9828342', '鄭冠榆', 3, 0),
('A9828351', '鄭祐均', 199, 0),
('A9828355', '簡育彥', 201, 0),
('A9828356', '劉姵吟', 43, 0),
('A9828357', '張珉慈', 22, 0),
('A9828360', '高翊愷', 139, 0),
('A9828364', '陳建誌', 23, 0),
('A9828365', '李宛儒', 22, 0),
('A9828368', '陳靜怡', 21, 0),
('A9828369', '曾秉祥', 81, 0),
('A9828373', '張毓庭', 31, 0),
('A9828374', '張文欽', 24, 0),
('A9828375', '蔡合嘉', 199, 0),
('A9828382', '楊正培', 24, 0),
('A9828384', '許佳翔', 25, 0),
('A9828386', '江宜蓁', 44, 0),
('A9828388', '沈瑞隆', 139, 0),
('A9828389', '湯京叡', 32, 0),
('A9828390', '徐庭宣', 30, 0),
('A9828392', '江宜蓁', 77, 0),
('A9828394', '謝明翰', 24, 0),
('A9828395', '洪大庭', 32, 0),
('A9828396', '陳婉君', 44, 0),
('A9828397', '林蓓瑜', 22, 0),
('A9828399', '許維軒', 199, 0),
('A9828400', '黃鈞偉', 139, 0),
('A9828403', '楊芷晴', 198, 0),
('A9828405', '周柄俞', 44, 0),
('A9828407', '張巧玫', 31, 0),
('A9828408', '方鄒如', 43, 0),
('A9828409', '陳乙瑄', 31, 0),
('A9828415', '梁昱閔', 198, 0),
('A9828416', '張力仁', 138, 0),
('A9828417', '葉德芳', 81, 0),
('A9828418', '王晧翔', 3, 0),
('A9828422', '李玟錦', 25, 0),
('A9828516', '蔡宥安', 138, 0),
('A9928221', 'fasfag', 34, 0);

-- --------------------------------------------------------

--
-- 表的結構 `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `p_adviser` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `p_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `p_description` text COLLATE utf8_unicode_ci NOT NULL,
  `p_leader_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `p_leader_number` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `p_date` date NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=202 ;

--
-- 轉存資料表中的資料 `project`
--

INSERT INTO `project` (`p_id`, `p_name`, `p_adviser`, `p_type`, `p_description`, `p_leader_name`, `p_leader_number`, `p_date`) VALUES
(1, '醫院提供社區老人醫護服務之可行性-以高雄市鳳山區為例', '王貴民', '論文類', '醫院提供社區老人醫護服務之可行性-以高雄市鳳山區為例', '陳柏全', 'A9728366', '2013-05-13'),
(2, '臉像辨識系統-以名人臉像比對分析', '陳仁祥', '系統類', '臉像辨識系統-以名人臉像比對分析', '楊政儒', 'A9728416', '2013-05-13'),
(3, '網頁服務之雲端運算', '葉期財', '系統類', '使用雲端運算處理網站服務', '蘇柏穎', 'A9828340', '2012-12-27'),
(4, '以Android平台開發行動式手機英語學習系統', '張良政', '系統類', '以Android平台開發行動式手機英語學習系統', '王怡茹', 'A9728310', '2012-12-27'),
(5, '海上護航策略的賽局分析', '王貴民', '論文類', '海上護航策略的賽局分析', '陳琦昌', 'A9728301', '2013-05-13'),
(6, 'Android智慧型手機行動服務應用災害情報通報系統', '項勤校', '系統類', '智慧型手機行動服務應用災害情報通報系統', '陳家平', 'A9728424', '2012-12-27'),
(7, '建立馬可夫模型評估不同載台搜救之效益-以無人空中載具與直升機為例', '王貴民', '論文類', '建立馬可夫模型評估不同載台搜救之效益-以無人空中載具與直升機為例', '楊喻閔', 'A9728412', '2013-05-13'),
(8, '情境感知旅遊服務', '陳仁祥', '論文類', '情境感知旅遊服務', '林文彥', 'A9728407', '2013-05-13'),
(9, '女性CRM系統-以女性保健資訊網為例', '張嘉銘', '系統類', '', '李伊婷', 'A9728341', '2013-05-13'),
(10, '電子商務與實體銷售整合實驗-以IMCoffee為例', '梁克新', '系統類', '電子商務與實體銷售整合實驗-以IMCoffee為例', '王伊婷', 'A9728363', '2013-05-13'),
(11, '退化性商品存貨之研究-以實踐大學7-11便利商店為例', '韓慧林', '論文類', '退化性商品存貨之研究-以實踐大學7-11便利商店為例', '許鈞傑', 'A9728376', '2013-05-13'),
(12, '財經網路上股市評論-內文分析', '張良政', '論文類', '財經網路上股市評論-內文分析', '廖志恩', 'A9728313', '2012-12-27'),
(13, '產品炭足跡之開發研究以隨身碟為例', '張良政', '論文類', '產品炭足跡之開發研究以隨身碟為例', '楊凱婷', 'A9728304', '2012-12-27'),
(14, '客製水-顧客關係管理系統', '張嘉銘', '系統類', '客製水-顧客關係管理系統', '古雅菁', 'A9728340', '2013-05-13'),
(15, '寵物資訊平台-結合QR-code', '陳仁祥', '系統類', '寵物資訊平台-結合QR-code', '鍾孟杰', 'A9728408', '2013-05-13'),
(16, '高雄旗山地區PRET飲品店創新經營可行方案', '韓慧林', '論文類', '高雄旗山地區PRET飲品店創新經營可行方案', '楊晧博', 'A9728307', '2013-05-13'),
(17, '第一失敗設限品質績效評估系統', '洪清文', '系統類', '第一失敗設限品質績效評估系統', '王欽彥', 'A9728357', '2013-05-13'),
(18, '應用於社會事件與經濟景氣之關聯分析', '梁克新', '論文類', '應用於社會事件與經濟景氣之關聯分析', '王建中', 'A9728359', '2013-05-13'),
(19, '行動交友定位系統-Soul Met', '項勤校', '系統類', '行動交友定位系統-Soul Met', '廖威凱', 'A9728314', '2012-12-27'),
(20, '經典演算法實作與介紹', '梁克新', '論文類', '經典演算法實作與介紹', '張瑋浚', 'A9728386', '2013-05-13'),
(21, '建立線性規劃模型分析美濃區居家老人之醫護資源', '王貴民', '論文類', '採用線性規劃法建立模型，除分析現況醫療資源之分配外，並評估未來區域性老人居家照顧之醫療資源需求', '王齡慧', 'A9828346', '2013-05-15'),
(22, '資訊類工作與資管核心能力關聯性分析', '張良政', '論文類', '本論文進一步利用關聯分析找出國立大學和私立大學重視核心能力的不同，還有資訊技術人員所需的軟性能力。研究結果可提供系所未來規畫課程和企業應聘資訊人員時參考。', '潘瑞斌', 'A9828347', '2013-05-15'),
(23, '救災資源之先期預置研析-以高雄市為災區為例', '王貴民', '論文類', '運用線性規劃並結合Dijkstra’s演算法建立預置救災資源效益模式', '劉亦修', 'A9828414', '2013-05-20'),
(24, '情境感知旅遊服務-擴增實境', '陳仁祥', '系統類', '利用擴增實境結合情境感知的概念，讓旅遊者對雙眼面對的景物外，即可即時獲得景物背景之下所隱藏在背後的隱性知識或資訊，讓使用者有如情境感知之旅，並減少旅遊者在旅遊前所需耗費的時間與精力。', '陳立青', 'A9828326', '2013-05-21'),
(25, '大學生體適能促進系統—從CRM觀點', '張嘉銘', '系統類', '世界趨向科技化、機械化以及人口增加，造成活動空間減少、體適能下降等等問題，本系統中使用CRM概念，改善體育組體適能的服務品質，透過體適能的變化率，在學生實測後增加對體適能的後續追蹤，進一步掌握學生體適能的發展狀況，達成學生對體育組的忠誠度及滿意度。\n本研究採系統開發法，落實CRM觀點下體適能促進系統應有的功能，透過網站的引導，由學生歷年體適能數據建立趨勢圖，進行分級、分類並提出建議，針對體育組講座名額限制的問題，增加健康講座的預約，解決現場報名的困擾，達到顧客滿意度的提升。\n本系統期望協助體育組改善大學生體能狀況，藉由學生檢測體適能的資訊作為參考。體育組透過此系統，依全體學生狀況的分布，系統提供的體適能促進方案，讓體育課程規劃更貼近學生需求，持續追蹤每學期增長狀況，維持顧客忠誠度。\n本系統透過教育部體適能網站、體適能相關論文，提供更詳細與精確之體適能文獻，使本系統之資源更為豐富，資訊更為簡潔扼要，進而可以建置出更為精準、有效與完整之大學生體適能促進系統，提供給使用者之資訊得以更為有效及明確。', '楊喬閔', 'A9828372', '2013-05-21'),
(30, '校友顧客關係管理', '張嘉銘', '系統類', '校友服務系統-服務畢業校友之網頁', '湯瑛昀', 'A9828380', '2013-05-22'),
(31, '透過大專電子學習歷程進行人才推薦之行動應用-實踐大學為例', '葉期財', '系統類', '將實踐大學高雄校區資訊管理學系應屆畢業生做為研究的對像（求職者），利用本專題實作之系統，將學生的資料以網頁分析後擷取自本專題之職涯資料庫中，本系統會依據求職者的能力與證照，透過使用者(導師或是老師)搜尋結果進行工作的配對，且將求職者之公開資料寄給企業(求才者)與通知求職者，使得求職者可以在收到使用者將求職者推薦給哪家企業的通知信，我們會提供該企業的求職管道給求職者，讓求職者去做求職準備，進而到公司去面試，以獲得該工作並開始就業。                                                                                                                                                                                                                 ', '黃冠雅', 'A9828337', '2013-05-24'),
(32, '旗山生活APP', '張良政', '系統類', '隨著時代的變遷和資訊產業的蓬勃發展，一般民眾對於旅遊與休憩的需求和品質日益重視，遊客們分享自己遊玩的經歷逐漸從部落格轉向於行動裝置上。這樣的轉變是因為現今智慧型行動裝置與無線網路帶來的便利性和快速性的品質提升，讓國民對於行動裝置的依賴需求性漸而提升。\n本研究系針對目前旅遊模式架構進行分析，以及將行動裝置運用在旅遊後所產生的旅遊心得資訊進行探討，並運用目前最新的Android手機平台，結合Google地圖與全球衛星定位系統，設計出一個完整的行動旅遊App，提供使用者在旅遊前規劃所需資訊、旅遊中執行所需了解與旅遊後分享心得等功能，\n研究程式完成後亦會持續進行資料收集、更新，經由討論、修正後，提供使用者更好的服務及提升系統使用效率，搭配本研究所開發的行動旅遊APP，可以提升旅客對旗山地區旅遊的意願和品質，資訊科技與傳統旅遊文化的結合，不僅協助政府觀光旅遊政策的推動，進一步觸史台灣觀光產業的蓬勃發展。\n本研究不僅提供旅客一個行動旅遊應用程式，並且能讓本校的新生快速了解旗山當地生活資訊，進而讓新生融入當地的生活。', '鍾曜鴻', 'A9828391', '2013-05-24'),
(43, 'ISO27001認證之關鍵成功因素評估', '韓慧林', '論文類', '本研究以實踐大學高雄校區ISO27001系統認證為例，透過資管系受過ISO27001稽核員訓練課程54小時之同學為對象，進行問卷調查，運用投票式權重評選模式，評選「政策與規劃、執行與管理、檢查與矯正、管理審查」之ISO27001認證關鍵成功因素，並透過權重值排列優先順序，作為企業導入ISO27001認證之參考。', '劉佩葶', 'A9828370', '2013-05-24'),
(44, '實踐大學返鄉專車線上訂票系統', '張良政', '系統類', '本研究建置一套返鄉專車訂票系統，其中在此系統中包含會員專區、訂票、查詢紀錄、修改訂票和當週各路線的座位表。系統首頁可以瀏覽到最新乘車資訊，包括返鄉專車路線、票價、上車地點及購票辦法。', '薛家樺', 'A9828392', '2013-05-24'),
(45, '資料探勘實務性操作應用支援向量機與時間序列預測證劵交易市場分析之研究', '王貴民', '系統類', '本研究針對目前國外上市上櫃公司的股票做完整的分析研究，用資料探勘(Data Mining)中的時間序列和技術指標的觀念來建立一個決策分析系統，並加上學術理論為佐證，在本研究中，時間序列本身便是專門來研究預測且連續數值的規律，而我們找了國外一家上市公司(PG)，針對他們的市場交易價格來預測未來的漲跌。', '吳佳玲', 'A9228018', '2013-05-30'),
(46, '女性購物網之網路品牌建立與行銷策略研究 －以PayEasy、SHOPPING99為例 ', '梁克新', '論文類', '藉由訪探了解其品牌建立與行銷策略，在個案分析裡則是進一步的套用林蓬榮先生的品牌迴旋架構分析個案公司的品牌建立之道，套用行銷４Ｐ的概念分析了解個案公司在行銷策略上的實作與表現', '楊寧', 'A9228019', '2013-05-30'),
(47, '電腦病毒資料庫', '王貴民', '系統類', '本專題關於實作部分著重在病毒資訊的搜集還有SQL資料庫的建立、網站的架設，到實作結果出來為止，搜集到的病毒資訊大約一萬多隻，利用ASP2.0來製作網站並設有聊天室討論區、留言板，來提供對病毒資訊有興趣的使用者，相關病毒資訊，進一步可以搭配外國活體病毒網站做病毒的研究。', '黃琳軒', 'A9228020', '2013-05-30'),
(48, '電子現金及網路電子付款機制與消費者購物行為間關係之研究', '梁克新', '論文類', '近三年內(2003~2005)我國對電子現金交易的發展程度非常快速，尤其是小額的付款。電子現金卡是一個新興的領域，目前政府單位和許多民間的廠商都投入此領域，希望為人民以及消費者帶來更多的便利性，同時也為自己帶來無限的利潤以及商機。因科技及網際網路的快速發展，人們為了生活的便利，促使網路電子付款系統越來越廣泛，至今兩大信用卡陣營VISA及MasterCard共同開發名為Secure Electronic Transactions(簡稱SET)的安全電子交易機制，作為網路上信用卡付款的方式。因此本文詳加研究電子現金與網路電子付款系統對於消費者在進行消費時，三者之間的相關性。\n結果發現，今年來國人使用電子現金與網路電子付款系統進行消費的行為有成長的趨勢。僅僅電子現金的持有率來說就有成長的趨勢。目前國內信用卡的流通數有四千四百多萬張，金融卡的流通數有六千八百多萬張，而IC卡的持有數更高達一千五百多萬張。在短短的三、四年間，電子現金及網路電子付款系統與消費者的消費行為有著很深的相關性。\n本小組藉由設計問卷的方式，針對實踐大學高雄校區的師生隨機發放問卷的方式進行調查。主要的目的係探討電子現金及網路電子付款機制與消費者的消費行為間相關之研究。', '李政忠', 'A9128007', '2013-05-30'),
(49, '農產品結合E化銷售－以釋迦為例', '王貴民', '系統類', '  本研究視為踏入這蘊藏極大商機的潮流中的第一步，主要在結合運用所學的多媒體網頁製作、網站架設、電子商務等各項之能，並藉網路商店銷售實作，瞭解商品供應、金流、物流、行銷等各項所遭遇的問題分析研究以做為往後創業之經驗。', '彭怡玲', 'A9228021', '2013-05-30'),
(50, 'Asp.net結合SQL-以藥局系統為例', '韓慧林', '系統類', '藥局原本是使用老舊的磁碟作業系統(Diskette Operation System, DOS)來管理藥局的銷售業務，由於操作上只能由專業人員來使用，加上DOS系統已經被淘汰了(以後來應徵的人不會有人會的)。所以經過考量環境現況後本研究將借重ASP.NET2.0的網路資料庫的長才，結合SQL2005的強大功能，製作出一個藥局的資訊系統，從原先的單機單人操作改建為網路版，並提供易懂的操作介面供各使用者使用。', '林聖宗', 'A9228379', '2013-05-30'),
(51, '利用資料採礦技術分析就業市場 需求於資管教育之研究', '王貴民', '論文類', '利用資料採礦技術，分析出業界對各項專長的需求狀況與趨勢。在此，我們以資訊相關科系為例，針對不同的職業類別做分析，依照學歷、語文、電腦專長等條件分析出各種不同的需求資訊，並可產生專長需求排行榜。', '侯畊宇', 'A9228023', '2013-05-30'),
(52, '實踐大學高雄校區績效衡量之建立 －以平衡計分卡為例', '王貴民', '論文類', '二十一世紀面臨劇烈環境的變動與市場的競爭，使得企業必須擬定策略來滿足顧客的需求，策略管理與績效衡量成為重要的課題。平衡計分卡的概念可解決這些問題，以增加企業的競爭力。大專院校如同企業一樣，在面臨有限資源及競爭者增加的狀況下，如何控制預算，以提升教育品質以滿足學生及家長的需求，又能建立各學校的特色以提昇競爭優勢，是各校維持永續經營所必須面對的難題。', '黃俊穎', 'A9228024', '2013-05-30'),
(53, '新市鎮規劃(重劃區)便利商店選址之探討 -以高雄市楠梓區為例', '王貴民', '論文類', '本研究為如何在眾多競爭環境中，估選擇適當的設點位址，使此位址市場率達到最大，首先大量收集各個不同領域的連鎖企業之文獻資料，做為分析討論選址因素的根本，參考現今四個不同領域各佔有一席之地的連鎖店選址辦法與原則，分別是7-11、麥當勞、星巴克、屈臣氏，藉著收集而來的資料，找出四大連鎖商店之間的選址共通處及各自的特色等。', '黃俊璋', 'A9228026', '2013-05-30'),
(54, '企業導入SCM之實務面探討─以關鍵成功因素為基礎', '葉期財', '論文類', '隨著全球企業的競爭與時代的變革，以致將資訊e化及有效的運用資訊管理，藉以來幫助企業提升效力及收益被視為一個重大的議題，而企業中的重要環節--供應鏈管理，它的任務主要是整合企業的上、中、下游等流程運作，其運作流程經由資訊科技的協助分析與工具，目的是提供企業管理者對運作流程的評估與了解。\n 而現今企業為了因應世界潮流、配合引進資訊科技，已使公司獲得更大的效益，所以導入SCM系統已是必要趨勢，而導入此系統也存在著失敗的風險，所以本研究藉此以SCM導入之關鍵成功因素為基礎來探討企業因此所獲的績效。', '顏亨翰', 'A9128341', '2013-05-30'),
(55, '幾何式虛擬實境-以郭綜合醫院為例', '梁克新', '系統類', '本研究利用3Ds MAX與Virtools來製作醫院的虛擬導覽系統, 建立一套流程從規劃、設計到成品輸出的展現', '黃國霖', 'A9228031', '2013-05-30'),
(56, '旅遊e點通', '葉期財', '系統類', '本研究主要是以喜愛旅遊民眾為中心，建立一套簡單又快速的旅遊指南，希望成為旅遊者的貼心助理；以更簡易的操做、更親民的介面、人性化的設計，讓從事休閒的民眾更享受、更投入旅遊活動。', '潘冠伶', 'A9228032', '2013-05-30'),
(57, ' 本研究的問題重點，在於如何將旗山的人文生態透過網路傳播出去。以旗山的網站資源嚴重缺乏角度，本研究所', '王貴民', '系統類', ' 本研究的問題重點，在於如何將旗山的人文生態透過網路傳播出去。以旗山的網站資源嚴重缺乏角度，本研究所提供之資料，對旗山當地將有更高的透明度；對基金會則有較高的曝光率，使民眾能從網路搜尋到旗山相關的資訊。將為旗山帶來更多的發展，不論是當地特產、文物或美景，都能呈現於世界的舞台上。\n   ', '李如弘', 'A9228033', '2013-05-30'),
(58, '分析線上會員管理與留言版系統－以尊懷文教基金會為例', '王貴民', '系統類', '本研究的問題重點，在於如何將旗山的人文生態透過網路傳播出去。以旗山的網站資源嚴重缺乏角度，本研究所提供之資料，對旗山當地將有更高的透明度；對基金會則有較高的曝光率，使民眾能從網路搜尋到旗山相關的資訊。將為旗山帶來更多的發展，不論是當地特產、文物或美景，都能呈現於世界的舞台上。', '李如弘', 'A9228033', '2013-05-30'),
(59, '線上客服系統', '葉期財', '系統類', '本研究期望藉由個案研究公司之線上客服系統來探討如何藉由相關功能以協助其取代電話服務模式，此個案研究公司早期即使用電話服務模式做為客戶服務之主要作業模式，隨著客戶數量的增加也因此擴大客服團隊編制至百人左右規模，雖然已建立龐大的客戶服務團隊，卻漸漸發現仍會面臨以往之主要問題，在遭遇重大問題時，瞬間湧入的客戶服務案件也隨著客戶數量增加而直線上升，不斷地增加客服人員並無法真正解決問題，反而隨之而來的是當公司營運穩定時，即出現客服人員過剩之疑慮', '許鉅平', 'A9128014', '2013-05-30'),
(60, '分析線上會員管理與留言版系統－以尊懷文教基金會為例', '陳仁祥', '系統類', '本研究的問題重點，在於如何將旗山的人文生態透過網路傳播出去。以旗山的網站資源嚴重缺乏角度，本研究所提供之資料，對旗山當地將有更高的透明度；對基金會則有較高的曝光率，使民眾能從網路搜尋到旗山相關的資訊。將為旗山帶來更多的發展，不論是當地特產、文物或美景，都能呈現於世界的舞台上。', '李如弘', 'A9228033', '2013-05-30'),
(61, '競速飄移之極限E8', '張嘉銘', '論文類', '電腦動畫在視覺傳達、電腦遊戲、網路藝術與電影產業等已成為重要的表現手法之一，當電腦3D成為藝術創作以及商業藝術的表現工具時，其創作思維及表現的特質及呈現的創作語言自然有別於傳統藝術。', '游添財', 'A9128308', '2013-05-30'),
(63, '互動式虛擬實境之研究', '洪清文', '模擬類', '透過沉浸式虛擬實境(Virtual Reality,VR)與互動小遊戲，對於推廣台灣民俗藝術文化，能有相輔相成的效果。', '潘汝壁', 'A9128018', '2013-05-30'),
(65, '結合網頁特徵搜尋技術之研發 ─ 以Google為例', '葉期財', '論文類', '本研究是嘗試運用類神經網路來協助我們進行網頁的分類，透過將網頁的特徵數值化之後，導入類神經網路中訓練出一個網頁分類的模型，期望可以讓使用者快速的尋找到擁有某些特質的網頁。本研究所設定的網頁特質是一種整合型的網頁資料，期望利用Google搜尋出來的結果可以是類似於目錄格式的網頁，網頁之中擁有一些連結同時還有一些文字來說明這個連結的用途，我們認為這種目錄式的網頁可以快速的尋找到使用者所需求的資料，對於時常利用搜尋引擎的使用者必定有著相當大的助益。', '王信郎', 'A9128019', '2013-05-30'),
(66, '網路動態資料擷取之研究-使用JAVA及VB程式', '陳仁祥', '系統類', '網際網路與全球資訊網的崛起，改變了企業與個人的溝通方式，驅動新一代的商業革命。網際網路可提供快速尋找資料、掌握訊息與交換檔案等功能。此外網際網路也提供著大量的資料如股票市場、新聞資料、旅遊資訊⋯等，這些資料若能善加利用，並且從中得到有利的資訊，不僅讓個人使用著能快速得到訊息，對組織來說也可以讓辛苦收集來的資料不至於處於無用之地。這些資料如果能妥善的運用，將對個人理財與企業經營產生極大的助益。以股票市場為例，過去不論是股票交易資料或研究報告，其資料的取得均十分困難，因此很難進行自動化的分析與管理，現在在全球資訊網上這些資料都能以電子化的方式取得。\n	資料挖掘指由大量資料中擷取出有價值之知識，亦即將資料轉換成知識的行為。這些資料包括一般交易資料或多媒體資料，而知識則是資料間隱含關係的具體表達與呈現。因為資料挖掘能協助企業取得知識並創造競爭優勢，故引起廣大的重視，也促成了許多新的研究方法、系統或雛形的發展，而成為一個快速成長的領域。本研究提出股市交易資料的擷取，並期望由這些大量數據資料中找出隱藏知識，進一步開發模擬交易系統，提供決策參考之用。', '黃嘉男', 'A9128016', '2013-05-30'),
(67, '霸王別姬', '羅建銘', '模擬類', '近幾年來，華人在世界舞台上表現亮眼，不論在政治、經濟、文化等方面都佔有一席之地，因而帶動世界一股「中國風」。以電影為例：李安的「臥虎藏龍」，張藝謀的「英雄」、「十面埋伏」，成龍的「神話」以及李連杰「霍元甲」等。這些成績斐然的電影應用的都是中國五千年歷史所珍藏的文化資產，中國題材創造無限地商業與藝術價值。政治與經濟的侵襲是有形的，文化造成的浅移默化為無形的，我認為「中國風」所帶動的潮流不止於現狀，未來「中國文化」將蔚為風潮主導世界時尚潮流。', '黃雅薇', 'A9128015', '2013-05-30'),
(68, '3D動畫My Bone', '梁克新', '模擬類', '拜現在科技發達所賜，許多電影或是電玩遊戲的畫面，是非常令人震撼的，其背後所支援的3D動畫製作軟體是非常重要的。但是現在3D動畫製作軟體百家爭鳴，每個都有其特色，但是一個動畫的做成，並非靠單一個軟體就可以做成的。所以就利用這次專題的忌諱，了解動畫製作過程，嘗試利用3DSMAX和MAYA兩套軟體來製作簡單的動畫。', '陳仕屏', 'A9128022', '2013-05-30'),
(69, 'HIPPO狂想曲-3D短篇動畫之創作與探討', '張良政', '模擬類', '電腦動畫在視覺傳達、電腦遊戲、網路藝術、數位藝術與電影產業等已成為重要的表現手法之一，當電腦3D成為藝術創作以及商業藝術的表現工具時，其創作思維及表現的特質及呈現的創作語言自然有別於傳統藝術。本文先針對3D電腦動畫創作基本的概論以及一些技巧的探討，最後再加上我們的實作經驗，希望能協助在此專業領域的研究者或創作者，能對於3D電腦動畫有更深入的認識', '劉昊霖', 'A9128021', '2013-05-30'),
(70, '資管104－求職網站架設', '葉期財', '系統類', '時代已進入E化，求職者找工作不再只是使用傳統的方法，透過網路的強大功能，可以在家上網搜尋工作機會，透過視訊的功能做遠距面試，各式各樣地求職疑難雜症都可以找到處方。其實在一般的網路上已有許多的求職網站、人力銀行，但是卻沒有一個專為特定族群所架設的求職網站，這點是目前大眾所欠缺的，當資訊已氾濫化的現今，如何擷取有用的資訊，不再浪費時間在資料的審閱上，這就是一門學問。\n對於一個資管的學生來說，在校求學期間，也顯少可以接觸到有關將來就業的相關資訊。而對於已畢業的學長姐們，也缺乏一個繼續跟學弟妹們或同學的交流管道，畢業了也就失聯了。此外，在校的老師們，也沒有一個了解同學專才的地方，同學們所擁有的才華，在團體內不易突顯出來。\n現在的求職觀念已改變，求職方法也因應時代變化，自古以來「毛遂自薦」往往比較容易得到機會，如何把握自身的優勢，提前勝出一步，是大家都想獲得的。研究者透過架設專屬網站的研究方法，直接將此類資訊獨立化，在透過實際操作的方式下，能帶給使用者有所助益。\n', '徐憶蓉', 'A9128025', '2013-05-30'),
(71, '宋江陣之數位典藏', '羅建銘', '模擬類', '隨著數位化科技的進步和社會競爭力的提升，傳統的教學方式已不能滿足家長和孩童的需求，家長希望尋求更快速學習以及吸引孩童注意力的教學方式，而互動式教學正式以這為前提之下製作的，因此互動式教學成為近年來熱門的學習方式。本專題研究如何利Flash 、3Ds MAX 與Virtools來製作宋江陣陣法與對打動作的互動式教學，藉以達成推廣學習宋江陣的目的。\n    成品的輸出是以網頁來呈現，具有互動學習及真實觀賞的功能，使用者可根據自身的需求自行操控，藉由視窗上的按鈕或鍵盤上的按鍵來操控觀看的角度及播放的速度，方便使用者學習、提升學習的速度，達成互動式教學的效果，透過網際網路的傳達還可為推廣宋江陣盡一份心力。', '劉佩玲', 'A9128024', '2013-05-30'),
(72, '數位多媒體設計應用於服裝展演之效益分析研究---以實踐大學學生展演為例', '羅建銘', '模擬類', '本研究以實踐大學高雄校區學生為研究對象，主要目的在探討以觀賞者感受為中心，並且探討數位多媒體結合服裝展演對觀賞者視覺及聽覺感官之影響', '伍雅鳳', 'A9128028', '2013-05-30'),
(73, '宿舍網路問題解決系統', '項勤校', '系統類', '針對學校內宿舍網路問題以及宿舍網路管理人員不足來提供一個使用平台。由於校內宿舍網路問題繁多，然而有不少問題卻是一些基本設定沒有做，例如：網路線沒有插亦或是網卡驅動未裝或者IP沒填等，使得宿舍網路管理人員常耗費時間在這些基本設定上', '陳姿穎', 'A9128030', '2013-05-30'),
(74, '第九當鋪－人性購買價值', '梁克新', '系統類', '想像扮演一個有別於自已角色的人嗎?在現實生活中我們扮演許多角色，但也有許多角色研究者不可能扮演。例如:英雄、法師等。這些也許在電影中研究者會看過，但在現實中是不可能達成的角色。\n進入網路遊戲世界，什麼事情都有可能成真，例如:成為百萬富翁等。任何角色都可以隨自我而定，這也是角色扮演遊戲是目前年輕人的最愛的原因。\n隨著網際網路(Internet)的發達與電子商務的崛起，人們可以利用平台販賣商品，所以近幾年來購物網站日益盛行。例如：網路書店-博克萊…等，不用出門就可以買到想要的物品。\n在購物網站中，大家可以將想買的物品，放置在購物籃裡。而這些物品都是實際生活中真實的物品，例如：書、衣服、生活日用品和食品…等。現在研究者開發一個系統是利用線上角色扮演的方式，選擇一個職業，例如：老師、律師、心理諮詢師、音樂家、醫師。每個職業都有固定的屬性值，也就是角色的人格特質，例如：耐心、溝通能力、細心、判斷力、愛心。而在電子商務的平台下，可以進行典當角色職業的人性特質。在虛擬買、賣的遊戲中，可以看出不同職業的人格特質影響整個系統買、賣的運作。', '郭雅婷', 'A9128034', '2013-05-30'),
(75, '資料庫在多媒體上的發展與應用', '張良政', '論文類', '有鑑於現今資料庫支援的不足，僅可支援數字、文字等單調的資料，古今中外許多人為了此而研究，而其中我們選擇將多媒體如何放置在資料庫上做新增、刪除、分類、查詢等功能作為我們這次研究的目標，但因現今資源尚無法完全的將多媒體資料庫用於實作，在此我們只研究如何支援的理論並且就現今資料庫可支援的項目去做一個與程式相結合的應用軟體製作，此軟體製作目的在於發展一增進辦公室工作效率的Office Operation System。', '鍾易呈', 'A9128032', '2013-05-30'),
(76, 'ERP企業資源再造─ 以和桐化學乙炔灌裝系統為例', '葉期財', '系統類', '因和桐公司從十年前請某家資訊公司為他們量身訂做了一套系統，在當年確實為和桐公司帶來了不少的方便，但隨著時間慢慢的增加，在現今資訊流動如此之大的時代，舊有的系統已經不在符合該公司的需求，而且現在對於系統開發者來說，如何開發出一套對於使用者最便利最容易了解且操作的系統是現代的潮流，故我們以視窗設計來製作和桐公司的儲運管理、權限管理、現場管理、業務管理等等', '黃升煌', 'A9228001', '2013-05-30'),
(77, '實踐大學返鄉專車線上訂票系統', '張良政', '系統類', '本研究建置一套返鄉專車訂票系統，其中在此系統中包含會員專區、訂票、查詢紀錄、修改訂票和當週各路線的座位表。系統首頁可以瀏覽到最新乘車資訊，包括返鄉專車路線、票價、上車地點及購票辦法。登入系統後即可看到會員專區，頁面內容提醒實踐大學高雄校區學生繳交款項的時間。其訂票方面，實踐大學高雄校區學生訂票完成後會將訂單資料送至訂單資料庫，實踐大學高雄校區學生在每週三晚上12點前繳交款項，在高雄客運確認收到實踐大學高雄校區學生的款項後，就是該學生已完成訂票手續。若在訂票後想取消，可在星期三晚上12點前可以到修改訂票頁面取消訂票；如果已付完錢，則需在公佈車位後親自到高雄客運旗山南站進行退票手續，另外需扣除10%手續費。繳交款項後可到查詢紀錄頁面察看是否繳交成功，繳款成功的話則代表訂票手續完成。每週四排位系統在確認實踐大學高雄校區學生完成訂票手續後，立即為各路線依購買編號順序來排位子，如有某一路線的搭程人數未滿一車則安排與鄰近路線併車，若併車後超過40人則保持原樣。', '周柄俞', 'A9828405', '2013-05-30'),
(78, '電子錢包的發展與趨勢', '王貴民', '論文類', '最近幾年電子商務盛行，除了日益盛行的電子商店之外，電子錢包的發展也逐漸蓬勃，相信過不久的將來，現有的交易體系勢必會被電子錢包的交易體系所取代，本研究便是著重於電子錢包未來的發展趨勢。', '陳育賢', 'A9228002', '2013-05-30'),
(79, '多媒體電腦輔助教學應用在體育教育方面-以籃球訓練為例', '梁克新', '模擬類', '本研究主旨在探討多媒體電腦輔助教學應用在體育方面，針對體育教學方面，在運動技能的學習過程中，觀察、模仿、練習三者勢必經的過程，而在嘗試階段由於動作的不熟練，學習者可能會受傷、喪失信心、不敢繼續學習，利用多媒體電腦輔助在教學上，取代原本講解，可能造成的吸收不足或來不及吸收。', '鄭智仁', 'A9228003', '2013-05-30'),
(80, '以文字驅動音訊結合3D模型製作虛擬主播', '羅建銘', '模擬類', '融合了各界美女雛型所產生，電腦軟體設境應用之虛擬人物，並將多媒體動畫透過電腦程式運用於報導。虛擬主播的簡易形成方式，將是本篇論文欲探究之目標。', '郭懷恩', 'A9228005', '2013-05-30'),
(81, '天然災害情境下救援最快路徑之最適化分析', '王貴民', '論文類', '台灣地區因地理位置處於複合式災害高危險之太平洋火環帶，潛在釀災風險與日本同居全球前十。重大自然災害發生情況下，具有無法預測及搶救刻不容緩之特性，如何在搶救黃金七十二小時內下達穩當的決策指令，以最短時間通行搶修與救援是救災行動中極為重要之議題 。\n本研究目標係針對救災時能根據得到的資訊計算出最快路徑的救援路線選擇，以利救援能在最短時間內，運送需求的醫療人力或物資，進入災區。使用之分析方法是依照救援行動和路徑損壞與可通行度融合Dijkstra 演算法程式化並以程式模型化，能以圖形化路徑顯示與文字化的任務說明來呈現結果，可輔助決策者即時進行最適路徑進行救援之解決方案。', '張佑瑋', 'A9828363', '2013-05-30'),
(82, '多媒體電腦輔助教學-以排球裁判教學光碟為例', '梁克新', '模擬類', '本研究設計互動式教學的光碟，用不同於書本與現場教學的表現方法，挑戰新的自學方法。以3D動畫表現為重點，平面Flash設計互動式教學平台，可以放入文字、圖片、動畫、影片等等。藉由Action Script來做指令，來做路徑、滑鼠指令及按鈕，音樂、影片的播放，使得畫面更豐富有趣，不但利用動畫的方式呈現教學內容，而且在課程中間還利用模擬的球賽，幫助學習者了解球賽進行中的規則方法，幫助學習者更能了解課程內容，對課程內容更有興趣。\n', '莫馥榕', 'A9228006', '2013-05-30'),
(83, '旅遊e點通', '葉期財', '系統類', '本研究主要是以喜愛旅遊民眾為中心，建立一套簡單又快速的旅遊指南，希望成為旅遊者的貼心助理；以更簡易的操做、更親民的介面、人性化的設計，讓從事休閒的民眾更享受、更投入旅遊活動', '潘冠伶', 'A9228007', '2013-06-04'),
(84, 'Dreamer (夢遊者)－ Flash 互動式平台', '韓慧林', '論文類', '利用電腦動畫與遊戲的設計，將兩者整合起來成為一個互動式的電腦動畫平台，經過實際操作，改善整合創新以作為研究的結論與成果。此研究報告整合了各種製作的技術，以實作的方式來傳達多媒體的技術加入程式設計技巧並用flash小遊戲的方式來呈現，使得多媒體可以更為互動化，以達到更為生動的溝通媒體與工具。', '杜家齊', 'A9228008', '2013-06-04'),
(85, '校園e化－整合性即時訊息需求之系統分析', '王貴民', '論文類', '本研究的主題為「校園e化－整合性即時訊息需求之系統分析」，主要是探討學校師生對「整合性即時訊息系統」的需求程度。研究目的為：提供師生快速且即時收訊（傳訊）功能、提供師生另一溝通和聯絡的平台、解決實體郵件通知的不便性。', '林澤民', 'A9228009', '2013-06-04'),
(86, '研究管理改善宿舍網路品質以實踐大學高雄校區為例', '葉期財', '系統類', '要如何提供健全的宿舍網路環境，網路維運管理扮演了重要角色，背後則必須借助適當的網管系統及工具將網路量化。資料分析也是網管必備的元素，因為當網路負荷逐漸增加時，為了維持服務品質，就須經常有系統地進行網路規畫與建置，而網管所收集、分析到的數據就是規畫的重要參考。所以網路管理還必須包含各項網管資料的彙整分析、週期性報表提供資料，建立可供檢索分析的網管資訊庫。', '蔡嘉祐', 'A9228010', '2013-06-04'),
(87, '國內光電業導入ERP個案研究及關鍵成功因素之探討-以瑞儀光電為例', '張嘉銘', '論文類', '在這瞬息萬變的電子化資訊時代裡，企業需要藉由IT的協助，將一般企業涵蓋的供應鏈管理、財務管理、生產管理、人力資源管理以及專案管理等，納入結合企業的工作流程中。為了建立統一的使用界面，有效的運用商業資訊，和幫助企業解決在速度、效率上的問題，需要有一套完備的企業資源管理(Enterprise Resource Planning)，即時反映最新之企業資源的使用狀況、縮短企業反應時間、和提供企業決策的依據。', '朱苑萍', 'A9228011', '2013-06-04'),
(88, '網路書店之經營現況與行銷手法', '洪清文', '論文類', '本研究旨在探討網路經濟下，網路書店之經營現況與行銷手法。\n我們藉由消費者的角度，利用消費者問卷做為分析，探討影響網路書店的競爭環境因素與網路書店的經營策略對網路書店的經營型態是否有顯著的影響，進而了解到曾經瀏覽過網路書店的消費者對於網路書店的經營特性與購書意願之間的關係，發現消費者在進行網路購書時所重視的面向為何，知道網路書店經營的重要發展方向。\n', '詹書茜', 'A9228012', '2013-06-04'),
(89, '應用類神經網路於賣場付款方式評估之研究', '張嘉銘', '論文類', '針對消費者在大賣場所使用的付款方式來進行研究，研究使用何種付款方式在大賣場付款方式上最為快速且為方便。我們選用了三家大賣場，分別是大樂、家樂福和好市多，來作為這次研究的樣本。研究不同的大賣場、不同的付款方式有何差別，及最常為大眾所使用的付款方式是何種？選擇付款方式的理由為何？', '許家銪', 'A9228013', '2013-06-04'),
(90, '以無線封包擷取進行使用者上網行為分析', '梁克新', '論文類', '近幾年來電腦科學快速發展，在網路通訊上，以無線網路發展甚具，以滿足現代生活環境以及使用者需求來達成生活便利，將傳統的實體線路固定配置，進步為高度彈性可擴充的無線線路，減少不必要的網路建置成本。', '蕭子烜', 'A9228014', '2013-06-04'),
(91, '以人口結構評估正確選址---以高雄市明誠區與三多區為例', '王貴民', '論文類', '本研究針對”餐飲業”開店選址的因素做調查和研究，也特別針對”連鎖店”做選址問題上的討論。一般人常認為”連鎖店”在開設分店時成功高，但由本研究中指出並不盡然；那些會失敗的原因都跟開店第一步驟”選址”有著極大的關係。”正確選址”也就是本研究的主要方向。古有斯言”有土斯有財”，而現代則為”有人斯有財”，也就是”人潮就是錢潮”，以人潮來作為重要的評估因素較趨進現實趨勢。', '吳妏娟  ', 'A9228015', '2013-06-04'),
(92, 'RPG互動式3D遊戲製作與過程-使魔錄遊戲發展為例', '梁克新', '模擬類', '這是一款天使與惡魔對抗的RPG類型的3D遊戲。主角藉由一關一關的破關成長來打敗惡魔，解救自己的同胞。我們利用3D MAX以及視窗程式等來製作此遊戲，關卡設計是由地水火風光闇為設計背景,而裝備武器則是採用了神官的服裝來作為參考，敵人則利用了惡魔等造型來去設計', '蔡億勝', 'A9228016', '2013-06-04'),
(93, '網頁配置和色彩對使用者的影響─以國小學童為例', '梁克新', '論文類', '為了解國小學童最喜愛的網頁版面編排方式和網頁配色樣式，本組研究透過調查選出「五種常見的版面編排樣式」和「七個常見的配色樣式」，利用網路問卷調查方式來供國小學童挑選這版面和配色好的三十五種網站畫面，並調查版面編排喜愛的原因和不喜愛原因、各版面編排所配的七種樣式喜愛和不喜愛畫面其原因。', '徐威', 'A9228017', '2013-06-04'),
(94, '虛擬數位化傳統技藝-布袋戲', '張嘉銘', '模擬類', ' 本研究創作主旨在於以不同於傳統的方式傳達布袋戲文化。研究進程是藉由文獻彙整、田野訪談，以了解布袋戲的發展歷史、原創由來，再分析現況，針對歸納出的問題點再尋求合適的媒材輔助演出，或另開闢其他可能的新平台體系。創作上以鍵盤為虛擬戲偶為操控介面作為概念，再以網頁作為呈現方式。', '嚴振欽', 'A9228027', '2013-06-04'),
(95, '消費者對服務品質衡量之研究-以書店為例', '王貴民', '論文類', '隨著眾多網路書店崛起，傳統書店為了與網路書店相庭抗禮，服務品質無庸置疑的是重要的關鍵。而本研究目的在於能了解傳統書店所欠缺的部分以及現代消費者真正需要的服務品質究竟為何。因此本研究將會以PZB3位學者(Parasuraman、Zeithaml和Berry)所提出的5構面為基礎，製作相關問卷分析出每一間書局的缺點和優點，並給予建議和改善的方法。', '侯景騰', 'A9228028', '2013-06-04'),
(96, '軟體平台移植 以MinnSketch二維動態模擬程式為例', '張嘉銘', '系統類', '電腦的發明是為了使人類生活更加的便利，隨著電腦的進步，早期的應用程式已經不敷使用或是效能過慢。在加上現代社會大多數是使用Windows作業系統，主要是因為人性化、簡單化的介面，使得大眾皆能輕易的上手。傳統的UNIX系統，只是文字系統，對於一般人來說，是比較難進入的。有鑑於此，使得一些在UNIX上優秀的應用程式，無法被大眾所使用。所以如果能把UNIX系統上的應用程式，移植到不同的平台上。那麼不僅能增進效能，還能讓大眾使用。', '王聖文', 'A9228304', '2013-06-04'),
(97, '模擬分析快速診療區之設置結合急診室之效益以旗山醫院為例 ', '王貴民', '論文類', '在較具規模的醫療院所，急診室經常人滿為患，幾是長久以來\n未見改善的現象，由於經貿全球化的演進，過去國與國間之交易已\n經漸漸轉而為城市間之密切互動，形成人口逐漸向都市集中之趨\n勢。未來，台灣人口結構除人口朝向北、中、南三大都會區集中外，\n社會逐漸老化也已形成準高齡化社會，並朝高齡化社會移動，今天\n醫院急診部門之狀況，在未來只會更加惡化。本研究主要目標係評\n估醫院急診室效能；我們針對醫院急診進行建模，以病患等待時間\n為系統效能衡量指標，導入 Fast Track Area 為提升急診室之精進\n可行方案，進行模擬量化分析以求算可行方案導入前後之差異程度。 ', '陳昱廷', 'A9428010', '2013-06-04'),
(98, '健康管理網站建構以實踐大學為例', '王貴民', '系統類', '本研究針對大學生愛美的心理與需求，利用資訊科技結合醫學上體重控制之相關知識，建構出一套健康管理網站系統，針對使用者(本校師生)喜好、餐廳種類與餐點設計出一套個人化之減重食譜和適量運動之建議。', '李勝順', 'A9428011', '2013-06-04'),
(99, 'e-z Breakfast線上訂餐系統以佳佳早餐店為例', '王貴民', '系統類', '在符合藍海策略之原則下，本研究在便利的城市網路基礎上，試將網路訂餐外送之管理系統推廣到一般的小吃店。以佳佳早餐店之實際作業與周遭環境為對象，經實地訪談、形成概念模型、進行學術性系統分析並以ASP.NET 2.0來製作網站。', '曾智偉', 'A9428001', '2013-06-04'),
(100, '手術室醫療模型之建置', '王貴民', '論文類', ' 時至今日，台灣尚未建立完整的轉診制度與習慣養成，具規模之醫院常出現急診與手術室塞車的狀況。未來台灣人口發展面臨結構性改變，醫院之醫療負擔與窘境將遠甚於今天。本研究以模擬方法量化手術醫療作業，從中瞭解手術醫療資源的配置與效能。\n針對旗山醫院本研究利用Arena系統建立手術醫療模型，經由量化程序分析其醫療的能量，並投射未來人口變化之不同場景下醫療能量的可能需求。\n', '張芳瑜', 'A9428019', '2013-06-04'),
(101, '互動式購物網站與後端管理之實作設計—以Ha.Buy鞋子購物網為例', '洪清文', '系統類', '目前線上購物網站大都是以平面式的陳列商品，消費者們並無法清楚的看到產品的全貌，所以常常會有買到不如預期想像的產品，加上我們從網路上搜尋各類人們對網路購物所抱持的想法與建議加以歸納，得知大部分的消費者們對於未來線上購物的產品呈現方式抱有期待，大部分的消費者都希望產品呈現的方式能夠有所改變，藉此降低購買到不喜愛物品的風險。因此本研究希望採用以3D的方式呈現商品(以鞋子為例)，藉此來滿足想要買到喜愛產品，但又無法到實體商店購買的消費者的便利性，並增加消費者購買此物的吸引力，以及增加與網站的互動性。除了以3D方式展示商品外，我們的網站還提供了一個空間給使用者們投稿他們自創的鞋子作品，至於作品的格式必須依照我們要求的規格，並且依據線上使用者投票的結果給予製作成3D方式展示於網站。', '王建崴', 'A9428304', '2013-06-04'),
(102, ':實踐夢想家 - 線上房屋網Shih  Chien  Dreamer', '羅建銘', '系統類', '　本研究主題以「房屋仲介網」為例，實際建立一個可以讓客戶快速、清楚地了解房屋架構的平台。研究的主要重點在於寬頻網路與數位內容之結合，讓使用者能輕易地透過網路來找尋房屋的相關資訊。', '賴冠宇', 'A9428305', '2013-06-04'),
(103, '郵件管理資訊系統-以實踐大學高雄校區為例', '項勤校', '系統類', '本研究的主題為「郵件管理資訊系統－以實踐大學高雄校區為例」，主要是把學校學生的郵件包裹資訊化。目的在於能將郵件資訊透過網際網路做最有效的傳達，讓學生可以在宿舍或是校外透過我們的資訊系統得知有無信件包裹，進而取代了人工查閱還有登記的步驟，無需其他繁雜的步驟。', '李宜桓', 'A9428325', '2013-06-04'),
(104, '校友問卷調查系統', '葉期財', '系統類', '不論是從社會、學校、系所、在校學生或是校友角度來看，校友對學校和系所實力的增進都有不可或缺的重要性。校友是本校各系所的重要資源與人脈，關心校友、重視並努力開發校友資源，是增強學校各系所實力的重要策略。各行各業的校友也是銜接各系所與產業、企業重要的橋樑之一，因為他們是知識密集、資訊靈敏、與各系所有特殊感情的群體。近幾年來，陸續有校友把產業所碰到的問題帶到學校，得到各系所教授的專業協助與解決。他們不僅因此為各系所帶來資源，也讓各系所發揮人才優勢，對產業有所貢獻，也對社會產生影響力。透過產學合作可以幫企業解決問題，也能夠讓學校知道社會動向調整教學方針。', '王聖淵', 'A9428338', '2013-06-04'),
(105, '校園區位選址關鍵因素分析 -以地震看災後重建為例', '王貴民', '論文類', '在天災過後所遺留的景象，是人們失去了親人與溫暖的家，大地滿目滄夷，過去的種種景象都已不復存在，回歸到最原始僅存的土地，我們要如何可以恢復那些家園變回以前的樣子，並且在這一次的教訓後，更加學會如何把家園變的比以前更有保障，這次本論文主要是以校園為主要對象，校園是一個人口密集的場所，校內教育的是人民未來的主人翁，如何去保護我們的青年學子，本文提出了校園在選址時應該注意的事項，及透過AHP方法分析選址時應該考慮的條件之優先順序，經分析後，基地條件與地理位置為最優先考量之因素。', '郭珮榕', 'A9428339', '2013-06-04'),
(106, '以2D平面影像建構3D立體模型', '梁克新', '系統類', '人臉辨識與重建是近幾年來新興起的一塊研究領域，其主要目的為加強治安以及門禁上的管制。但我們認為其應用並不止於此。假使能與市面上的商業軟硬體相結合，創造出高度客製化的產品，其商業潛力應無可限量。因此，本論文試著研究此技術，期望有朝一日能夠將其應用於商業方面。', '杜威    ', 'A9428358', '2013-06-04');
INSERT INTO `project` (`p_id`, `p_name`, `p_adviser`, `p_type`, `p_description`, `p_leader_name`, `p_leader_number`, `p_date`) VALUES
(107, '村里網站發展觀念性架構之研究', '項勤校', '論文類', '里辦公處網站建置係為方便里長服務里民之管道，進而使里民們在網路上就能互相交流，也能凝聚里的向心力。目前我國里辦公處網站的建置之普及度並不高，且功能需求種類繁多，本研究透過田野調查之進行，即可了解目前我國使用者對於里辦公處網站之建置需求為何，並依據調查之結果擬出一套系統化之評估標準，以供往後網站設計者要設計網站時之參考。因此本研究即以我國全部的里辦公處網站做為研究對象，以使用者、設計者的角度進行網站系統評估之研究。', '劉勇伸', 'A9428366', '2013-06-04'),
(108, '租書管理系統', '張良政', '系統類', '科技日新月異，使用電腦來輔助人們工作是必然的趨勢，但是傳統或市面上的租書管理系統總是有一些缺點和不完美的地方。像是畫面設計單調雜亂、系統操作不易和不夠人性化、搜尋功能不夠快速、方便、多元化等等的問題，都會影響一家漫畫店的運作。\n因此我們以FoxPro開發一套改良的租書管理系統，方便店家進行租還書作業，且能夠更快速、方便及有效管理的系統，使漫畫店能守住原有的顧客及擁有更龐大的新顧客群。本系統還可透過網路下載出版商新書的資訊，可以和上游供應商建立長期的合作關係，以增加其競爭力，為永續經營的目標邁進。 \n', '劉俞伶', 'A9428376', '2013-06-04'),
(109, '提升民宿聯合經營的虛實整合策略', '項勤校', '論文類', '自從高鐵、雪山隧道等重大建設的營運與開通，帶來了交通的便利性，也造成旅遊型態的改變，飯店業者推出住宿優惠的競爭，讓民宿相形見拙面臨更大的經營困境；另一方面，雖然大部分民宿業者為求增加行銷能力，紛紛建立了專屬的網頁，但這些網頁並未達成促進管理的目的，帶來更多的顧客群。這些外部與內部的因素造成了民宿業者在經營上的困境，本研究主要探討民宿網站功能設計的適當與否，並提出一套經營模式來改善外部因素對於民宿產業的影響。', '羅英齊', 'A9428377', '2013-06-04'),
(110, '大學資源規劃─以校友產學合作資訊網為例', '葉期財', '系統類', '透過本研究之實作平台，可使校友能將業界訊息傳達給學校，並替學校帶來更多產學合作的機會，促使學校與外界的溝通更有效率，並能改善學生就業及課程設計的問題，也能透過產學合作經驗使學生增加實習機會，累積實務經驗，更加貼切符合社會需求。本研究以校友為例，透過有系統的UML塑模來分析系統，並以MVC架構來實作系統，加上文獻的搜集，進一步瞭解使用者的需求，然後確立系統的基本功能，有效的整合校友資源，形成一產學合作資訊網。', '陳奕中', 'A9428382', '2013-06-04'),
(111, '新生輔導遊戲-大學生了沒! ', '葉期財', '模擬類', '本研究以實踐大學高雄校區為例，希望運用科技改善大學在新生訓練的實施時間太短的問題，協助學校輔導新生適應新環境並數位學習大學生活。我們希望能製作出一個能讓大學新生快速了解學校的Flash的線上遊戲。讓大學新生從能從遊戲中，除了能夠掌握學校的環境之外，亦能得到更多學校系所的相關資訊跟意想不到的樂趣。 ', '林羽', 'A9428393', '2013-06-04'),
(112, '網頁地理資訊結合GoogleMap-以高雄小吃為例', '韓慧林', '系統類', '網路上提供了各式各樣的資訊，這些資訊有裡頭包含了許多重要的知識，要如何將這些知識有效的管理，一直是資訊管理人員研究與開發的重點，目前線上的搜尋平台種類繁雜，但大多數的平台都比較傾向於關鍵字的查詢，至於空間查詢部份，則仍未盡理想。因此，在搜尋空間地理相關的網頁時，也就喪失了許多寶貴的知識。\n本研究以高雄小吃為例，利用需求研究方式運用Google Search Web Service、中央研究院詞庫小組開發的斷詞斷字系統與文字資料探勘的技術和Google Map API地址對位的技術，將所搜尋出來的結果，以包含地理資訊的圖與文，貼近需求的查詢結果，可將本系統應用於各種與空間主題相關之內容的查詢、分析、地理資料蒐集與空間知識的管理上。\n', '柯思宇', 'A9428402', '2013-06-04'),
(113, '訂位系統結合服務業應用以實習餐廳為例', '王貴民', '系統類', '網路發展已經相當成熟，而許多服務業也一一的電子商務化。隨著許多服務業的電子商務化的趨勢日漸增加，也增加了我們許多的便利性，訂位或是訂票等等在餐廳或交通運輸工具的運用也日漸增加。國泰航空導入線上訂位自選、台、高鐵線上購票系統、電影院現場劃位購票等等，都是電子商務化的最好例子。但只有少數是可以讓顧客自行選位，有鑑於此，本專題將兩者結合並期盼可為商家帶來最大效益，提高本身競爭力，並以本校學生實習餐廳為例，藉此降地人為訂位疏失，增加顧客方便性及自主性。', '林義銘', 'A9428404', '2013-06-04'),
(114, '線上遊戲介面對數位學習成效之影響 -以大學新生輔導為例', '葉期財', '模擬類', '本研究即以「多人連線遊戲模式的數位學習」為題，探討此一數位學習模式的特性以及所能達成的學習成效。研究中除了實際建構出一套名為「大學生了沒」的有關學校提供給新生的相關知識學習遊戲之外，並針對一部份內容實際進行學習效果的驗證。', '楊子瑩', 'A9428405', '2013-06-04'),
(115, '台灣資訊管理學系課程與業界職務需求比較分析', '張良政', '論文類', '根據新聞報告顯示資管系與業界需求人才應該以處於供過於求狀態。但實際上，現今仍然有許多企業覺得資管業界人才不足，許多大學資訊管理學系畢業生找不到工作。本文使用次級資料收集法，統計分析目前業界相關工作需求專業能力與現今資管學系開設課程的相關性。利用線性迴歸與相關系數做出的比較，結果顯示業界所需專業能力與學校資管系開設課程所相關聯性的比率非常低。各大學資管學系在安排課程時，應該多參照企業求才條件限制，也可以適度安排實習課程，讓學生畢業後能成為資訊相關企業需要的新鮮人。', '鄭麗雯', 'A9428374', '2013-06-04'),
(116, '網頁探勘技術運用於股市關聯分析之實證研究', '張良政', '論文類', '本專題報告希望透過網頁探勘技術將財經網站的投資建議透過資訊擷取與分析的方式，並檢驗投資建議的報酬率與目標達成率，透過SQL Server 2005進行關聯分析並且產生關聯法則，個人投資者可透過可信度高的評等報告和報酬率選擇可靠的關聯法則來當作股市投資的一種參考指標，最後我們會再檢驗由此關聯法則形成的投資組合的報酬率是否能帶給投資者超額的報酬，且與大盤做比較看是否能勝過大盤的投資報酬率。', '鍾國誠', 'A9428421', '2013-06-04'),
(117, '3D Animation - 草地囝仔', '羅建銘', '模擬類', '本3D動畫創作「草地囝仔」乃描述一個從都市生活回到草地童年的故事。在劇中，主角被周遭工作環境的壓力壓迫的幾乎喘不過氣，而主角也非常的渴望能藉由時光隧道回到過去，找回屬於自己的快樂。最後，主角雖然無法真實的回到過去，但卻藉由了回憶照片以及回到故鄉找回了他草地童年的純真與快樂。綜合了電影、繪畫、音樂各種特質，動畫短片提供一個自由揮灑的想像空間。試圖不斷找尋自我對於生命體驗的原貌與詮釋。以人的故事為主體，以生命矛盾的本質為焠鍊；「草地囝仔」，一首思念與情感的變奏曲，一部科技與藝術結合的動畫結晶。', '葉宏瑋', 'A9428450', '2013-06-04'),
(118, '互動式行動學習軟體之建置', '張良政', '系統類', '社會資訊科技的發達，使得手機在現代人的生活中是不可缺少的一部分，人手一機的現象已經很普遍，到目前為止甚至還有一人多機的發展趨勢，手機的功能也越來越多，日後的趨勢則會變成一機多功能，而附加價值也會越來越大。這些以上種種的發展現況來看，手機對社會對個人生活影響已經逐漸在改變中，人們對手機的依賴程度只會有增無減。', '張高綸', 'A9528308', '2013-06-04'),
(119, '消費者對手機滿意度與購買意願之關鍵影響因素研究－以實踐大學高雄校區為例', '韓慧林', '論文類', '本研究乃以手機功能、時尚外觀、廠商知名度、市占率及口碑，區分出產品與廠商特性兩大構面，探討其與消費者滿意度之關係，並在價格及廣告的交叉分析下，檢定其對消費者購買意願之關鍵成功因素。藉此，以實踐大學高雄校區為例，計發放312份問卷，有效回收率達96.15%，在99%信賴水準下，假設檢定手機的多元功能、產品外觀時尚性、廠商知名度、產品市占率、廠商口碑與消費者的顧客滿意度之關係，皆有顯著之影響；另考量商品價格與廣告行銷效應時，對消費者之購買意願，價格因素具顯著加乘效果，廣告行銷並無顯著影響。\n本研究雖較侷限性，然對大學生手機消費模式之研究結果，可提供給廠商針對學生族群之消費行為，採取更適切之行銷策略；並可運用本研究之架構，擴大研究之對象，即能擴大研究成效。 \n', '蔡元豪', 'A9528306', '2013-06-04'),
(120, '電腦急救站 -防毒救援', '張良政', '系統類', '做出一個簡單的網站给使用者方便又快速就可以解決中毒的煩惱，且中毒的徵兆也會一一條列，讓受害者知道電腦已受到病毒的威脅，是量身打造給一般人使用，讓他們知道現在是處於什麼狀況，也是免付費的狀況下給一般人使用，能帶來完整的幫助性以及便利的使用。首先會先讓受害者輸入他的中毒症狀依症狀查詢是哪種病毒，再來告知受害者該如何操作才能讓電腦恢復以往，因此對電腦概念一竅不通者，使用這頁面可以很快找出主要原因，提供一般人可有方面快速的解決。', '王書維', 'A9528310', '2013-06-04'),
(121, '電子商務價格平台之開發與應用', '梁克新', '系統類', '本研究目的為建立價格網頁，利用商品擷取工具來擷取台灣網友最常去的購物網站之商品資料，並且製作價格資訊網站，網站的資料來源包括有商品名稱、細部說明、價格、圖片、販售來源一切資料均由該擷取工具以資料庫的形式來建置。透過擷取工具，我們將目前台灣最受網友們青睞的網站的網站資料大都在此資料庫內。因此如何製作出商品擷取工具來抓取各大購物中心的資料，並將該資料庫與價格資訊網做結合，使網站表現出單一商品在各網路商家的價格於同一個網頁上，滿足消費者希望能迅速比較價錢的慾望，並協助消費者決策。建置資料庫與價格資訊網開發成為本研究的主要方向。', '郭志孝', 'A9528315', '2013-06-06'),
(122, '以網頁探勘技術分析財經網站中的股票投資建議', '張良政', '系統類', '由於網際網路的發達，許多財經網站會提供一個版面，讓各證券商能在此版面對投資人提出一些投資建議；但投資人往往缺少足夠的知識去解讀這些投資資訊，因此本研究就是在證實網路上財經網站提供的資料和持有時間與證券商之間的關聯關係，找出之間的關聯性，以求出最好的投資績效。\n	因為過多的資訊會造成投資人的負擔，因此希望設計出一個智慧代理人，能夠快速擷取投資建議資料、分析投資建議資料，最後再進行驗證。分析方式上依照所需要的觀點不同，而會產生不同的排序，再依照不同的格式進行另存。最後才能分析、對照。\n	從研究中找出若依照「持有時間」方式排序，「持有三周」會出現最高績效；若依照證券商提供的投資建議排序，則可找出「德意志」、「摩根」、「JP摩根」持有時間在「一周」、「三周」時各會出現不錯的績效。而在關聯規則中有出現較好績效的券商為「德意志」、「BNP」、「台灣工銀證」、「康和證」、「UBS」，再透過找出的規則判斷是否有其投資價值，是否有超額報酬。\n', '陳之章 ', 'A9528318', '2013-06-06'),
(123, '禽流感疫情爆發情境下專責醫院抗疫能量之模擬分析', '王貴民', '論文類', ' 近幾年流感大流行，禽流感、SARS到現今(2009)H1N1流感均在各地造成嚴重的疫情，為避免疫情爆發造成嚴重傷害，台灣開始重視抗疫計劃的實施及醫療流程管理，建立整體性的防疫體系與應變計畫，提供醫療體系有利的數據幫助社會，但其中仍有重要的決策數據尚未進一步研析，本研究僅就疫情爆發時，疫情指揮官需要的一線抗疫醫院之醫療作業能量量化數據進行量化分析。本論文引用美國CDC的三個場景，並另推估一個場景，建立模擬系統，模擬我國衛生署指定之一線抗疫醫院醫療系統作業的飽和能量與瓶頸。模擬數據顯示，現有之負壓病房數量成為醫療系動作業中最嚴重之瓶頸，其次則為疫病篩檢站。', '陳心慧', 'A9528332', '2013-06-06'),
(124, '企業商品的品質績效決策系統', '洪清文', '論文類', '本研究探討產品壽命在冪次分配族(Power distribution family)的假設下，透過最小平方估計法，發展出一個新的假設檢定程序作為產品的績效評估，此假設檢定程序是即時商業智慧中一個企業產品的品質績效決策系統，能處理非常態且設限的產品壽命資料。透過此品質績效決策系統，企業可以了解所提供的產品壽命是否達到規格要求，並提升產品品質，以更能符合顧客的需求。 ', '陳菁甫', 'A9528334', '2013-06-06'),
(125, '網路模擬教學環境之建置', '梁克新', '系統類', '使用學校資源，架設了一個網路模擬教學平台，只要透過網際網路的連結就可以看到模擬工具的頁面。這個平台提供了基礎的離散事件模擬──等候模式，使用者可以透過模型建立想要模擬的流程，接著選擇想要的模擬模式，再設定各個模型的屬性之後便能進行模擬，模擬過程會有動畫圖示，顯示目前進行到哪個階段。這個模擬的平台不只能進行模擬，還能將模擬的結果進行統計輸出，讓使用者對於結果能夠迅速理解；對於初次接觸離散事件模擬的使用者，能夠輕易的上手及理解結果，能對決策者提供一個可靠的基礎。', '張仲甫', 'A9528345', '2013-06-06'),
(126, '實踐大學資訊管理系發展策略可行方案評估', '韓慧林', '論文類', '平衡計分卡(Balance Score Card, BSC)是企業在進行策略規劃前，透過組織「顧客-內部流程-學習與成長-財務」等四個構面，以進行企業績效管理之工具；本研究提出投票式權重評選法(Vote-Ranking)以結合BSC分析模式，提供決策者更多客觀量化數據，此可量化BSC分析模式乃運用多準則決策之概念，以多層級分析架構，簡化複雜問題；然後，「由上而下」針對BSC各項指標進行投票、加權與量化受評估之策略可行方案，最後運用加權評分法，評選最佳策略可行方案。本文以實踐大學高雄校區資訊管理系為個案研究，運用BSC結合投票式權重評選方法，評估發展策略之優先順序與評選最佳可行方案', '謝筱君', 'A9528353', '2013-06-06'),
(127, '法拍屋資訊網', '陳仁祥', '系統類', '本研究目的為探討法拍屋之流程、法拍屋成交因子、目前法拍屋的型態、功能、技術及運用整合，以便將其功能建構於本網站中。其網站之法拍屋資料來源可來自不同銀行、法拍屋仲介，並整合其法拍屋重要資料因子，讓使用者易於搜尋更完善的資料，最後結合法拍屋之技術應用，使系統可每日更新法拍屋資料，以確保使用者獲取最新資訊。', '江春翰', 'A9528355', '2013-06-06'),
(128, '即時商業智慧的設限品質績效評估系統', '洪清文', '論文類', '隨著 e 時代的來臨，改變了傳統消費觀念，也加速了科技的發展，促進了21世紀的產品品質之提升。在全球的競爭中，品質成為企業的競爭優勢的主要要素，因此，企業必須透過一直提升產品品質來提升競爭性和客戶滿意度。自從二十世紀初以來，品質的重要性日漸受到世人所肯定，品質不僅是企業的策略武器，也是企業創造競爭優勢的價值活動之一。尤其邁入二十一世紀，人類的生活水平仍持續不斷攀昇，對於產品之品質與多樣性要求亦日趨嚴苛，在這股品質熱潮的簇擁之下，品質已成為企業存亡之關鍵。隨著台灣正式加入世界貿易組識，市場競爭從區域走向全球，因此提升產品與服務品質是台灣企業核心競爭能力之一。如何利用資訊科技來協助實行全面品質管理是目前台灣企業的首要任務。製程能力分析是用以評估產品品質績效的受歡迎方法之一。並且大多數製程能力指標都假設商品的品質特性是常態分配。然而很多商品的壽命模式是非常態分配，包括指數分配、柏拉圖分配、韋伯分配等等。並且在壽命測試實驗中，由於經費、資源、機器以及測試困難等等因素，產品壽命資料經常是不完全的，因此設限資料是經常發生的。在實務上，目前很多品質績效評估軟體是無法處理非常態而且設限的產品壽命資料。因此本研究以C#為基礎的技術去發展一個新的品質績效評估系統，產品購買者利用這新的品質績效評估系統去確定產品的壽命績效是否達到規格要求。產品製造者利用這新的品質績效評估系統去加強產品製程能力。這品質績效評估系統不僅能處理非常態且設限的產品壽命資料，而且是即時商業智慧中一個績效評估分析工具，能即時提高客戶服務及企業決策能力之速度和品質，增強企業對市場情況的反應能力，增強企業的競爭優勢。', '張文杰', 'A9528362', '2013-06-06'),
(129, '場地租借系統', '王貴民', '系統類', '隨著網路科技的精進，許多企業或產業的作業流程都使用網路來進行，不僅提升工作效率也節省人力資源。在校園網路需求量日漸增加的情況下，校園網路平台是否完善，也影響了師生及行政人員的時間及效率，因此，本專題將以師生的需求”場地租借”之問題作為初始動機，進而開發系統上線，使場地租借的問題能得以解決，帶給使用者更多的便利性', '鄭慧真', 'A9528367', '2013-06-06'),
(130, '系所網站建置觀念性架構之研究', '項勤校', '論文類', '網站已成為今日提供服務及訊息最重要的角色，通常在建構前，針對使用者需求進行調查及分析，以滿足使用者對資訊內容服務之需求，增加對使用者的互動。目前我國各大專院校網站的建置情況雖已普遍，其內容設計感也具一定之水平，然而，許多系所網站在建置前卻鮮少先對使用者進行正規的需求調查。本研究透過田野調查了解目前我國各大專院校系所網站建置之現況，並依據調查之結果進行系統化的評估，期望提供一種發展系所網站時得已參考應用之觀念性發展架構，讓系所網站之發展能更符合使用者在功能實用性及內容豐富性上的需求。以供往後大專院校網站設計時之參考。\n本研究除提出一套系所網站建置的觀念性架構外，亦透過調查分析不同的網站使用者使用網站時，對網站服務品質的要求項目、研究成果，可供跨院要地位在等不同質性的學術網站建置參考。\n', '謝欣蓉', 'A9528368', '2013-06-06'),
(131, '餐飲ERP系統與RFID', '陳仁祥', '系統類', '本研究發展一套餐飲店的系統及結合無線裝置，以協助餐飲業者提高ｅ化程度，進而利用資訊科技提高營業績效。並促進餐飲業能在電子化的協助之下提高顧客滿意度，增加業者管理效率。餐飲管理系統使用SQL Server 資料庫所建設，資料庫裡將存放餐廳的所有資訊，業者可利用這些資訊進行餐飲流程管理及資料探勘，藉由儲存於資料中的資訊，提供業者在於菜色更動上的依據。並整合點餐系統、櫃台系統及吧台系統，使顧客在於點菜或服務生呼叫時更於便利且快速。此研究另透過無線射頻識別RFID(Radio Frequency Identification)能在空間電磁感應進行通信的特點，透過此特點的運用廚師或服務員可用來檢查餐點是否有正確送達該顧客的桌上。', '黃宗恩', 'A9528386', '2013-06-06'),
(132, '行動部落格', '梁克新', '系統類', '本研究希望建構一個平台，可以結合部落格與地圖應用，讓使用者透過簡單\n的步驟把內容顯示在地圖上，並且能夠將有關聯性的內容在地圖上做連結，將單\n獨的標記轉變成一條路徑，讓發表者重現當時的旅遊路線，不僅可以讓發表者可\n以作為旅行的紀錄，更可以作為瀏覽者旅遊路線參考的依據。', '黃怡翔', 'A9528390', '2013-06-06'),
(133, '社團選填系統', '羅建銘', '系統類', '現今大學升學率100%以上大學生滿街跑的時代裡，企業徵才不再只是以學歷做為優先考量，反而更注重「實務經驗」，學校與社團參與相互的輔助下，在未來畢業出社會後才能比別人更有優勢，由於本校位處偏遠，學校與宿舍的距離讓本校學生更容易降低對社團的參與意願，在社團聯合會(簡稱「社聯會」)便提出社團線上選填系統的構思，並且向學校各社團溝同詢問社團的需求並進行分析，開發「社團選填系統」，協助學生利用網路選擇自己有所興趣的社團通知社團人員，並且由社團主動聯絡新進的社員，期望降低社團招生的時間與人力的資源，增加學生與社團溝通的管道促進學校社團風氣。', '尤維嘉', 'A9528393', '2013-06-06'),
(134, 'YACCO機油網站之建置', '羅建銘', '系統類', '由於網路技術不斷進步及線上購物經營模式的愈漸成熟，許多企業投入了大量的設備與系統，目的都是為了強化企業在市場上的競爭力，以及看好充滿商機無限的網路購物市場，紛紛在網路上成立線上購物的網站，形成一股新型態的交易潮流，徹底顛覆傳統的商業型態。\n本研究針對法國YACCO機油廠商建置台灣網站，提供了整合式服務，如：產品搜尋、留言板、線上購物等功能服務，讓台灣喜愛YACCO機油的顧客使用後能感到滿意，進而讓YACCO機油廠商打開在台灣的網路市場。\n    藉由網路商機，YACCO機油當然也不能落後於人，紛紛也開始建立各國的YACCO專屬網站。當然在台灣也是一樣，因此利用此機會，在台灣建置第一個YACCO網站，希望能對台灣人有所貢獻。\n', '夏聖峰', 'A9528333', '2013-06-06'),
(135, '筆記型電腦比較查詢網', '張良政', '系統類', '網路的發達，讓消費者的購買型態，慢慢趨向網路購物，而網路商店眾多，如何從中選取品質良好和價格便宜成為最重要的條件，但是網頁的使用便利性和商品資料詳細與否也會影響到消費者的使用意願，而我們的目的就是提供消費者這些服務，但是在商品只有單一種類的情況下，如何做到專精，並且有效的管理，成為最大的目標，並藉此目標邁向商品的多樣化及資料自動更新，使消費者和管理者都能有效率的運用', '盧聖寰', 'A9528403', '2013-06-06'),
(136, '資訊安全通報系統-以實踐大學高雄校區為例', '項勤校', '系統類', '近年來，教育部為落實各級學校建立資訊安全管理制度，推動各級學校建立資訊安全驗證機制與執行資安通報相關工作。然而，綜觀各項推動事項，多屬政府機構與學校間之作業層級，對於廣大的校園師生終端用戶之安全事件通報，則少有完整之政策規劃或具體之實踐作為。鑑此，本研究期望以文獻研究法對政策完整性實施調查，並以終端用戶之資訊安全通報為需求，規劃設計「推播式的校園資訊安全通報系統」。利用YAHOO WIDGET工具來達到對校園終端使用者主動通報資安訊息之目標，期能產生重視資訊安全教育及刺激學生研習資訊安全技術之綜效。', '藍翌菖', 'A9528351', '2013-06-06'),
(137, '建構資訊安全系統專案管理模式之研究', '韓慧林', '論文類', '本研究「資訊安全管理系統(Information Security Management System, ISMS)之專案管理模式建構」乃以企業曾經遭受的資訊安全事件為例來研究資訊安全對於企業之必要性，搜集相關文獻資料以了解資訊安全可能存在的威脅，再深入探討資訊安全對於企業的重要性。期能透過ISO27001資訊安全系統之規範文件，藉由「規劃、組織、領導、用人、控制」企管手法，以強化或提升企業資訊安全防護，提高資訊安全成效；再結合專案管理(Project Management)之「發起、規劃、執行、控制與結束」之系統方法，將ISO27001資訊安全管理系統導入企業之中，期許使企業符合資訊安全國際標準要求的程度，達到事先避免資訊安全危機、事後能有效防範或降低衝擊的發生。 ', '洪全緯', 'A9528373', '2013-06-06'),
(138, '結合 Facebook 與校友的社群行動平台以協助校友會運作 ', '葉期財', '系統類', '對於大學發展而言，畢業校友的經營不僅僅是校友捐款提供學校系所發展基金，\n另一方面對於提高畢業生就業率也有著明顯的助益。然而，面對目前日益競爭的大學\n生態，如何提供有效的管道與校友建立緊密的聯繫，將是提高大學競爭力的一大優勢。\n許多校方增設校友會，其目的為增加與校友社群意識及忠誠度，而過去校友會在資料\n上管理不佳，導致聯絡成本過高且效率往往不如預期。本研究參考了多種社群網站之\n文獻，探討社群網站成功因素，且研究校友與校方間維持關係品質的重要條件。最後\n本研究將學校既有的校友資料結合目前最廣大的社群網站－Facebook，利用 Android 平\n台在智慧手持裝置中建構一個校友社群行動平台，提供可查看畢業校友的狀態及工作\n等即時資訊，還提供電話、簡訊及 e-mail 等聯絡方式，讓校友們之間的聯繫更佳方便，\n且針對聯絡資料進行隱私保護機制。增設權限管理機制，讓校友會在聯絡校友更加有\n組織。此外，也提供雲端同步的功能，讓使用者可以方便使用不同的裝置取得資料。\n而本系統也已經完成在二種不同的平台上執行、測試。 ', '廖珮伶', 'A9828316', '2013-06-06'),
(139, '建立蒙地卡羅海上搜救模型進行搜救單位遲到時間之參數分析-以台灣東部海域為例', '王貴民', '論文類', '台灣附近海域之高密度海上交通與海洋環境成為中度風險環境，海難事故年均超過300件，使得海上救難的效率益形重要。海難發生時的天候通常不佳，因而救難船艦到達現場的遲到時間成為影響海上救難的最大因素之一。本研究之目的係針對海上救難船艦建立搜索模擬模型，以之分析搜救單位遲到時間對救難搜索效能之影響；海域則以台灣東部屬於黑潮體系的外海為研究範圍。以蒙地卡羅方法(Monte Carlo method)為建模主體，相關子模型包括：「落海目標之漂浮位移」、「搜索」、「搜救船艦偵測裁判」、「統計」等四項。其中，海流的流向以機率分配模擬環境行為。研究主要限制為搜救之船艦數量以單船為主，在東岸海域進行72小時海上救難之模擬。', '張家耀', 'A9828358', '2013-06-06'),
(140, '運用賽局理論量化分析軍事決策  -以燃燒基準點戰術為例', '王貴民', '論文類', '本研究是以賽局理論進行反潛作戰之戰術分析與任務規劃之道。當我方已被敵方潛艦攻擊，先推斷對方會以何種心態去躲避我方的攻擊，再分析各種可能性的策略，也擬定出對於我方有利的策略追捕敵軍潛艦。利用賽局理論，擬出報償矩陣，再以ATPA計算出兩方各個策略，產生相對應之影響，評估其報償時能夠找到對我方利益最高之策略來採行。由此方法可提供海上船隻遇到敵方潛艦攻擊時可行的參考策略。', '林廷容', 'A9628313', '2013-06-06'),
(141, '3D-MAX水滸宋江陣-數位學習網站實作', '張嘉銘', '系統類', '對於內門宋江陣，在地方上是非常重要的文化藝術，在此，為了呈現有別於一般的介紹，本組使用3D圖示的方式，建立可愛的Q版人物呈現有別於一般風格來進行介紹，一方面可以給大家耳目一新的感覺，也可以增進大家對於宋江陣的了解，而中國民間小說更是可以提升青少年的興趣，使民眾的年齡層可以向下延伸，拓展到學齡兒童，對於延續傳統文化有莫大的意義，亦達到寓教於樂的目的，未來網站亦朝向增加更多的民俗文化為目標使其成為一個優良教材網站', '黃洧明', 'A9628311', '2013-06-06'),
(142, '旅遊比價網', '梁克新', '系統類', '現代人對於休閒娛樂的需求隨之增加，而消費者透過上網來進行搜尋旅遊社以及旅\n遊景點資訊已成為趨勢，現今網路上已有 3C、手機產品等等的比價網，尚缺針對旅遊行\n程這方面比價功能的網站，本研究針對旅遊比價進行系統研製。本系統提供目前台灣使\n用頻率較高的三家旅遊網站，包括雄獅旅遊網、易遊網以及可樂旅遊網，這幾家不同的\n旅遊行程，以進行價格比較，以利消費者可在一個網站即可貨比三家。 \n本研究是採擷取技術、在網站上抓取需求資料、建立的資料庫、結合 Google  Map\n的方式呈現與排序方式建立系統。 \n    本系統具體貢獻：已完成比價系統與上線使用。唯一限制為系統速度相對較慢，要\n使用執行緒方式加以研究解決。 ', '李佳樺', 'A9628314', '2013-06-06'),
(143, 'RFID應用於餐飲管理的自動流程', '陳仁祥', '系統類', '本研究建置一套餐飲管理的自動流程，其中子系統包含倉儲系統、採購系統、食譜系統，以及結合餐飲系統，其點餐系統方面，顧客點餐後會將訂單資料送至資料庫，當餐點送至餐桌時，透過RFID辨別餐點是否送錯；在廚房系統方面，當資料庫接收到訂單，系統會將資訊傳送至廚房系統，廚師可依訂單資料製作餐點，餐點製作完成時系統會依該餐點的BOM自動於資料庫扣料；在倉儲系統方面，進料時先讀取RFID Tag得到進料資訊，經倉管人員盤點無誤後即可完成進料；在採購系統，當食材達到最低庫存量時，系統會自動計算缺料數量，並將該食材列在缺料清單上建立採購單。在食譜系統方面，管理者可進行餐點管理、菜色BOM建置、烹飪流程管理，廚師可透過烹飪流程查詢介面得到烹飪資訊，達成餐點品質的一致性，顧客可透過餐點食材查詢介面得到餐點食材資訊，使顧客安心用餐，其系統以減少人力的參與、營業成本的降低及增加顧客滿意度。', '陳泳叡', 'A9628317', '2013-06-06'),
(144, '產銷履歷系統結合RFID-應用於生鮮食品以海鱺魚為例', '陳仁祥', '系統類', '本研究建置漁業生產履歷系統，讓每位生產者擁有自己的帳號來管理自己產品的資訊，將此建構的產品資訊傳至Web Server。讓消費者利用產銷履歷號碼來將產銷履歷資訊由Data Base呼叫至網頁，消費者即可從網頁得知產品從加工廠經由運輸至餐廳業者所有的行動記錄，產銷履歷對業者可視為產品品質把關的動作，餐廳業者可藉由消費者的回應來進行貨品來源調查及運輸狀況調查。', '陳佲志', 'A9628321', '2013-06-06'),
(145, '踐大學資訊安全管理風險之評估研究-失效模式與效應分析之應用', '韓慧林', '論文類', '在資訊科技爆炸時代，資訊安全風險評估已成為各組織營運之最優先考量因素；資訊安全漏洞將造成企業之危機，風險發生原因及其影響也將帶來革命性的變化，為求組織永續發展及營運安全，不斷風險評估、預防管理及立即應變計畫乃必然之防範作為。本研究以本校電算中心通過ISO27001認證之資訊安全資產風險評估為例，成立跨功能小組，應用失效模式與效應分析，建立與提供一套資產風險評估與預應之啟發模式，作為各大學資訊安全資產風險評估之參考。', '劉庭維', 'A9628322', '2013-06-06'),
(146, '應用品質機能展開法探討 實踐大學之資訊安全服務品質研究', '韓慧林', '論文類', '隨著資訊科技的突飛猛進，資訊安全事件更屢見不鮮，然而資訊與生活卻又是息息相關，若資訊安全遭到破壞或發生漏洞，小則個人的隱私受到侵害，大則對財產或企業經營將造成危害，其嚴重後果不可輕忽。本研究透過品質機能展開法（Quality Function Deployment, QFD），採問卷調查方式，以實踐大學高雄校區學生為問卷對象，瞭解學生對學校資訊安全服務品質的要求，並將資訊安全服務品質需求項目轉化為資訊安全管理與技術要求項目，提供學校未來作為改善資訊安全服務品質的項目與建議，並塑造出良好的學校形象及口碑、提昇競爭力。', '林竑毅', 'A9628323', '2013-06-06'),
(147, '運用馬可夫鏈理論研析侵台颱風釀災之機率', '王貴民', '論文類', '指導教授：王 貴 民 博士\n輔導教授：韓 慧 林 博士\n', '余瑋婷', 'A9628339', '2013-06-06'),
(148, '建立指揮官效用函數決策分析-以潛艦為例', '王貴民', '論文類', '軍事決策之複雜除了高不確定性之戰場環境與難測之敵方策略外，人性階層之個人決策風險承受力，更是扮演決策程序中的重要角色。本專題研究之目標係以潛艦艦長為例，舉出三種風險型式決策之指揮官：風險追求者 （risk seeker）、風險中立者（risk neutral）、風險規避者（risk avoider）， 運用效用函數（Utility）與反潛機戰術設計輔助系統（ATPA）進行潛艦戰術決策之效益分析。本研究針對三型風險決策者分析出最適於他的方案，有利於更高層的任務派遣指揮官依照任務特性，做出指派人選之決策。本研究之限制在於樣本數不足，在效用函數之轉換中須藉助回歸模型求出較平滑之曲線函數，用以代表三型風險之決策曲線。', '洪裕翔', 'A9628348', '2013-06-06'),
(149, 'BLOG-承諾(VOW)之書', '羅建銘', '系統類', '根據comScore Networks調查研究，2006年3月止全球15歲以上使用網際網路的人口數已達6.94億，換算全球的網際網路普及率有14%，隨著全球網路使用率的增加，臺灣使用率也隨之增加，網路日誌的概念逐漸的形成，台灣正式進入部落格的時代。承諾，在現在社會型態下往往以口頭方式或者心裡層面自我的警惕，但通常沒有一個有效且具體的方法來提醒，如果把所做的承諾放在網路上，將其過程記錄下來，自己訂定一個有效的期限，利用監督的效果來達到自我要求，進而提高承諾之實現率。 本研究的主要目的為製作一個以承諾為主題，將許下的過程與經過記錄下來，達成自我要求的效果的網站，提供使用者能自由發揮題材，襯托出個人獨特性，並且可以馬上更新。希望能以部落格的社群性，讓更多人互相分享自身承諾的經驗。 ', '郭順濠', 'A9628354', '2013-06-06'),
(150, '多媒體教學網站-CCNA', '張嘉銘', '系統類', '目前社會上的教學方式越來越多元化，因為電腦的普及，帶動了網路的蓬勃發展，教學不再有時間及空間上的限制，網路教學的盛行之勢猶如排山倒海，作為先進的發展方向，我們的專題將以目前非常熱門的CCNA(Cisco Certified Network Associate)來為舉例，輔以課本製作一個教學網。\n在這個教學網裡，我們將以多媒體教學為主要呈現，並根據Richard E.Mayer的多媒體教學理論來作為我們的理論基礎，將多媒體教學建構在這基礎之上，提高學習效果，利用較短的時間來完成這門學科，並以會員制的方式來進行教學，以提高學習成效的回饋，。\n', '蘇業翔', 'A9628355', '2013-06-06'),
(151, '畢業專題專案管理系統-整合管理', '張良政', '系統類', '本研究畢業專題專案管理系統，是針對校園內師生討論專題所開發的工具，系統使用學校資源，架設一個網路管理平台，並透過整合領域的觀點，分析組織內部的運作、架構、需求…等，建構出專題管理的工作流程，改善組員或導師間製作專題的效率。', '陳廷威', 'A9628372', '2013-06-06'),
(152, '畢業專題專案管理系統-時間模組', '張良政', '系統類', '專案是指以一種暫時性(有明確的開始與結束)的努力，創造出一項獨一無二的產品、服務或結果，專案管理是應用知識、技能、工具和技術於專案活動上，以符合專案的需求。而對於畢業專題，同學們是第一次接觸，因不諳於此塊領域，在過程中遇到阻撓、挫折或失敗，甚至一拖再拖，直到最後一刻才在趕工(例如:口試前)，由此可顯現出學生對製作專題的時間並無按部就班的控管及投入了解；而各組專題指導老師對於學生製作專題的進度及問題在第一時間不易取得了解，顯示出目前缺少一個可以迅速瀏覽、簡單操作且能監控專題的管制系統；然而老師在評分又未必能反映出實際的技術與水準，顯現出缺乏良好的評分指標，本研究因此建構了一個畢業專題專案管理系統，以希望能有效改善狀況。本系統以專案時間管理模組為主，透過將系統網頁化，可讓同學直接在線上填寫專題內容之相關表單，進而掌控自己專題進度及水準。', '許景棋', 'A9628385', '2013-06-06'),
(153, '應用科技接受模式探討實踐大學網路學園之效用', '韓慧林', '論文類', '大部分學校極力在發展數位或「網路學園」化教學環境，其功能包括公告課業成績、作業、舉辦考試、教材及研討室等，學生可在任何時間獲取相關選修課程所需之知識資訊，提升學習效率與效果。本研究以實踐大學高雄校區之數位化學習環境「網路學園」為例，透過校內師生對此資訊系統使用後之問卷調查，計回收有效問卷248份，占有效回收問卷數95.01%，其樣本區分為資訊與非資訊兩領域；結合科技接受模式(Technology Acceptance Model, TAM)，藉由知覺有用性、知覺易用性與老師要求程度等變數，以瞭解使用者滿意度與效益。本研究透過敘述統計、相關性分析、變異數分析及迴歸分析進行假設檢定，最後，發現上述因子皆具顯著效果，另考量學生使用該系統之頻率，建議老師應增加更多與學生互動作業之要求，以提升「網路學園」之效率與效果。', '陳柏翰', 'A9628387', '2013-06-06'),
(154, '網路硬碟整合之FireFox擴充套件開發', '梁克新', '系統類', '自雲端運算的概念出現以來，雲端服務不斷的出現，其中一項雲端服務-網路硬碟，也在雲端服務中運作著。近來網路硬碟紛紛林立，各式各樣的網路硬碟服務也隨之興起，每家都有著各自的帳號、密碼、操作頁面和規則…等等。當一個使用者有著不同的網路硬碟時，在帳號與密碼的管理上以及操作頁面相異的情況下是不是容易造成困擾，另外在不同的規格限制下，使用者進行檔案管理時，受到單檔大小或是空間大小的局限，較大的檔案可能無法操作，或者是上傳速度的限制，讓檔案造成遺失，如果這是一個剛接觸網路硬碟服務的新手，在挑選一家容易上手的網路硬碟時，卻面臨雜七雜八的操作問題所帶來的不適應，就以上述情況來說，往往是造成使用者降低使用網路硬碟意願的因素，而本專題正是從此問題點切入。本專題研究重點在開發FireFox Extension擴充套件，以完成一個具有統一介面的網路硬碟整合系統，讓使用者透過此工具，可以同時存取多家網路上常用且免費之網路硬碟，此工具並能突破各家網路硬碟之單一檔案大小限制，讓使用者更能體會網際網路之方便性', '王伯倫', 'A9628393', '2013-06-06'),
(155, '畢業專題專案管理系統-人力資源管理模組、專案溝通管理模組', '張良政', '系統類', '實踐大學資管系主要在培養學生從事專題研究，解決實務問題的能力，藉由專題指導老師的協助輔導，並應用所學專業知識去探討相關問題，提出診斷、建議或進行系統開發；而目前對於專題流程並沒有一套完整的管理辦法，難免會有遺失或時間逾期的狀況發生，或是資訊不完整，無法給學生正確的時間流程；對於每組專題老師而言，指導老師不易掌控其小組專題進度、研究方向正不正確，所以日後指導老師及其小組可以透過此系統來有效的掌控所指導的專題小組。\n    本研究建構一個網路平台，依據PMI的專案管理工具建立模組，此PMI專案管理知識領域有人力資源管理和專案溝通管理，並產生電子化表單，已有將現有的進行小組的專題內容套用上進行測試。從中找出缺陷並修復，最終的結果已達到我們的目的，未來可以讓專題指導老師利用本系統來協助輔導。\n', '翁境箴', 'A9628399', '2013-06-06'),
(156, '台灣資訊管理—發展趨勢與知識地圖之研究', '張良政', '論文類', '資訊管理學系發展至今已有四十年的歷史，近來隨著資訊科技的快速變遷，相關資訊系統的應用早已深入企業核心，也使得資訊管理研究方向與主題產生了變化。本文探討國內資訊管理研究近幾年來發展的趨勢，本文蒐集了2005年至2009年間存放至全國碩博士論文網之論文，並針對論文題目所提供的關鍵字使用SQL資料庫加以整理分類、進行統計、關聯與集群分析，以了解近年來國內資訊管理的變化趨勢，從統計中得出2005年至2009年資訊管理論文關鍵字的趨勢變化，並從關聯分析中繪出知識地圖，從知識地圖的連結點中發現了國內資訊管理領域前幾年分為兩個階段，而關於資料探勘的論文研究一直是資訊管理的核心重點，所以2005年至2009年時以資料探勘做為論文方式佔其中極大比例，但隨著科技技術進步與對管理的重視，2008年至2009年時RFID與資訊安全的相關論文比例逐漸提升，顯示國內在對於無線射頻辨識的引進發展與應用以及資訊保護上有逐步重視，是目前資訊管理研究的演化重心。', '蔡承佑', 'A9628405', '2013-06-06'),
(157, '輝煌人生  –  網路圖書預借資訊系統', '羅建銘', '系統類', '為了有效使用網路系統，本研究將藉由 ASP.NET 互動式網頁撰寫工具，使用 C#語\n法，製作一項可以提供實踐大學語言中心之圖書的租借書系統介面，並將其融入網際網\n路，達到遠端存取之目的。透過資料庫掘取系統以及 GridVIEW 等圖形化控制將語言中\n心的圖書資料儲存於資料庫中，再以網頁搜尋資料庫之數據、計算、圖形化並顯示相關\n圖書資訊。讓實踐大學學生能使用任何連上網際網路的電腦，開啟網頁對遠端租借書系\n統進行登記存取動作，且不限時間與地點限制。 ', '呂彥輝  ', 'A9628408', '2013-06-06'),
(158, '商務網站建置與行銷  - 以陳仲炫汽車保養廠為例', '梁克新', '系統類', '服務系統可研究出顧客的系統品質、服務品質，也可從設備提供一個與顧客直接溝通的管道，並且透過內部建置來進行服務系統的一對一、多對多以及大量的溝通，因此服務系統經營者可運用通訊設備，提供各項服務來增加傳播速度，本研究目前與『陳仲炫汽車服務中心』合作，將利用客戶的觀點去做網站，打破傳統區域性質的保養廠，讓客戶能夠更方便的瀏覽服務中心。\n    而目前台灣有許多汽車服務公司都有兼做保養維修動作，但是許多客戶會選擇送回原廠做保養維修，有時候對他們來說，是一件比較麻煩的事情，因客戶有時候需要縮短保養時間去做更多的行程，所以會在自家附近尋找滿意的汽車保養廠做他們所需要的服務，而保養廠技師的技術、提供的服務項目以及保養後的滿意度也將是客戶所觀察的目標，客戶的汽車保養、維修後的評論，也將會深深影響汽車保養廠的客戶流以及保養廠的營收，透過網路行銷，許多需求就可透過網站聯繫，預約保養是網頁特有的形式，排除了同一時間會人多車雜的情況，真正讓客戶替自己選擇最好的保養時間。\n', '王秋懿', 'A9628428', '2013-06-06'),
(159, '浩思房仲網─結合Web2.0與Google Map API技術之應用', '葉期財', '系統類', '隨著網際網路的蓬勃發展，使用網路人口逐漸增加，加上電子地圖使用廣泛，網站資訊配合電子地圖已經成為一種不可或缺的趨勢。\n	根據資策會FIND網站顯示報告指出使用網路購屋者比例逐漸增加，由此可見利用網路帶來的效益，可增進房屋買賣租賃的成交。在外租賃房屋對於身為學生的我們有著密切的關係，在資訊化的時代中，找房子的方式已經不同以往，不需要沿路撕紅紙條，找報章雜誌，或者找房屋仲介，而是利用網路功能，在網路中找尋房屋資訊，即可快速蒐集大量資料，便有了房仲網的這個構想。\n	本組了解網際網路可讓租屋網更具即時性、便利性、完整性、高曝光率、低成本等等優勢，且網站的操作更具人性化且簡單，配合電子地圖瀏覽，幫助房客找到理想的房子；且許多的租屋網紛紛推出，配合資料庫將房屋資料整理、儲存，並導入電子地圖，讓房客知道大量的房屋資訊，也不必像個無頭蒼蠅在大街小巷亂竄，還找不到房屋正確位置。\n', '洪維廷', 'A9328002', '2013-06-06'),
(160, '網球教學-以多媒體網站呈現', '韓慧林', '論文類', '以網球為例設計一個以多媒體呈現的網球教學網站,結合了書本文字與不同於現場教學的互動方式,呈現另一種教學方法', '陳柏成', 'A9328003', '2013-06-06'),
(161, '中文網頁排序與排序', '王貴民', '系統類', '本研究中文網頁以關聯式內容搜尋方式，經由網頁的文字內容進行文字分析，並根據網頁內容的豐富性加以排序，中文網頁文字分析方式之結果，其排序將可避免垃圾網頁出現於排名之中，並且大幅提升搜尋結果列之網頁品質、改善搜尋引擎的使用效率，而達到使用者所期望的搜尋水準。關聯式內容分析之排名不但改善搜尋結果的現況，更突破了Page Rank排序方式無法檢索網頁內容的缺點，使搜尋引擎的搜尋結果能更貼近使用者需求。', '朱可云', 'A9328008', '2013-06-06');
INSERT INTO `project` (`p_id`, `p_name`, `p_adviser`, `p_type`, `p_description`, `p_leader_name`, `p_leader_number`, `p_date`) VALUES
(162, '以行政院南部聯合服務中心為例-創意市集E化網', '陳仁祥', '系統類', '   本專題研究主要是找出國外創意市集E化的網站對我國的創意市集網站做功能性比較以及國內外創意市集文化上的差異性，找出國外的優點，因應行政院南部聯合服務中心所舉辦的第一屆內惟埤創意市集，架設了一個創意市集的網站，並改善國內製作創意市集網站的缺點，將配合行政院需求作出此網站，而後介紹架設網站時所遇到的困難點以及網站的整體架構，經過許多的測試比較以及研究，希望能展現出國內創意市集文化，以及真正達到宣傳的目的。', '吳家佩', 'A9328011', '2013-06-06'),
(163, '應用Office PowerPoint VBA 程式於自動簡報系統開發之研究', '梁克新', '系統類', '不單單只是利用Office PowerPoint來完成報告，我們還使用了SQL製作資料庫以VBA和ADO來連結我們的報表，讓資料可以透過上網的方式輕鬆擷取，讓主管們或者是演講者在臨時的場合中，或是忘記攜帶PowerPoint簡報時，只需要透過網路，獲取資料庫，即能形成簡報，使得報告不開天窗，這不僅可以免除臨發狀況的窘境，還可以減少忘記攜帶報告的風險，更可以讓報告整體看起來更具有專業性。', '王彥傑', 'A9328013', '2013-06-06'),
(164, '教室預借系統', '梁克新', '系統類', '預約，變成了解決排隊的一個方式，而預約也變成現代人生活中不可或需的一項功能，現今的社會，買東西可以預購，租借東西可以預約，甚至連吃飯或者剪髮等服務都可以接受預約，使用者不再用做排隊這種既浪費時間又無聊的事情，更可以從遠方得知哪些時段可以接受服務，大大了增加不論是使用者或者是管理者時間上的方便。\n在學校內借用教室，不但須先查詢想要借用的教室是否為空堂，再來知道教室的所有權是屬於哪一系所，並且到該系所系辦申請借用，而有些系所的借用規則也往往不見得一樣，如此的借用教室手續繁雜又麻煩，所以最好的方式就是讓借用教室也能在網路上進行，讓借用教室也能用預約的系統來讓使用者們借用，如此一來，從查詢教室空踼到借用教室的申請，全都在網路上就可執行，大大的增加了借用者的便利性；此外，還可以統一教是借用的規則，不再受到各系所不同的規範，由更上級的單位統一進行管理及出借，使其有效率的出借教室。\n', '陳品造', 'A9328015', '2013-06-06'),
(165, '提升校園e化之研究－以實踐大學為例', '韓慧林', '論文類', ' 生活在現在的我們不能一日離開電腦，我們更無時無刻的利用電腦來完成我們日常所需的資訊與新知，學校有很多師生，相信大家都有自己的電腦，大家也一定會利用學校了網路資源系統來查詢校內的最新資訊，或是老師們KEY-IN學生成績以及學生查詢課表或是成績；而且學生們對學校所提供的資訊系統並不會經常性的使用，所以我們所要做的就是整合學校資訊以及提高學生們對於校內網站的興趣，於是我們強調的重點在師生們可以利用校園網路資源，更加來讓生活更加的便利。', '鍾政良', 'A9328303', '2013-06-06'),
(166, '3D動畫-蟻后的世界', '項勤校', '模擬類', '戰爭，引起人們的恐慌。不過在爭力奪權的環境下，卻讓戰爭變成是唯一解決的方式，而每一次的世界大戰都讓我們的生存環境發生變化，尤其又以近代的原子彈、核子彈在每次釋放後所殘留的核輻射對環境的影響最為嚴重。\n　　而在核輻射下生活的生物身體機能漸漸發生突變，有許多的病症都陸陸續續浮出檯面、無法根治的新病況，在核輻射下的生物改變了原有的體質，並以另一種新的型態出現在人類面前。\n　　我們將以核爆所產生的突變為這次的故事背景，來假設螞蟻受到核輻射的影響發生的型態的改變，向原本為地球的物萬之靈：人類反撲。\n', '林清文', 'A9328020', '2013-06-06'),
(167, '返鄉專車訂票系統以實踐大學為例', '陳仁祥', '系統類', '自從實踐大學高雄校區有返鄉專車時，在買票上的作業總是有許多的問題存在，在返鄉專車的購票作業上，學生們往往都要花時間排隊買票，而合作的客運售票員在售票的作業上，必需整筆記入學生的買票資訊，有時學生買票人數過多時，常常會造成記錄交易上的錯誤，比如座位重覆、乘車時間錯誤等。為了讓學生們在買票的作業程序上能更簡便，讓售票員可以不用手寫記入售票資訊，客運方面可更方便及更準確派遣車輛。此研究將對訂票系統做分析，並透過系統實作與高雄實踐大學為例以達到本次研究的目的。', '林峻宇', 'A9328022', '2013-06-06'),
(168, 'RFID圖書資訊系統', '梁克新', '系統類', '本研究的主要目的為：利用資訊管理系辦公室將建置一個小型的圖書館的這個機會，利用RFID這項技術，為資管系上設計一個圖書管理系統，使得在系辦公室中借書或還書的人，可以簡短手續時間，也能利用系統方便管理書籍資料。', '劉彥廷', 'A9328023', '2013-06-06'),
(169, '動畫製作', '項勤校', '模擬類', '現今電腦多媒體常常被使用在各個地方，在生活上的各個事物，隨處可看見這些多媒體的存在，像是有一些電視廣告就不是以實體人物拍攝，而是以動畫製作來取代傳統真人拍攝。甚至也有直接利用電腦動畫來製成一部完整的電影。導致這樣的轉變，應該歸功於我們電腦的蓬勃發展，電腦不只代替很多不適合人們的工作，也為人們分擔過去耗時的工作。傳統的多媒體的發展，侷限在人們能利用的物品上，例如像是電視的連續劇，就只能利用乾冰等等，人們所製照的東西來表達出特效效果，但隨著電腦多媒體的興起與進步，這些由真人拍攝的影片也漸漸能以電腦動畫繪製出更炫麗的特效來表現，而不在受實體環境的侷限。', '巫謹淵', 'A9328024', '2013-06-06'),
(170, '網頁遊戲設計-遠古戰爭', '葉期財', '模擬類', 'Web Game在近年來因為網頁技術的標新立異，讓網頁能夠以更多的特效在視窗內呈現，例如Google帶起的JavaScript技術，讓整個網頁世界起了重要變化，接著更多的網頁技術相繼而起，JavaScript與XML非同步理論擦出Ajax技術，讓網頁可以非同工底下做出更多工作，也讓許多網頁似乎活了起來，而我們這組主要想利用JSP+ JS結合等新的網頁技術，做出精緻美麗的網頁遊戲，讓許多接觸網頁的玩家可以遊玩。', '童雋智', 'A9328025', '2013-06-06'),
(171, 'RFID應用於校園安全管理-以幼稚園為例', '葉期財', '系統類', '以校園安全而言，我們將結合RFID科技與Web cam，使家長和幼稚園能夠第一時間掌握孩童上下學的資訊。每一位孩童都擁有一張獨有的RFID電子識別晶片卡，讓幼稚園孩童隨身攜帶。當孩童進入或者離開學區時，設立在學區門口的RFID讀寫器一接收到晶片卡的無線訊號就會發出訊息到學校的主機上，同時Web cam也會即時擷取影像，如此一來不只可以紀錄孩童的上下學的時間，另一方面系統會自動呼叫寄送簡訊的服務，然後傳送到各個家長的手機與e-mail信箱通知家長，訊息內容包含孩童到達學區或者離開學區的時間與影像，讓家長可以即時掌握到孩童的安全資訊；同時，校方也能掌握孩童到校的動態，共同組成一個更安全的電子守護網。', '呂韋德', 'A9328027', '2013-06-06'),
(172, '資訊與非資訊專業人員對e化教學之效益分析---以實踐大學高雄校區為例', '王貴民', '論文類', '隨著資訊科技的進步發展，使得網際網路的應用範圍愈來愈廣，不僅影響日常的生活，同時也改變了教學的型態，但對教學者而言是否能接受如此教學環境的改變呢？本研究即以教學者的角度出發，來比較不同科系背景及不同電腦素養的教學者對網路教學接受度的差異。因此在研究對象的選擇上，將教學者依不同科系背景及不同電腦素養分為兩組，分別是「資訊科系」與「非資訊科系」。', '李巧茹', 'A9328028', '2013-06-06'),
(173, '手機購物網製作', '王貴民', '系統類', '資訊電子科技的快速發展以及網際網路的四通八達，電子商務也開始有了快速的成長，不但威脅傳統的商業模式，徹底顛覆整個運作模式的轉型，也可能改變人類經濟活動的走勢，悄然地帶動著另一場商業革命。但就目前發展來看，實際的商務運作短期是不可能會消失的，以人為服務的基本不會變，對於電子商務應該是個未來的趨勢。\n', '許哲綸', 'A9328030', '2013-06-06'),
(174, '虛擬敦煌石窟之網路互動', '王貴民', '系統類', '虛擬實境是人機之間的感官結合，透過電腦模擬出來的仿真空間與個人的視覺系統、聽覺系統、觸覺系統、動作感應系統讓人融入虛擬的世界，體驗有如真實世界的各種人事物與各種人事物之間所產生的互動行為。二十一世紀開始，虛擬實境的發展因為軟體技術、電腦硬體的價格下滑與網路通訊的普及，幾何、影像與多媒體開始結合，許多虛擬景觀也因應而生，如當下最流行的線上看以720度的虛擬景觀，讓買家不用直接到達現場，便可以網際網路瀏覽室內裝潢，省下許多不便，本研究也希望藉此方式，製做出虛擬敦煌石窟，使愛好者能在最簡便最舒服的狀態下，欣賞敦煌220莫高窟的文化。', '李宇涵', 'A9328031', '2013-06-06'),
(175, '宋江奇蹟 ', '王貴民', '模擬類', ' 對於內門的文化風景與古蹟人物很有興趣的我們，想著如能善用內門豐\n富的文化風情來做一個遊戲，藉由遊戲可以倡導文化的意義，也可從其中\n了解當地的民俗技藝，遊戲中增加學習的趣味，可透過視覺與影音的效果\n來達到互動，先以腳本來鋪陳我們遊戲內容。', '林嘉妤', 'A9328032', '2013-06-06'),
(176, '線上虛擬展示網站－以忠進車體股份有限公司為例', '葉期財', '系統類', '由於科技的快速進步，全球資訊網（World Wide Web）的出現為傳統產業帶來了突破性的發展，目前企業面臨著新的問題與挑戰，藉由資訊系統的幫助，企業便有機會突破經營瓶頸邁向成功，隨著價格競爭日益激烈、市場需求變化快速，傳統企業為了改善缺失以及擴大銷售市場，進而使整個企業進行交易行為的流程改造，讓企業的外部及內部流程可以達到最大化效率，期藉由企業流程再造以提升企業競爭力以及解決所面臨問題。\n\n忠進車體股份有限公司為一傳統產業下的車體產業，在歷經十餘年來的經營後，已有一定的競爭實力，但傳統產業面臨到的問題，市場不斷萎縮、沒有一個便捷的銷售管道，而資訊科技發展至今以來，國內尚未有相關的傳統產業資訊化，基於此壓力與趨勢，忠進車體股份有限公司積極規劃產業資訊化，利用網路資訊來擴展通路，加入後端管理系統，讓企業主在企業內部流程能更有效率的管理，並建立具競爭力之作業流程，作為企業永續經營之奠基工程。\n', '廖烽翔', 'A9328033', '2013-06-06'),
(177, '校園網路拍賣商店—倉庫 ', '梁克新', '系統類', '此網站取名為倉庫，而倉庫，顧名思義，就是存放許多物品的一個儲存地。為了可\n以讓許多同學們，可以方便且便宜購得欲要書籍，我們提供一個拍賣平台，讓同學們可\n以將他們欲販賣的二手書放置在平台上，讓需要的人購買。也由於網站將架設在校內，\n購物者可選擇面對面交易方式，同學們也可以省下一筆運費。相信在未來，這一套系統\n平台將會為許多的學生帶來便利，與意想不到的驚喜。 ', '曾慕雲', 'A9328034', '2013-06-06'),
(178, '內政部營建署 營建剩餘土石方資源管理系統開發', '葉期財', '系統類', '隨著電腦科技與網路的發展，目前國內各級政府主管機關均朝數位化邁進，以加強作業便利並簡化行政成本。但在積極資訊化的過程中，卻也必須注意行政資訊電腦化所要面對的系統流暢度、資料正確性與安全性等問題。這些問題包括了資料在網路傳遞時是否會遭擷取更改或資料缺漏、遺失等危險，因此在行政資訊系統當中必須提供良好的安全機制，以加強系統的安全與資料之正確性。', '黃俊偉', 'A9328036', '2013-06-07'),
(179, '資料探勘技術之惡意程式偵測系統', '王貴民', '系統類', '由於網路的發達，同時產生了許多問題，駭客入侵電腦，惡意程式的攻擊行為，造成資料的流失，不僅對企業或是個人而言，都是很嚴重的問題。因此為了防止惡意程式的攻擊，我們希望可以設計出一套新的病毒偵測技術，可適用於已知和未知的病毒偵測。', '黃文怡', 'A9328038', '2013-06-07'),
(180, '台灣前五十大3C產業策略組合分析', '韓慧林', '論文類', '近年來，台灣產業結構的變遷，高科技產業蓬勃發展，帶動了台灣的經濟奇蹟。如何讓高科技產業更具競爭力也是個重要的課題。本文研究對象為台灣的前五十大3C產業，資料來源為天下雜誌2006年5月3日出版的期刊，時間範圍為西元2004年與2005年。首先，先蒐集與探討相關文獻，其主要的範圍在於波士頓顧問團隊矩陣，以相對市場佔有率為X軸的指標，銷售成長率為Y軸的指標，並將五十大3C產業繪畫成BCG矩陣的圖形，接著利用資料包絡法分析出前五十大3C產業的權重值，並選出最佳的標竿企業，做為3C產業的學習指標。\n', '蔡旻芸', 'A9328322', '2013-06-07'),
(181, '電子商店模型製作', '梁克新', '系統類', '本研究的主要目的為：製作一套使商店能夠有效管理所生產的商品，並用於網路行銷市場的管理系統。系統主要為電子商店部份。電子商店提供消費者可以在網路購買商品的線上訂購系統，並且可以迅速轉換為不同種類的電子商店，希望以最少的時間和步驟完成電子商店的轉換，以獲取最大的利潤。\n', '黃昭銘', 'A9328329', '2013-06-07'),
(182, '學習績效關鍵因素評估', '韓慧林', '論文類', '績效這名詞常常會出現在生活周遭，學習績效更廣為人所研究甚至於是深入的探討。而學習績效顧名思義就是學習效果，如何去學習並獲得最好的效果，這一直是長久以來很多學者在研究的方向，借以做為人們行為上的指標。\n　　本研究主要是以大學生的學習模式，紀錄其座位並紀錄成績，進而去探討這之中是否與我們的推論是否應證。而探討的方向是以座位、科目、上課時間、授課老師為主，慢慢逐一抽絲剝繭，是否得到的結果會如預期般，也希望能為往後研究有個參考。\n', '張仲豪', 'A9328349', '2013-06-07'),
(183, '養護中心關懷網- 高雄縣合信興養護中心為例', '陳仁祥', '系統類', '現今社會老年人口比例逐年遞增， 老年人口的照護也成了社會所重視的問題， 相關老人安養護機構的優劣便成了現代人所重視的地方，安養護機構的環境是否舒適以及是否有足夠的專業照護人員，都是選擇安養護機構所要注意的地方，此次針對高雄縣安養護機構的網站做探討，根據內政部社會司老人福利老人安養護機構現況的提供，目前高雄縣已立案的老人安養護機構共有四十九所，然而此四十九所的安養護機構只有少數幾間機構含有網站做各方面的介紹，而在線上即時系統方面，對於高雄縣地區的安養護機構並未有這樣的網站，因此，此次研究提供線上即時影像瀏覽與資料瀏覽的服務，與財團法人高雄縣私立「合信興老人養護中心」做配合（參考附件一）【內政部社會司老人福利】。\n本專題的系統可 提供探視、關心院中老人的新管道，藉由即時動態攝影及老人相關的健康資訊，可以讓家屬時時關心院中老人，即使身處在遠方也能透過發達的網路得知家中老年人在養護中心的健康狀況，並且可以即時觀看養護中心內活動的情況。\n', '劉冠伶', 'A9328351', '2013-06-07'),
(184, '考量環境衝擊下台灣中小型企業發展策略規劃', '韓慧林', '論文類', 'SWOT分析為一公司策略規劃工具，透過組織的優勢、劣勢、機會及威脅分析，進行組織策略規劃。量化SWOT 方法乃採取多目標評選之(MCDM)， 藉由層級分析過程以簡化複雜的問題。此法將SWOT及其相關次指標，運用投票、加權等加權評分之量化手法，由上而下衡量和評選可能之公司競爭策略，以獲得最佳的策略選擇。本研究探討臺灣中小型企業在環境管理系統要求下之競爭策略評選，邀請18位具備ISO9000或ISO14000稽核員資格人員成立決策小組，並結合投票式權重評選法，提出一個嶄新量化SWOT分析，以評選中小企業之競爭策略，做為政策制定參考。', '吳滋瑩', 'A9328388', '2013-06-07'),
(185, '線上查詢房貸資訊網站', '張良政', '系統類', '由於大多數申辦房貸的人都不了解各家銀行房貸利率即時變動資訊，其實這些已經被高利率「套牢」的貸款戶，只要撥些時間好好檢視自己的房貸狀況，選擇利率較優惠的專案辦理轉換房貸方案就能節省利息支出，或是選擇更適合自己理財需求的新房貸，都有助於減輕沉重的房貸負擔，所以希望藉由此線上查詢房貸資訊網站，可以幫一般貸款戶分析與比較出更有利於自己的銀行作房貸，此線上查詢房貸資訊系統可以提供給貸款戶作為最佳選擇之參考。\n\n推出本系統之重點是為提供個人房貸諮詢輔助服務，且原則能應把握其使用的方便性、內容的信賴性與服務永續性及建構系統的經濟性，在數位落差漸趨減少而資訊透明化能有待努力的現況下，藉此系統來協助對使用者以個人化方式進行房貸資訊使用。\n', '蘇珮溶', 'A9328467', '2013-06-07'),
(186, '南臺灣美食網', '張良政', '系統類', '目前網路上有許多的美食網站, 但是多為靜態資料呈現的功能, 也缺乏與使用者互動的功能;本研究以ASP.NET與ACCESS建構一個整合餐廳與美食資訊的網站,並提供下拉式選單互動查詢功能', '黃晴榆', 'A9328458', '2013-06-10'),
(187, '電子二手書店-旗山百品書城為例', '陳仁祥', '系統類', '本研究將調查這網路平台測試後的使用者, 進行這二手書店消費群之基本資料及行為, 以探討電子二手書店顧客族群行為分析', '洪明偉', 'A9328321', '2013-06-10'),
(188, '模擬禽流感疫情爆發狀況下醫療飽和能量之整合性分析', '王貴民', '論文類', '本研究深入了解防疫危機處理程序並針對現況指定防疫醫院(旗山醫院)建立模擬模型以檢視疫情爆發時醫療飽和能量', '張智英', 'A9428398', '2013-06-10'),
(189, '以物易物線上交易網', '張嘉銘', '系統類', '本研究將製作以物易物的網路交易平台, 了解其他現有的以物易物交易平台缺點後加以改善, 讓使用者可以更方便地使用我們的平台, 更進一步分享他們地想法給其他使用者, 以達到環保效果', '林琮勛', 'A9628409', '2013-06-10'),
(190, '虛擬實境3D導覽-以旗山老街為例', '項勤校', '系統類', '數位科技進步已能將生活周遭的事物數位化,使虛擬實境技術身歷其境的夢想得以實現,利用虛擬實境技術,從事觀光、行銷導覽、協同設計製造等,均帶來明顯的成就,亦成為新興應用與產業計畫的重要助力', '鄭婉婷', 'A9328305', '2013-06-10'),
(191, '網頁分析擷取系統程式', '張良政', '系統類', '隨著網路的快速發展,人們能在網路上獲取的資料也越來越多,但是在眾多的資料底下,能找到實用的資料是必須花費一番工夫才能有效的利用資料,我們以研討會的訊息做為實例,做一個能自動抓取與分析研討會網頁的程式,以許多研討會的網頁的訊息做為程式的抓取目標,自定關鍵字以分析所需的資料,擷取所需的資料,呈現給使用者', '葉英賢', 'A9328489', '2013-06-10'),
(192, '新竹縣橫山鄉內灣老街3D虛擬實境導覽', '項勤校', '系統類', '製作新竹縣橫山鄉內灣老街3D虛擬實境導覽企圖以3D電腦虛擬實境為製作媒材,建構熱門的觀光景點,透過第三人稱的表達,從使用者的觀點進入虛擬空間, 以互動式的方式完整的瀏覽內灣地區,3D電腦動畫可記錄建築形式、空間配置、色彩等特性,利用鏡頭旋轉推進,讓人以視線角度在建築中穿梭體會身在其中的感受,對還未去過內灣的遊客來說, 我們提供了簡易輕鬆地預先導覽方式,當您親自踏上那片土地時,也多了一分熟悉感,以藉此達到宣傳觀光的作用', '施婷毓', 'A9328017', '2013-06-10'),
(193, '互動式電腦維修系統網路之架設', '韓慧林', '系統類', '架設網站讓學校的人能知道學校也有幫忙維修電腦的機制, 又因為大部分的維修過程屬於非透明的流程,消費者僅能等待,無法深入了解電腦出了什麼問題, 導致同樣的問題可能再次發生,導致有電腦壞了就重新購買的觀念, 所以本網站主要著重於與使用者的互動還有維修狀況的即時更新,藉由使用本網站增加使用者對電腦的深入了解, 進一步學習到其他電腦知識', '阮嘉明', 'A9328012', '2013-06-10'),
(194, '赤崁樓虛擬實境導覽', '張良政', '系統類', '隨著科技的日新月異，人性化的發展，參觀古蹟不一定需要走出戶外，長途跋涉；本專題希望藉由網際\n\n網路的普遍性，並結合３Ｄ虛擬實境，讓民眾在家中不但能欣賞古蹟的面貌，並能從中了解古蹟在歷史\n\n中的價值與意義。\n作品以網頁的呈現方式，並結合虛擬實境，呈現赤崁樓的雄偉風貌；在虛擬實境中，使用者可在其中隨\n\n意走動、觀看，對具有歷史背景的文物，可藉由滑鼠點選的方式深入了解其涵義；而在網頁瀏覽的部分\n\n，會另外介紹赤崁樓以及其內部所有的文物與歷史；本次作品是利用網際網路以及我們所學的種種設計\n\n軟體來開發完成的，想藉著現代科技的進步，讓人們學習歷史的方式不再侷限於書本上，並透過虛擬實\n\n境的應用讓大眾能有另類的學習方向。', '林佾廷', 'A9328016', '2013-06-10'),
(195, '旅遊行程演算規劃以高雄市為例', '陳仁祥', '系統類', '現今資訊網路之便利性,使得國人利用網路取得旅遊資訊逐漸增加,自助旅行規劃的旅遊方式亦漸為普及,而相關旅遊網站所提供的旅遊產品一般以既定路線的套裝旅遊產品為主, 缺乏針對自助旅行者之客製化旅遊資訊服務等整合機制', '林晃志', 'A9428311', '2013-06-10'),
(196, '大學生健康諮詢系統雛形之分析-以實踐大學高雄校區為例', '王貴民', '論文類', '網路的普及,電腦的使用已經成為大學生主要的休閒活動,加上長期住宿在外,導致大學生長時間與電腦為伍;加上無父母就近督促,經常性的三餐不正常,普遍的習慣性熬夜與不愛運動等在在顯示出大學生的不規律生活作息;經研究指出, 不正常的作息,為疾病叢生之主因,意味著大學生的健康已亮起紅燈', '李淑鈺', 'A9528341', '2013-06-10'),
(197, '奇幻森林 Fantasy Forest', '王貴民', '模擬類', '秉持著教育的理念,在遊戲中會有魔法書,裡面主要是保育類動物的圖鑑,對該保育動物的生活習性也會有詳細的註解,希望藉此機會灌輸大家保育自然生態環境的重要性', '許哲銘', 'A9228029', '2013-06-10'),
(198, 'QR-code 行動購物網', '羅建銘', '系統類', '現今資訊科技發達的社會裡，隨著智慧型手機的普及化及手機上網服務盛行，手機及其相關應用已成為大部分人們日常生活的一部份，及時的資訊分享與提供，因此也成為一大市場，亦為現在的趨勢。\n　　本研究利用QR code的現有技術與功能，與建置一個服飾購物資訊平台，並將每種商品頁面製作QR code，利用QR code便捷功能及快速掃描等特性與網路連結，讓消費者只需要輕鬆地透過手機拍攝的動作，就能將商品輕鬆購入，並能隨時檢視到所需的商品資訊，增加對商品內涵多一分的信任，也能替賣家省下許多人事成本。\n    系統首頁可以瀏覽到所有商品資訊，包括各項商品的QR code，即可讓消費者拍照存取商品的QR code，使消費者能夠快速瀏覽商品頁面。消費者須先登入或加入會員，才可購買商品。在資料庫建置時，管理者可以修改產品型錄、新增產品型錄、刪除產品型錄、訂單管理、會員管理、查詢銷售，皆須權限認證才可編輯。\n', '張勝淵', 'A9828303', '2013-06-11'),
(199, 'facebook系友社團經營－以實踐大學資管系為例', '葉期財', '論文類', '在這個網際網路蓬勃發展的時代，虛擬世界早已成為了生活中不可或缺的一部份，因應目前科技的進步，人與人之間的交流互動，已經不僅僅侷限於現實生活當中，可透過使用電腦中的各種傳播工具來達成，也因此造就了虛擬社群的這種概念。國內大專院校系所紛紛意識到社群發展的趨勢，近年來開始成立facebook上的系友社團，希望透過facebook的影響力，將畢業校友以及系所進行關係連結。因此本研究旨於探討大專校院facebook系友社團目前經營之概況，從動機面、執行面、評估面，深入瞭解系友社團情形，並構思系友社團如何拓展市場以及長久經發展。 \n本研究以實際架構出一個facebook系友社團為實驗，探討facebook 系友社團如何促進系友與系所關係發展，以及提升系友回饋系上的影響。研究結果發現:一、透過facebook 的網路特性，使得系上訊息能夠比傳統電話或是E-MAIL更有效率傳達給系友，二、透過facebook系友社團能夠讓系友連結到不同屆的學長姐或學弟妹，進而產生不同強度的人際關係連結，有助於系上畢業生就業。目前透過本研究所提供的方法，在2個月內已達到將近270位系友加入本社團。\n', '邱弘穎', 'A9828335', '2013-06-11'),
(200, '逐步第一失敗設限品質績效評估系統', '洪清文', '系統類', '企業常用製程能力指標來評估製程及商品品質績效。製程能力分析之主要目的是衡量整個製程的能力，即評估製程所生產之商品是否能夠符合顧客或設計者所預先要求的規格界限。透過製程能力分析，生產部門可以評估商品各項品質特性的製程水準，並針對製程能力較差的商品進行追蹤與改善。對於商品整體性的品質改善計劃，製程能力分析可提供重要的決策方向，了解目前商品的製程狀況，預防不良品的產生，確保商品的品質在一定水準以上。\n逐步第一失敗設限抽樣設計方案的優點是縮短測試時間與節省資源，同時可解決在商品壽命實驗中，有些商品在壽命實驗未結束之前，可能因為某些因素(如有些商品會對實驗有危險性或不適合實驗的要求，如商品意外損壞)，而要提前結束實驗的問題，以及因商品壽命相當長造成壽命測試是費時而且高成本的問題。\n很多品質績效評估軟體是無法處理非常態且設限的產品壽命資料，因此本研究探討商品壽命在韋柏分配且逐步第一失敗設限抽樣方案的假設之下，發展出評估商品壽命績效的統計檢定程序。此程序稱為逐步第一失敗設限品質績效評估系統，且是即時商業智慧中一個品質績效決策分析工具，能處理非常態且設限的商品壽命資料。且利用C#去設計此績效評估系統。 \n', '陳彥臻', 'A9828385', '2013-06-11'),
(201, '行動旅遊APP-以福壽山農場為例', '項勤校', '系統類', '行動旅遊APP的產生是為了提供許多背包客更輕便的選擇, 相較於以往背包客必需帶著厚重的地圖及蒐集的一些資料出遊, 現在只需帶著一隻智慧型手機就能取代以前的地圖,並且還可以查詢到更多的旅遊資訊', '陳冠廷', 'A9828387', '2013-06-11');

-- --------------------------------------------------------

--
-- 表的結構 `query`
--

CREATE TABLE IF NOT EXISTS `query` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECT_ID` int(11) DEFAULT NULL,
  `USER_ID` int(10) unsigned DEFAULT NULL,
  `NAME` varchar(255) NOT NULL DEFAULT '',
  `PROFILE` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的結構 `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- 轉存資料表中的資料 `teacher`
--

INSERT INTO `teacher` (`id`, `name`) VALUES
(1, '王貴民'),
(2, '張嘉銘'),
(3, '洪清文'),
(4, '陳仁祥'),
(5, '葉期財'),
(6, '項勤校'),
(7, '張良政'),
(8, '韓慧林'),
(9, '羅建銘'),
(10, '梁克新'),
(11, '洪國興');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
