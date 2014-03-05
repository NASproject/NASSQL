-- phpMyAdmin SQL Dump
-- version 3.5.0
-- http://www.phpmyadmin.net
--
-- �D��: localhost
-- ���ͤ��: 2014 �~ 03 �� 05 �� 20:23
-- ���A������: 5.1.67
-- PHP ����: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES big5 */;

--
-- ��Ʈw: `nas`
--

-- --------------------------------------------------------

--
-- �������c `buildresult`
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
-- �������c `commit_log`
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
-- �������c `commit_story_relation`
--

CREATE TABLE IF NOT EXISTS `commit_story_relation` (
  `COMMITID` int(11) DEFAULT NULL,
  `ISSUEID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- �������c `ezkanban_statusorder`
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
-- �������c `ezscrum_story_relation`
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
-- ��s��ƪ�������� `ezscrum_story_relation`
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
-- �������c `ezscrum_tag_relation`
--

CREATE TABLE IF NOT EXISTS `ezscrum_tag_relation` (
  `tag_id` int(10) NOT NULL,
  `story_id` int(10) NOT NULL,
  KEY `tag_id` (`tag_id`),
  KEY `story_id` (`story_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- ��s��ƪ�������� `ezscrum_tag_relation`
--

INSERT INTO `ezscrum_tag_relation` (`tag_id`, `story_id`) VALUES
(5, 46),
(7, 46);

-- --------------------------------------------------------

--
-- �������c `ezscrum_tag_table`
--

CREATE TABLE IF NOT EXISTS `ezscrum_tag_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`project_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- ��s��ƪ�������� `ezscrum_tag_table`
--

INSERT INTO `ezscrum_tag_table` (`id`, `project_id`, `name`) VALUES
(1, 1, 'a0028322'),
(2, 1, 'a0028352'),
(3, 1, 'a0028338'),
(4, 1, 'a0028412'),
(5, 1, '�t�γ]�p'),
(6, 1, '�t�Τ��R'),
(7, 1, '�t������');

-- --------------------------------------------------------

--
-- �������c `eztrack_combofield`
--

CREATE TABLE IF NOT EXISTS `eztrack_combofield` (
  `TypeFieldID` int(10) unsigned NOT NULL,
  `ComboName` varchar(40) NOT NULL DEFAULT '',
  KEY `TypeFieldID` (`TypeFieldID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- �������c `eztrack_issuerelation`
--

CREATE TABLE IF NOT EXISTS `eztrack_issuerelation` (
  `IssueID_src` int(10) unsigned NOT NULL,
  `IssueID_des` int(10) unsigned NOT NULL,
  `Type` int(2) NOT NULL DEFAULT '1' COMMENT 'Relation�����Y'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- �������c `eztrack_issuetype`
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
-- �������c `eztrack_report`
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
-- �������c `eztrack_typefield`
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
-- �������c `eztrack_typefieldvalue`
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
-- �������c `keyword`
--

CREATE TABLE IF NOT EXISTS `keyword` (
  `k_id` int(11) NOT NULL AUTO_INCREMENT,
  `k_value` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `k_project` int(11) NOT NULL,
  PRIMARY KEY (`k_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=492 ;

--
-- ��s��ƪ�������� `keyword`
--

INSERT INTO `keyword` (`k_id`, `k_value`, `k_project`) VALUES
(7, '�t��', 3),
(10, '����', 3),
(11, '���A��', 3),
(12, '����', 3),
(13, 'load balance', 3),
(14, 'cluster', 3),
(15, 'android', 4),
(16, '���z�����', 4),
(17, '��ʸ˸m ', 4),
(19, '���z�����', 6),
(20, '��ʪA����', 6),
(21, 'android', 6),
(26, '�ȹC�A��', 8),
(27, '���ҷP��', 8),
(28, 'CRM', 9),
(29, '�O����T', 9),
(30, '��T�t��', 9),
(31, '�q�l�Ӱ�', 10),
(32, '����P��', 10),
(33, '��X����', 10),
(34, '�h�Ʃ�', 11),
(35, '������s', 11),
(36, '�y��', 2),
(37, '�ѤH���@', 1),
(38, '�i���', 1),
(39, '�ɧ��z��', 5),
(40, '�@�赦��', 5),
(41, '�������R', 5),
(42, '���i�Ҽҫ�', 7),
(43, '�j�Ϯįq', 7),
(44, '�L�H�Ť�����', 7),
(45, '���ɾ�', 7),
(46, '���ҷP��', 8),
(47, '�ȹC', 8),
(48, '�]�g', 12),
(49, '�ѥ�', 12),
(50, '������R', 12),
(51, '������', 13),
(52, '�}�o��s', 13),
(53, '�H����', 13),
(54, '�Ȼs��', 14),
(55, '�U�����Y�޲z', 14),
(56, '�d��', 15),
(57, '��T���x', 15),
(58, 'QR-CODE', 15),
(59, 'PRET', 16),
(60, '�i���', 16),
(61, '��׵���', 16),
(62, '�Ĥ@����', 17),
(63, '�Z�ĵ���', 17),
(64, '���|�ƥ�', 18),
(65, '�g�ٴ���', 18),
(66, '���p���R', 18),
(67, '��ʥ��', 19),
(68, '�w��t��', 19),
(69, '�g��t��k', 20),
(70, '�~�a�ѤH�B�����귽�B�Q�~���ӡB�u�ʳW���B�ҫ�', 21),
(71, '�֤߯�O', 22),
(72, '�n�ʯ�O', 22),
(73, '��T�޲z', 22),
(74, '��T��O', 22),
(75, '�w�m�귽', 23),
(76, '�u�ʳW��', 23),
(77, '�t��k', 23),
(78, '����', 23),
(79, '�ҫ�', 23),
(80, '�X�W���', 24),
(81, '���ҷP��', 24),
(82, '��A��B�U�����Y�޲z�B�U�Ⱥ��N�סB�U�ȩ��۫�', 25),
(91, '�U�����Y�޲z', 30),
(92, '���۫�', 30),
(93, '�U�Ƚ���', 30),
(94, '����^��', 31),
(95, ' ����˸m', 31),
(96, ' ¾�P', 31),
(97, '�ȹC�B��ʮȹCApp�B���z������BAndroid�B���j��', 32),
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
(123, '��T�w���޲z�t�ΡB�벼���v������Ҧ��B���䦨�\�]��', 43),
(124, '�u�W�q��', 44),
(125, ' ��m�M��', 44),
(126, ' ���j��', 44),
(127, '��Ʊ���(Data Mining)', 45),
(128, ' �䴩�V�q��(SVM)', 45),
(129, ' �ɶ��ǦC(Time Series)', 45),
(130, ' �޳N����', 45),
(131, '��P', 46),
(132, '�q���f�r', 47),
(133, '�q�l�I��', 48),
(134, 'E�ƾP��', 49),
(135, 'Asp.net', 50),
(136, 'SQL', 50),
(137, '��Ʊ��q', 51),
(138, '�N�~�����ݨD', 51),
(139, '���ŭp���d', 52),
(140, '�Z�ĿŶq', 52),
(141, '�v���u��', 52),
(142, '�D��Q��´', 52),
(143, '��}', 53),
(144, ' �a�z��T�t��', 53),
(145, ' �U���ʶR�O', 53),
(146, 'SCM', 54),
(147, '�������', 55),
(148, '��|����', 55),
(149, '3D�ҫ�', 55),
(150, 'Virtools', 55),
(151, '�ȹC', 56),
(152, '�ȹC���n', 56),
(153, '�w�]��{', 56),
(154, '�ۧU�Ȧ�', 56),
(155, '�d�����t��', 57),
(156, '�d�����t��', 58),
(157, '�u�W', 59),
(158, '�ȪA�t��', 59),
(159, '�q�ܫȪA', 59),
(160, '�ݨ��լd', 59),
(161, '�u�W�|���޲z', 60),
(162, '�d���O�t��', 60),
(163, '�q���ʵe', 61),
(164, '��������', 62),
(165, '�j�M����', 62),
(166, '�����g����', 62),
(167, 'Web Mining', 62),
(168, 'Search Engine', 62),
(169, 'Neural Network', 62),
(170, '���ʦ��������', 63),
(171, '��������', 64),
(172, '�j�M����', 64),
(173, '�����g����', 64),
(174, 'Web Mining', 64),
(175, 'Search Engine', 64),
(176, 'Neural Network', 64),
(177, '��������', 65),
(178, '�j�M����', 65),
(179, '�����g����', 65),
(180, 'JAVA�BVB', 66),
(181, '3D', 67),
(182, '�Q���O�V', 67),
(183, '3D�ʵe', 68),
(184, '3D�ʵe', 69),
(185, '�H�O����', 70),
(186, '��ިt�ǥ�', 70),
(187, '������ҡB3D�ҫ��ʵe', 71),
(188, '�Ʀ�h�C��', 72),
(189, '�A�ˮi�t', 72),
(190, '�i��', 72),
(191, '�J�ٺ���', 73),
(192, '�����t�A���ں���(Internet)�A�q�l�Ӱ�', 74),
(193, '��Ʈw', 75),
(194, '�h�C��', 75),
(195, 'ERP���~�귽�A�y', 76),
(196, '�u�W�q���B��m�M���B���j��', 77),
(197, '�q�l���]', 78),
(198, '�h�C��q�����U�о�', 79),
(199, '��|�о�', 79),
(200, 'Flash�ʵe', 79),
(201, '�����D��', 80),
(202, '����y��', 80),
(203, '����3DSMax�H��', 80),
(204, 'Dijkstra�B�ҫ��B�ؼҡB�ָ̧��|�B�l�a�B�x�}', 81),
(205, '�h�C��', 82),
(206, '���U�о�', 82),
(207, '�ȹC', 83),
(208, ' �ȹC���n', 83),
(209, ' �w�]��{', 83),
(210, ' �ۧU�Ȧ�', 83),
(211, 'Flash', 84),
(212, '�Y�ɰT���ݨD���t��', 85),
(213, '�����ʱ�', 86),
(214, '���~�귽�޲z', 87),
(215, '�����ѩ�', 88),
(216, '��Ʊ���', 89),
(217, ' �����g����', 89),
(218, ' �I�ڤ覡', 89),
(219, '�L�u����', 90),
(220, ' �ʥ]', 90),
(221, '�d���˩w', 91),
(222, '��}', 91),
(223, 'DIRECTX', 92),
(224, 'RPG����', 92),
(225, '��m', 93),
(226, '�����t�m', 93),
(227, '�����Ʀ�', 94),
(228, '�ǲΧ���', 94),
(229, '���U��', 94),
(230, '�A�ȫ~��Ŷq', 95),
(231, 'MinnSketch', 96),
(232, 'UNIX�t��', 96),
(233, '�n�饭�x����', 96),
(234, '�E���ϳ]�m', 97),
(235, '�X�s��|', 97),
(236, '���d�޲z����', 98),
(237, '�u�W�q�\�t��', 99),
(238, '��N�������ҫ�', 100),
(239, '���ʦ��ʪ�����', 101),
(240, '�u�W�Ыκ�', 102),
(241, '�l��޲z�t��', 103),
(242, '�դͰݨ��լd�t��', 104),
(243, '�ն��}', 105),
(244, '�H�y����', 106),
(245, '3D����v��', 106),
(246, '��������', 107),
(247, '���Ѻ޲z�t��', 108),
(248, '���J�g�給��', 109),
(249, '�j�Ǹ귽�W��', 110),
(250, '�դ�', 110),
(251, '���ǦX�@', 110),
(252, '�Ʀ�ǲ�', 111),
(253, '�u�W�C��', 111),
(254, '�Ʀ�C��', 111),
(255, 'Flash', 111),
(256, 'Three-Tier', 111),
(257, 'PHP', 111),
(258, '�ʺA����', 111),
(259, '�s�ͰV�m', 111),
(260, 'Database ', 111),
(261, '�a�z��T�˯�', 112),
(262, '��r����', 112),
(263, '��������', 112),
(264, '�q��t��', 113),
(265, '?��ǲ�', 114),
(266, '�C��', 114),
(267, '�������', 114),
(268, '�h�H?�u', 114),
(269, '��ިt�ҵ{', 115),
(270, '���~�u�@', 115),
(271, '��T�޳N', 115),
(272, '�����ʤ��R', 115),
(273, '��������', 116),
(274, '�ѥ�', 116),
(275, '3D Animation', 117),
(276, '��a�_�J', 117),
(277, '���ʦ���ʾǲ߳n��', 118),
(278, '�ʶR�N�@', 119),
(279, '�U�Ⱥ��N��', 119),
(280, '���]�˩w', 119),
(281, '��P����', 119),
(282, '���r', 120),
(283, '���業�x', 121),
(284, '��������', 122),
(285, '�Ѳ����', 122),
(286, '�V�y�P�̱��z�o�������R', 123),
(287, '�s�{��O���R', 124),
(288, '�Y�ɰӷ~���z', 124),
(289, '�~���Z�ĨM���t��', 124),
(290, '���������о�����', 125),
(291, '�o�i����', 126),
(292, '�u�U��-�����y�{-�ǲ߻P����-�]�ȡv���R', 126),
(293, '�벼���v������k', 126),
(294, '�k��θ�T��', 127),
(295, '�s�{��O���R', 128),
(296, '�]�����', 128),
(297, '�Y�ɰӷ~���z', 128),
(298, '�~���Z�ĵ����t��', 128),
(299, '�D�`�A���t', 128),
(300, '���a����', 129),
(301, '�t�Һ����ظm�[�c', 130),
(302, '�\���޲z�t��', 131),
(303, '�L�u�g�W�ѧO RFID', 131),
(304, '��ʳ�����', 132),
(305, '���ο��t��', 133),
(306, '�����޳N', 134),
(307, '��X���A��', 134),
(308, '�^�m', 134),
(309, '�d��', 135),
(310, '�����', 135),
(311, '��T�w���q���t��', 136),
(312, '��T�w��', 137),
(313, '�M�׺޲z', 137),
(314, '�դ�', 138),
(315, 'Facebook���s', 138),
(316, '��ʥ��x', 138),
(317, '�X�a�dù�����k', 139),
(318, '���W�j��', 139),
(319, '�����v', 139),
(320, '���ɶ�', 139),
(321, '�ҫ�', 139),
(322, '���v���t', 139),
(323, '�ɧ��z��', 140),
(324, '�ϼ�@��', 140),
(325, '���U����', 141),
(326, '�����}', 141),
(327, '���q��', 141),
(328, '3DSMAX', 141),
(329, '����', 141),
(330, '�T�Q�����\', 141),
(331, '����^��', 142),
(332, '��Ʊ���', 142),
(333, 'HTTP', 142),
(334, 'HTML', 142),
(335, 'Javascript', 142),
(336, 'CSS ', 142),
(337, 'RFID', 143),
(338, '���x�t��', 143),
(339, '�۰ʬy�{', 143),
(340, '���~�Ͳ��i��', 144),
(341, 'RFID', 144),
(342, '���P�i���l���X', 144),
(343, '���ļҦ��P�������R', 145),
(344, 'ISO27001', 145),
(345, '��T�w���޲z�t��', 145),
(346, '�~�����i�}�k', 146),
(347, 'House of Quality', 146),
(348, '���i����', 147),
(349, '�䭷�C�a�����v', 147),
(350, '�M�����I', 148),
(351, '�ĥΨ��', 148),
(352, '�įq���R', 148),
(353, '������', 149),
(354, '�ӿ�', 149),
(355, '�h�C��оǺ���', 150),
(356, 'CCNA', 150),
(357, '�M�׺޲z�t��', 151),
(358, '���~�M�D', 151),
(359, '��X�޲z   ', 151),
(360, '���~�M�D', 152),
(361, '�M�׺޲z', 152),
(362, '�ɶ��޲z', 152),
(363, '�ǥͱM�D', 152),
(364, '��ޱ����Ҧ�', 153),
(365, '�ܲ��Ƥ��R', 153),
(366, '�j�k���R', 153),
(367, '�����w��', 154),
(368, 'FireFox�X�R�M��', 154),
(369, '�M�׺޲z�t��', 155),
(370, '�H�O�귽�޲z', 155),
(371, '���q�޲z', 155),
(372, '�ǥͲ��~�M�D', 155),
(373, '��T�޲z��s', 156),
(374, '��Ʊ���', 156),
(375, '�Ͷդ��R', 156),
(376, '���ں���', 157),
(377, 'ASP.NET', 157),
(378, 'C#', 157),
(379, '�T���O�i�t', 158),
(380, '�O�i����', 158),
(381, '�T��', 158),
(382, '�O�i', 158),
(383, '���N��', 158),
(384, 'Google Map', 159),
(385, '�q�l�a��', 159),
(386, '����', 159),
(387, '���', 159),
(388, 'WEB2.0', 159),
(389, 'ASP.NET 2.0', 159),
(390, 'AJAX', 159),
(391, '�h�C��', 160),
(392, '���y�о�', 160),
(393, '�j�M����(Search Engines)', 161),
(394, '�j�M�M��(Search List)', 161),
(395, '�����Ƨ�(Page Rank)', 161),
(396, '�U������(Web   Spam)', 161),
(397, 'E�ƺ�', 162),
(398, 'Office PowerPoint', 163),
(399, '�۰�²���t��', 163),
(400, '�Ыǹw�ɨt��', 164),
(401, '�ն�e��', 165),
(402, '3D�ʵe', 166),
(403, '�ƦZ', 166),
(404, '��m�M���q���t��', 167),
(405, '�L�u�g�W�޳N�B�ϮѺ޲z', 168),
(406, '�ʵe�s�@', 169),
(407, 'Web Online game', 170),
(408, '�h�H����', 170),
(409, 'JSP+ JS���X', 170),
(410, 'RFID', 171),
(411, '�ն�w���޲z', 171),
(412, '���X��', 171),
(413, '�q�����i', 172),
(414, '�����о�', 172),
(415, '�����Ƕ�', 172),
(416, '����ʪ���', 173),
(417, '�������', 174),
(418, '�������[', 174),
(419, '���ʩ�', 174),
(420, '�۸]', 174),
(421, '����', 175),
(422, '�u�W�����i�ܺ���', 176),
(423, '�������', 177),
(424, '�Ѿl�g�ۤ�귽�޲z�t��', 178),
(425, '��Ʊ���', 179),
(426, '�c�N�{��', 179),
(427, '�f�r����', 179),
(428, '�������', 179),
(429, '�M����', 179),
(430, 'Information Gain', 179),
(431, 'PE Table', 179),
(432, 'BCG�x�}', 180),
(433, '3C���~', 180),
(434, '���~�����զX', 180),
(435, '��ƥ]���k', 180),
(436, '�q�l�ө�', 181),
(437, '�����ө�', 181),
(438, '�ǲ��Z�ĵ���', 182),
(439, '�i�@����', 183),
(440, '�����W��', 184),
(441, '�u�u�աB�H�աB���|�Ϋ¯١v���R', 184),
(442, '�벼���v������k', 184),
(443, '���Һ޲z�t��', 184),
(444, '��', 185),
(445, '�z�w�x�Q�v����', 185),
(446, '�U�ڧQ�v', 185),
(447, '���ƫ�', 185),
(448, '�T�w�]��', 185),
(449, '�n�O�W', 186),
(450, '����', 186),
(451, '�G���', 187),
(452, ' �q�l�Ӱ�', 187),
(453, ' �q�l�ѩ�', 187),
(454, '�V�y�P�̱��z�o', 188),
(455, '�H������', 189),
(456, ' �q�l�Ӱ�', 189),
(457, '�����', 190),
(458, '�X�s����', 190),
(459, '3D�ҫ�', 190),
(460, 'Virtools', 190),
(461, '�������R�^��', 191),
(462, '�������', 192),
(463, '���W�ѵ����', 192),
(464, '3D�ҫ�', 192),
(465, '���ʦ��q������', 193),
(466, '�������', 194),
(467, '3D�ҫ�', 194),
(468, '���r�ӵ������', 194),
(469, '�C��{�W��', 195),
(470, '����', 195),
(471, '�g��', 196),
(472, '�ίv', 196),
(473, '�ݨ�', 196),
(474, '�C��', 197),
(475, '�۵M���ҥͺA�O�|', 197),
(476, 'QR code', 198),
(477, '�������', 198),
(478, '�ֳt�s���ӫ~����', 198),
(479, 'facebook', 199),
(480, '�t��', 199),
(481, '���j��', 199),
(482, '��ިt', 199),
(483, '�~��޲z', 200),
(484, '�s�{��O���R', 200),
(485, '�~���Z�ĵ����t��', 200),
(486, '���B���t', 200),
(487, '�v�B�Ĥ@���ѳ]����ˤ��', 200),
(488, '�ӷ~���z', 200),
(489, '��ʮȹCAPP', 201),
(490, '��ʰӰ�', 201),
(491, '�ֹؤs�A��', 201);

-- --------------------------------------------------------

--
-- �������c `mantis_bugnote_table`
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
-- ��s��ƪ�������� `mantis_bugnote_table`
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
-- �������c `mantis_bugnote_text_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bugnote_text_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `note` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- ��s��ƪ�������� `mantis_bugnote_text_table`
--

INSERT INTO `mantis_bugnote_text_table` (`id`, `note`) VALUES
(1, '<JCIS id="20131119194038">\r\n  <Importance>100</Importance>\r\n  <Estimation>3</Estimation>\r\n  <Value>90</Value>\r\n  <HowToDemo>�i�H��ܾǥͩm�W�B���ɦѮv�B�M�D�W��</HowToDemo>\r\n  <Notes>�ݥ��T�a�N�q��Ʈw���ޤJ���</Notes>\r\n</JCIS>\r\n<JCIS id="20131120080820">\r\n  <Release>1</Release>\r\n</JCIS>\r\n<JCIS id="20131120093349">\r\n  <Release>0</Release>\r\n  <Iteration>0</Iteration>\r\n</JCIS>'),
(2, '<JCIS id="20131119194251">\r\n  <Importance>100</Importance>\r\n  <Estimation>3</Estimation>\r\n  <Value>90</Value>\r\n  <HowToDemo>�j�M���G�qDatabase�������ơA�b��ʸ˸m���ɨ�dropbox��google����</HowToDemo>\r\n  <Notes>�j�M���G�ݥ��T���qDatabase��������</Notes>\r\n</JCIS>\r\n<JCIS id="20131119200200">\r\n  <HowToDemo>�j�M���G�qDatabase�������Ʀb��ʸ˸m���ɨ�dropbox��google����</HowToDemo>\r\n</JCIS>\r\n<JCIS id="20131119201036">\r\n  <Estimation>4</Estimation>\r\n  <Value>93</Value>\r\n</JCIS>\r\n<JCIS id="20131120080820">\r\n  <Release>1</Release>\r\n</JCIS>\r\n<JCIS id="20131120093349">\r\n  <Release>0</Release>\r\n  <Iteration>0</Iteration>\r\n</JCIS>'),
(3, '<JCIS id="20131119194626">\r\n  <Importance>100</Importance>\r\n  <Estimation>3</Estimation>\r\n  <Value>90</Value>\r\n  <HowToDemo>�t�κ޲z���i�J�M�D�j�M�t�Ϋ�A�|���U�Ԧ���椤���u�ǥͩm�W�v�B�u���ɦѮv�v�B�u�M�D�W�١v�A���U���ɮסA�b��ʸ˸m�����ɨ�dropbox �άO google ����</HowToDemo>\r\n  <Notes>�j�M���G�ݥ��T���qDatabase������U�ԬO��檺���</Notes>\r\n</JCIS>\r\n<JCIS id="20131119200230">\r\n  <HowToDemo>�t�κ޲z���i�J�M�D�j�M�t�Ϋ�A�|���U�Ԧ���椤���u�ǥͩm�W�v�B�u���ɦѮv�v�B�u�M�D�W�١v�A���U���ɮסA�b��ʸ˸m�����ɨ�dropbox �άOgoogle ����</HowToDemo>\r\n  <Notes>�j�M���G�ݥ��T���qDatabase������U�Ԧ���檺���</Notes>\r\n</JCIS>\r\n<JCIS id="20131119201047">\r\n  <Estimation>5</Estimation>\r\n  <Value>95</Value>\r\n</JCIS>\r\n<JCIS id="20131120080820">\r\n  <Release>1</Release>\r\n</JCIS>\r\n<JCIS id="20131120093349">\r\n  <Release>0</Release>\r\n  <Iteration>0</Iteration>\r\n</JCIS>'),
(4, '<JCIS id="20131119195652">\r\n  <Importance>100</Importance>\r\n  <Estimation>3</Estimation>\r\n  <Value>90</Value>\r\n  <HowToDemo>���U�M�D��J�u�M�D�W�١v�B�u���ɱб¡v�B�u�M�D�����v�B�u����r�v�B�u�M�D�y�z�v�B�u�ժ��βխ��m�W�M�Ǹ��v</HowToDemo>\r\n  <Notes>�ݥ��T�a�N��J����Ʃ�m��Ʈw��</Notes>\r\n</JCIS>\r\n<JCIS id="20131119201100">\r\n  <Value>95</Value>\r\n</JCIS>\r\n<JCIS id="20131120080820">\r\n  <Release>1</Release>\r\n</JCIS>\r\n<JCIS id="20131120093349">\r\n  <Release>0</Release>\r\n  <Iteration>0</Iteration>\r\n</JCIS>'),
(5, '<JCIS id="20131119195743">\r\n  <Importance>100</Importance>\r\n  <Estimation>3</Estimation>\r\n  <Value>90</Value>\r\n  <HowToDemo>���qDatabase������u���ɱб¡v�����\r\n�W���ɮצs��NAS system�̭�\r\n���P�_�b���K�X�~��i�J�M�D���U����</HowToDemo>\r\n  <Notes>�ݥ��T�a�N��J����Ʃ�m��Ʈw��</Notes>\r\n</JCIS>\r\n<JCIS id="20131119201110">\r\n  <Estimation>2</Estimation>\r\n  <Value>92</Value>\r\n</JCIS>\r\n<JCIS id="20131120080820">\r\n  <Release>1</Release>\r\n</JCIS>\r\n<JCIS id="20131120093349">\r\n  <Release>0</Release>\r\n  <Iteration>0</Iteration>\r\n</JCIS>'),
(6, '<JCIS id="20131119195834">\r\n  <Importance>100</Importance>\r\n  <Estimation>3</Estimation>\r\n  <Value>90</Value>\r\n  <HowToDemo>�ǥͶi�J�M�D���U�t�Ϋ�A�ݶ�g�u�M�D�W�١v�B�u���ɱб¡v�B�u�M�D�����v�B�u����r�v�B�u�M�D�y�z�v�B�u�ժ��βխ��m�W�M�Ǹ��v�A�䤤�u���ɱб¡v���U�Ԧ����</HowToDemo>\r\n  <Notes>�ݥ��T�a�N��J����Ʃ�m��Ʈw��</Notes>\r\n</JCIS>\r\n<JCIS id="20131120080820">\r\n  <Release>1</Release>\r\n</JCIS>\r\n<JCIS id="20131120093349">\r\n  <Release>0</Release>\r\n  <Iteration>0</Iteration>\r\n</JCIS>'),
(7, '<JCIS id="20131119195918">\r\n  <Importance>100</Importance>\r\n  <Estimation>3</Estimation>\r\n  <Value>90</Value>\r\n  <HowToDemo>�ק�M�D��J�u�M�D�W�١v�B�u���ɱб¡v�B�u�M�D�����v�B�u����r�v�B�u�M�D�y�z�v�B�u�ժ��βխ��m�W�M�Ǹ��v�A�ק�M�D��J����Ƴ��s�JDatabase</HowToDemo>\r\n  <Notes />\r\n</JCIS>\r\n<JCIS id="20131119200948">\r\n  <Estimation>2</Estimation>\r\n  <Value>85</Value>\r\n</JCIS>\r\n<JCIS id="20131120080820">\r\n  <Release>1</Release>\r\n</JCIS>\r\n<JCIS id="20131120093349">\r\n  <Release>0</Release>\r\n  <Iteration>0</Iteration>\r\n</JCIS>'),
(8, '<JCIS id="20131119200013">\r\n  <Importance>100</Importance>\r\n  <Estimation>3</Estimation>\r\n  <Value>90</Value>\r\n  <HowToDemo>�ݱqDatabase������u�M�D�W�١v�B�u���ɱб¡v�B�u�M�D�����v�B�u����r�v�B�u�M�D�y�z�v�B�u�ժ��βխ��m�W�M�Ǹ��v�A�qNAS system���������ɮ�</HowToDemo>\r\n  <Notes>�ݥ��T�a�N���X��Ʈw�������</Notes>\r\n</JCIS>\r\n<JCIS id="20131119200959">\r\n  <Estimation>4</Estimation>\r\n  <Value>88</Value>\r\n</JCIS>\r\n<JCIS id="20131120080820">\r\n  <Release>1</Release>\r\n</JCIS>\r\n<JCIS id="20131120093349">\r\n  <Release>0</Release>\r\n  <Iteration>0</Iteration>\r\n</JCIS>'),
(9, '<JCIS id="20131119200044">\r\n  <Importance>100</Importance>\r\n  <Estimation>3</Estimation>\r\n  <Value>90</Value>\r\n  <HowToDemo>�ǥͶi�J�M�D�ק�t�Ϋ�A�N��ܭ����g�u�M�D�W�١v�B�u���ɱб¡v�B�u�M�D�����v�B�u����r�v�B�u�M�D�y�z�v�B�u�ժ��βխ��m�W�M�Ǹ��v�A�䤤�u���ɱб¡v���U�Ԧ����A�i�H�ק�̭�����ƩM�W�Ǫ��ɮ�</HowToDemo>\r\n  <Notes>�ݥ��T�a�N��J����Ʃ�m��Ʈw��</Notes>\r\n</JCIS>\r\n<JCIS id="20131119201012">\r\n  <Estimation>5</Estimation>\r\n</JCIS>\r\n<JCIS id="20131120080820">\r\n  <Release>1</Release>\r\n</JCIS>\r\n<JCIS id="20131120093349">\r\n  <Release>0</Release>\r\n  <Iteration>0</Iteration>\r\n</JCIS>'),
(10, '<JCIS id="20131126194943">\r\n  <HowToDemo />\r\n  <Notes />\r\n</JCIS>'),
(11, '<JCIS id="20131126200416">\r\n  <HowToDemo />\r\n  <Notes />\r\n</JCIS>\r\n<JCIS id="20131126200416">\r\n  <Iteration>1</Iteration>\r\n</JCIS>\r\n<JCIS id="20131126201052">\r\n  <Importance>0</Importance>\r\n  <Estimation>0</Estimation>\r\n  <Value>0</Value>\r\n</JCIS>\r\n<JCIS id="20131126213558">\r\n  <Estimation>31</Estimation>\r\n</JCIS>\r\n<JCIS id="20131203192641">\r\n  <Iteration>2</Iteration>\r\n</JCIS>\r\n<JCIS id="20131203192641">\r\n  <Release>0</Release>\r\n</JCIS>\r\n<JCIS id="20131203203204">\r\n  <Iteration>1</Iteration>\r\n</JCIS>\r\n<JCIS id="20131203221118">\r\n  <Notes>�j�M����r�s����Ʈw��ܧ�����Ʈw�����e</Notes>\r\n</JCIS>\r\n<JCIS id="20131203221644">\r\n  <Notes>�j�M����r��s����Ʈw�åB��ܸ�Ʈw���e�A�]�t���Ҷ��M���v�O���A�i�I���ɮפU���A��ܸ�Ʈw���e</Notes>\r\n</JCIS>\r\n<JCIS id="20131203222257">\r\n  <HowToDemo>�j�M����r�ɥi���\��ܼ��Ҷ��ξ��v�O���A�s����Ʈw��i���T��ܸ�Ʈw���e</HowToDemo>\r\n</JCIS>'),
(12, '<JCIS id="20131126202058">\r\n  <Estimation>5</Estimation>\r\n</JCIS>\r\n<JCIS id="20131126212657">\r\n  <Estimation>6</Estimation>\r\n</JCIS>\r\n<JCIS id="20131203214658">\r\n  <Partners>hahayuju;love5622004</Partners>\r\n</JCIS>\r\n<JCIS id="20131203215047">\r\n  <Notes>�ݭn�s����Ʈw�BŪ���䤺�e</Notes>\r\n</JCIS>'),
(13, '<JCIS id="20131126203213">\r\n  <HowToDemo />\r\n  <Notes />\r\n</JCIS>\r\n<JCIS id="20131126203213">\r\n  <Iteration>1</Iteration>\r\n</JCIS>\r\n<JCIS id="20131126203328">\r\n  <Importance>0</Importance>\r\n  <Estimation>0</Estimation>\r\n  <Value>0</Value>\r\n</JCIS>\r\n<JCIS id="20131126213626">\r\n  <Estimation>10</Estimation>\r\n</JCIS>\r\n<JCIS id="20131203193019">\r\n  <Iteration>3</Iteration>\r\n</JCIS>\r\n<JCIS id="20131203193019">\r\n  <Release>0</Release>\r\n</JCIS>\r\n<JCIS id="20131203211113">\r\n  <Iteration>2</Iteration>\r\n</JCIS>\r\n<JCIS id="20131203222556">\r\n  <HowToDemo>��Ʈw���O�_�s�����T�����</HowToDemo>\r\n  <Notes>��J��ưe�X��i���T�s���b��Ʈw��</Notes>\r\n</JCIS>'),
(14, '<JCIS id="20131126203925">\r\n  <Estimation>1</Estimation>\r\n</JCIS>\r\n<JCIS id="20131126204009">\r\n  <Estimation>0</Estimation>\r\n</JCIS>\r\n<JCIS id="20131126213112">\r\n  <Estimation>8</Estimation>\r\n</JCIS>\r\n<JCIS id="20131126224646">\r\n  <ActualHour>6</ActualHour>\r\n</JCIS>\r\n<JCIS id="20131126224655">\r\n  <ActualHour>0</ActualHour>\r\n</JCIS>'),
(15, '<JCIS id="20131126205529">\r\n  <HowToDemo />\r\n  <Notes />\r\n</JCIS>\r\n<JCIS id="20131126205529">\r\n  <Iteration>1</Iteration>\r\n</JCIS>\r\n<JCIS id="20131126213647">\r\n  <Importance>0</Importance>\r\n  <Estimation>10</Estimation>\r\n  <Value>0</Value>\r\n</JCIS>\r\n<JCIS id="20131203203054">\r\n  <Iteration>3</Iteration>\r\n</JCIS>\r\n<JCIS id="20131203203054">\r\n  <Release>0</Release>\r\n</JCIS>\r\n<JCIS id="20131203223209">\r\n  <HowToDemo>���T��������Ʈw���e�A�åi���T����s�W�β����ɮ�</HowToDemo>\r\n  <Notes>�s����Ʈw���e��ơA��ܧ����Ʈw�����e�A�åi�s�W�β����ɮ�</Notes>\r\n</JCIS>'),
(16, '<JCIS id="20131126205638">\r\n  <HowToDemo />\r\n  <Notes />\r\n</JCIS>\r\n<JCIS id="20131126205638">\r\n  <Iteration>1</Iteration>\r\n</JCIS>\r\n<JCIS id="20131126213727">\r\n  <Importance>0</Importance>\r\n  <Estimation>36</Estimation>\r\n  <Value>0</Value>\r\n</JCIS>\r\n<JCIS id="20131203214147">\r\n  <Iteration>4</Iteration>\r\n</JCIS>\r\n<JCIS id="20131203214147">\r\n  <Release>0</Release>\r\n</JCIS>\r\n<JCIS id="20131203223332">\r\n  <Notes>�j�M����r��s����Ʈw�åB��ܸ�Ʈw���e�A�]�t���Ҷ��M���v�O���A��ܸ�Ʈw���e</Notes>\r\n</JCIS>\r\n<JCIS id="20131203223344">\r\n  <HowToDemo>�j�M����r�ɥi���\��ܼ��Ҷ��ξ��v�O���A�s����Ʈw��i���T��ܸ�Ʈw���e</HowToDemo>\r\n</JCIS>'),
(17, '<JCIS id="20131126205846">\r\n  <HowToDemo />\r\n  <Notes />\r\n</JCIS>\r\n<JCIS id="20131126205846">\r\n  <Iteration>1</Iteration>\r\n</JCIS>\r\n<JCIS id="20131126213741">\r\n  <Importance>0</Importance>\r\n  <Estimation>7</Estimation>\r\n  <Value>0</Value>\r\n</JCIS>\r\n<JCIS id="20131203214158">\r\n  <Iteration>5</Iteration>\r\n</JCIS>\r\n<JCIS id="20131203214158">\r\n  <Release>0</Release>\r\n</JCIS>\r\n<JCIS id="20131203223401">\r\n  <Notes>��J��ưe�X��i���T�s���b��Ʈw��</Notes>\r\n</JCIS>\r\n<JCIS id="20131203223416">\r\n  <HowToDemo>��Ʈw���O�_�s�����T�����</HowToDemo>\r\n</JCIS>'),
(18, '<JCIS id="20131126205932">\r\n  <HowToDemo />\r\n  <Notes />\r\n</JCIS>\r\n<JCIS id="20131126205932">\r\n  <Iteration>1</Iteration>\r\n</JCIS>\r\n<JCIS id="20131126213745">\r\n  <Importance>0</Importance>\r\n  <Estimation>7</Estimation>\r\n  <Value>0</Value>\r\n</JCIS>\r\n<JCIS id="20131203214207">\r\n  <Iteration>6</Iteration>\r\n</JCIS>\r\n<JCIS id="20131203214207">\r\n  <Release>0</Release>\r\n</JCIS>\r\n<JCIS id="20131203223928">\r\n  <Notes>�i�H���T�s����Ʈw���e��ơA�åB�i�H�s�W�άO�R�������Ʈw�����e</Notes>\r\n</JCIS>\r\n<JCIS id="20131203223944">\r\n  <HowToDemo>���T��������Ʈw���e�A</HowToDemo>\r\n</JCIS>\r\n<JCIS id="20131203224155">\r\n  <HowToDemo>���T��������Ʈw���e�A�åi����s�W�ΧR������x�s�ܸ�Ʈw</HowToDemo>\r\n</JCIS>'),
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
(40, '<JCIS id="20131210220023">\r\n  <Importance>95</Importance>\r\n  <Estimation>10</Estimation>\r\n  <HowToDemo />\r\n  <Notes />\r\n</JCIS>\r\n<JCIS id="20131210220023">\r\n  <Iteration>1</Iteration>\r\n</JCIS>\r\n<JCIS id="20131210220539">\r\n  <Estimation>30</Estimation>\r\n  <Value>0</Value>\r\n  <HowToDemo>1.������j�M���O�ɡA�ݭn������A�ҿ諸���O\r\n2.�b�s����Ʈw�ɡA�ݥ��T��ܸ�Ʈw�����e\r\n3.���I��ҿ諸�M�D�A�ݥ��T�a�N�ɮפU���U�ӡC</HowToDemo>\r\n  <Notes>1.����Q�j�M�����O�A����r�B�M�D�W�٩άO���ɦѮv�C\r\n2.���U�j�M��A�Y�q��Ʈw��Ū����ơA��ܩ�������C\r\n3.�I��ҿ諸�M�D�A�Y�i�U���ɮסC</Notes>\r\n</JCIS>'),
(41, '<JCIS id="20131210222612">\r\n  <Importance>90</Importance>\r\n  <Estimation>30</Estimation>\r\n  <HowToDemo>1.�I��M�D���U�A�ݥ��T������Ӥ��e\r\n2.�n�P�_���椺�e�O�_�w�g��g�����A�p�G�S���h�L�k�e�X�A����ܩ|����g�C\r\n3.�e�X�����e�A�ݥ��T���s�J��Ʈw���C</HowToDemo>\r\n  <Notes>1.�I��M�D���U�A��ܨ䤺�e�C\r\n2.���N�M�D���U�������e��g����A�~�i�e�X�C\r\n3.�e�X���e����N���e�s�m��Ʈw��</Notes>\r\n</JCIS>\r\n<JCIS id="20131210222612">\r\n  <Iteration>1</Iteration>\r\n</JCIS>'),
(42, '<JCIS id="20131210225057">\r\n  <Importance>92</Importance>\r\n  <Estimation>30</Estimation>\r\n  <HowToDemo />\r\n  <Notes>2.\r\n3.</Notes>\r\n</JCIS>\r\n<JCIS id="20131210225057">\r\n  <Iteration>1</Iteration>\r\n</JCIS>\r\n<JCIS id="20131210230613">\r\n  <Value>0</Value>\r\n  <HowToDemo>1.�b����W���T������apk �ɮסC\r\n2.���i��j�M�M�D���\��ɡA�ݥ��T����ܨ�j�M���e�C\r\n3.���U�b�j�M�ɮ׮ɡA�ݥ��T���U�����ɮסC</HowToDemo>\r\n  <Notes>1.����apk ���ɮסC\r\n2.�i��j�M���\��C\r\n3.�äU���j�M�M�D���ɮסC</Notes>\r\n</JCIS>');

-- --------------------------------------------------------

--
-- �������c `mantis_bug_file_table`
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
-- �������c `mantis_bug_history_table`
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
-- ��s��ƪ�������� `mantis_bug_history_table`
--

INSERT INTO `mantis_bug_history_table` (`id`, `user_id`, `bug_id`, `date_modified`, `field_name`, `old_value`, `new_value`, `type`) VALUES
(1, 2, 1, '2013-11-19 19:40:38', 'null', '0', '0', 1),
(2, 2, 1, '2013-11-19 19:41:00', 'summary', 'Story1', '�j�M�M�D', 0),
(3, 2, 2, '2013-11-19 19:42:51', 'null', '0', '0', 1),
(4, 2, 1, '2013-11-19 19:43:32', 'summary', '�j�M�M�D', '�j�M�M�D(���������ݨD)', 0),
(5, 2, 2, '2013-11-19 19:43:47', 'summary', '�j�M�M�D', '�j�M�M�D(�~�������ݨD)', 0),
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
(19, 3, 11, '2013-11-26 20:10:52', 'summary', ' �M�D�j�M�l�t��', '�q��-�M�D�j�M�l�t��', 0),
(20, 3, 12, '2013-11-26 20:18:49', 'summary', '�q��-����r', '����r', 0),
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
(41, 3, 14, '2013-11-26 20:32:51', 'summary', '����r', '���Ҷ�', 0),
(42, 3, 15, '2013-11-26 20:33:28', 'summary', '�M�D���U�l�t��', '�q��-�M�D���U�l�t��', 0),
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
(152, 3, 17, '2013-11-26 21:25:52', 'summary', '��Ʈw�إ�', '��Ʈw', 0),
(153, 3, 31, '2013-11-26 21:28:26', 'summary', '��Ʈw�إ�', '��Ʈw', 0),
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
-- �������c `mantis_bug_monitor_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bug_monitor_table` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- �������c `mantis_bug_relationship_table`
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
-- ��s��ƪ�������� `mantis_bug_relationship_table`
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
-- �������c `mantis_bug_table`
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
-- ��s��ƪ�������� `mantis_bug_table`
--

INSERT INTO `mantis_bug_table` (`id`, `project_id`, `reporter_id`, `handler_id`, `duplicate_id`, `priority`, `severity`, `reproducibility`, `status`, `resolution`, `projection`, `category`, `date_submitted`, `last_updated`, `eta`, `bug_text_id`, `os`, `os_build`, `platform`, `version`, `fixed_in_version`, `build`, `profile_id`, `view_state`, `summary`, `sponsorship_total`, `sticky`, `target_version`) VALUES
(19, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:37:06', '2013-11-26 20:37:06', 10, 19, '', '', '', '', '', '', 0, 10, '�M�D���U����', 0, 0, ''),
(15, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Story', '2013-11-26 20:32:13', '2013-11-26 20:32:13', 10, 15, '', '', '', '', '', '', 0, 10, '�q��-�M�D���U�l�t��', 0, 0, ''),
(16, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:34:08', '2013-11-26 20:34:08', 10, 16, '', '', '', '', '', '', 0, 10, '�ɮפU��', 0, 0, ''),
(17, 1, 3, 2, 0, 30, 50, 10, 50, 10, 10, 'Task', '2013-11-26 20:35:24', '2013-11-26 20:35:24', 10, 17, '', '', '', '', '', '', 0, 10, '��Ʈw', 0, 0, ''),
(18, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:36:54', '2013-11-26 20:36:54', 10, 18, '', '', '', '', '', '', 0, 10, '�M�D�j�M����', 0, 0, ''),
(14, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:27:32', '2013-11-26 20:27:32', 10, 14, '', '', '', '', '', '', 0, 10, '���Ҷ�', 0, 0, ''),
(13, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:18:59', '2013-11-26 20:18:59', 10, 13, '', '', '', '', '', '', 0, 10, '���v����', 0, 0, ''),
(11, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Story', '2013-11-26 20:04:16', '2013-11-26 20:04:16', 10, 11, '', '', '', '', '', '', 0, 10, '�q��-�M�D�j�M�l�t��', 0, 0, ''),
(12, 1, 3, 2, 0, 30, 50, 10, 50, 10, 10, 'Task', '2013-11-26 20:05:00', '2013-11-26 20:05:00', 10, 12, '', '', '', '', '', '', 0, 10, '����r', 0, 0, ''),
(20, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:45:33', '2013-11-26 20:45:33', 10, 20, '', '', '', '', '', '', 0, 10, '�ɮפW��', 0, 0, ''),
(21, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:45:45', '2013-11-26 20:45:45', 10, 21, '', '', '', '', '', '', 0, 10, '��Ʈw', 0, 0, ''),
(22, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Story', '2013-11-26 20:55:29', '2013-11-26 20:55:29', 10, 22, '', '', '', '', '', '', 0, 10, '�q��-�M�D�ק�l�t��', 0, 0, ''),
(23, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:55:55', '2013-11-26 20:55:55', 10, 23, '', '', '', '', '', '', 0, 10, '�M�D�ק虜��', 0, 0, ''),
(24, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:56:05', '2013-11-26 20:56:05', 10, 24, '', '', '', '', '', '', 0, 10, '�ɮפW��', 0, 0, ''),
(25, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:56:17', '2013-11-26 20:56:17', 10, 25, '', '', '', '', '', '', 0, 10, '��Ʈw', 0, 0, ''),
(26, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Story', '2013-11-26 20:56:38', '2013-11-26 20:56:38', 10, 26, '', '', '', '', '', '', 0, 10, '���-�M�D�j�M�l�t��', 0, 0, ''),
(27, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:56:50', '2013-11-26 20:56:50', 10, 27, '', '', '', '', '', '', 0, 10, '����r', 0, 0, ''),
(28, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:56:58', '2013-11-26 20:56:58', 10, 28, '', '', '', '', '', '', 0, 10, '���v����', 0, 0, ''),
(29, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:57:06', '2013-11-26 20:57:06', 10, 29, '', '', '', '', '', '', 0, 10, '���Ҷ�', 0, 0, ''),
(30, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:57:14', '2013-11-26 20:57:14', 10, 30, '', '', '', '', '', '', 0, 10, '�ɮפ���', 0, 0, ''),
(31, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:57:24', '2013-11-26 20:57:24', 10, 31, '', '', '', '', '', '', 0, 10, '��Ʈw', 0, 0, ''),
(32, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:57:48', '2013-11-26 20:57:48', 10, 32, '', '', '', '', '', '', 0, 10, '�M�D�j�M����', 0, 0, ''),
(33, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Story', '2013-11-26 20:58:46', '2013-11-26 20:58:46', 10, 33, '', '', '', '', '', '', 0, 10, '���-�M�D���U�l�t��', 0, 0, ''),
(34, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:59:02', '2013-11-26 20:59:02', 10, 34, '', '', '', '', '', '', 0, 10, '�M�D���U����', 0, 0, ''),
(35, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:59:10', '2013-11-26 20:59:10', 10, 35, '', '', '', '', '', '', 0, 10, '�ɮפW��', 0, 0, ''),
(36, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:59:17', '2013-11-26 20:59:17', 10, 36, '', '', '', '', '', '', 0, 10, '��Ʈw', 0, 0, ''),
(37, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Story', '2013-11-26 20:59:32', '2013-11-26 20:59:32', 10, 37, '', '', '', '', '', '', 0, 10, '���-�M�D�ק�l�t��', 0, 0, ''),
(38, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:59:45', '2013-11-26 20:59:45', 10, 38, '', '', '', '', '', '', 0, 10, '�M�D�ק虜��', 0, 0, ''),
(39, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 20:59:53', '2013-11-26 20:59:53', 10, 39, '', '', '', '', '', '', 0, 10, '�ɮפW��', 0, 0, ''),
(40, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 21:00:10', '2013-11-26 21:00:10', 10, 40, '', '', '', '', '', '', 0, 10, '��Ʈw', 0, 0, ''),
(41, 1, 3, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 22:42:12', '2013-11-26 22:42:12', 10, 41, '', '', '', '', '', '', 0, 10, '�U��', 0, 0, ''),
(42, 1, 2, 0, 0, 30, 50, 10, 10, 10, 10, 'Task', '2013-11-26 22:44:34', '2013-11-26 22:44:34', 10, 42, '', '', '', '', '', '', 0, 10, '�U��', 0, 0, ''),
(43, 1, 2, 0, 0, 30, 50, 10, 10, 10, 10, 'Story', '2013-12-10 22:00:23', '2013-12-10 22:00:23', 10, 43, '', '', '', '', '', '', 0, 10, '�M�D�j�M���� 1.1.0', 0, 0, ''),
(44, 1, 2, 0, 0, 30, 50, 10, 10, 10, 10, 'Story', '2013-12-10 22:26:12', '2013-12-10 22:26:12', 10, 44, '', '', '', '', '', '', 0, 10, '�M�D���U���� 1.2.0', 0, 0, ''),
(45, 1, 2, 0, 0, 30, 50, 10, 10, 10, 10, 'Story', '2013-12-10 22:50:57', '2013-12-10 22:50:57', 10, 45, '', '', '', '', '', '', 0, 10, '�M�D�j�MAPP 1.3.0', 0, 0, ''),
(46, 1, 0, 0, 0, 30, 50, 10, 10, 10, 10, 'Story', '2014-01-02 21:07:18', '2014-01-02 21:07:18', 10, 46, '', '', '', '', '', '', 0, 10, '�M���k�ɪ��T�{', 0, 0, '');

-- --------------------------------------------------------

--
-- �������c `mantis_bug_tag_table`
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
-- �������c `mantis_bug_text_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bug_text_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `steps_to_reproduce` longtext NOT NULL,
  `additional_information` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- ��s��ƪ�������� `mantis_bug_text_table`
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
-- �������c `mantis_config_table`
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
-- ��s��ƪ�������� `mantis_config_table`
--

INSERT INTO `mantis_config_table` (`config_id`, `project_id`, `user_id`, `access_reqd`, `type`, `value`) VALUES
('database_version', 0, 0, 90, 1, '63');

-- --------------------------------------------------------

--
-- �������c `mantis_custom_field_project_table`
--

CREATE TABLE IF NOT EXISTS `mantis_custom_field_project_table` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sequence` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- �������c `mantis_custom_field_string_table`
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
-- �������c `mantis_custom_field_table`
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
-- �������c `mantis_email_table`
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
-- �������c `mantis_filters_table`
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
-- �������c `mantis_news_table`
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
-- �������c `mantis_project_category_table`
--

CREATE TABLE IF NOT EXISTS `mantis_project_category_table` (
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category` varchar(64) NOT NULL DEFAULT '',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`project_id`,`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- �������c `mantis_project_file_table`
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
-- �������c `mantis_project_hierarchy_table`
--

CREATE TABLE IF NOT EXISTS `mantis_project_hierarchy_table` (
  `child_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- �������c `mantis_project_table`
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
-- ��s��ƪ�������� `mantis_project_table`
--

INSERT INTO `mantis_project_table` (`id`, `name`, `status`, `enabled`, `view_state`, `access_min`, `file_path`, `description`, `baseLine_velocity`, `baseLine_cost_per_storyPoint`) VALUES
(1, 'archive', 10, 1, 50, 10, '', '', 50, 3);

-- --------------------------------------------------------

--
-- �������c `mantis_project_user_list_table`
--

CREATE TABLE IF NOT EXISTS `mantis_project_user_list_table` (
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `access_level` smallint(6) NOT NULL DEFAULT '10',
  PRIMARY KEY (`project_id`,`user_id`),
  KEY `idx_project_user` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- ��s��ƪ�������� `mantis_project_user_list_table`
--

INSERT INTO `mantis_project_user_list_table` (`project_id`, `user_id`, `access_level`) VALUES
(1, 2, 70),
(1, 3, 70),
(1, 4, 70),
(1, 5, 70);

-- --------------------------------------------------------

--
-- �������c `mantis_project_version_table`
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
-- �������c `mantis_sponsorship_table`
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
-- �������c `mantis_tag_table`
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
-- �������c `mantis_tokens_table`
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
-- ��s��ƪ�������� `mantis_tokens_table`
--

INSERT INTO `mantis_tokens_table` (`id`, `owner`, `type`, `timestamp`, `expiry`, `value`) VALUES
(1, 1, 4, '2010-01-19 05:41:31', '2010-01-19 05:46:31', '1');

-- --------------------------------------------------------

--
-- �������c `mantis_user_pref_table`
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
-- �������c `mantis_user_print_pref_table`
--

CREATE TABLE IF NOT EXISTS `mantis_user_print_pref_table` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `print_pref` varchar(64) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- �������c `mantis_user_profile_table`
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
-- �������c `mantis_user_table`
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
-- ��s��ƪ�������� `mantis_user_table`
--

INSERT INTO `mantis_user_table` (`id`, `username`, `realname`, `email`, `password`, `date_created`, `last_visit`, `enabled`, `protected`, `access_level`, `login_count`, `lost_password_request_count`, `failed_login_count`, `cookie_string`, `Baseline_Velocity`, `Baseline_Cost_Per_StoryPoint`) VALUES
(1, 'admin', '', 'root@localhost', '63a9f0ea7bb98050796b649e85481845', '2010-01-19 05:41:23', '2010-01-19 05:41:35', 1, 0, 90, 4, 0, 0, 'b9bec1c98360692f7ae7baecd9736deaa511ea87cfda0be2ddac035e208e1069', 50, 50),
(2, 'bluesky', 'bluesky', 'bluesky200936@gmail.com', 'c1a23116461d5856f98ee072ea319bc9', '2013-11-19 07:59:09', '2013-11-19 07:59:09', 1, 0, 25, 0, 0, 0, 'e82d9d13e3839ccfcfd10a18ad966a8d0e8b67feaab5e4791b2fee69fae6906e', 50, 50),
(3, 'love5622004', '����w', 'love5622004@hotmail.com', '46f316774bb49929ededaa1586381575', '2013-11-21 04:39:05', '2013-11-21 04:39:05', 1, 0, 25, 0, 0, 0, '60030980dfd2417518bdd47ccb0be5672b18fa9a00c0e5becd9d3248c957810d', 50, 50),
(4, 'hahayuju', '��౯�', 'hahayuju@gmail.com', '2844dbd0878ddaed3213c17ecffeb4cb', '2013-11-21 04:39:17', '2013-11-21 04:39:17', 1, 0, 25, 0, 0, 0, 'bb9a1e34cedd01f4917290dd0ee8cac73308fcde35cabb4d59c8ef773787a9d9', 50, 50),
(5, 'a0028322', '�G����', 'erin921025@gmail.com', '4846d77a75558298d921b5f0dfcf832e', '2013-11-21 04:39:28', '2013-11-21 04:39:28', 1, 0, 25, 0, 0, 0, 'ef06b7c10e5ce9209d522f6e95fb80b2f91c55a7f8edd309e5ee5a881e2082c2', 50, 50);

-- --------------------------------------------------------

--
-- �������c `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `s_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `s_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `s_project` int(11) NOT NULL,
  `entre_year` tinyint(4) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- ��s��ƪ�������� `member`
--

INSERT INTO `member` (`s_id`, `s_name`, `s_project`, `entre_year`) VALUES
('A9128022', '���K��', 68, 91),
('A9128107', '���l��', 48, 91),
('A9128114', '�d����', 59, 91),
('A9128115', '���r�z', 67, 91),
('A9128116', '�}���Y', 66, 91),
('A9128118', '�����o', 63, 91),
('A9128119', '���H��', 62, 91),
('A9128121', '������', 69, 91),
('A9128124', '�P�q�S', 71, 91),
('A9128125', '�G����', 70, 91),
('A9128128', '�L�K�g', 72, 91),
('A9128130', '�����', 73, 91),
('A9128132', '�L�F��', 75, 91),
('A9128134', '�}���f', 74, 91),
('A9128207', '�L�ۨ�', 48, 91),
('A9128214', '�x����', 59, 91),
('A9128216', '���@�q', 66, 91),
('A9128218', '�\��?', 63, 91),
('A9128221', '���ɧg', 69, 91),
('A9128224', '���a��', 71, 91),
('A9128228', '������', 72, 91),
('A9128234', '�L�ڥ�', 74, 91),
('A9128307', '�c�a�N', 48, 91),
('A9128316', '���ߪN', 66, 91),
('A9128318', '��ۦ�', 63, 91),
('A9128321', '���ֵ�', 69, 91),
('A9128324', '��a��', 71, 91),
('A9128328', '���̶�', 72, 91),
('A9128369', '���ذ�', 54, 91),
('A9128376', '���T�Y', 61, 91),
('A9128399', '�L�{�T', 54, 91),
('A9128408', '�L�p��', 61, 91),
('A9228019', '�d�H��', 45, 0),
('A9228101', '��ا�', 76, 0),
('A9228102', '�\�ѻ�', 78, 0),
('A9228103', '���ť�', 79, 0),
('A9228105', '�૪�M', 80, 0),
('A9228106', '���f��', 82, 0),
('A9228107', '�x�Q�x', 83, 0),
('A9228108', '�x�_�@', 84, 0),
('A9228109', '�G���x', 85, 0),
('A9228110', '�L�R�F', 86, 0),
('A9228111', '�P�q�e', 87, 0),
('A9228112', '���L�T', 88, 0),
('A9228113', '�¯\�u', 89, 0),
('A9228114', '�H�w�q', 90, 0),
('A9228115', '���t��', 91, 0),
('A9228116', '������', 92, 0),
('A9228117', '�i�اg', 93, 0),
('A9228119', '�}�f�O', 46, 0),
('A9228120', '�ťȶ{', 47, 0),
('A9228121', '�¨οo', 49, 0),
('A9228123', '�L�s��', 51, 0),
('A9228124', '�i�j��', 52, 0),
('A9228126', '�L�̸�', 53, 0),
('A9228127', '���~ޱ', 94, 0),
('A9228128', '�����v', 95, 0),
('A9228129', '��@��', 197, 0),
('A9228131', '�d�Ż�', 55, 0),
('A9228132', '�x�Q�x', 56, 0),
('A9228133', '������', 57, 0),
('A9228201', '���µY', 76, 0),
('A9228202', '�f�_�F', 78, 0),
('A9228205', '������', 80, 0),
('A9228206', '�����Y', 82, 0),
('A9228207', '���X��', 83, 0),
('A9228208', '�B�L��', 84, 0),
('A9228209', '�B�e��', 85, 0),
('A9228210', '�L���G', 86, 0),
('A9228211', '���ةy', 87, 0),
('A9228212', 'Ĭ�ۺ�', 88, 0),
('A9228213', '�L�ɧg', 89, 0),
('A9228214', '�����E', 90, 0),
('A9228215', '�\�ͯ�', 91, 0),
('A9228216', '���Z��', 92, 0),
('A9228217', '���N�P', 93, 0),
('A9228219', '�\�a�g', 46, 0),
('A9228220', '�L�F�y', 47, 0),
('A9228221', '�L�Y��', 49, 0),
('A9228223', '�B����', 51, 0),
('A9228224', '������', 52, 0),
('A9228226', '���ɾ�', 53, 0),
('A9228227', '�g���W', 94, 0),
('A9228228', '���ɿo', 95, 0),
('A9228229', '���A��', 197, 0),
('A9228231', '�����F', 55, 0),
('A9228232', '���X��', 56, 0),
('A9228233', '��a�n', 57, 0),
('A9228301', '��Ű�', 76, 0),
('A9228302', '�x�y��', 78, 0),
('A9228305', '���n�m', 80, 0),
('A9228306', '�c���', 82, 0),
('A9228307', '�P�_�Y ', 83, 0),
('A9228308', '�i�¦w', 84, 0),
('A9228309', '�i����', 85, 0),
('A9228310', '�����', 86, 0),
('A9228311', '������', 87, 0),
('A9228312', '���x��', 88, 0),
('A9228313', '�B�s�a', 89, 0),
('A9228314', 'ù����', 90, 0),
('A9228315', '�}����', 91, 0),
('A9228316', '�d�ۧg ', 50, 0),
('A9228317', '�Bģ�q', 93, 0),
('A9228320', '�మ��', 47, 0),
('A9228321', '�d�f�S', 49, 0),
('A9228323', '������', 51, 0),
('A9228324', '���ɴ@', 52, 0),
('A9228326', '���\��', 53, 0),
('A9228327', '��?޳', 94, 0),
('A9228328', '���ѫ�', 95, 0),
('A9228329', '���F�F ', 197, 0),
('A9228331', '���|��', 55, 0),
('A9228332', '�P�_�Y', 56, 0),
('A9228333', '������', 57, 0),
('A9228391', '�i�廣', 50, 0),
('A9228401', '�I���F', 76, 0),
('A9228402', '������', 78, 0),
('A9228405', '���׻�', 80, 0),
('A9228406', '���έ�', 82, 0),
('A9228407', '���۽@', 83, 0),
('A9228408', '�����i', 84, 0),
('A9228410', '���@��', 86, 0),
('A9228411', '�i��D', 87, 0),
('A9228412', '���T��', 88, 0),
('A9228413', '�L���v', 89, 0),
('A9228416', '������', 92, 0),
('A9228418', '������', 50, 0),
('A9228421', '��͵�', 96, 0),
('A9228423', '���ɩ�', 51, 0),
('A9228424', '�x����', 52, 0),
('A9228428', '�E���', 95, 0),
('A9228429', '�G�t��', 197, 0),
('A9228431', '������', 55, 0),
('A9228432', '���۽@', 56, 0),
('A9228454', '�L�i��', 50, 0),
('A9328008', '���i��', 161, 0),
('A9328015', '���~�y', 164, 0),
('A9328030', '�\����', 173, 0),
('A9328031', '�B�K�i', 174, 0),
('A9328102', '���֮�', 159, 0),
('A9328103', '�L�K��', 160, 0),
('A9328111', '�����@', 162, 0),
('A9328112', '�S�a��', 193, 0),
('A9328113', '������', 163, 0),
('A9328116', '��q��', 194, 0),
('A9328117', '�G�ߥ�', 192, 0),
('A9328120', '�L�H�w', 166, 0),
('A9328122', '�L�þW', 167, 0),
('A9328123', '�P�h�p', 168, 0),
('A9328124', '�¥��', 169, 0),
('A9328125', 'Ĭ�lڬ', 170, 0),
('A9328127', '�L�T��', 171, 0),
('A9328128', '���y��', 172, 0),
('A9328132', '���i�', 175, 0),
('A9328133', '�J�a�p', 176, 0),
('A9328134', '���[��', 177, 0),
('A9328136', '�G����', 178, 0),
('A9328138', '�����a', 179, 0),
('A9328202', '�}����', 159, 0),
('A9328211', '�L���{', 162, 0),
('A9328212', '���س�', 193, 0),
('A9328213', '����@', 163, 0),
('A9328216', '�i޳��', 194, 0),
('A9328220', '�\�|��', 166, 0),
('A9328222', 'ù�d��', 167, 0),
('A9328223', '�S����', 168, 0),
('A9328224', '�d�s�p', 169, 0),
('A9328225', '���K��', 170, 0),
('A9328227', '���a�g', 171, 0),
('A9328232', '���x�X', 175, 0),
('A9328233', '�I�ߴf', 176, 0),
('A9328234', '�i���', 177, 0),
('A9328236', '�i�a��', 178, 0),
('A9328238', '���Q�S', 179, 0),
('A9328302', '������', 159, 0),
('A9328311', '�L�h�i', 181, 0),
('A9328312', '������', 193, 0),
('A9328313', '���궮', 163, 0),
('A9328316', '������', 194, 0),
('A9328320', '�����v', 166, 0),
('A9328323', '�d�T�� ', 168, 0),
('A9328324', '�´]��', 165, 0),
('A9328325', '������', 170, 0),
('A9328327', '�B�a��', 171, 0),
('A9328332', '��౤� ', 175, 0),
('A9328333', '��ŧ�', 176, 0),
('A9328334', '���|��', 177, 0),
('A9328336', '�����w', 178, 0),
('A9328338', '�_�v��', 179, 0),
('A9328341', '���|��', 187, 0),
('A9328343', '���Ӧt', 146, 0),
('A9328360', '�L����', 187, 0),
('A9328366', '���t��', 190, 0),
('A9328379', '���Ӻ~', 137, 0),
('A9328384', '����W', 165, 0),
('A9328388', '�d����', 184, 0),
('A9328389', '���\��', 185, 0),
('A9328394', '�}��', 180, 0),
('A9328396', 'Ĭ�ɹ�', 183, 0),
('A9328403', '���t��', 180, 0),
('A9328409', '�C�q�@', 180, 0),
('A9328412', '���߸�', 193, 0),
('A9328413', '���إ�', 137, 0),
('A9328416', '���Y', 194, 0),
('A9328417', '�����f', 183, 0),
('A9328420', '�x�z��', 183, 0),
('A9328421', '�}�^��', 180, 0),
('A9328422', '���ήe', 185, 0),
('A9328424', '��ģ��', 169, 0),
('A9328425', '���v��', 170, 0),
('A9328427', '�]�s��', 182, 0),
('A9328432', '�\���f', 175, 0),
('A9328434', '�d��޳', 177, 0),
('A9328436', '���F��', 178, 0),
('A9328438', '���ɭ�', 179, 0),
('A9328439', '���a�{', 191, 0),
('A9328441', '���q��', 183, 0),
('A9328442', '�I�ͤ�', 191, 0),
('A9328453', '��i�F', 187, 0),
('A9328462', '�i�ذ�', 165, 0),
('A9328468', '�c����', 190, 0),
('A9328479', '�d���R', 186, 0),
('A9328493', '�¦詨', 191, 0),
('A9428101', '�L��?', 99, 0),
('A9428110', '�G�f��', 97, 0),
('A9428111', '������', 98, 0),
('A9428119', 'ù���F', 100, 0),
('A9428201', '���W��', 99, 0),
('A9428210', '���s�� ', 97, 0),
('A9428211', '������', 98, 0),
('A9428219', '���۹F', 100, 0),
('A9428301', '�﫳��', 99, 0),
('A9428306', '�i�v��', 188, 0),
('A9428311', '�L����', 98, 0),
('A9428326', '�x�H�N', 101, 0),
('A9428327', '���X��', 109, 0),
('A9428329', '������', 103, 0),
('A9428337', '�S���[', 114, 0),
('A9428339', '���\�_', 105, 0),
('A9428340', '���x�y', 106, 0),
('A9428345', '���ا�', 103, 0),
('A9428351', '���꤯', 109, 0),
('A9428353', ' ���M��', 103, 0),
('A9428365', '�d�ά�', 111, 0),
('A9428372', '�૳�', 101, 0),
('A9428378', '�尶�{', 101, 0),
('A9428387', '�u�h�', 111, 0),
('A9428388', '���|�M', 106, 0),
('A9428394', '�L�F��', 107, 0),
('A9428397', '�L�L��', 102, 0),
('A9428401', '�S���廫', 102, 0),
('A9428410', '�i�x��', 108, 0),
('A9428411', '���h��', 98, 0),
('A9428413', '�H�ث�', 109, 0),
('A9428414', '�\�L��', 107, 0),
('A9428416', '�B���D', 188, 0),
('A9428417', '�B�ŻT', 102, 0),
('A9428418', '�L�ۦ�', 107, 0),
('A9428420', '���Q�s', 115, 0),
('A9428421', '����', 116, 0),
('A9428422', ' �d�ذa', 188, 0),
('A9428438', '������', 104, 0),
('A9428482', '���l��', 110, 0),
('A9428502', '�f�N��', 112, 0),
('A9428504', '�i�F��', 113, 0),
('A9428511', '�����f', 195, 0),
('A9428538', '��T��', 104, 0),
('A9428550', '���m�a', 117, 0),
('A9428582', '���\�{', 110, 0),
('A9428602', '��ˡ޳', 112, 0),
('A9428604', '���s��', 113, 0),
('A9428638', '���p', 104, 0),
('A9428704', '�B�H��', 113, 0),
('A9528301', '�����i', 133, 0),
('A9528303', '��ģ�@', 135, 0),
('A9528311', '�L�ඣ', 134, 0),
('A9528313', '���H��', 133, 0),
('A9528316', '�\�Q�@', 123, 0),
('A9528321', '�}�R��', 126, 0),
('A9528322', '���E��', 120, 0),
('A9528323', '���ɫF', 129, 0),
('A9528325', '���s��', 133, 0),
('A9528327', '�B�a��', 133, 0),
('A9528328', '���ۧ�', 119, 0),
('A9528336', '�G�m�@', 122, 0),
('A9528337', '������', 126, 0),
('A9528339', '������', 153, 0),
('A9528340', '���Ż�', 122, 0),
('A9528343', '�i�D��', 129, 0),
('A9528344', '�d�T�s', 118, 0),
('A9528347', '���m��', 134, 0),
('A9528363', '�L�ȫF', 129, 0),
('A9528365', '�L���t', 135, 0),
('A9528366', '�c���� ', 118, 0),
('A9528369', '�󶮴@', 121, 0),
('A9528375', '���»�', 135, 0),
('A9528376', '���r�p', 130, 0),
('A9528382', 'Ĭ�o�Q', 128, 0),
('A9528388', '�_�h��', 120, 0),
('A9528389', '�}�E��', 136, 0),
('A9528391', '�����O', 121, 0),
('A9528394', '�B�w�g', 131, 0),
('A9528395', '�J��ͺ', 121, 0),
('A9528396', '�s��ʳ', 126, 0),
('A9528398', '�i����', 131, 0),
('A9528399', '�ŬR޳', 134, 0),
('A9528402', '�L�\�� ', 124, 0),
('A9528404', '����a', 119, 0),
('A9528406', '����_', 132, 0),
('A9528407', '���F�s', 136, 0),
('A9528410', '�L�t�� ', 132, 0),
('A9528411', '�C�ŧ�', 136, 0),
('A9528412', '�L�ε�', 124, 0),
('A9528414', '�f����', 119, 0),
('A9528415', '�����S', 124, 0),
('A9528416', '���ɾ�', 122, 0),
('A9528420', '���t��', 128, 0),
('A9528422', '���s��', 132, 0),
('A9528424', '�L�y�R', 130, 0),
('A9528441', '��ߩ�', 196, 0),
('A9528445', '���A�@', 125, 0),
('A9528455', '�����|', 127, 0),
('A9528457', '������', 137, 0),
('A9528541', '�L����', 196, 0),
('A9528555', '�i��޳', 127, 0),
('A9528641', '�J���O', 196, 0),
('A9628302', '������', 145, 0),
('A9628306', '���v�n', 154, 0),
('A9628309', 'Ĭ�ӿ�', 143, 0),
('A9628315', 'Ĭ�R��', 140, 0),
('A9628316', '��Щ�', 154, 0),
('A9628318', '�G���x', 145, 0),
('A9628327', '���|�B', 143, 0),
('A9628331', '����g', 140, 0),
('A9628335', '�]�Q��', 146, 0),
('A9628336', '�\�ժ@', 157, 0),
('A9628346', '�i�Ⱥ�', 152, 0),
('A9628351', '��ɰ��', 144, 0),
('A9628353', '���a��', 144, 0),
('A9628357', '�����s', 153, 0),
('A9628360', '���@��', 141, 0),
('A9628363', '���M��', 147, 0),
('A9628365', '���ɧg', 140, 0),
('A9628366', '���ɦp', 152, 0),
('A9628371', '�G����', 150, 0),
('A9628372', '���ʫ�', 151, 0),
('A9628373', '���Ͳ�', 156, 0),
('A9628377', '�����a', 150, 0),
('A9628379', '�����', 147, 0),
('A9628384', '���a�@', 157, 0),
('A9628391', '���β[', 143, 0),
('A9628394', '��?�v', 152, 0),
('A9628395', '�����K', 144, 0),
('A9628396', '����t', 141, 0),
('A9628397', '�i�f�M', 154, 0),
('A9628400', '������', 141, 0),
('A9628401', '�����', 155, 0),
('A9628402', '�c�اg', 142, 0),
('A9628407', '������', 157, 0),
('A9628410', '������', 189, 0),
('A9628411', '�x���y', 155, 0),
('A9628412', '������', 142, 0),
('A9628415', '��z�g', 156, 0),
('A9628416', '�L�d��', 142, 0),
('A9628417', '�P��O', 156, 0),
('A9628430', '�L�ŷ�', 157, 0),
('A9628432', '�s����', 141, 0),
('A9628448', '���Y��', 148, 0),
('A9628454', '�L�~��', 149, 0),
('A9628528', '���ߨj', 158, 0),
('A9628548', '�C�t�X', 148, 0),
('A9628554', '��i��', 149, 0),
('A9628628', 'Ĭ�p��', 158, 0),
('A9628648', '����k', 148, 0),
('A9628728', '���T�E', 158, 0),
('A9728303', '�i�{��', 8, 0),
('A9728306', '���ۧ�', 15, 0),
('A9728308', '�d����', 19, 0),
('A9728309', '���޳', 5, 0),
('A9728311', '���', 5, 0),
('A9728312', '���l��', 2, 0),
('A9728316', '�f�׶�', 10, 0),
('A9728319', '�L�ؼ�', 19, 0),
('A9728320', '�L�ξ�', 15, 0),
('A9728322', '�����', 15, 0),
('A9728327', '����s', 2, 0),
('A9728330', '����a', 11, 0),
('A9728334', '�B�H�~', 20, 0),
('A9728335', '�B�R�P', 16, 0),
('A9728336', '�G���@', 7, 0),
('A9728339', '���y�[', 16, 0),
('A9728346', '���Z��', 21, 0),
('A9728353', '���K�v', 5, 0),
('A9728355', '���~��', 16, 0),
('A9728361', '���f��', 12, 0),
('A9728362', '�}�ذa', 7, 0),
('A9728364', '�j����', 14, 0),
('A9728365', '����ޱ', 9, 0),
('A9728370', '������', 19, 0),
('A9728371', '�����@', 13, 0),
('A9728374', '�ŭ���', 1, 0),
('A9728384', '�����', 20, 0),
('A9728385', '�i�a��', 20, 0),
('A9728388', '��?�R', 1, 0),
('A9728389', '��?��', 8, 0),
('A9728390', '�����T', 1, 0),
('A9728392', '�B�A�', 4, 0),
('A9728396', '�ک|��', 13, 0),
('A9728398', '�¨اu', 2, 0),
('A9728399', '������', 18, 0),
('A9728400', '�q��[', 11, 0),
('A9728401', 'ù�й�', 18, 0),
('A9728402', '������', 7, 0),
('A9728403', '�L����', 9, 0),
('A9728406', '�L�ؾ�', 1, 0),
('A9728409', '�x����', 17, 0),
('A9728410', '�i��F', 4, 0),
('A9728411', '���@�u', 10, 0),
('A9728413', '²�w��', 13, 0),
('A9728417', '���ۺX', 18, 0),
('A9728419', '�����F', 8, 0),
('A9728421', '���F�F', 10, 0),
('A9728429', '�L��g', 12, 0),
('A9728434', '�µΧ�', 4, 0),
('A9828305', '�زг�', 201, 0),
('A9828306', '���ָ�', 43, 0),
('A9828307', '�G�B��', 200, 0),
('A9828309', '���F�|', 25, 0),
('A9828310', '�i�f��', 23, 0),
('A9828314', '�J�f�a', 3, 0),
('A9828315', '���ۧ�', 200, 0),
('A9828323', '�����{', 81, 0),
('A9828329', '�i�ͭ�', 198, 0),
('A9828331', '�d���M', 32, 0),
('A9828333', '���a�Y', 200, 0),
('A9828334', '����٫', 30, 0),
('A9828336', '�����', 30, 0),
('A9828339', '�i����', 200, 0),
('A9828342', '�G�a��', 3, 0),
('A9828351', '�G����', 199, 0),
('A9828355', '²�|��', 201, 0),
('A9828356', '�B�r�u', 43, 0),
('A9828357', '�i?�O', 22, 0),
('A9828360', '�����_', 139, 0),
('A9828364', '���ػx', 23, 0),
('A9828365', '���{��', 22, 0),
('A9828368', '���R��', 21, 0),
('A9828369', '���ò�', 81, 0),
('A9828373', '�i���x', 31, 0),
('A9828374', '�i���', 24, 0),
('A9828375', '���X��', 199, 0),
('A9828382', '������', 24, 0),
('A9828384', '�\�ε�', 25, 0),
('A9828386', '���y�', 44, 0),
('A9828388', '�H�綩', 139, 0),
('A9828389', '������', 32, 0),
('A9828390', '�}�x��', 30, 0),
('A9828392', '���y�', 77, 0),
('A9828394', '�©���', 24, 0),
('A9828395', '�x�j�x', 32, 0),
('A9828396', '�����g', 44, 0),
('A9828397', '�L�_��', 22, 0),
('A9828399', '�\���a', 199, 0),
('A9828400', '���v��', 139, 0),
('A9828403', '���鴸', 198, 0),
('A9828405', '�P�`�\', 44, 0),
('A9828407', '�i����', 31, 0),
('A9828408', '��Q�p', 43, 0),
('A9828409', '���Aޱ', 31, 0),
('A9828415', '��R�{', 198, 0),
('A9828416', '�i�O��', 138, 0),
('A9828417', '���w��', 81, 0),
('A9828418', '��?��', 3, 0),
('A9828422', '�����A', 25, 0),
('A9828516', '���ɦw', 138, 0),
('A9928221', 'fasfag', 34, 0);

-- --------------------------------------------------------

--
-- �������c `project`
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
-- ��s��ƪ�������� `project`
--

INSERT INTO `project` (`p_id`, `p_name`, `p_adviser`, `p_type`, `p_description`, `p_leader_name`, `p_leader_number`, `p_date`) VALUES
(1, '��|���Ѫ��ϦѤH���@�A�Ȥ��i���-�H��������s�Ϭ���', '���Q��', '�פ���', '��|���Ѫ��ϦѤH���@�A�Ȥ��i���-�H��������s�Ϭ���', '���f��', 'A9728366', '2013-05-13'),
(2, '�y�����Ѩt��-�H�W�H�y�������R', '������', '�t����', '�y�����Ѩt��-�H�W�H�y�������R', '���F��', 'A9728416', '2013-05-13'),
(3, '�����A�Ȥ����ݹB��', '�����]', '�t����', '�ϥζ��ݹB��B�z�����A��', 'Ĭ�f�o', 'A9828340', '2012-12-27'),
(4, '�HAndroid���x�}�o��ʦ�����^�y�ǲߨt��', '�i�}�F', '�t����', '�HAndroid���x�}�o��ʦ�����^�y�ǲߨt��', '���ɯ�', 'A9728310', '2012-12-27'),
(5, '���W�@�赦�����ɧ����R', '���Q��', '�פ���', '���W�@�赦�����ɧ����R', '���a��', 'A9728301', '2013-05-13'),
(6, 'Android���z�������ʪA�����Ψa�`�����q���t��', '���Ԯ�', '�t����', '���z�������ʪA�����Ψa�`�����q���t��', '���a��', 'A9728424', '2012-12-27'),
(7, '�إ߰��i�Ҽҫ��������P���x�j�Ϥ��įq-�H�L�H�Ť�����P���ɾ�����', '���Q��', '�פ���', '�إ߰��i�Ҽҫ��������P���x�j�Ϥ��įq-�H�L�H�Ť�����P���ɾ�����', '����{', 'A9728412', '2013-05-13'),
(8, '���ҷP���ȹC�A��', '������', '�פ���', '���ҷP���ȹC�A��', '�L���', 'A9728407', '2013-05-13'),
(9, '�k��CRM�t��-�H�k�ʫO����T������', '�i�Ż�', '�t����', '', '����@', 'A9728341', '2013-05-13'),
(10, '�q�l�ӰȻP����P���X����-�HIMCoffee����', '��J�s', '�t����', '�q�l�ӰȻP����P���X����-�HIMCoffee����', '����@', 'A9728363', '2013-05-13'),
(11, '�h�Ʃʰӫ~�s�f����s-�H���j��7-11�K�Q�ө�����', '���z�L', '�פ���', '�h�Ʃʰӫ~�s�f����s-�H���j��7-11�K�Q�ө�����', '�\�v��', 'A9728376', '2013-05-13'),
(12, '�]�g�����W�ѥ�����-������R', '�i�}�F', '�פ���', '�]�g�����W�ѥ�����-������R', '���Ӯ�', 'A9728313', '2012-12-27'),
(13, '���~�����񤧶}�o��s�H�H���Ь���', '�i�}�F', '�פ���', '���~�����񤧶}�o��s�H�H���Ь���', '���ʹ@', 'A9728304', '2012-12-27'),
(14, '�Ȼs��-�U�����Y�޲z�t��', '�i�Ż�', '�t����', '�Ȼs��-�U�����Y�޲z�t��', '�j����', 'A9728340', '2013-05-13'),
(15, '�d����T���x-���XQR-code', '������', '�t����', '�d����T���x-���XQR-code', '��s�N', 'A9728408', '2013-05-13'),
(16, '�����X�s�a��PRET���~���зs�g��i����', '���z�L', '�פ���', '�����X�s�a��PRET���~���зs�g��i����', '��?��', 'A9728307', '2013-05-13'),
(17, '�Ĥ@���ѳ]���~���Z�ĵ����t��', '�x�M��', '�t����', '�Ĥ@���ѳ]���~���Z�ĵ����t��', '���ܫ�', 'A9728357', '2013-05-13'),
(18, '���Ω���|�ƥ�P�g�ٴ������p���R', '��J�s', '�פ���', '���Ω���|�ƥ�P�g�ٴ������p���R', '���ؤ�', 'A9728359', '2013-05-13'),
(19, '��ʥ�ͩw��t��-Soul Met', '���Ԯ�', '�t����', '��ʥ�ͩw��t��-Soul Met', '���³�', 'A9728314', '2012-12-27'),
(20, '�g��t��k��@�P����', '��J�s', '�פ���', '�g��t��k��@�P����', '�i޳�C', 'A9728386', '2013-05-13'),
(21, '�إ߽u�ʳW���ҫ����R���@�ϩ~�a�ѤH�����@�귽', '���Q��', '�פ���', '�ĥνu�ʳW���k�إ߼ҫ��A�����R�{�p�����귽�����t�~�A�õ������Ӱϰ�ʦѤH�~�a���U�������귽�ݨD', '���ּz', 'A9828346', '2013-05-15'),
(22, '��T���u�@�P��ޮ֤߯�O���p�ʤ��R', '�i�}�F', '�פ���', '���פ�i�@�B�Q�����p���R��X��ߤj�ǩM�p�ߤj�ǭ����֤߯�O�����P�A�٦���T�޳N�H���һݪ��n�ʯ�O�C��s���G�i���Ѩt�ҥ��ӳW�e�ҵ{�M���~���u��T�H���ɰѦҡC', '����y', 'A9828347', '2013-05-15'),
(23, '�Ϩa�귽�������w�m��R-�H���������a�Ϭ���', '���Q��', '�פ���', '�B�νu�ʳW���õ��XDijkstra��s�t��k�إ߹w�m�Ϩa�귽�įq�Ҧ�', '�B���', 'A9828414', '2013-05-20'),
(24, '���ҷP���ȹC�A��-�X�W���', '������', '�t����', '�Q���X�W��ҵ��X���ҷP���������A���ȹC�̹��������諸�����~�A�Y�i�Y����o�����I�����U�����æb�I�᪺���ʪ��ѩθ�T�A���ϥΪ̦��p���ҷP�����ȡA�ô�֮ȹC�̦b�ȹC�e�һݯӶO���ɶ��P��O�C', '���߫C', 'A9828326', '2013-05-21'),
(25, '�j�ǥ���A��P�i�t�ΡX�qCRM�[�I', '�i�Ż�', '�t����', '�@���ͦV��ޤơB����ƥH�ΤH�f�W�[�A�y�����ʪŶ���֡B��A��U���������D�A���t�Τ��ϥ�CRM�����A�ﵽ��|����A�઺�A�ȫ~��A�z�L��A�઺�ܤƲv�A�b�ǥ͹����W�[����A�઺����l�ܡA�i�@�B�x���ǥ���A�઺�o�i���p�A�F���ǥ͹���|�ժ����۫פκ��N�סC\n����s�Ĩt�ζ}�o�k�A����CRM�[�I�U��A��P�i�t���������\��A�z�L�������޾ɡA�Ѿǥ;��~��A��ƾګإ��ͶչϡA�i����šB�����ô��X��ĳ�A�w����|�����y�W�B������D�A�W�[���d���y���w���A�ѨM�{�����W���x�Z�A�F���U�Ⱥ��N�ת����ɡC\n���t�δ����U��|�էﵽ�j�ǥ���બ�p�A�ǥѾǥ��˴���A�઺��T�@���ѦҡC��|�ճz�L���t�ΡA�̥���ǥͪ��p�������A�t�δ��Ѫ���A��P�i��סA����|�ҵ{�W����K��ǥͻݨD�A����l�ܨC�Ǵ��W�����p�A�����U�ȩ��۫סC\n���t�γz�L�Ш|����A������B��A������פ�A���ѧ�ԲӻP��T����A����m�A�ϥ��t�Τ��귽���״I�A��T��²���n�A�i�ӥi�H�ظm�X�󬰺�ǡB���ĻP���㤧�j�ǥ���A��P�i�t�ΡA���ѵ��ϥΪ̤���T�o�H�󬰦��ĤΩ��T�C', '����{', 'A9828372', '2013-05-21'),
(30, '�դ��U�����Y�޲z', '�i�Ż�', '�t����', '�դͪA�Ȩt��-�A�Ȳ��~�դͤ�����', '�����', 'A9828380', '2013-05-22'),
(31, '�z�L�j�M�q�l�ǲ߾��{�i��H�~���ˤ��������-���j�Ǭ���', '�����]', '�t����', '�N���j�ǰ����հϸ�T�޲z�Ǩt�������~�Ͱ�����s���ﹳ�]�D¾�̡^�A�Q�Υ��M�D��@���t�ΡA�N�ǥͪ���ƥH�������R���^���ۥ��M�D��¾�P��Ʈw���A���t�η|�̾ڨD¾�̪���O�P�ҷӡA�z�L�ϥΪ�(�ɮv�άO�Ѯv)�j�M���G�i��u�@���t��A�B�N�D¾�̤����}��ƱH�����~(�D�~��)�P�q���D¾�̡A�ϱo�D¾�̥i�H�b����ϥΪ̱N�D¾�̱��˵����a���~���q���H�A�ڭ̷|���Ѹӥ��~���D¾�޹D���D¾�̡A���D¾�̥h���D¾�ǳơA�i�Ө줽�q�h���աA�H��o�Ӥu�@�ö}�l�N�~�C                                                                                                                                                                                                                 ', '���a��', 'A9828337', '2013-05-24'),
(32, '�X�s�ͬ�APP', '�i�}�F', '�t����', '�H�ۮɥN���ܾE�M��T���~�����k�o�i�A�@��������ȹC�P��ͪ��ݨD�M�~���q�����A�C�ȭ̤��ɦۤv�C�����g���v���q��������V���ʸ˸m�W�C�o�˪����ܬO�]���{�����z����ʸ˸m�P�L�u�����a�Ӫ��K�Q�ʩM�ֳt�ʪ��~�责�ɡA���������ʸ˸m���̿�ݨD�ʺ��Ӵ��ɡC\n����s�t�w��ثe�ȹC�Ҧ��[�c�i����R�A�H�αN��ʸ˸m�B�Φb�ȹC��Ҳ��ͪ��ȹC�߱o��T�i�汴�Q�A�ùB�Υثe�̷s��Android������x�A���XGoogle�a�ϻP���y�ìP�w��t�ΡA�]�p�X�@�ӧ��㪺��ʮȹCApp�A���ѨϥΪ̦b�ȹC�e�W���һݸ�T�B�ȹC������һݤF�ѻP�ȹC����ɤ߱o���\��A\n��s�{���������|����i���Ʀ����B��s�A�g�ѰQ�סB�ץ���A���ѨϥΪ̧�n���A�Ȥδ��ɨt�ΨϥήĲv�A�f�t����s�Ҷ}�o����ʮȹCAPP�A�i�H���ɮȫȹ�X�s�a�ϮȹC���N�@�M�~��A��T��޻P�ǲήȹC��ƪ����X�A���Ȩ�U�F���[���ȹC�F�������ʡA�i�@�BĲ�v�x�W�[�����~�����k�o�i�C\n����s���ȴ��ѮȫȤ@�Ӧ�ʮȹC���ε{���A�åB�������ժ��s�ֳͧt�F�ѺX�s���a�ͬ���T�A�i�����s�ͿĤJ���a���ͬ��C', '���`�E', 'A9828391', '2013-05-24'),
(43, 'ISO27001�{�Ҥ����䦨�\�]������', '���z�L', '�פ���', '����s�H���j�ǰ����հ�ISO27001�t�λ{�Ҭ��ҡA�z�L��ިt���LISO27001�]�֭��V�m�ҵ{54�p�ɤ��P�Ǭ���H�A�i��ݨ��լd�A�B�Χ벼���v������Ҧ��A����u�F���P�W���B����P�޲z�B�ˬd�P�B���B�޲z�f�d�v��ISO27001�{�����䦨�\�]���A�óz�L�v���ȱƦC�u�����ǡA�@�����~�ɤJISO27001�{�Ҥ��ѦҡC', '�B��߬', 'A9828370', '2013-05-24'),
(44, '���j�Ǫ�m�M���u�W�q���t��', '�i�}�F', '�t����', '����s�ظm�@�M��m�M���q���t�ΡA�䤤�b���t�Τ��]�t�|���M�ϡB�q���B�d�߬����B�ק�q���M���g�U���u���y����C�t�έ����i�H�s����̷s������T�A�]�A��m�M�����u�B�����B�W���a�I���ʲ���k�C', '���a��', 'A9828392', '2013-05-24'),
(45, '��Ʊ��ɹ�ȩʾާ@���Τ䴩�V�q���P�ɶ��ǦC�w����?����������R����s', '���Q��', '�t����', '����s�w��ثe��~�W���W�d���q���Ѳ������㪺���R��s�A�θ�Ʊ���(Data Mining)�����ɶ��ǦC�M�޳N���Ъ��[���ӫإߤ@�ӨM�����R�t�ΡA�å[�W�ǳN�z�׬����ҡA�b����s���A�ɶ��ǦC�����K�O�M���Ӭ�s�w���B�s��ƭȪ��W�ߡA�ӧڭ̧�F��~�@�a�W�����q(PG)�A�w��L�̪������������ӹw�����Ӫ����^�C', '�d�ά�', 'A9228018', '2013-05-30'),
(46, '�k���ʪ����������~�P�إ߻P��P������s �ХHPayEasy�BSHOPPING99���� ', '��J�s', '�פ���', '�ǥѳX���F�Ѩ�~�P�إ߻P��P�����A�b�Ӯפ��R�̫h�O�i�@�B���M�ΪL���a���ͪ��~�P�j�۬[�c���R�Ӯפ��q���~�P�إߤ��D�A�M�Φ�P���ު��������R�F�ѭӮפ��q�b��P�����W����@�P���{', '����', 'A9228019', '2013-05-30'),
(47, '�q���f�r��Ʈw', '���Q��', '�t����', '���M�D�����@�����ۭ��b�f�r��T���j���٦�SQL��Ʈw���إߡB�������[�]�A���@���G�X�Ӭ���A�j���쪺�f�r��T�j���@�U�h���A�Q��ASP2.0�ӻs�@�����ó]����ѫǰQ�װϡB�d���O�A�Ӵ��ѹ�f�r��T�����쪺�ϥΪ̡A�����f�r��T�A�i�@�B�i�H�f�t�~�ꬡ��f�r�������f�r����s�C', '���Y�a', 'A9228020', '2013-05-30'),
(48, '�q�l�{���κ����q�l�I�ھ���P���O���ʪ��欰�����Y����s', '��J�s', '�פ���', '��T�~��(2003~2005)�ڰ��q�l�{��������o�i�{�׫D�`�ֳt�A�ר�O�p�B���I�ڡC�q�l�{���d�O�@�ӷs�������A�ثe�F�����M�\�h�������t�ӳ���J�����A�Ʊ欰�H���H�ή��O�̱a�ӧ�h���K�Q�ʡA�P�ɤ]���ۤv�a�ӵL�����Q���H�ΰӾ��C�]��ޤκ��ں������ֳt�o�i�A�H�̬��F�ͬ����K�Q�A�P�Ϻ����q�l�I�ڨt�ζV�ӶV�s�x�A�ܤ���j�H�Υd�}��VISA��MasterCard�@�P�}�o�W��Secure Electronic Transactions(²��SET)���w���q�l�������A�@�������W�H�Υd�I�ڪ��覡�C�]������ԥ[��s�q�l�{���P�����q�l�I�ڨt�ι����O�̦b�i����O�ɡA�T�̤����������ʡC\n���G�o�{�A���~�Ӱ�H�ϥιq�l�{���P�����q�l�I�ڨt�ζi����O���欰���������ͶաC�ȶȹq�l�{���������v�ӻ��N���������ͶաC�ثe�ꤺ�H�Υd���y�q�Ʀ��|�d�|�ʦh�U�i�A���ĥd���y�q�Ʀ����d�K�ʦh�U�i�A��IC�d�������Ƨ󰪹F�@�d���ʦh�U�i�C�b�u�u���T�B�|�~���A�q�l�{���κ����q�l�I�ڨt�λP���O�̪����O�欰���۫ܲ`�������ʡC\n���p���ǥѳ]�p�ݨ����覡�A�w����j�ǰ����հϪ��v���H���o��ݨ����覡�i��լd�C�D�n���ت��Y���Q�q�l�{���κ����q�l�I�ھ���P���O�̪����O�欰����������s�C', '���F��', 'A9128007', '2013-05-30'),
(49, '�A���~���XE�ƾP��ХH���{����', '���Q��', '�t����', '  ����s������J�oĭ�÷��j�Ӿ�����y�����Ĥ@�B�A�D�n�b���X�B�ΩҾǪ��h�C������s�@�B�����[�]�B�q�l�Ӱȵ��U������A���Ǻ����ө��P���@�A�A�Ѱӫ~�����B���y�B���y�B��P���U���ҾD�J�����D���R��s�H��������з~���g��C', '�^�ɬ�', 'A9228021', '2013-05-30'),
(50, 'Asp.net���XSQL-�H�ħ��t�ά���', '���z�L', '�t����', '�ħ��쥻�O�ϥΦ��ª��ϺЧ@�~�t��(Diskette Operation System, DOS)�Ӻ޲z�ħ����P��~�ȡA�ѩ�ާ@�W�u��ѱM�~�H���ӨϥΡA�[�WDOS�t�Τw�g�Q�^�O�F(�H������x���H���|���H�|��)�C�ҥH�g�L�Ҷq���Ҳ{�p�᥻��s�N�ɭ�ASP.NET2.0��������Ʈw�����~�A���XSQL2005���j�j�\��A�s�@�X�@���ħ�����T�t�ΡA�q����������H�ާ@��ج��������A�ô��ѩ������ާ@�����ѦU�ϥΪ̨ϥΡC', '�L�t�v', 'A9228379', '2013-05-30'),
(51, '�Q�θ�Ʊ��q�޳N���R�N�~���� �ݨD���ޱШ|����s', '���Q��', '�פ���', '�Q�θ�Ʊ��q�޳N�A���R�X�~�ɹ�U���M�����ݨD���p�P�ͶաC�b���A�ڭ̥H��T������t���ҡA�w�藍�P��¾�~���O�����R�A�̷ӾǾ��B�y��B�q���M����������R�X�U�ؤ��P���ݨD��T�A�åi���ͱM���ݨD�Ʀ�]�C', '�J?�t', 'A9228023', '2013-05-30'),
(52, '���j�ǰ����հ��Z�ĿŶq���إ� �ХH���ŭp���d����', '���Q��', '�פ���', '�G�Q�@�@�����{�@�P���Ҫ��ܰʻP�������v���A�ϱo���~�������w�����Ӻ����U�Ȫ��ݨD�A�����޲z�P�Z�ĿŶq�������n�����D�C���ŭp���d�������i�ѨM�o�ǰ��D�A�H�W�[���~���v���O�C�j�M�|�զp�P���~�@�ˡA�b���{�����귽���v���̼W�[�����p�U�A�p�󱱨�w��A�H���ɱШ|�~��H�����ǥͤήa�����ݨD�A�S��إߦU�Ǯժ��S��H���@�v���u�աA�O�U�պ�������g��ҥ������諸���D�C', '���T�o', 'A9228024', '2013-05-30'),
(53, '�s�����W��(������)�K�Q�ө���}�����Q -�H����������Ϭ���', '���Q��', '�פ���', '����s���p��b���h�v�����Ҥ��A����ܾA�����]�I��}�A�Ϧ���}�����v�F��̤j�A�����j�q�����U�Ӥ��P��쪺�s����~�����m��ơA�������R�Q�׿�}�]�����ڥ��A�ѦҲ{���|�Ӥ��P���U�����@�u���a���s�ꩱ��}��k�P��h�A���O�O7-11�B�����ҡB�P�ڧJ�B�}�ڤ�A�ǵۦ����ӨӪ���ơA��X�|�j�s��ө���������}�@�q�B�ΦU�۪��S�ⵥ�C', '���T��', 'A9228026', '2013-05-30'),
(54, '���~�ɤJSCM����ȭ����Q�w�H���䦨�\�]������¦', '�����]', '�פ���', '�H�ۥ��y���~���v���P�ɥN���ܭ��A�H�P�N��Te�ƤΦ��Ī��B�θ�T�޲z�A�ǥH�����U���~���ɮĤO�Φ��q�Q�����@�ӭ��j��ĳ�D�A�ӥ��~�������n���`--������޲z�A�������ȥD�n�O��X���~���W�B���B�U�嵥�y�{�B�@�A��B�@�y�{�g�Ѹ�T��ު���U���R�P�u��A�ت��O���ѥ��~�޲z�̹�B�@�y�{�������P�F�ѡC\n �Ӳ{�����~���F�]���@�ɼ�y�B�t�X�޶i��T��ޡA�w�Ϥ��q��o��j���įq�A�ҥH�ɤJSCM�t�Τw�O���n�ͶաA�ӾɤJ���t�Τ]�s�b�ۥ��Ѫ����I�A�ҥH����s�Ǧ��HSCM�ɤJ�����䦨�\�]������¦�ӱ��Q���~�]�������Z�ġC', '�C�뿫', 'A9128341', '2013-05-30'),
(55, '�X�󦡵������-�H����X��|����', '��J�s', '�t����', '����s�Q��3Ds MAX�PVirtools�ӻs�@��|�����������t��, �إߤ@�M�y�{�q�W���B�]�p�즨�~��X���i�{', '�����M', 'A9228031', '2013-05-30'),
(56, '�ȹCe�I�q', '�����]', '�t����', '����s�D�n�O�H�߷R�ȹC���������ߡA�إߤ@�M²��S�ֳt���ȹC���n�A�Ʊ榨���ȹC�̪��K�ߧU�z�F�H��²�����ް��B��˥��������B�H�ʤƪ��]�p�A���q�ƥ𶢪�������ɨ��B���J�ȹC���ʡC', '��a�D', 'A9228032', '2013-05-30'),
(57, ' ����s�����D���I�A�b��p��N�X�s���H��ͺA�z�L�����Ǽ��X�h�C�H�X�s�������귽�Y���ʥF���סA����s��', '���Q��', '�t����', ' ����s�����D���I�A�b��p��N�X�s���H��ͺA�z�L�����Ǽ��X�h�C�H�X�s�������귽�Y���ʥF���סA����s�Ҵ��Ѥ���ơA��X�s���a�N���󰪪��z���סF�����|�h���������n���v�A�ϥ�����q�����j�M��X�s��������T�C�N���X�s�a�ӧ�h���o�i�A���׬O���a�S���B�媫�ά����A����e�{��@�ɪ��R�x�W�C\n   ', '���p��', 'A9228033', '2013-05-30'),
(58, '���R�u�W�|���޲z�P�d�����t�ΡХH�L�h��а���|����', '���Q��', '�t����', '����s�����D���I�A�b��p��N�X�s���H��ͺA�z�L�����Ǽ��X�h�C�H�X�s�������귽�Y���ʥF���סA����s�Ҵ��Ѥ���ơA��X�s���a�N���󰪪��z���סF�����|�h���������n���v�A�ϥ�����q�����j�M��X�s��������T�C�N���X�s�a�ӧ�h���o�i�A���׬O���a�S���B�媫�ά����A����e�{��@�ɪ��R�x�W�C', '���p��', 'A9228033', '2013-05-30'),
(59, '�u�W�ȪA�t��', '�����]', '�t����', '����s�����ǥѭӮ׬�s���q���u�W�ȪA�t�Ψӱ��Q�p���ǥѬ����\��H��U����N�q�ܪA�ȼҦ��A���Ӯ׬�s���q�����Y�ϥιq�ܪA�ȼҦ������Ȥ�A�Ȥ��D�n�@�~�Ҧ��A�H�۫Ȥ�ƶq���W�[�]�]���X�j�ȪA�ζ��s��ܦʤH���k�W�ҡA���M�w�إ��e�j���Ȥ�A�ȹζ��A�o�����o�{���|���{�H�����D�n���D�A�b�D�J���j���D�ɡA������J���Ȥ�A�Ȯץ�]�H�۫Ȥ�ƶq�W�[�Ӫ��u�W�ɡA���_�a�W�[�ȪA�H���õL�k�u���ѨM���D�A�Ϧ��H���ӨӪ��O�����q��Bí�w�ɡA�Y�X�{�ȪA�H���L�Ѥ��ü{', '�\�d��', 'A9128014', '2013-05-30'),
(60, '���R�u�W�|���޲z�P�d�����t�ΡХH�L�h��а���|����', '������', '�t����', '����s�����D���I�A�b��p��N�X�s���H��ͺA�z�L�����Ǽ��X�h�C�H�X�s�������귽�Y���ʥF���סA����s�Ҵ��Ѥ���ơA��X�s���a�N���󰪪��z���סF�����|�h���������n���v�A�ϥ�����q�����j�M��X�s��������T�C�N���X�s�a�ӧ�h���o�i�A���׬O���a�S���B�媫�ά����A����e�{��@�ɪ��R�x�W�C', '���p��', 'A9228033', '2013-05-30'),
(61, '�v�t�Ʋ�������E8', '�i�Ż�', '�פ���', '�q���ʵe�b��ı�ǹF�B�q���C���B�������N�P�q�v���~���w�������n�����{��k���@�A���q��3D�������N�Ч@�H�ΰӷ~���N�����{�u��ɡA��Ч@����Ϊ��{���S��Χe�{���Ч@�y���۵M���O��ǲ����N�C', '��K�]', 'A9128308', '2013-05-30'),
(63, '���ʦ�������Ҥ���s', '�x�M��', '������', '�z�L�I�����������(Virtual Reality,VR)�P���ʤp�C���A�����s�x�W���U���N��ơA�঳�ۻ��ۦ����ĪG�C', '�寮��', 'A9128018', '2013-05-30'),
(65, '���X�����S�x�j�M�޳N����o �w �HGoogle����', '�����]', '�פ���', '����s�O���չB�������g�����Ө�U�ڭ̶i������������A�z�L�N�������S�x�ƭȤƤ���A�ɤJ�����g�������V�m�X�@�Ӻ����������ҫ��A����i�H���ϥΪֳ̧t���M���֦��Y�ǯS�誺�����C����s�ҳ]�w�������S��O�@�ؾ�X����������ơA����Q��Google�j�M�X�Ӫ����G�i�H�O������ؿ��榡�������A���������֦��@�ǳs���P���٦��@�Ǥ�r�ӻ����o�ӳs�����γ~�A�ڭ̻{���o�إؿ����������i�H�ֳt���M���ϥΪ̩һݨD����ơA���ɱ`�Q�ηj�M�������ϥΪ̥��w���۬۷��j���U�q�C', '���H��', 'A9128019', '2013-05-30'),
(66, '�����ʺA����^������s-�ϥ�JAVA��VB�{��', '������', '�t����', '���ں����P���y��T�����U�_�A���ܤF���~�P�ӤH�����q�覡�A�X�ʷs�@�N���ӷ~���R�C���ں����i���ѧֳt�M���ơB�x���T���P�洫�ɮ׵��\��C���~���ں����]���ѵۤj�q����Ʀp�Ѳ������B�s�D��ơB�ȹC��T?���A�o�Ǹ�ƭY�ൽ�[�Q�ΡA�åB�q���o�즳�Q����T�A�������ӤH�ϥεۯ�ֳt�o��T���A���´�ӻ��]�i�H�����W�����Ӫ���Ƥ��ܩ�B��L�Τ��a�C�o�Ǹ�Ʀp�G�৴�����B�ΡA�N��ӤH�z�]�P���~�g�粣�ͷ��j���U�q�C�H�Ѳ��������ҡA�L�h���׬O�Ѳ������Ʃά�s���i�A���ƪ����o���Q���x���A�]�������i��۰ʤƪ����R�P�޲z�A�{�b�b���y��T���W�o�Ǹ�Ƴ���H�q�l�ƪ��覡���o�C\n	��ƫ������Ѥj�q��Ƥ��^���X�����Ȥ����ѡA��Y�N����ഫ�����Ѫ��欰�C�o�Ǹ�ƥ]�A�@������ƩΦh�C���ơA�Ӫ��ѫh�O��ƶ����t���Y��������F�P�e�{�C�]����ƫ������U���~���o���Ѩóгy�v���u�աA�G�ް_�s�j�������A�]�P���F�\�h�s����s��k�B�t�Ω����Ϊ��o�i�A�Ӧ����@�ӧֳt���������C����s���X�ѥ������ƪ��^���A�ô���ѳo�Ǥj�q�ƾڸ�Ƥ���X���ê��ѡA�i�@�B�}�o��������t�ΡA���ѨM���ѦҤ��ΡC', '���Ũk', 'A9128016', '2013-05-30'),
(67, '�Q���O�V', 'ù�ػ�', '������', '��X�~�ӡA�ؤH�b�@�ɻR�x�W���{�G���A���צb�F�v�B�g�١B��Ƶ��譱�������@�u���a�A�]�ӱa�ʥ@�ɤ@�ѡu���ꭷ�v�C�H�q�v���ҡG���w���u�ת����s�v�A�i���Ѫ��u�^���v�B�u�Q���I��v�A���s���u���ܡv�H�Χ��s�N�u�N���ҡv���C�o�Ǧ��Z���M���q�v���Ϊ����O���꤭�d�~���v�Ҭ��ê���Ƹ겣�A�����D���гy�L���a�ӷ~�P���N���ȡC�F�v�P�g�٪��Iŧ�O���Ϊ��A��Ƴy����?���q�Ƭ��L�Ϊ��A�ڻ{���u���ꭷ�v�ұa�ʪ���y�����{���A���ӡu�����ơv�N��������D�ɥ@�ɮɩ|��y�C', '������', 'A9128015', '2013-05-30'),
(68, '3D�ʵeMy Bone', '��J�s', '������', '���{�b��޵o�F�ҽ�A�\�h�q�v�άO�q���C�����e���A�O�D�`�O�H�_�٪��A��I��Ҥ䴩��3D�ʵe�s�@�n��O�D�`���n���C���O�{�b3D�ʵe�s�@�n��ʮa����A�C�ӳ�����S��A���O�@�Ӱʵe�������A�ëD�a��@�ӳn��N�i�H�������C�ҥH�N�Q�γo���M�D���ҿСA�F�Ѱʵe�s�@�L�{�A���էQ��3DSMAX�MMAYA��M�n��ӻs�@²�檺�ʵe�C', '���K��', 'A9128022', '2013-05-30'),
(69, 'HIPPO�g�Q��-3D�u�g�ʵe���Ч@�P���Q', '�i�}�F', '������', '�q���ʵe�b��ı�ǹF�B�q���C���B�������N�B�Ʀ����N�P�q�v���~���w�������n�����{��k���@�A���q��3D�������N�Ч@�H�ΰӷ~���N�����{�u��ɡA��Ч@����Ϊ��{���S��Χe�{���Ч@�y���۵M���O��ǲ����N�C������w��3D�q���ʵe�Ч@�򥻪����ץH�Τ@�ǧޥ������Q�A�̫�A�[�W�ڭ̪���@�g��A�Ʊ���U�b���M�~��쪺��s�̩γЧ@�̡A����3D�q���ʵe����`�J���{��', '�B���M', 'A9128021', '2013-05-30'),
(70, '���104�ШD¾�����[�]', '�����]', '�t����', '�ɥN�w�i�JE�ơA�D¾�̧�u�@���A�u�O�ϥζǲΪ���k�A�z�L�������j�j�\��A�i�H�b�a�W���j�M�u�@���|�A�z�L���T���\�వ���Z���աA�U���U�˦a�D¾�������g���i�H���B��C���b�@�몺�����W�w���\�h���D¾�����B�H�O�Ȧ�A���O�o�S���@�ӱM���S�w�ڸs�Ҭ[�]���D¾�����A�o�I�O�ثe�j���Ҥ��ʪ��A����T�w���ݤƪ��{���A�p���^�����Ϊ���T�A���A���O�ɶ��b��ƪ��f�\�W�A�o�N�O�@���ǰݡC\n���@�Ӹ�ު��ǥͨӻ��A�b�ըD�Ǵ����A�]��֥i�H��Ĳ�즳���N�ӴN�~��������T�C�ӹ��w���~���Ǫ��j�̡A�]�ʥF�@���~���ǧ̩f�̩ΦP�Ǫ���y�޹D�A���~�F�]�N���p�F�C���~�A�b�ժ��Ѯv�̡A�]�S���@�ӤF�ѦP�ǱM�~���a��A�P�ǭ̩Ҿ֦����~�ءA�b���餺��������X�ӡC\n�{�b���D¾�[���w���ܡA�D¾��k�]�]���ɥN�ܤơA�ۥj�H�ӡu��E���ˡv��������e���o����|�A�p��ⴤ�ۨ����u�աA���e�ӥX�@�B�A�O�j�a���Q��o���C��s�̳z�L�[�]�M�ݺ�������s��k�A�����N������T�W�ߤơA�b�z�L��ھާ@���覡�U�A��a���ϥΪ̦��ҧU�q�C\n', '�}�лT', 'A9128025', '2013-05-30'),
(71, '�����}���Ʀ����', 'ù�ػ�', '������', '�H�ۼƦ�Ƭ�ު��i�B�M���|�v���O�����ɡA�ǲΪ��оǤ覡�w���ມ���a���M�ĵ����ݨD�A�a���Ʊ�M�D��ֳt�ǲߥH�Χl�ޫĵ��`�N�O���оǤ覡�A�Ӥ��ʦ��оǥ����H�o���e�����U�s�@���A�]�����ʦ��оǦ�����~�Ӽ������ǲߤ覡�C���M�D��s�p��QFlash �B3Ds MAX �PVirtools�ӻs�@�����}�}�k�P�若�ʧ@�����ʦ��оǡA�ǥH�F�����s�ǲߧ����}���ت��C\n    ���~����X�O�H�����ӧe�{�A�㦳���ʾǲߤίu���[�઺�\��A�ϥΪ̥i�ھڦۨ����ݨD�ۦ�ޱ��A�ǥѵ����W�����s����L�W������Ӿޱ��[�ݪ����פμ��񪺳t�סA��K�ϥΪ̾ǲߡB���ɾǲߪ��t�סA�F�����ʦ��оǪ��ĪG�A�z�L���ں������ǹF�٥i�����s�����}�ɤ@���ߤO�C', '�B�ج�', 'A9128024', '2013-05-30'),
(72, '�Ʀ�h�C��]�p���Ω�A�ˮi�t���įq���R��s---�H���j�Ǿǥͮi�t����', 'ù�ػ�', '������', '����s�H���j�ǰ����հϾǥͬ���s��H�A�D�n�ت��b���Q�H�[��̷P�������ߡA�åB���Q�Ʀ�h�C�鵲�X�A�ˮi�t���[��̵�ı��ťı�P�x���v�T', '���', 'A9128028', '2013-05-30'),
(73, '�J�ٺ������D�ѨM�t��', '���Ԯ�', '�t����', '�w��Ǯդ��J�ٺ������D�H�αJ�ٺ����޲z�H�������Ӵ��Ѥ@�ӨϥΥ��x�C�ѩ�դ��J�ٺ������D�c�h�A�M�Ӧ����ְ��D�o�O�@�ǰ򥻳]�w�S�����A�Ҧp�G�����u�S������άO���d�X�ʥ��˩Ϊ�IP�S�񵥡A�ϱo�J�ٺ����޲z�H���`�ӶO�ɶ��b�o�ǰ򥻳]�w�W', '�����o', 'A9128030', '2013-05-30'),
(74, '�ĤE���Q�ФH���ʶR����', '��J�s', '�t����', '�Q����t�@�Ӧ��O��ۤw���⪺�H��?�b�{��ͬ����ڭ̧�t�\�h����A���]���\�h�����s�̤��i���t�C�Ҧp:�^���B�k�v���C�o�Ǥ]�\�b�q�v����s�̷|�ݹL�A���b�{�ꤤ�O���i��F��������C\n�i�J�����C���@�ɡA����Ʊ������i�ন�u�A�Ҧp:�����ʸU�I�ε��C���󨤦ⳣ�i�H�H�ۧڦөw�A�o�]�O�����t�C���O�ثe�~���H���̷R����]�C\n�H�ۺ��ں���(Internet)���o�F�P�q�l�ӰȪ��U�_�A�H�̥i�H�Q�Υ��x�c��ӫ~�A�ҥH��X�~���ʪ�������q����C�Ҧp�G�����ѩ�-�էJ�ܡK���A���ΥX���N�i�H�R��Q�n�����~�C\n�b�ʪ��������A�j�a�i�H�N�Q�R�����~�A��m�b�ʪ��x�̡C�ӳo�Ǫ��~���O��ڥͬ����u�ꪺ���~�A�Ҧp�G�ѡB��A�B�ͬ���Ϋ~�M���~�K���C�{�b��s�̶}�o�@�Өt�άO�Q�νu�W�����t���覡�A��ܤ@��¾�~�A�Ҧp�G�Ѯv�B�߮v�B�߲z�Ը߮v�B���֮a�B��v�C�C��¾�~�����T�w���ݩʭȡA�]�N�O���⪺�H��S��A�Ҧp�G�@�ߡB���q��O�B�ӤߡB�P�_�O�B�R�ߡC�Ӧb�q�l�ӰȪ����x�U�A�i�H�i��������¾�~���H�ʯS��C�b�����R�B�檺�C�����A�i�H�ݥX���P¾�~���H��S��v�T��Өt�ζR�B�檺�B�@�C', '�����@', 'A9128034', '2013-05-30'),
(75, '��Ʈw�b�h�C��W���o�i�P����', '�i�}�F', '�פ���', '��Ų��{����Ʈw�䴩�������A�ȥi�䴩�Ʀr�B��r����ժ���ơA�j�����~�\�h�H���F���Ӭ�s�A�Ө䤤�ڭ̿�ܱN�h�C��p���m�b��Ʈw�W���s�W�B�R���B�����B�d�ߵ��\��@���ڭ̳o����s���ؼСA���]�{���귽�|�L�k�������N�h�C���Ʈw�Ω��@�A�b���ڭ̥u��s�p��䴩���z�רåB�N�{����Ʈw�i�䴩�����إh���@�ӻP�{���۵��X�����γn��s�@�A���n��s�@�ت��b��o�i�@�W�i�줽�Ǥu�@�Ĳv��Office Operation System�C', '����e', 'A9128032', '2013-05-30'),
(76, 'ERP���~�귽�A�y�w �H�M��ƾǤA�P��˨t�ά���', '�����]', '�t����', '�]�M�䤽�q�q�Q�~�e�ЬY�a��T���q���L�̶q���q���F�@�M�t�ΡA�b���~�T�ꬰ�M�䤽�q�a�ӤF���֪���K�A���H�ۮɶ��C�C���W�[�A�b�{����T�y�ʦp�����j���ɥN�A�¦����t�Τw�g���b�ŦX�Ӥ��q���ݨD�A�ӥB�{�b���t�ζ}�o�̨ӻ��A�p��}�o�X�@�M���ϥΪ̳̫K�Q�̮e���F�ѥB�ާ@���t�άO�{�N����y�A�G�ڭ̥H�����]�p�ӻs�@�M�䤽�q���x�B�޲z�B�v���޲z�B�{���޲z�B�~�Ⱥ޲z����', '���ɷ�', 'A9228001', '2013-05-30'),
(77, '���j�Ǫ�m�M���u�W�q���t��', '�i�}�F', '�t����', '����s�ظm�@�M��m�M���q���t�ΡA�䤤�b���t�Τ��]�t�|���M�ϡB�q���B�d�߬����B�ק�q���M���g�U���u���y����C�t�έ����i�H�s����̷s������T�A�]�A��m�M�����u�B�����B�W���a�I���ʲ���k�C�n�J�t�Ϋ�Y�i�ݨ�|���M�ϡA�������e�������j�ǰ����հϾǥ�ú��ڶ����ɶ��C��q���譱�A���j�ǰ����հϾǥͭq��������|�N�q���ưe�ܭq���Ʈw�A���j�ǰ����հϾǥͦb�C�g�T�ߤW12�I�eú��ڶ��A�b�����ȹB�T�{������j�ǰ����հϾǥͪ��ڶ���A�N�O�Ӿǥͤw�����q������C�Y�b�q����Q�����A�i�b�P���T�ߤW12�I�e�i�H��ק�q�����������q���F�p�G�w�I�����A�h�ݦb���G�����˦ۨ찪���ȹB�X�s�n���i��h������A�t�~�ݦ���10%����O�Cú��ڶ���i��d�߬���������ݬO�_ú�榨�\�Aú�ڦ��\���ܫh�N���q�����򧹦��C�C�g�|�Ʀ�t�Φb�T�{���j�ǰ����հϾǥͧ����q�������A�ߧY���U���u���ʶR�s�����ǨӱƦ�l�A�p���Y�@���u���f�{�H�ƥ����@���h�w�ƻP�F����u�֨��A�Y�֨���W�L40�H�h�O����ˡC', '�P�`�\', 'A9828405', '2013-05-30'),
(78, '�q�l���]���o�i�P�Ͷ�', '���Q��', '�פ���', '�̪�X�~�q�l�ӰȲ���A���F��q���檺�q�l�ө����~�A�q�l���]���o�i�]�v�����k�A�۫H�L���[���N�ӡA�{���������t�ե��|�Q�q�l���]�������t�Ҩ��N�A����s�K�O�ۭ���q�l���]���Ӫ��o�i�ͶաC', '���|��', 'A9228002', '2013-05-30'),
(79, '�h�C��q�����U�о����Φb��|�Ш|�譱-�H�x�y�V�m����', '��J�s', '������', '����s�D���b���Q�h�C��q�����U�о����Φb��|�譱�A�w����|�оǤ譱�A�b�B�ʧޯ઺�ǲ߹L�{���A�[��B�ҥ�B�m�ߤT�̶ե��g���L�{�A�Ӧb���ն��q�ѩ�ʧ@�������m�A�ǲߪ̥i��|���ˡB�ॢ�H�ߡB�����~��ǲߡA�Q�Φh�C��q�����U�b�оǤW�A���N�쥻���ѡA�i��y�����l�������ΨӤ��Χl���C', '�G����', 'A9228003', '2013-05-30'),
(80, '�H��r�X�ʭ��T���X3D�ҫ��s�@�����D��', 'ù�ػ�', '������', '�ĦX�F�U�ɬ��k�����Ҳ��͡A�q���n��]�����Τ������H���A�ñN�h�C��ʵe�z�L�q���{���B�Ω���ɡC�����D����²���Φ��覡�A�N�O���g�פ�����s���ؼСC', '���h��', 'A9228005', '2013-05-30'),
(81, '�ѵM�a�`���ҤU�ϴ��ָ̧��|���̾A�Ƥ��R', '���Q��', '�פ���', '�x�W�a�Ϧ]�a�z��m�B��ƦX���a�`���M�I���ӥ��v�����a�A��b�C�a���I�P�饻�P�~���y�e�Q�C���j�۵M�a�`�o�ͱ��p�U�A�㦳�L�k�w���ηm�Ϩ褣�e�w���S�ʡA�p��b�m�϶����C�Q�G�p�ɤ��U�Fí�����M�����O�A�H�̵u�ɶ��q��m�׻P�ϴ��O�Ϩa��ʤ��������n��ĳ�D �C\n����s�ؼЫY�w��Ϩa�ɯ�ھڱo�쪺��T�p��X�ָ̧��|���ϴ����u��ܡA�H�Q�ϴ���b�̵u�ɶ����A�B�e�ݨD�������H�O�Ϊ���A�i�J�a�ϡC�ϥΤ����R��k�O�̷ӱϴ���ʩM���|�l�a�P�i�q��׿ĦXDijkstra �t��k�{���ƨåH�{���ҫ��ơA��H�ϧΤƸ��|��ܻP��r�ƪ����Ȼ����ӧe�{���G�A�i���U�M���̧Y�ɶi��̾A���|�i��ϴ����ѨM��סC', '�i��޳', 'A9828363', '2013-05-30'),
(82, '�h�C��q�����U�о�-�H�Ʋy���P�оǥ��Ь���', '��J�s', '������', '����s�]�p���ʦ��оǪ����СA�Τ��P��ѥ��P�{���оǪ����{��k�A�D�Էs���۾Ǥ�k�C�H3D�ʵe���{�����I�A����Flash�]�p���ʦ��оǥ��x�A�i�H��J��r�B�Ϥ��B�ʵe�B�v�������C�ǥ�Action Script�Ӱ����O�A�Ӱ����|�B�ƹ����O�Ϋ��s�A���֡B�v��������A�ϱo�e�����״I����A�����Q�ΰʵe���覡�e�{�оǤ��e�A�ӥB�b�ҵ{�����٧Q�μ������y�ɡA���U�ǲߪ̤F�Ѳy�ɶi�椤���W�h��k�A���U�ǲߪ̧��F�ѽҵ{���e�A��ҵ{���e�󦳿���C\n', '���L�_', 'A9228006', '2013-05-30'),
(83, '�ȹCe�I�q', '�����]', '�t����', '����s�D�n�O�H�߷R�ȹC���������ߡA�إߤ@�M²��S�ֳt���ȹC���n�A�Ʊ榨���ȹC�̪��K�ߧU�z�F�H��²�����ް��B��˥��������B�H�ʤƪ��]�p�A���q�ƥ𶢪�������ɨ��B���J�ȹC����', '��a�D', 'A9228007', '2013-06-04'),
(84, 'Dreamer (�ڹC��)�� Flash ���ʦ����x', '���z�L', '�פ���', '�Q�ιq���ʵe�P�C�����]�p�A�N��̾�X�_�Ӧ����@�Ӥ��ʦ����q���ʵe���x�A�g�L��ھާ@�A�ﵽ��X�зs�H�@����s�����׻P���G�C����s���i��X�F�U�ػs�@���޳N�A�H��@���覡�ӶǹF�h�C�骺�޳N�[�J�{���]�p�ޥ��å�flash�p�C�����覡�ӧe�{�A�ϱo�h�C��i�H�󬰤��ʤơA�H�F��󬰥Ͱʪ����q�C��P�u��C', '���a��', 'A9228008', '2013-06-04'),
(85, '�ն�e�ơо�X�ʧY�ɰT���ݨD���t�Τ��R', '���Q��', '�פ���', '����s���D�D���u�ն�e�ơо�X�ʧY�ɰT���ݨD���t�Τ��R�v�A�D�n�O���Q�Ǯծv�͹�u��X�ʧY�ɰT���t�Ρv���ݨD�{�סC��s�ت����G���Ѯv�ֳͧt�B�Y�ɦ��T�]�ǰT�^�\��B���Ѯv�ͥt�@���q�M�p�������x�B�ѨM����l��q�������K�ʡC', '�L�A��', 'A9228009', '2013-06-04'),
(86, '��s�޲z�ﵽ�J�ٺ����~��H���j�ǰ����հϬ���', '�����]', '�t����', '�n�p�󴣨Ѱ������J�ٺ������ҡA�������B�޲z��t�F���n����A�I��h�����ɧU�A�������ިt�ΤΤu��N�����q�ơC��Ƥ��R�]�O���ޥ��ƪ������A�]���������t���v���W�[�ɡA���F�����A�ȫ~��A�N���g�`���t�Φa�i������W�e�P�ظm�A�Ӻ��ީҦ����B���R�쪺�ƾڴN�O�W�e�����n�ѦҡC�ҥH�����޲z�٥����]�t�U�����޸�ƪ��J����R�B�g���ʳ������Ѹ�ơA�إߥi���˯����R�����޸�T�w�C', '���ů�', 'A9228010', '2013-06-04'),
(87, '�ꤺ���q�~�ɤJERP�Ӯ׬�s�����䦨�\�]�������Q-�H������q����', '�i�Ż�', '�פ���', '�b�o�����U�ܪ��q�l�Ƹ�T�ɥN�̡A���~�ݭn�ǥ�IT����U�A�N�@����~�[�\��������޲z�B�]�Ⱥ޲z�B�Ͳ��޲z�B�H�O�귽�޲z�H�αM�׺޲z���A�ǤJ���X���~���u�@�y�{���C���F�إ߲Τ@���ϥάɭ��A���Ī��B�ΰӷ~��T�A�M���U���~�ѨM�b�t�סB�Ĳv�W�����D�A�ݭn���@�M���ƪ����~�귽�޲z(Enterprise Resource Planning)�A�Y�ɤϬM�̷s�����~�귽���ϥΪ��p�B�Y�u���~�����ɶ��B�M���ѥ��~�M�����̾ڡC', '���b��', 'A9228011', '2013-06-04'),
(88, '�����ѩ����g��{�p�P��P��k', '�x�M��', '�פ���', '����s���b���Q�����g�٤U�A�����ѩ����g��{�p�P��P��k�C\n�ڭ��ǥѮ��O�̪����סA�Q�ή��O�̰ݨ��������R�A���Q�v�T�����ѩ����v�����Ҧ]���P�����ѩ����g�給��������ѩ����g�竬�A�O�_����۪��v�T�A�i�ӤF�Ѩ촿�g�s���L�����ѩ������O�̹������ѩ����g��S�ʻP�ʮѷN�@���������Y�A�o�{���O�̦b�i������ʮѮɩҭ��������V����A���D�����ѩ��g�窺���n�o�i��V�C\n', '����}', 'A9228012', '2013-06-04'),
(89, '���������g���������I�ڤ覡��������s', '�i�Ż�', '�פ���', '�w����O�̦b�j����ҨϥΪ��I�ڤ覡�Ӷi���s�A��s�ϥΦ�إI�ڤ覡�b�j����I�ڤ覡�W�̬��ֳt�B����K�C�ڭ̿�ΤF�T�a�j����A���O�O�j�֡B�a�ֺ֩M�n���h�A�ӧ@���o����s���˥��C��s���P���j����B���P���I�ڤ覡����t�O�A�γ̱`���j���ҨϥΪ��I�ڤ覡�O��ءH��ܥI�ڤ覡���z�Ѭ���H', '�\�a�}', 'A9228013', '2013-06-04'),
(90, '�H�L�u�ʥ]�^���i��ϥΪ̤W���欰���R', '��J�s', '�פ���', '��X�~�ӹq����ǧֳt�o�i�A�b�����q�T�W�A�H�L�u�����o�i�ƨ�A�H�����{�N�ͬ����ҥH�ΨϥΪ̻ݨD�ӹF���ͬ��K�Q�A�N�ǲΪ�����u���T�w�t�m�A�i�B�����׼u�ʥi�X�R���L�u�u���A��֤����n�������ظm�����C', '���l�j', 'A9228014', '2013-06-04'),
(91, '�H�H�f���c�������T��}---�H���������۰ϻP�T�h�Ϭ���', '���Q��', '�פ���', '����s�w��\���~���}����}���]�����լd�M��s�A�]�S�O�w��s�ꩱ������}���D�W���Q�סC�@��H�`�{�����s�ꩱ���b�}�]�����ɦ��\���A���ѥ���s�����X�ä��ɵM�F���Ƿ|���Ѫ���]����}���Ĥ@�B�J����}�����۷��j�����Y�C�����T��}���]�N�O����s���D�n��V�C�j�����������g�����]���A�Ӳ{�N�h�������H�����]���A�]�N�O���H��N�O���顨�A�H�H��ӧ@�����n�������]�����Ͷi�{���ͶաC', '�dʹ�S  ', 'A9228015', '2013-06-04'),
(92, 'RPG���ʦ�3D�C���s�@�P�L�{-���]���C���o�i����', '��J�s', '������', '�o�O�@�ڤѨϻP�c�]��ܪ�RPG������3D�C���C�D���ǥѤ@���@�����}�������ӥ��Ѵc�]�A�ѱϦۤv���P�M�C�ڭ̧Q��3D MAX�H�ε����{�����ӻs�@���C���A���d�]�p�O�Ѧa����������]�p�I��,�Ӹ˳ƪZ���h�O�ĥΤF���x���A�˨ӧ@���ѦҡA�ĤH�h�Q�ΤF�c�]���y���ӥh�]�p', '������', 'A9228016', '2013-06-04'),
(93, '�����t�m�M��m��ϥΪ̪��v�T�w�H��p�ǵ�����', '��J�s', '�פ���', '���F�Ѱ�p�ǵ��̳߷R�����������s�Ƥ覡�M�����t��˦��A���լ�s�z�L�լd��X�u���ر`���������s�Ƽ˦��v�M�u�C�ӱ`�����t��˦��v�A�Q�κ����ݨ��լd�覡�ӨѰ�p�ǵ��D��o�����M�t��n���T�Q���غ����e���A�ýլd�����s�Ƴ߷R����]�M���߷R��]�B�U�����s�ƩҰt���C�ؼ˦��߷R�M���߷R�e�����]�C', '�}��', 'A9228017', '2013-06-04'),
(94, '�����Ʀ�ƶǲΧ���-���U��', '�i�Ż�', '������', ' ����s�Ч@�D���b��H���P��ǲΪ��覡�ǹF���U����ơC��s�i�{�O�ǥѤ��m�J��B�г��X�͡A�H�F�ѥ��U�����o�i���v�B��ХѨӡA�A���R�{�p�A�w���k�ǥX�����D�I�A�M�D�X�A���C�����U�t�X�A�Υt�}�P��L�i�઺�s���x��t�C�Ч@�W�H��L�������������ޱ������@�������A�A�H�����@���e�{�覡�C', '�Y����', 'A9228027', '2013-06-04'),
(95, '���O�̹�A�ȫ~��Ŷq����s-�H�ѩ�����', '���Q��', '�פ���', '�H�۲��h�����ѩ��U�_�A�ǲήѩ����F�P�����ѩ��ۮx��§�A�A�ȫ~��L�e�m�ê��O���n������C�ӥ���s�ت��b���F�Ѷǲήѩ��Ҥ��ʪ������H�β{�N���O�̯u���ݭn���A�ȫ~��s������C�]������s�N�|�HPZB3��Ǫ�(Parasuraman�BZeithaml�MBerry)�Ҵ��X��5�c������¦�A�s�@�����ݨ����R�X�C�@���ѧ������I�M�u�I�A�õ�����ĳ�M�ﵽ����k�C', '�J����', 'A9228028', '2013-06-04'),
(96, '�n�饭�x���� �HMinnSketch�G���ʺA�����{������', '�i�Ż�', '�t����', '�q�����o���O���F�ϤH���ͬ���[���K�Q�A�H�۹q�����i�B�A���������ε{���w�g���ŨϥΩάO�į�L�C�C�b�[�W�{�N���|�j�h�ƬO�ϥ�Windows�@�~�t�ΡA�D�n�O�]���H�ʤơB²��ƪ������A�ϱo�j���ү໴�����W��C�ǲΪ�UNIX�t�ΡA�u�O��r�t�ΡA���@��H�ӻ��A�O������i�J���C��Ų�󦹡A�ϱo�@�ǦbUNIX�W�u�q�����ε{���A�L�k�Q�j���ҨϥΡC�ҥH�p�G���UNIX�t�ΤW�����ε{���A���Ө줣�P�����x�W�C���򤣶ȯ�W�i�į�A�ٯ����j���ϥΡC', '���t��', 'A9228304', '2013-06-04'),
(97, '�������R�ֳt�E���Ϥ��]�m���X��E�Ǥ��įq�H�X�s��|���� ', '���Q��', '�פ���', '�b����W�Ҫ������|�ҡA��E�Ǹg�`�H�����w�A�X�O���[�H��\n�����ﵽ���{�H�A�ѩ�g�T���y�ƪ��t�i�A�L�h��P�궡������w\n�g������Ӭ����������K�����ʡA�Φ��H�f�v���V������������\n�աC���ӡA�x�W�H�f���c���H�f�¦V�_�B���B�n�T�j���|�϶����~�A\n���|�v���ѤƤ]�w�Φ��ǰ��֤ƪ��|�A�ô°��֤ƪ��|���ʡA����\n��|��E���������p�A�b���ӥu�|��[�c�ơC����s�D�n�ؼЫY��\n����|��E�Ǯį�F�ڭ̰w����|��E�i��ؼҡA�H�f�w���ݮɶ�\n���t�ήį�Ŷq���СA�ɤJ Fast Track Area �����ɫ�E�Ǥ���i\n�i���סA�i������q�Ƥ��R�H�D��i���׾ɤJ�e�ᤧ�t���{�סC ', '���R��', 'A9428010', '2013-06-04'),
(98, '���d�޲z�����غc�H���j�Ǭ���', '���Q��', '�t����', '����s�w��j�ǥͷR�����߲z�P�ݨD�A�Q�θ�T��޵��X��ǤW�魫����������ѡA�غc�X�@�M���d�޲z�����t�ΡA�w��ϥΪ�(���ծv��)�ߦn�B�\�U�����P�\�I�]�p�X�@�M�ӤH�Ƥ�����ЩM�A�q�B�ʤ���ĳ�C', '���Ӷ�', 'A9428011', '2013-06-04'),
(99, 'e-z Breakfast�u�W�q�\�t�ΥH�ΨΦ��\������', '���Q��', '�t����', '�b�ŦX�Ů���������h�U�A����s�b�K�Q������������¦�W�A�ձN�����q�\�~�e���޲z�t�α��s��@�몺�p�Y���C�H�ΨΦ��\������ڧ@�~�P�P�D���Ҭ���H�A�g��a�X�͡B�Φ������ҫ��B�i��ǳN�ʨt�Τ��R�åHASP.NET 2.0�ӻs�@�����C', '������', 'A9428001', '2013-06-04'),
(100, '��N�������ҫ����ظm', '���Q��', '�פ���', ' �ɦܤ���A�x�W�|���إߧ��㪺��E��׻P�ߺD�i���A��W�Ҥ���|�`�X�{��E�P��N�Ƕ먮�����p�C���ӥx�W�H�f�o�i���{���c�ʧ��ܡA��|�������t��P�~�ұN���Ʃ󤵤ѡC����s�H������k�q�Ƥ�N�����@�~�A�q���A�Ѥ�N�����귽���t�m�P�į�C\n�w��X�s��|����s�Q��Arena�t�Ϋإߤ�N�����ҫ��A�g�Ѷq�Ƶ{�Ǥ��R����������q�A�ç�g���ӤH�f�ܤƤ����P�����U������q���i��ݨD�C\n', '�i�ڷ�', 'A9428019', '2013-06-04'),
(101, '���ʦ��ʪ������P��ݺ޲z����@�]�p�X�HHa.Buy�c�l�ʪ�������', '�x�M��', '�t����', '�ثe�u�W�ʪ������j���O�H�����������C�ӫ~�A���O�̨̭õL�k�M�����ݨ첣�~�������A�ҥH�`�`�|���R�줣�p�w���Q�������~�A�[�W�ڭ̱q�����W�j�M�U���H�̹�����ʪ��ҩ�����Q�k�P��ĳ�[�H�k�ǡA�o���j���������O�̭̹�󥼨ӽu�W�ʪ������~�e�{�覡�꦳���ݡA�j���������O�̳��Ʊ沣�~�e�{���覡������ҧ��ܡA�Ǧ����C�ʶR�줣�߷R���~�����I�C�]������s�Ʊ�ĥΥH3D���覡�e�{�ӫ~(�H�c�l����)�A�Ǧ��Ӻ����Q�n�R��߷R���~�A���S�L�k�����ө��ʶR�����O�̪��K�Q�ʡA�üW�[���O���ʶR�������l�ޤO�A�H�μW�[�P���������ʩʡC���F�H3D�覡�i�ܰӫ~�~�A�ڭ̪������ٴ��ѤF�@�ӪŶ����ϥΪ̧̭�Z�L�̦۳Ъ��c�l�@�~�A�ܩ�@�~���榡�����̷ӧڭ̭n�D���W��A�åB�̾ڽu�W�ϥΪ̧벼�����G�����s�@��3D�覡�i�ܩ�����C', '���شQ', 'A9428304', '2013-06-04'),
(102, ':���ڷQ�a - �u�W�Ыκ�Shih  Chien  Dreamer', 'ù�ػ�', '�t����', '�@����s�D�D�H�u�ЫΥ򤶺��v���ҡA��ګإߤ@�ӥi�H���Ȥ�ֳt�B�M���a�F�ѩЫά[�c�����x�C��s���D�n���I�b��e�W�����P�Ʀ줺�e�����X�A���ϥΪ̯໴���a�z�L�����ӧ�M�ЫΪ�������T�C', '��a�t', 'A9428305', '2013-06-04'),
(103, '�l��޲z��T�t��-�H���j�ǰ����հϬ���', '���Ԯ�', '�t����', '����s���D�D���u�l��޲z��T�t�ΡХH���j�ǰ����հϬ��ҡv�A�D�n�O��Ǯվǥͪ��l��]�q��T�ơC�ت��b���N�l���T�z�L���ں������̦��Ī��ǹF�A���ǥͥi�H�b�J�٩άO�ե~�z�L�ڭ̪���T�t�αo�����L�H��]�q�A�i�Ө��N�F�H�u�d�\�٦��n�O���B�J�A�L�ݨ�L�c�����B�J�C', '���y��', 'A9428325', '2013-06-04'),
(104, '�դͰݨ��լd�t��', '�����]', '�t����', '??�O�q���|�B�ǮաB�t�ҡB�b�վǥͩάO�դͨ�??�ݡA�դ͹�ǮթM�t�ҹ�?���W�i����?�i�ίʪ����n�ʡC�դͬO���զU�t�Ҫ����n�귽�P�H�ߡA���߮դ͡B�����çV?�}�o�դ͸귽�A�O�W�j�ǮզU�t�ҹ�?�����n��?�C�U?�U�~���դͤ]�O�α��U�t�һP���~�B���~���n�����٤��@�A�]���L�̬O��?�K���B��T?�ӡB�P�U�t�Ҧ��S���P�����s��C��X??�A?�򦳮դͧⲣ�~�ҸI�쪺���D�a��ǮաA�o��U�t�ұбª��M�~��U�P�ѨM�C�L��?�Ȧ]�����U�t�ұa?�귽�A�]���U�t�ҵo���H�~�u�աA�ﲣ�~���Ұ^�m�A�]����|���ͼv�T?�C�z�L���ǦX�@�i�H�����~�ѨM���D�A�]������Ǯժ��D���|�ʦV�վ�оǤ�w�C', '���t�W', 'A9428338', '2013-06-04'),
(105, '�ն�Ϧ��}����]�����R -�H�a�_�ݨa�᭫�ج���', '���Q��', '�פ���', '�b�Ѩa�L��ҿ�d�����H�A�O�H�̥��h�F�ˤH�P�ŷx���a�A�j�a���طɦi�A�L�h���غش��H���w���_�s�b�A�^�k��̭�l�Ȧs���g�a�A�ڭ̭n�p��i�H��_���Ǯa���ܦ^�H�e���ˤl�A�åB�b�o�@�����аV��A��[�Ƿ|�p���a���ܪ���H�e�󦳫O�١A�o�����פ�D�n�O�H�ն鬰�D�n��H�A�ն�O�@�ӤH�f�K�������ҡA�դ��Ш|���O�H�����Ӫ��D�H�ΡA�p��h�O�@�ڭ̪��C�~�Ǥl�A���崣�X�F�ն�b��}�����Ӫ`�N���ƶ��A�γz�LAHP��k���R��}�����ӦҼ{�������u�����ǡA�g���R��A��a����P�a�z��m�����u���Ҷq���]���C', '���\�_', 'A9428339', '2013-06-04'),
(106, '�H2D�����v���غc3D����ҫ�', '��J�s', '�t����', '�H�y���ѻP���جO��X�~�ӷs���_���@����s���A��D�n�ت����[�j�v�w�H�Ϊ��T�W���ި�C���ڭ̻{�������Ψä���󦹡C���ϯ�P�����W���ӷ~�n�w��۵��X�A�гy�X���׫Ȼs�ƪ����~�A��ӷ~��O���L�i���q�C�]���A���פ�յ۬�s���޳N�A���榳�¤@�����N�����Ω�ӷ~�譱�C', '����    ', 'A9428358', '2013-06-04');
INSERT INTO `project` (`p_id`, `p_name`, `p_adviser`, `p_type`, `p_description`, `p_leader_name`, `p_leader_number`, `p_date`) VALUES
(107, '���������o�i�[���ʬ[�c����s', '���Ԯ�', '�פ���', '���줽�B�����ظm�Y����K�����A�Ȩ������޹D�A�i�ӨϨ����̦b�����W�N�ब�ۥ�y�A�]�ྮ�E�����V�ߤO�C�ثe�ڰ꨽�줽�B�������ظm�����Ϋרä����A�B�\��ݨD�����c�h�A����s�z�L�г��լd���i��A�Y�i�F�ѥثe�ڰ�ϥΪ̹�󨽿줽�B�������ظm�ݨD����A�è̾ڽլd�����G���X�@�M�t�ΤƤ������зǡA�H�ѩ�������]�p�̭n�]�p�����ɤ��ѦҡC�]������s�Y�H�ڰ���������줽�B����������s��H�A�H�ϥΪ̡B�]�p�̪����׶i������t�ε�������s�C', '�B�i��', 'A9428366', '2013-06-04'),
(108, '���Ѻ޲z�t��', '�i�}�F', '�t����', '��ޤ�s�벧�A�ϥιq���ӻ��U�H�̤u�@�O���M���ͶաA���O�ǲΩΥ����W�����Ѻ޲z�t���`�O���@�ǯ��I�M���������a��C���O�e���]�p������áB�t�ξާ@�����M�����H�ʤơB�j�M�\�ण���ֳt�B��K�B�h���Ƶ��������D�A���|�v�T�@�a���e�����B�@�C\n�]���ڭ̥HFoxPro�}�o�@�M��}�����Ѻ޲z�t�ΡA��K���a�i�毲�ٮѧ@�~�A�B�����ֳt�B��K�Φ��ĺ޲z���t�ΡA�Ϻ��e����u���즳���U�Ȥξ֦����e�j���s�U�ȸs�C���t���٥i�z�L�����U���X���ӷs�Ѫ���T�A�i�H�M�W������ӫإߪ������X�@���Y�A�H�W�[���v���O�A������g�窺�ؼ��ڶi�C \n', '�B�\�D', 'A9428376', '2013-06-04'),
(109, '���ɥ��J�p�X�g�窺����X����', '���Ԯ�', '�פ���', '�۱q���K�B���s�G�D�����j�س]����B�P�}�q�A�a�ӤF��q���K�Q�ʡA�]�y���ȹC���A�����ܡA�����~�̱��X���J�u�f���v���A�����J�ۧΨ��孱�{��j���g��x�ҡF�t�@�譱�A���M�j�������J�~�̬��D�W�[��P��O�A�ɯɫإߤF�M�ݪ������A���o�Ǻ����å��F���P�i�޲z���ت��A�a�ӧ�h���U�ȸs�C�o�ǥ~���P�������]���y���F���J�~�̦b�g��W���x�ҡA����s�D�n���Q���J�����\��]�p���A���P�_�A�ô��X�@�M�g��Ҧ��ӧﵽ�~���]�������J���~���v�T�C', 'ù�^��', 'A9428377', '2013-06-04'),
(110, '�j�Ǹ귽�W���w�H�դͲ��ǦX�@��T������', '�����]', '�t����', '�z�L����s����@���x�A�i�Ϯդͯ�N�~�ɰT���ǹF���ǮաA�ô��Ǯձa�ӧ�h���ǦX�@�����|�A�P�ϾǮջP�~�ɪ����q�󦳮Ĳv�A�ï�ﵽ�ǥʹN�~�νҵ{�]�p�����D�A�]��z�L���ǦX�@�g��ϾǥͼW�[��߾��|�A�ֿn��ȸg��A��[�K���ŦX���|�ݨD�C����s�H�դͬ��ҡA�z�L���t�Ϊ�UML��ҨӤ��R�t�ΡA�åHMVC�[�c�ӹ�@�t�ΡA�[�W���m���j���A�i�@�B�A�ѨϥΪ̪��ݨD�A�M��T�ߨt�Ϊ��򥻥\��A���Ī���X�դ͸귽�A�Φ��@���ǦX�@��T���C', '������', 'A9428382', '2013-06-04'),
(111, '�s�ͻ��ɹC��-�j�ǥͤF�S! ', '�����]', '������', '����s�H���j�ǰ����հϬ��ҡA�Ʊ�B�ά�ާﵽ�j�Ǧb�s�ͰV�m����I�ɶ��ӵu�����D�A��U�Ǯջ��ɷs�;A���s���ҨüƦ�ǲߤj�ǥͬ��C�ڭ̧Ʊ��s�@�X�@�ӯ����j�Ƿs�ֳͧt�F�ѾǮժ�Flash���u�W�C���C���j�Ƿs�ͱq��q�C�����A���F����x���Ǯժ����Ҥ��~�A���o���h�Ǯըt�Ҫ�������T��N�Q���쪺�ֽ�C ', '�L��', 'A9428393', '2013-06-04'),
(112, '�����a�z��T���XGoogleMap-�H�����p�Y����', '���z�L', '�t����', '�����W���ѤF�U���U�˪���T�A�o�Ǹ�T�����Y�]�t�F�\�h���n�����ѡA�n�p��N�o�Ǫ��Ѧ��Ī��޲z�A�@���O��T�޲z�H����s�P�}�o�����I�A�ثe�u�W���j�M���x�����c���A���j�h�ƪ����x������ɦV������r���d�ߡA�ܩ�Ŷ��d�߳����A�h�����ɲz�Q�C�]���A�b�j�M�Ŷ��a�z�����������ɡA�]�N�ॢ�F�\�h�_�Q�����ѡC\n����s�H�����p�Y���ҡA�Q�λݨD��s�覡�B��Google Search Web Service�B������s�|���w�p�ն}�o���_���_�r�t�λP��r��Ʊ��ɪ��޳N�MGoogle Map API�a�}��쪺�޳N�A�N�ҷj�M�X�Ӫ����G�A�H�]�t�a�z��T���ϻP��A�K��ݨD���d�ߵ��G�A�i�N���t�����Ω�U�ػP�Ŷ��D�D���������e���d�ߡB���R�B�a�z��ƻ`���P�Ŷ����Ѫ��޲z�W�C\n', '�_��t', 'A9428402', '2013-06-04'),
(113, '�q��t�ε��X�A�ȷ~���ΥH����\�U����', '���Q��', '�t����', '�����o�i�w�g�۷������A�ӳ\�h�A�ȷ~�]�@�@���q�l�ӰȤơC�H�۳\�h�A�ȷ~���q�l�ӰȤƪ��Ͷդ麥�W�[�A�]�W�[�F�ڭ̳\�h���K�Q�ʡA�q��άO�q�������b�\�U�Υ�q�B��u�㪺�B�Τ]�麥�W�[�C�����žɤJ�u�W�q��ۿ�B�x�B���K�u�W�ʲ��t�ΡB�q�v�|�{�������ʲ������A���O�q�l�ӰȤƪ��̦n�Ҥl�C���u���ּƬO�i�H���U�Ȧۦ���A��Ų�󦹡A���M�D�N��̵��X�ô��ߥi���Ӯa�a�ӳ̤j�įq�A���������v���O�A�åH���վǥ͹���\�U���ҡA�Ǧ����a�H���q�첨���A�W�[�U�Ȥ�K�ʤΦۥD�ʡC', '�L�q��', 'A9428404', '2013-06-04'),
(114, '�u�W�C��������Ʀ�ǲߦ��Ĥ��v�T -�H�j�Ƿs�ͻ��ɬ���', '�����]', '������', '����s�Y�H�u�h�H?�u�C���Ҧ���?��ǲߡv���D�A���Q���@?��ǲ߼Ҧ����S�ʥH�Ωү�F�����ǲߦ��ġC��s����?��ګغc�X�@�M�W���u�j�ǥͤF�S�v�������Ǯմ��ѵ��s�ͪ�������?�ǲ߹C�����~�A�ðw��@�������e��ڶi?�ǲ߮ĪG�����ҡC', '���l��', 'A9428405', '2013-06-04'),
(115, '�x�W��T�޲z�Ǩt�ҵ{�P�~��¾�ȻݨD������R', '�i�}�F', '�פ���', '�ھڷs�D���i��ܸ�ިt�P�~�ɻݨD�H�~���ӥH�B��ѹL��D���A�C����ڤW�A�{�����M���\�h���~ı�o��޷~�ɤH�~�����A�\�h�j�Ǹ�T�޲z�Ǩt���~�ͧ䤣��u�@�C����ϥΦ��Ÿ�Ʀ����k�A�έp���R�ثe�~�ɬ����u�@�ݨD�M�~��O�P�{����޾Ǩt�}�]�ҵ{�������ʡC�Q�νu�ʰj�k�P�����t�ư��X������A���G��ܷ~�ɩһݱM�~��O�P�Ǯո�ިt�}�]�ҵ{�Ҭ����p�ʪ���v�D�`�C�C�U�j�Ǹ�޾Ǩt�b�w�ƽҵ{�ɡA���Ӧh�ѷӥ��~�D�~���󭭨�A�]�i�H�A�צw�ƹ�߽ҵ{�A���ǥͲ��~��ন����T�������~�ݭn���s�A�H�C', '�G�R��', 'A9428374', '2013-06-04'),
(116, '�������ɧ޳N�B�Ω�ѥ����p���R�����Ҭ�s', '�i�}�F', '�פ���', '���M�D���i�Ʊ�z�L�������ɧ޳N�N�]�g����������ĳ�z�L��T�^���P���R���覡�A���������ĳ�����S�v�P�ؼйF���v�A�z�LSQL Server 2005�i�����p���R�åB�������p�k�h�A�ӤH���̥i�z�L�i�H�װ����������i�M���S�v��ܥi�a�����p�k�h�ӷ��@�ѥ���ꪺ�@�ذѦҫ��СA�̫�ڭ̷|�A����Ѧ����p�k�h�Φ������զX�����S�v�O�_��a�����̶W�B�����S�A�B�P�j�L������ݬO�_��ӹL�j�L�������S�v�C', '����', 'A9428421', '2013-06-04'),
(117, '3D Animation - ��a�_�J', 'ù�ػ�', '������', '��3D�ʵe�Ч@�u��a�_�J�v�D�y�z�@�ӱq�����ͬ��^���a���~���G�ơC�b�@���A�D���Q�P�D�u�@���Ҫ����O�������X�G�ݤ��L��A�ӥD���]�D�`��������ǥѮɥ��G�D�^��L�h�A��^�ݩ�ۤv���ּ֡C�̫�A�D�����M�L�k�u�ꪺ�^��L�h�A���o�ǥѤF�^�зӤ��H�Φ^��G�m��^�F�L��a���~���¯u�P�ּ֡C��X�F�q�v�Bø�e�B���֦U�دS��A�ʵe�u�����Ѥ@�ӦۥѴ��x���Q���Ŷ��C�չϤ��_��M�ۧڹ��ͩR���窺�컪�P�����C�H�H���G�Ƭ��D��A�H�ͩR�٬ު����謰�X��F�u��a�_�J�v�A�@������P���P���ܫ����A�@����޻P���N���X���ʵe�����C', '����޳', 'A9428450', '2013-06-04'),
(118, '���ʦ���ʾǲ߳n�餧�ظm', '�i�}�F', '�t����', '���|��T��ު��o�F�A�ϱo����b�{�N�H���ͬ����O���i�ʤ֪��@�����A�H��@�����{�H�w�g�ܴ��M�A��ثe����Ʀ��٦��@�H�h�����o�i�ͶաA������\��]�V�ӶV�h�A��᪺�Ͷիh�|�ܦ��@���h�\��A�Ӫ��[���Ȥ]�|�V�ӶV�j�C�o�ǥH�W�غت��o�i�{�p�ӬݡA�������|��ӤH�ͬ��v�T�w�g�v���b���ܤ��A�H�̹������̿�{�ץu�|���W�L��C', '�i����', 'A9528308', '2013-06-04'),
(119, '���O�̹������N�׻P�ʶR�N�@������v�T�]����s�ХH���j�ǰ����հϬ���', '���z�L', '�פ���', '����s�D�H����\��B�ɩ|�~�[�B�t�Ӫ��W�סB���e�v�Τf�O�A�Ϥ��X���~�P�t�ӯS�ʨ�j�c���A���Q��P���O�̺��N�פ����Y�A�æb����μs�i����e���R�U�A�˩w�����O���ʶR�N�@�����䦨�\�]���C�Ǧ��A�H���j�ǰ����հϬ��ҡA�p�o��312���ݨ��A���Ħ^���v�F96.15%�A�b99%�H����ǤU�A���]�˩w������h���\��B���~�~�[�ɩ|�ʡB�t�Ӫ��W�סB���~���e�v�B�t�Ӥf�O�P���O�̪��U�Ⱥ��N�פ����Y�A�Ҧ���ۤ��v�T�F�t�Ҷq�ӫ~����P�s�i��P�����ɡA����O�̤��ʶR�N�@�A����]������ۥ[���ĪG�A�s�i��P�õL��ۼv�T�C\n����s�����]���ʡA�M��j�ǥͤ�����O�Ҧ�����s���G�A�i���ѵ��t�Ӱw��ǥͱڸs�����O�欰�A�Ĩ���A������P�����F�åi�B�Υ���s���[�c�A�X�j��s����H�A�Y���X�j��s���ġC \n', '������', 'A9528306', '2013-06-04'),
(120, '�q����ϯ� -���r�ϴ�', '�i�}�F', '�t����', '���X�@��²�檺����?�ϥΪ̤�K�S�ֳt�N�i�H�ѨM���r���дo�A�B���r���x���]�|�@�@���C�A�����`�̪��D�q���w����f�r���¯١A�O�q�����y���@��H�ϥΡA���L�̪��D�{�b�O�B�󤰻򪬪p�A�]�O�K�I�O�����p�U���@��H�ϥΡA��a�ӧ��㪺���U�ʥH�ΫK�Q���ϥΡC�����|�������`�̿�J�L�����r�g���̯g���d�߬O���دf�r�A�A�ӧi�����`�̸Ӧp��ާ@�~�����q����_�H���A�]����q�������@¬���q�̡A�ϥγo�����i�H�ܧ֧�X�D�n��]�A���Ѥ@��H�i���譱�ֳt���ѨM�C', '���Ѻ�', 'A9528310', '2013-06-04'),
(121, '�q�l�ӰȻ��業�x���}�o�P����', '��J�s', '�t����', '����s�ت����إ߻�������A�Q�ΰӫ~�^���u����^���x�W���ͳ̱`�h���ʪ��������ӫ~��ơA�åB�s�@�����T�����A��������ƨӷ��]�A���ӫ~�W�١B�ӳ������B����B�Ϥ��B�c��ӷ��@����Ƨ��Ѹ��^���u��H��Ʈw���Φ��ӫظm�C�z�L�^���u��A�ڭ̱N�ثe�x�W�̨����̫ͭC����������������Ƥj���b����Ʈw���C�]���p��s�@�X�ӫ~�^���u��ӧ���U�j�ʪ����ߪ���ơA�ñN�Ӹ�Ʈw�P�����T�������X�A�Ϻ������{�X��@�ӫ~�b�U�����Ӯa�������P�@�Ӻ����W�A�������O�̧Ʊ�ਲ਼�t�������������A�è�U���O�̨M���C�ظm��Ʈw�P�����T���}�o��������s���D�n��V�C', '���ӧ�', 'A9528315', '2013-06-06'),
(122, '�H�������ɧ޳N���R�]�g���������Ѳ�����ĳ', '�i�}�F', '�t����', '�ѩ���ں������o�F�A�\�h�]�g�����|���Ѥ@�Ӫ����A���U�Ҩ�ӯ�b����������H���X�@�ǧ���ĳ�F�����H�����ʤ֨��������ѥh��Ū�o�ǧ���T�A�]������s�N�O�b�ҹ�����W�]�g�������Ѫ���ƩM�����ɶ��P�Ҩ�Ӥ��������p���Y�A��X���������p�ʡA�H�D�X�̦n������Z�ġC\n	�]���L�h����T�|�y�����H���t��A�]���Ʊ�]�p�X�@�Ӵ��z�N�z�H�A����ֳt�^������ĳ��ơB���R����ĳ��ơA�̫�A�i�����ҡC���R�覡�W�̷өһݭn���[�I���P�A�ӷ|���ͤ��P���ƧǡA�A�̷Ӥ��P���榡�i��t�s�C�̫�~����R�B��ӡC\n	�q��s����X�Y�̷ӡu�����ɶ��v�覡�ƧǡA�u�����T�P�v�|�X�{�̰��Z�ġF�Y�̷��Ҩ�Ӵ��Ѫ�����ĳ�ƧǡA�h�i��X�u�w�N�ӡv�B�u���ڡv�B�uJP���ڡv�����ɶ��b�u�@�P�v�B�u�T�P�v�ɦU�|�X�{�������Z�ġC�Ӧb���p�W�h�����X�{���n�Z�Ī���Ӭ��u�w�N�ӡv�B�uBNP�v�B�u�x�W�u���ҡv�B�u�d�M�ҡv�B�uUBS�v�A�A�z�L��X���W�h�P�_�O�_��������ȡA�O�_���W�B���S�C\n', '������ ', 'A9528318', '2013-06-06'),
(123, '�V�y�P�̱��z�o���ҤU�M�d��|�ܬ̯�q���������R', '���Q��', '�פ���', ' ��X�~�y�P�j�y��A�V�y�P�BSARS��{��(2009)H1N1�y�P���b�U�a�y���Y�����̱��A���קK�̱��z�o�y���Y���ˮ`�A�x�W�}�l�����ܬ̭p������I�������y�{�޲z�A�إ߾���ʪ�������t�P���ܭp�e�A����������t���Q���ƾ����U���|�A���䤤�������n���M���ƾک|���i�@�B��R�A����s�ȴN�̱��z�o�ɡA�̱������x�ݭn���@�u�ܬ���|�������@�~��q�q�Ƽƾڶi��q�Ƥ��R�C���פ�ޥά���CDC���T�ӳ����A�åt�����@�ӳ����A�إ߼����t�ΡA�����ڰ�å͸p���w���@�u�ܬ���|�����t�Χ@�~�����M��q�P�~�V�C�����ƾ���ܡA�{�����t���f�мƶq���������t�ʧ@�~�����Y�����~�V�A�䦸�h���̯f�z�˯��C', '���߼z', 'A9528332', '2013-06-06'),
(124, '���~�ӫ~���~���Z�ĨM���t��', '�x�M��', '�פ���', '����s���Q���~�ةR�b�������t��(Power distribution family)�����]�U�A�z�L�̤p������p�k�A�o�i�X�@�ӷs�����]�˩w�{�ǧ@�����~���Z�ĵ����A�����]�˩w�{�ǬO�Y�ɰӷ~���z���@�ӥ��~���~���~���Z�ĨM���t�ΡA��B�z�D�`�A�B�]�������~�ةR��ơC�z�L���~���Z�ĨM���t�ΡA���~�i�H?�ѩҴ��Ѫ����~�ةR�O�_�F��W��n�D�A�ô��ɲ��~�~��A�H?��ŦX�U�Ȫ��ݨD�C ', '���רj', 'A9528334', '2013-06-06'),
(125, '���������о����Ҥ��ظm', '��J�s', '�t����', '�ϥξǮո귽�A�[�]�F�@�Ӻ��������оǥ��x�A�u�n�z�L���ں������s���N�i�H�ݨ�����u�㪺�����C�o�ӥ��x���ѤF��¦�������ƥ�����w�w���ԼҦ��A�ϥΪ̥i�H�z�L�ҫ��إ߷Q�n�������y�{�A���ۿ�ܷQ�n�������Ҧ��A�A�]�w�U�Ӽҫ����ݩʤ���K��i������A�����L�{�|���ʵe�ϥܡA��ܥثe�i�����Ӷ��q�C�o�Ӽ��������x���u��i������A�ٯ�N���������G�i��έp��X�A���ϥΪ̹�󵲪G������t�z�ѡF���즸��Ĳ�����ƥ�������ϥΪ̡A����������W��βz�ѵ��G�A���M���̴��Ѥ@�ӥi�a����¦�C', '�i��j', 'A9528345', '2013-06-06'),
(126, '���j�Ǹ�T�޲z�t�o�i�����i���׵���', '���z�L', '�פ���', '���ŭp���d(Balance Score Card, BSC)�O���~�b�i�浦���W���e�A�z�L��´�u�U��-�����y�{-�ǲ߻P����-�]�ȡv���|�Ӻc���A�H�i����~�Z�ĺ޲z���u��F����s���X�벼���v������k(Vote-Ranking)�H���XBSC���R�Ҧ��A���ѨM���̧�h���[�q�ƼƾڡA���i�q��BSC���R�Ҧ��D�B�Φh�ǫh�M���������A�H�h�h�Ť��R�[�c�A²�ƽ������D�F�M��A�u�ѤW�ӤU�v�w��BSC�U�����жi��벼�B�[�v�P�q�ƨ������������i���סA�̫�B�Υ[�v�����k�A����̨ε����i���סC����H���j�ǰ����հϸ�T�޲z�t���Ӯ׬�s�A�B��BSC���X�벼���v�������k�A�����o�i�������u�����ǻP����̨Υi����', '���N�g', 'A9528353', '2013-06-06'),
(127, '�k��θ�T��', '������', '�t����', '����s�ت������Q�k��Τ��y�{�B�k��Φ���]�l�B�ثe�k��Ϊ����A�B�\��B�޳N�ιB�ξ�X�A�H�K�N��\��غc�󥻺������C��������k��θ�ƨӷ��i�Ӧۤ��P�Ȧ�B�k��Υ򤶡A�þ�X��k��έ��n��Ʀ]�l�A���ϥΪ̩���j�M�󧹵�����ơA�̫ᵲ�X�k��Τ��޳N���ΡA�Ϩt�Υi�C���s�k��θ�ơA�H�T�O�ϥΪ�����̷s��T�C', '���K��', 'A9528355', '2013-06-06'),
(128, '�Y�ɰӷ~���z���]���~���Z�ĵ����t��', '�x�M��', '�פ���', '�H�� e �ɥN�����{�A���ܤF�ǲή��O�[���A�]�[�t�F��ު��o�i�A�P�i�F21�@�������~�~�褧���ɡC�b���y���v�����A�~�覨�����~���v���u�ժ��D�n�n���A�]���A���~�����z�L�@�����ɲ��~�~��Ӵ����v���ʩM�Ȥạ�N�סC�۱q�G�Q�@����H�ӡA�~�誺���n�ʤ麥����@�H�Ҫ֩w�A�~�褣�ȬO���~�������Z���A�]�O���~�гy�v���u�ժ����Ȭ��ʤ��@�C�ר��ڤJ�G�Q�@�@���A�H�����ͬ������������_�k�@�A��󲣫~���~��P�h�˩ʭn�D������Y�V�A�b�o�ѫ~����骺�L�֤��U�A�~��w�������~�s�`������C�H�ۥx�W�����[�J�@�ɶT�����ѡA�����v���q�ϰ쨫�V���y�A�]�����ɲ��~�P�A�ȫ~��O�x�W���~�֤��v����O���@�C�p��Q�θ�T��ިӨ�U�������~��޲z�O�ثe�x�W���~�����n���ȡC�s�{��O���R�O�ΥH�������~�~���Z�Ī����w���k���@�C�åB�j�h�ƻs�{��O���г����]�ӫ~���~��S�ʬO�`�A���t�C�M�ӫܦh�ӫ~���ةR�Ҧ��O�D�`�A���t�A�]�A���Ƥ��t�B�f�ԹϤ��t�B���B���t�����C�åB�b�ةR���չ��礤�A�ѩ�g�O�B�귽�B�����H�δ��էx�������]���A���~�ةR��Ƹg�`�O���������A�]���]����ƬO�g�`�o�ͪ��C�b��ȤW�A�ثe�ܦh�~���Z�ĵ����n��O�L�k�B�z�D�`�A�ӥB�]�������~�ةR��ơC�]������s�HC#����¦���޳N�h�o�i�@�ӷs���~���Z�ĵ����t�ΡA���~�ʶR�̧Q�γo�s���~���Z�ĵ����t�Υh�T�w���~���ةR�Z�ĬO�_�F��W��n�D�C���~�s�y�̧Q�γo�s���~���Z�ĵ����t�Υh�[�j���~�s�{��O�C�o�~���Z�ĵ����t�Τ��ȯ�B�z�D�`�A�B�]�������~�ةR��ơA�ӥB�O�Y�ɰӷ~���z���@���Z�ĵ������R�u��A��Y�ɴ����Ȥ�A�ȤΥ��~�M����O���t�שM�~��A�W�j���~�參�����p��������O�A�W�j���~���v���u�աC', '�i��N', 'A9528362', '2013-06-06'),
(129, '���a���ɨt��', '���Q��', '�t����', '�H�ۺ�����ު���i�A�\�h���~�β��~���@�~�y�{���ϥκ����Ӷi��A���ȴ��ɤu�@�Ĳv�]�`�٤H�O�귽�C�b�ն�����ݨD�q�麥�W�[�����p�U�A�ն�������x�O�_�����A�]�v�T�F�v�ͤΦ�F�H�����ɶ��ήĲv�A�]���A���M�D�N�H�v�ͪ��ݨD�����a���ɡ������D�@����l�ʾ��A�i�Ӷ}�o�t�ΤW�u�A�ϳ��a���ɪ����D��o�H�ѨM�A�a���ϥΪ̧�h���K�Q��', '�G�z�u', 'A9528367', '2013-06-06'),
(130, '�t�Һ����ظm�[���ʬ[�c����s', '���Ԯ�', '�פ���', '�����w�������鴣�ѪA�ȤΰT���̭��n������A�q�`�b�غc�e�A�w��ϥΪ̻ݨD�i��լd�Τ��R�A�H�����ϥΪ̹��T���e�A�Ȥ��ݨD�A�W�[��ϥΪ̪����ʡC�ثe�ڰ�U�j�M�|�պ������ظm���p���w���M�A�䤺�e�]�p�P�]��@�w�������A�M�ӡA�\�h�t�Һ����b�ظm�e�o�A�֥���ϥΪ̶i�楿�W���ݨD�լd�C����s�z�L�г��լd�F�ѥثe�ڰ�U�j�M�|�ըt�Һ����ظm���{�p�A�è̾ڽլd�����G�i��t�Τƪ������A���洣�Ѥ@�صo�i�t�Һ����ɱo�w�Ѧ����Τ��[���ʵo�i�[�c�A���t�Һ������o�i���ŦX�ϥΪ̦b�\���ΩʤΤ��e�״I�ʤW���ݨD�C�H�ѩ���j�M�|�պ����]�p�ɤ��ѦҡC\n����s�����X�@�M�t�Һ����ظm���[���ʬ[�c�~�A��z�L�լd���R���P�������ϥΪ̨ϥκ����ɡA������A�ȫ~�誺�n�D���ءB��s���G�A�i�Ѹ�|�n�a��b�����P��ʪ��ǳN�����ظm�ѦҡC\n', '�ªY�T', 'A9528368', '2013-06-06'),
(131, '�\��ERP�t�λPRFID', '������', '�t����', '����s�o�i�@�M�\�������t�Τε��X�L�u�˸m�A�H��U�\���~�̴������Ƶ{�סA�i�ӧQ�θ�T��޴�����~�Z�ġC�ëP�i�\���~��b�q�l�ƪ���U���U�����U�Ⱥ��N�סA�W�[�~�̺޲z�Ĳv�C�\���޲z�t�Ψϥ�SQL Server ��Ʈw�ҫس]�A��Ʈw�̱N�s���\�U���Ҧ���T�A�~�̥i�Q�γo�Ǹ�T�i���\���y�{�޲z�θ�Ʊ��ɡA�ǥ��x�s���Ƥ�����T�A���ѷ~�̦b�����ʤW���̾ڡC�þ�X�I�\�t�ΡB�d�x�t�ΤΧa�x�t�ΡA���U�Ȧb���I��ΪA�ȥͩI�s�ɧ��K�Q�B�ֳt�C����s�t�z�L�L�u�g�W�ѧORFID(Radio Frequency Identification)��b�Ŷ��q�ϷP���i��q�H���S�I�A�z�L���S�I���B�μp�v�ΪA�ȭ��i�Ψ��ˬd�\�I�O�_�����T�e�F���U�Ȫ���W�C', '���v��', 'A9528386', '2013-06-06'),
(132, '��ʳ�����', '��J�s', '�t����', '����s�Ʊ�غc�@�ӥ��x�A�i�H���X������P�a�����ΡA���ϥΪ̳z�L²��\n���B�J�⤺�e��ܦb�a�ϤW�A�åB����N�����p�ʪ����e�b�a�ϤW���s���A�N��\n�W���аO���ܦ��@�����|�A���o���̭��{���ɪ��ȹC���u�A���ȥi�H���o���̥i\n�H�@���Ȧ檺�����A��i�H�@���s���̮ȹC���u�ѦҪ��̾ڡC', '���ɵ�', 'A9528390', '2013-06-06'),
(133, '���ο��t��', 'ù�ػ�', '�t����', '�{���j�Ǥɾǲv100%�H�W�j�ǥͺ���]���ɥN�̡A���~�x�~���A�u�O�H�Ǿ������u���Ҷq�A�Ϧӧ�`���u��ȸg��v�A�ǮջP���ΰѻP�ۤ������U�U�A�b���Ӳ��~�X���|��~���O�H���u�աA�ѩ󥻮զ�B�����A�ǮջP�J�٪��Z�������վǥͧ�e�����C����Ϊ��ѻP�N�@�A�b�����p�X�|(²�١u���p�|�v)�K���X���νu�W���t�Ϊ��c��A�åB�V�ǮզU���η��P�߰ݪ��Ϊ��ݨD�öi����R�A�}�o�u���ο��t�Ρv�A��U�ǥͧQ�κ�����ܦۤv���ҿ��쪺���γq�����ΤH���A�åB�Ѫ��ΥD���p���s�i�������A���歰�C���Ωۥͪ��ɶ��P�H�O���귽�A�W�[�ǥͻP���η��q���޹D�P�i�Ǯժ��έ���C', '�׺���', 'A9528393', '2013-06-06'),
(134, 'YACCO���o�������ظm', 'ù�ػ�', '�t����', '�ѩ�����޳N���_�i�B�νu�W�ʪ��g��Ҧ����U�������A�\�h���~��J�F�j�q���]�ƻP�t�ΡA�ت����O���F�j�ƥ��~�b�����W���v���O�A�H�άݦn�R���Ӿ��L���������ʪ������A�ɯɦb�����W���߽u�W�ʪ��������A�Φ��@�ѷs���A�������y�A�����A�жǲΪ��ӷ~���A�C\n����s�w��k��YACCO���o�t�ӫظm�x�W�����A���ѤF��X���A�ȡA�p�G���~�j�M�B�d���O�B�u�W�ʪ����\��A�ȡA���x�W�߷RYACCO���o���U�ȨϥΫ��P�캡�N�A�i����YACCO���o�t�ӥ��}�b�x�W�����������C\n    �ǥѺ����Ӿ��AYACCO���o���M�]���ศ���H�A�ɯɤ]�}�l�إߦU�ꪺYACCO�M�ݺ����C���M�b�x�W�]�O�@�ˡA�]���Q�Φ����|�A�b�x�W�ظm�Ĥ@��YACCO�����A�Ʊ���x�W�H���Ұ^�m�C\n', '�L�t�p', 'A9528333', '2013-06-06'),
(135, '���O���q������d�ߺ�', '�i�}�F', '�t����', '�������o�F�A�����O�̪��ʶR���A�A�C�C�ͦV�����ʪ��A�Ӻ����ө����h�A�p��q������~��}�n�M����K�y�����̭��n������A���O�������ϥΫK�Q�ʩM�ӫ~��ƸԲӻP�_�]�|�v�T����O�̪��ϥηN�@�A�ӧڭ̪��ت��N�O���Ѯ��O�̳o�ǪA�ȡA���O�b�ӫ~�u����@���������p�U�A�p�󰵨�M��A�åB���Ī��޲z�A�����̤j���ؼСA���Ǧ��ؼ��ڦV�ӫ~���h�ˤƤθ�Ʀ۰ʧ�s�A�Ϯ��O�̩M�޲z�̳��঳�Ĳv���B��', '�c�t��', 'A9528403', '2013-06-06'),
(136, '��T�w���q���t��-�H���j�ǰ����հϬ���', '���Ԯ�', '�t����', '��~�ӡA�Ш|��������U�žǮիإ߸�T�w���޲z��סA���ʦU�žǮիإ߸�T�w�����Ҿ���P�����w�q�������u�@�C�M�ӡA���[�U�����ʨƶ��A�h�ݬF�����c�P�Ǯն����@�~�h�šA���s�j���ն�v�Ͳ׺ݥΤᤧ�w���ƥ�q���A�h�֦����㤧�F���W���Ψ��餧���@���CŲ���A����s����H���m��s�k��F������ʹ�I�լd�A�åH�׺ݥΤᤧ��T�w���q�����ݨD�A�W���]�p�u���������ն��T�w���q���t�Ρv�C�Q��YAHOO WIDGET�u��ӹF���ն�׺ݨϥΪ̥D�ʳq����w�T�����ؼСA���ಣ�ͭ�����T�w���Ш|�Ψ�E�ǥͬ�߸�T�w���޳N����ġC', '�Ų��u', 'A9528351', '2013-06-06'),
(137, '�غc��T�w���t�αM�׺޲z�Ҧ�����s', '���z�L', '�פ���', '����s�u��T�w���޲z�t��(Information Security Management System, ISMS)���M�׺޲z�Ҧ��غc�v�D�H���~���g�D������T�w���ƥ󬰨ҨӬ�s��T�w�������~�����n�ʡA�j���������m��ƥH�F�Ѹ�T�w���i��s�b���¯١A�A�`�J���Q��T�w�������~�����n�ʡC����z�LISO27001��T�w���t�Τ��W�d���A�ǥѡu�W���B��´�B��ɡB�ΤH�B����v���ޤ�k�A�H�j�Ʃδ��ɥ��~��T�w�����@�A������T�w�����ġF�A���X�M�׺޲z(Project Management)���u�o�_�B�W���B����B����P�����v���t�Τ�k�A�NISO27001��T�w���޲z�t�ξɤJ���~�����A���\�ϥ��~�ŦX��T�w����ڼзǭn�D���{�סA�F��ƥ��קK��T�w���M���B�ƫ�঳�Ĩ��d�έ��C�������o�͡C ', '�x���n', 'A9528373', '2013-06-06'),
(138, '���X Facebook �P�դͪ����s��ʥ��x�H��U�դͷ|�B�@ ', '�����]', '�t����', '���j�ǵo�i�Ө��A���~�դͪ��g�礣�ȶȬO�դͮ��ڴ��ѾǮըt�ҵo�i����A\n�t�@�譱��󴣰����~�ʹN�~�v�]���۩��㪺�U�q�C�M�ӡA����ثe��q�v�����j��\n�ͺA�A�p�󴣨Ѧ��Ī��޹D�P�դͫإߺ�K���pô�A�N�O�����j���v���O���@�j�u�աC\n�\�h�դ�W�]�դͷ|�A��ت����W�[�P�դͪ��s�N�ѤΩ��۫סA�ӹL�h�դͷ|�b���\n�W�޲z���ΡA�ɭP�p�������L���B�Ĳv�������p�w���C����s�ѦҤF�h�ت��s������\n���m�A���Q���s�������\�]���A�B��s�դͻP�դ趡�������Y�~�誺���n����C�̫�\n����s�N�ǮլJ�����դ͸�Ƶ��X�ثe�̼s�j�����s������Facebook�A�Q�� Android ��\n�x�b���z����˸m���غc�@�Ӯդͪ��s��ʥ��x�A���ѥi�d�ݲ��~�դͪ����A�Τu�@\n���Y�ɸ�T�A�ٴ��ѹq�ܡB²�T�� e-mail ���p���覡�A���դ̤ͭ������pô��Τ�K�A\n�B�w���p����ƶi�����p�O�@����C�W�]�v���޲z����A���դͷ|�b�p���դͧ�[��\n��´�C���~�A�]���Ѷ��ݦP�B���\��A���ϥΪ̥i�H��K�ϥΤ��P���˸m���o��ơC\n�ӥ��t�Τ]�w�g�����b�G�ؤ��P�����x�W����B���աC ', '���\�D', 'A9828316', '2013-06-06'),
(139, '�إ߻X�a�dù���W�j�ϼҫ��i��j�ϳ����ɶ����ѼƤ��R-�H�x�W�F�����쬰��', '���Q��', '�פ���', '�x�W������줧���K�׮��W��q�P���v���Ҧ������׭��I���ҡA�����ƬG�~���W�L300��A�ϱo���W�������Ĳv�q�έ��n�C�����o�ͮɪ��ѭԳq�`���ΡA�]�ӱ�����ĥ��F�{�������ɶ������v�T���W�������̤j�]�����@�C����s���ت��Y�w����W������ĥ�إ߷j�������ҫ��A�H�����R�j�ϳ����ɶ�������j���įध�v�T�F����h�H�x�W�F���ݩ�¼���t���~������s�d��C�H�X�a�dù��k(Monte Carlo method)���ؼҥD��A�����l�ҫ��]�A�G�u�����ؼФ��}�B�첾�v�B�u�j���v�B�u�j�ϲ�ĥ�������P�v�B�u�έp�v���|���C�䤤�A���y���y�V�H���v���t�������Ҧ欰�C��s�D�n����j�Ϥ���ĥ�ƶq�H���D�A�b�F������i��72�p�ɮ��W�����������C', '�i�aģ', 'A9828358', '2013-06-06'),
(140, '�B���ɧ��z�׶q�Ƥ��R�x�ƨM��  -�H�U�N����I�ԳN����', '���Q��', '�פ���', '����s�O�H�ɧ��z�׶i��ϼ�@�Ԥ��ԳN���R�P���ȳW�����D�C���ڤ�w�Q�Ĥ��ĥ�����A�����_���|�H��ؤߺA�h���קڤ誺�����A�A���R�U�إi��ʪ������A�]���w�X���ڤ観�Q�������l���ĭx��ĥ�C�Q���ɧ��z�סA���X���v�x�}�A�A�HATPA�p��X���U�ӵ����A���ͬ۹������v�T�A��������v�ɯ������ڤ�Q�q�̰��������ӱĦ�C�Ѧ���k�i���Ѯ��W��J��Ĥ��ĥ�����ɥi�檺�Ѧҵ����C', '�L�ʮe', 'A9628313', '2013-06-06'),
(141, '3D-MAX���q�����}-�Ʀ�ǲߺ�����@', '�i�Ż�', '�t����', '��󤺪������}�A�b�a��W�O�D�`���n��������N�A�b���A���F�e�{���O��@�몺���СA���ըϥ�3D�ϥܪ��覡�A�إߥi�R��Q���H���e�{���O��@�뭷��Ӷi�椶�СA�@�譱�i�H���j�a�եؤ@�s���Pı�A�]�i�H�W�i�j�a��󧺦��}���F�ѡA�Ӥ�������p����O�i�H���ɫC�֦~������A�ϥ������~�ּh�i�H�V�U�����A�ݮi����֨ൣ�A�����ǲΤ�Ʀ����j���N�q�A��F��J�Щ�֪��ت��A���Ӻ�����¦V�W�[��h�����U��Ƭ��ؼШϨ䦨���@���u�}�Ч�����', '������', 'A9628311', '2013-06-06'),
(142, '�ȹC�����', '��J�s', '�t����', '�{�N�H���𶢮T�֪��ݨD�H���W�[�A�Ӯ��O�̳z�L�W���Ӷi��j�M�ȹC���H�ή�\n�C���I��T�w�����ͶաA�{�������W�w�� 3C�B������~������������A�|�ʰw��ȹC��\n�{�o�譱����\�઺�����A����s�w��ȹC����i��t�ά�s�C���t�δ��ѥثe�x�W��\n���W�v�������T�a�ȹC�����A�]�A����ȹC���B���C���H�Υi�֮ȹC���A�o�X�a���P��\n�ȹC��{�A�H�i��������A�H�Q���O�̥i�b�@�Ӻ����Y�i�f��T�a�C \n����s�O���^���޳N�B�b�����W����ݨD��ơB�إߪ���Ʈw�B���X Google  Map\n���覡�e�{�P�ƧǤ覡�إߨt�ΡC \n    ���t�Ψ���^�m�G�w��������t�λP�W�u�ϥΡC�ߤ@����t�γt�׬۹���C�A�n\n�ϥΰ�����覡�[�H��s�ѨM�C ', '���ξ�', 'A9628314', '2013-06-06'),
(143, 'RFID���Ω��\���޲z���۰ʬy�{', '������', '�t����', '����s�ظm�@�M�\���޲z���۰ʬy�{�A�䤤�l�t�Υ]�t���x�t�ΡB���ʨt�ΡB���Шt�ΡA�H�ε��X�\���t�ΡA���I�\�t�Τ譱�A�U���I�\��|�N�q���ưe�ܸ�Ʈw�A���\�I�e���\��ɡA�z�LRFID��O�\�I�O�_�e���F�b�p�Шt�Τ譱�A����Ʈw������q��A�t�η|�N��T�ǰe�ܼp�Шt�ΡA�p�v�i�̭q���ƻs�@�\�I�A�\�I�s�@�����ɨt�η|�̸��\�I��BOM�۰ʩ��Ʈw���ơF�b���x�t�Τ譱�A�i�Ʈɥ�Ū��RFID Tag�o��i�Ƹ�T�A�g�ܺޤH���L�I�L�~��Y�i�����i�ơF�b���ʨt�ΡA�������F��̧C�w�s�q�ɡA�t�η|�۰ʭp��ʮƼƶq�A�ñN�ӭ����C�b�ʮƲM��W�إ߱��ʳ�C�b���Шt�Τ譱�A�޲z�̥i�i���\�I�޲z�B���BOM�ظm�B�i���y�{�޲z�A�p�v�i�z�L�i���y�{�d�ߤ����o��i����T�A�F���\�I�~�誺�@�P�ʡA�U�ȥi�z�L�\�I�����d�ߤ����o���\�I������T�A���U�Ȧw�ߥ��\�A��t�ΥH��֤H�O���ѻP�B��~���������C�μW�[�U�Ⱥ��N�סC', '���a��', 'A9628317', '2013-06-06'),
(144, '���P�i���t�ε��XRFID-���Ω���A���~�H���γ�����', '������', '�t����', '����s�ظm���~�Ͳ��i���t�ΡA���C��Ͳ��֦̾��ۤv���b���Ӻ޲z�ۤv���~����T�A�N���غc�����~��T�Ǧ�Web Server�C�����O�̧Q�β��P�i�����X�ӱN���P�i����T��Data Base�I�s�ܺ����A���O�̧Y�i�q�����o�����~�q�[�u�t�g�ѹB����\�U�~�̩Ҧ�����ʰO���A���P�i����~�̥i�������~�~��������ʧ@�A�\�U�~�̥i�ǥѮ��O�̪��^���Ӷi��f�~�ӷ��լd�ιB�骬�p�լd�C', '��?��', 'A9628321', '2013-06-06'),
(145, '��j�Ǹ�T�w���޲z���I��������s-���ļҦ��P�������R������', '���z�L', '�פ���', '�b��T����z���ɥN�A��T�w�����I�����w�����U��´��B�����u���Ҷq�]���F��T�w���|�}�N�y�����~���M���A���I�o�ͭ�]�Ψ�v�T�]�N�a�ӭ��R�ʪ��ܤơA���D��´����o�i����B�w���A���_���I�����B�w���޲z�ΥߧY���ܭp�e�D���M�����d�@���C����s�H���չq�⤤�߳q�LISO27001�{�Ҥ���T�w���겣���I�������ҡA���߸�\��p�աA���Υ��ļҦ��P�������R�A�إ߻P���Ѥ@�M�겣���I�����P�w�����ҵo�Ҧ��A�@���U�j�Ǹ�T�w���겣���I�������ѦҡC', '�B�x��', 'A9628322', '2013-06-06'),
(146, '���Ϋ~�����i�}�k���Q ���j�Ǥ���T�w���A�ȫ~���s', '���z�L', '�פ���', '�H�۸�T��ު��𭸲r�i�A��T�w���ƥ��𨣤��A�A�M�Ӹ�T�P�ͬ��o�S�O���������A�Y��T�w���D��}�a�εo�ͺ|�}�A�p�h�ӤH�����p����I�`�A�j�h��]���Υ��~�g��N�y���M�`�A���Y����G���i�����C����s�z�L�~�����i�}�k�]Quality Function Deployment, QFD�^�A�İݨ��լd�覡�A�H���j�ǰ����հϾǥͬ��ݨ���H�A�A�Ѿǥ͹�Ǯո�T�w���A�ȫ~�誺�n�D�A�ñN��T�w���A�ȫ~��ݨD������Ƭ���T�w���޲z�P�޳N�n�D���ءA���ѾǮե��ӧ@���ﵽ��T�w���A�ȫ~�誺���ػP��ĳ�A�ö�y�X�}�n���ǮէζH�Τf�O�B���@�v���O�C', '�L�A��', 'A9628323', '2013-06-06'),
(147, '�B�ΰ��i����z�׬�R�I�x�䭷�C�a�����v', '���Q��', '�פ���', '���ɱб¡G�� �Q �� �դh\n���ɱб¡G�� �z �L �դh\n', '�E޳�@', 'A9628339', '2013-06-06'),
(148, '�إ߫����x�ĥΨ�ƨM�����R-�H��ĥ����', '���Q��', '�פ���', '�x�ƨM�����������F�����T�w�ʤ��Գ����һP�������Ĥ赦���~�A�H�ʶ��h���ӤH�M�����I�Ө��O�A��O��t�M���{�Ǥ������n����C���M�D��s���ؼЫY�H��ĥĥ�����ҡA�|�X�T�ح��I�����M���������x�G���I�l�D�� �]risk seeker�^�B���I���ߪ̡]risk neutral�^�B���I�W�ת̡]risk avoider�^�A �B�ήĥΨ�ơ]Utility�^�P�ϼ���ԳN�]�p���U�t�Ρ]ATPA�^�i���ĥ�ԳN�M�����įq���R�C����s�w��T�����I�M���̤��R�X�̾A��L����סA���Q��󰪼h�����Ȭ��������x�̷ӥ��ȯS�ʡA���X�����H�蠟�M���C����s������b��˥��Ƥ����A�b�ĥΨ�Ƥ��ഫ�����ǧU�^�k�ҫ��D�X�����Ƥ����u��ơA�ΥH�N���T�����I���M�����u�C', '�x�ε�', 'A9628348', '2013-06-06'),
(149, 'BLOG-�ӿ�(VOW)����', 'ù�ػ�', '�t����', '�ھ�comScore Networks�լd��s�A2006�~3�����y15���H�W�ϥκ��ں������H�f�Ƥw�F6.94���A������y�����ں������βv��14%�A�H�ۥ��y�����ϥβv���W�[�A�O�W�ϥβv�]�H���W�[�A������x�������v�����Φ��A�x�W�����i�J�����檺�ɥN�C�ӿաA�b�{�b���|���A�U�����H�f�Y�覡�Ϊ̤߸̼h���ۧڪ�ĵ���A���q�`�S���@�Ӧ��ĥB���骺��k�Ӵ����A�p�G��Ұ����ӿթ�b�����W�A�N��L�{�O���U�ӡA�ۤv�q�w�@�Ӧ��Ī������A�Q�κʷ����ĪG�ӹF��ۧڭn�D�A�i�Ӵ����ӿդ���{�v�C ����s���D�n�ت����s�@�@�ӥH�ӿլ��D�D�A�N�\�U���L�{�P�g�L�O���U�ӡA�F���ۧڭn�D���ĪG�������A���ѨϥΪ̯�ۥѵo���D���AŨ���X�ӤH�W�S�ʡA�åB�i�H���W��s�C�Ʊ��H�����檺���s�ʡA����h�H���ۤ��ɦۨ��ӿժ��g��C ', '������', 'A9628354', '2013-06-06'),
(150, '�h�C��оǺ���-CCNA', '�i�Ż�', '�t����', '�ثe���|�W���оǤ覡�V�ӶV�h���ơA�]���q�������ΡA�a�ʤF���������k�o�i�A�оǤ��A���ɶ��ΪŶ��W������A�����оǪ����椧�յS�p�Ƥs�ˮ��A�@�����i���o�i��V�A�ڭ̪��M�D�N�H�ثe�D�`������CCNA(Cisco Certified Network Associate)�Ӭ��|�ҡA���H�ҥ��s�@�@�ӱоǺ��C\n�b�o�ӱоǺ��̡A�ڭ̱N�H�h�C��оǬ��D�n�e�{�A�îھ�Richard E.Mayer���h�C��оǲz�רӧ@���ڭ̪��z�װ�¦�A�N�h�C��оǫغc�b�o��¦���W�A�����ǲ߮ĪG�A�Q�θ��u���ɶ��ӧ����o���Ǭ�A�åH�|����覡�Ӷi��оǡA�H�����ǲߦ��Ī��^�X�A�C\n', 'Ĭ�~��', 'A9628355', '2013-06-06'),
(151, '���~�M�D�M�׺޲z�t��-��X�޲z', '�i�}�F', '�t����', '����s���~�M�D�M�׺޲z�t�ΡA�O�w��ն餺�v�ͰQ�ױM�D�Ҷ}�o���u��A�t�ΨϥξǮո귽�A�[�]�@�Ӻ����޲z���x�A�óz�L��X��쪺�[�I�A���R��´�������B�@�B�[�c�B�ݨD�K���A�غc�X�M�D�޲z���u�@�y�{�A�ﵽ�խ��ξɮv���s�@�M�D���Ĳv�C', '���ʫ�', 'A9628372', '2013-06-06'),
(152, '���~�M�D�M�׺޲z�t��-�ɶ��Ҳ�', '�i�}�F', '�t����', '�M�׬O���H�@�ؼȮɩ�(�����T���}�l�P����)���V�O�A�гy�X�@���W�@�L�G�����~�B�A�ȩε��G�A�M�׺޲z�O���Ϊ��ѡB�ޯ�B�u��M�޳N��M�׬��ʤW�A�H�ŦX�M�ת��ݨD�C�ӹ�󲦷~�M�D�A�P�ǭ̬O�Ĥ@����Ĳ�A�]���ک󦹶����A�b�L�{���J������B����Υ��ѡA�Ʀܤ@��A��A����̫�@��~�b���u(�Ҧp:�f�իe)�A�Ѧ��i��{�X�ǥ͹�s�@�M�D���ɶ��õL�����N�Z�����ޤΧ�J�F�ѡF�ӦU�ձM�D���ɦѮv���ǥͻs�@�M�D���i�פΰ��D�b�Ĥ@�ɶ��������o�F�ѡA��ܥX�ثe�ʤ֤@�ӥi�H���t�s���B²��ާ@�B��ʱ��M�D���ި�t�ΡF�M�ӦѮv�b�����S������ϬM�X��ڪ��޳N�P���ǡA��{�X�ʥF�}�n���������СA����s�]���غc�F�@�Ӳ��~�M�D�M�׺޲z�t�ΡA�H�Ʊ�঳�ħﵽ���p�C���t�ΥH�M�׮ɶ��޲z�Ҳլ��D�A�z�L�N�t�κ����ơA�i���P�Ǫ����b�u�W��g�M�D���e����������A�i�Ӵx���ۤv�M�D�i�פΤ��ǡC', '�\����', 'A9628385', '2013-06-06'),
(153, '���ά�ޱ����Ҧ����Q���j�Ǻ����Ƕ餧�ĥ�', '���z�L', '�פ���', '�j�����Ǯշ��O�b�o�i�Ʀ�Ρu�����Ƕ�v�Ʊо����ҡA��\��]�A���i�ҷ~���Z�B�@�~�B�|��ҸաB�Ч��ά�Q�ǵ��A�ǥͥi�b����ɶ����������׽ҵ{�һݤ����Ѹ�T�A���ɾǲ߮Ĳv�P�ĪG�C����s�H���j�ǰ����հϤ��Ʀ�ƾǲ����ҡu�����Ƕ�v���ҡA�z�L�դ��v�͹惡��T�t�ΨϥΫᤧ�ݨ��լd�A�p�^�����İݨ�248���A�e���Ħ^���ݨ���95.01%�A��˥��Ϥ�����T�P�D��T����F���X��ޱ����Ҧ�(Technology Acceptance Model, TAM)�A�ǥѪ�ı���ΩʡB��ı���ΩʻP�Ѯv�n�D�{�׵��ܼơA�H�A�ѨϥΪ̺��N�׻P�įq�C����s�z�L�ԭz�έp�B�����ʤ��R�B�ܲ��Ƥ��R�ΰj�k���R�i�氲�]�˩w�A�̫�A�o�{�W�z�]�l�Ҩ���ۮĪG�A�t�Ҷq�ǥͨϥθӨt�Τ��W�v�A��ĳ�Ѯv���W�[��h�P�ǥͤ��ʧ@�~���n�D�A�H���ɡu�����Ƕ�v���Ĳv�P�ĪG�C', '���f��', 'A9628387', '2013-06-06'),
(154, '�����w�о�X��FireFox�X�R�M��}�o', '��J�s', '�t����', '�۶��ݹB�⪺�����X�{�H�ӡA���ݪA�Ȥ��_���X�{�A�䤤�@�����ݪA��-�����w�СA�]�b���ݪA�Ȥ��B�@�ۡC��Ӻ����w�ЯɯɪL�ߡA�U���U�˪������w�ЪA�Ȥ]�H�����_�A�C�a�����ۦU�۪��b���B�K�X�B�ާ@�����M�W�h�K�����C���@�ӨϥΪ̦��ۤ��P�������w�ЮɡA�b�b���P�K�X���޲z�W�H�ξާ@�����۲������p�U�O���O�e���y���x�Z�A�t�~�b���P���W�歭��U�A�ϥΪ̶i���ɮ׺޲z�ɡA������ɤj�p�άO�Ŷ��j�p�������A���j���ɮץi��L�k�ާ@�A�Ϊ̬O�W�ǳt�ת�����A���ɮ׳y���򥢡A�p�G�o�O�@�ӭ豵Ĳ�����w�ЪA�Ȫ��s��A�b�D��@�a�e���W�⪺�����w�ЮɡA�o���{���C���K���ާ@���D�ұa�Ӫ����A���A�N�H�W�z���p�ӻ��A�����O�y���ϥΪ̭��C�ϥκ����w�зN�@���]���A�ӥ��M�D���O�q�����D�I���J�C���M�D��s���I�b�}�oFireFox Extension�X�R�M��A�H�����@�Ө㦳�Τ@�����������w�о�X�t�ΡA���ϥΪ̳z�L���u��A�i�H�P�ɦs���h�a�����W�`�ΥB�K�O�������w�СA���u��ï��}�U�a�����w�Ф���@�ɮפj�p����A���ϥΪ̧����|���ں�������K��', '���B��', 'A9628393', '2013-06-06'),
(155, '���~�M�D�M�׺޲z�t��-�H�O�귽�޲z�ҲաB�M�׷��q�޲z�Ҳ�', '�i�}�F', '�t����', '���j�Ǹ�ިt�D�n�b���i�ǥͱq�ƱM�D��s�A�ѨM��Ȱ��D����O�A�ǥѱM�D���ɦѮv����U���ɡA�����ΩҾǱM�~���ѥh���Q�������D�A���X�E�_�B��ĳ�ζi��t�ζ}�o�F�ӥثe���M�D�y�{�èS���@�M���㪺�޲z��k�A���K�|���򥢩ήɶ��O�������p�o�͡A�άO��T������A�L�k���ǥͥ��T���ɶ��y�{�F���C�ձM�D�Ѯv�Ө��A���ɦѮv�����x����p�ձM�D�i�סB��s��V�������T�A�ҥH�����ɦѮv�Ψ�p�եi�H�z�L���t�ΨӦ��Ī��x���ҫ��ɪ��M�D�p�աC\n    ����s�غc�@�Ӻ������x�A�̾�PMI���M�׺޲z�u��إ߼ҲաA��PMI�M�׺޲z���ѻ�즳�H�O�귽�޲z�M�M�׷��q�޲z�A�ò��͹q�l�ƪ���A�w���N�{�����i��p�ժ��M�D���e�M�ΤW�i����աC�q����X�ʳ��í״_�A�̲ת����G�w�F��ڭ̪��ت��A���ӥi�H���M�D���ɦѮv�Q�Υ��t�ΨӨ�U���ɡC\n', '�ιҽe', 'A9628399', '2013-06-06'),
(156, '�x�W��T�޲z�X�o�i�ͶջP���Ѧa�Ϥ���s', '�i�}�F', '�פ���', '��T�޲z�Ǩt�o�i�ܤ��w���|�Q�~�����v�A����H�۸�T��ު��ֳt�ܾE�A������T�t�Ϊ����Φ��w�`�J���~�֤ߡA�]�ϱo��T�޲z��s��V�P�D�D���ͤF�ܤơC���屴�Q�ꤺ��T�޲z��s��X�~�ӵo�i���ͶաA����`���F2005�~��2009�~���s��ܥ���ӳդh�פ�����פ�A�ðw��פ��D�ةҴ��Ѫ�����r�ϥ�SQL��Ʈw�[�H��z�����B�i��έp�B���p�P���s���R�A�H�F�Ѫ�~�Ӱꤺ��T�޲z���ܤ��ͶաA�q�έp���o�X2005�~��2009�~��T�޲z�פ�����r���Ͷ��ܤơA�ñq���p���R��ø�X���Ѧa�ϡA�q���Ѧa�Ϫ��s���I���o�{�F�ꤺ��T�޲z���e�X�~������Ӷ��q�A�������Ʊ��ɪ��פ��s�@���O��T�޲z���֤߭��I�A�ҥH2005�~��2009�~�ɥH��Ʊ��ɰ����פ�覡���䤤���j��ҡA���H�۬�ާ޳N�i�B�P��޲z�������A2008�~��2009�~��RFID�P��T�w���������פ��ҳv�����ɡA��ܰꤺ�b���L�u�g�W���Ѫ��޶i�o�i�P���ΥH�θ�T�O�@�W���v�B�����A�O�ثe��T�޲z��s���t�ƭ��ߡC', '���Ӧ�', 'A9628405', '2013-06-06'),
(157, '���פH��  �V  �����Ϯѹw�ɸ�T�t��', 'ù�ػ�', '�t����', '���F���Ĩϥκ����t�ΡA����s�N�ǥ� ASP.NET ���ʦ��������g�u��A�ϥ� C#�y\n�k�A�s�@�@���i�H���ѹ��j�ǻy�����ߤ��ϮѪ����ɮѨt�Τ����A�ñN��ĤJ���ں�\n���A�F�컷�ݦs�����ت��C�z�L��Ʈw�����t�ΥH�� GridVIEW ���ϧΤƱ���N�y����\n�ߪ��ϮѸ���x�s���Ʈw���A�A�H�����j�M��Ʈw���ƾڡB�p��B�ϧΤƨ���ܬ���\n�ϮѸ�T�C�����j�Ǿǥͯ�ϥΥ���s�W���ں������q���A�}�Һ����ﻷ�ݯ��ɮѨt\n�ζi��n�O�s���ʧ@�A�B�����ɶ��P�a�I����C ', '�f�۽�  ', 'A9628408', '2013-06-06'),
(158, '�ӰȺ����ظm�P��P  - �H���򬯨T���O�i�t����', '��J�s', '�t����', '�A�Ȩt�Υi��s�X�U�Ȫ��t�Ϋ~��B�A�ȫ~��A�]�i�q�]�ƴ��Ѥ@�ӻP�U�Ȫ������q���޹D�A�åB�z�L�����ظm�Ӷi��A�Ȩt�Ϊ��@��@�B�h��h�H�Τj�q�����q�A�]���A�Ȩt�θg��̥i�B�γq�T�]�ơA���ѦU���A�ȨӼW�[�Ǽ��t�סA����s�ثe�P�y���򬯨T���A�Ȥ��ߡz�X�@�A�N�Q�ΫȤ᪺�[�I�h�������A���}�ǲΰϰ�ʽ誺�O�i�t�A���Ȥ������K���s���A�Ȥ��ߡC\n    �ӥثe�x�W���\�h�T���A�Ȥ��q�����ݰ��O�i���װʧ@�A���O�\�h�Ȥ�|��ܰe�^��t���O�i���סA���ɭԹ�L�̨ӻ��A�O�@�����·Ъ��Ʊ��A�]�Ȥᦳ�ɭԻݭn�Y�u�O�i�ɶ��h����h����{�A�ҥH�|�b�ۮa����M�亡�N���T���O�i�t���L�̩һݭn���A�ȡA�ӫO�i�t�ޮv���޳N�B���Ѫ��A�ȶ��إH�ΫO�i�᪺���N�פ]�N�O�Ȥ���[��ؼСA�Ȥ᪺�T���O�i�B���׫᪺���סA�]�N�|�`�`�v�T�T���O�i�t���Ȥ�y�H�ΫO�i�t���禬�A�z�L������P�A�\�h�ݨD�N�i�z�L�����pô�A�w���O�i�O�����S�����Φ��A�ư��F�P�@�ɶ��|�H�h���������p�A�u�����Ȥ���ۤv��̦ܳn���O�i�ɶ��C\n', '�����t', 'A9628428', '2013-06-06'),
(159, '�E��Х���w���XWeb2.0�PGoogle Map API�޳N������', '�����]', '�t����', '�H�ۺ��ں��������k�o�i�A�ϥκ����H�f�v���W�[�A�[�W�q�l�a�Ϩϥμs�x�A������T�t�X�q�l�a�Ϥw�g�����@�ؤ��i�ίʪ��ͶաC\n	�ھڸ굦�|FIND������ܳ��i���X�ϥκ����ʫΪ̤�ҳv���W�[�A�Ѧ��i���Q�κ����a�Ӫ��įq�A�i�W�i�ЫζR�毲�����C�b�~����Ыι�󨭬��ǥͪ��ڭ̦��۱K�������Y�A�b��T�ƪ��ɥN���A��Фl���覡�w�g���P�H���A���ݭn�u�������ȱ��A��������x�A�Ϊ̧�ЫΥ򤶡A�ӬO�Q�κ����\��A�b��������M�Ыθ�T�A�Y�i�ֳt�`���j�q��ơA�K���F�Х�����o�Ӻc�Q�C\n	���դF�Ѻ��ں����i�����κ����Y�ɩʡB�K�Q�ʡB����ʡB���n���v�B�C���������u�աA�B�������ާ@���H�ʤƥB²��A�t�X�q�l�a���s���A���U�Ыȧ��z�Q���Фl�F�B�\�h�����κ��ɯɱ��X�A�t�X��Ʈw�N�Ыθ�ƾ�z�B�x�s�A�þɤJ�q�l�a�ϡA���ЫȪ��D�j�q���Ыθ�T�A�]�������ӵL�Y�a�Ǧb�j��p�Ѷ�«�A�٧䤣��ЫΥ��T��m�C\n', '�x����', 'A9328002', '2013-06-06'),
(160, '���y�о�-�H�h�C������e�{', '���z�L', '�פ���', '�H���y���ҳ]�p�@�ӥH�h�C��e�{�����y�оǺ���,���X�F�ѥ���r�P���P��{���оǪ����ʤ覡,�e�{�t�@�رоǤ�k', '���f��', 'A9328003', '2013-06-06'),
(161, '��������ƧǻP�Ƨ�', '���Q��', '�t����', '����s��������H���p�����e�j�M�覡�A�g�Ѻ�������r���e�i���r���R�A�îھں������e���״I�ʥ[�H�ƧǡA���������r���R�覡�����G�A��ƧǱN�i�קK�U�������X�{��ƦW�����A�åB�j�T���ɷj�M���G�C�������~��B�ﵽ�j�M�������ϥήĲv�A�ӹF��ϥΪ̩Ҵ��檺�j�M���ǡC���p�����e���R���ƦW�����ﵽ�j�M���G���{�p�A���}�FPage Rank�ƧǤ覡�L�k�˯��������e�����I�A�Ϸj�M�������j�M���G���K��ϥΪ̻ݨD�C', '���i��', 'A9328008', '2013-06-06');
INSERT INTO `project` (`p_id`, `p_name`, `p_adviser`, `p_type`, `p_description`, `p_leader_name`, `p_leader_number`, `p_date`) VALUES
(162, '�H��F�|�n���p�X�A�Ȥ��߬���-�зN����E�ƺ�', '������', '�t����', '   ���M�D��s�D�n�O��X��~�зN����E�ƪ�������ڰꪺ�зN�����������\��ʤ���H�ΰꤺ�~�зN������ƤW���t���ʡA��X��~���u�I�A�]����F�|�n���p�X�A�Ȥ��ߩ��|�쪺�Ĥ@��������зN�����A�[�]�F�@�ӳзN�����������A�çﵽ�ꤺ�s�@�зN�������������I�A�N�t�X��F�|�ݨD�@�X�������A�ӫᤶ�Ь[�]�����ɩҹJ�쪺�x���I�H�κ���������[�c�A�g�L�\�h�����դ���H�ά�s�A�Ʊ��i�{�X�ꤺ�зN������ơA�H�ίu���F��ŶǪ��ت��C', '�d�a��', 'A9328011', '2013-06-06'),
(163, '����Office PowerPoint VBA �{����۰�²���t�ζ}�o����s', '��J�s', '�t����', '�����u�O�Q��Office PowerPoint�ӧ������i�A�ڭ��٨ϥΤFSQL�s�@��Ʈw�HVBA�MADO�ӳs���ڭ̪������A����ƥi�H�z�L�W�����覡���P�^���A���D�ޭ̩Ϊ̬O�t���̦b�{�ɪ����X���A�άO�ѰO��aPowerPoint²���ɡA�u�ݭn�z�L�����A�����Ʈw�A�Y��Φ�²���A�ϱo���i���}�ѵ��A�o���ȥi�H�K���{�o���p���~�ҡA�٥i�H��֧ѰO��a���i�����I�A��i�H�����i����ݰ_�ӧ�㦳�M�~�ʡC', '���۳�', 'A9328013', '2013-06-06'),
(164, '�Ыǹw�ɨt��', '��J�s', '�t����', '�w���A�ܦ��F�ѨM�ƶ����@�Ӥ覡�A�ӹw���]�ܦ��{�N�H�ͬ������i�λݪ��@���\��A�{�������|�A�R�F��i�H�w�ʡA���ɪF��i�H�w���A�Ʀܳs�Y���Ϊ̰žv���A�ȳ��i�H�����w���A�ϥΪ̤��A�ΰ��ƶ��o�جJ���O�ɶ��S�L�᪺�Ʊ��A��i�H�q����o�����Ǯɬq�i�H�����A�ȡA�j�j�F�W�[���׬O�ϥΪ̩Ϊ̬O�޲z�̮ɶ��W����K�C\n�b�Ǯդ��ɥαЫǡA���������d�߷Q�n�ɥΪ��ЫǬO�_���Ű�A�A�Ӫ��D�ЫǪ��Ҧ��v�O�ݩ���@�t�ҡA�åB��Өt�Ҩt��ӽЭɥΡA�Ӧ��Ǩt�Ҫ��ɥγW�h�]���������o�@�ˡA�p�����ɥαЫǤ����c���S�·СA�ҥH�̦n���覡�N�O���ɥαЫǤ]��b�����W�i��A���ɥαЫǤ]��ιw�����t�Ψ����ϥΪ̭̭ɥΡA�p���@�ӡA�q�d�߱ЫǪ��è�ɥαЫǪ��ӽСA�����b�����W�N�i����A�j�j���W�[�F�ɥΪ̪��K�Q�ʡF���~�A�٥i�H�Τ@�ЬO�ɥΪ��W�h�A���A����U�t�Ҥ��P���W�d�A�ѧ�W�Ū����Τ@�i��޲z�ΥX�ɡA�Ϩ䦳�Ĳv���X�ɱЫǡC\n', '���~�y', 'A9328015', '2013-06-06'),
(165, '���ɮն�e�Ƥ���s�ХH���j�Ǭ���', '���z�L', '�פ���', ' �ͬ��b�{�b���ڭ̤���@�����}�q���A�ڭ̧�L�ɵL�誺�Q�ιq���ӧ����ڭ̤�`�һݪ���T�P�s���A�Ǯզ��ܦh�v�͡A�۫H�j�a�����ۤv���q���A�j�a�]�@�w�|�Q�ξǮդF�����귽�t�ΨӬd�߮դ����̷s��T�A�άO�Ѯv��KEY-IN�ǥͦ��Z�H�ξǥͬd�߽Ҫ��άO���Z�F�ӥB�ǥ̹ͭ�ǮթҴ��Ѫ���T�t�Ψä��|�g�`�ʪ��ϥΡA�ҥH�ڭ̩ҭn�����N�O��X�Ǯո�T�H�δ����ǥ̹ͭ��դ�����������A��O�ڭ̱j�ժ����I�b�v�̥ͭi�H�Q�ήն�����귽�A��[�����ͬ���[���K�Q�C', '��F�}', 'A9328303', '2013-06-06'),
(166, '3D�ʵe-�ƦZ���@��', '���Ԯ�', '������', '�Ԫ��A�ް_�H�̪����W�C���L�b���O���v�����ҤU�A�o���Ԫ��ܦ��O�ߤ@�ѨM���覡�A�ӨC�@�����@�ɤj�Գ����ڭ̪��ͦs���ҵo���ܤơA�ר�S�H��N����l�u�B�֤l�u�b�C�������Ҵݯd���ֿ�g�����Ҫ��v�T�̬��Y���C\n�@�@�Ӧb�ֿ�g�U�ͬ����ͪ�������ລ���o�ͬ��ܡA���\�h���f�g����������B�X�i���B�L�k�ڪv���s�f�p�A�b�ֿ�g�U���ͪ����ܤF�즳�����A�åH�t�@�طs�����A�X�{�b�H�����e�C\n�@�@�ڭ̱N�H���z�Ҳ��ͪ����ܬ��o�����G�ƭI���A�Ӱ��]���ƨ���ֿ�g���v�T�o�ͪ����A�����ܡA�V�쥻���a�y�����U���F�G�H���ϼ��C\n', '�L�M��', 'A9328020', '2013-06-06'),
(167, '��m�M���q���t�ΥH���j�Ǭ���', '������', '�t����', '�۱q���j�ǰ����հϦ���m�M���ɡA�b�R���W���@�~�`�O���\�h�����D�s�b�A�b��m�M�����ʲ��@�~�W�A�ǥ̩ͭ������n��ɶ��ƶ��R���A�ӦX�@���ȹB�Ⲽ���b�Ⲽ���@�~�W�A���ݾ㵧�O�J�ǥͪ��R����T�A���ɾǥͶR���H�ƹL�h�ɡA�`�`�|�y���O������W�����~�A��p�y�쭫�СB�����ɶ����~���C���F���ǥ̦ͭb�R�����@�~�{�ǤW���²�K�A���Ⲽ���i�H���Τ�g�O�J�Ⲽ��T�A�ȹB�譱�i���K�Χ�ǽT���������C����s�N��q���t�ΰ����R�A�óz�L�t�ι�@�P�������j�Ǭ��ҥH�F�쥻����s���ت��C', '�L�m�t', 'A9328022', '2013-06-06'),
(168, 'RFID�ϮѸ�T�t��', '��J�s', '�t����', '����s���D�n�ت����G�Q�θ�T�޲z�t�줽�ǱN�ظm�@�Ӥp�����Ϯ��]���o�Ӿ��|�A�Q��RFID�o���޳N�A����ިt�W�]�p�@�ӹϮѺ޲z�t�ΡA�ϱo�b�t�줽�Ǥ��ɮѩ��ٮѪ��H�A�i�H²�u����ɶ��A�]��Q�Ψt�Τ�K�޲z���y��ơC', '�B�ۧ�', 'A9328023', '2013-06-06'),
(169, '�ʵe�s�@', '���Ԯ�', '������', '�{���q���h�C��`�`�Q�ϥΦb�U�Ӧa��A�b�ͬ��W���U�Өƪ��A�H�B�i�ݨ��o�Ǧh�C�骺�s�b�A���O���@�ǹq���s�i�N���O�H����H������A�ӬO�H�ʵe�s�@�Ө��N�ǲίu�H����C�Ʀܤ]�������Q�ιq���ʵe�ӻs���@�����㪺�q�v�C�ɭP�o�˪����ܡA�����k�\��ڭ̹q�������k�o�i�A�q�����u�N���ܦh���A�X�H�̪��u�@�A�]���H�̤���L�h�Ӯɪ��u�@�C�ǲΪ��h�C�骺�o�i�A�]���b�H�̯�Q�Ϊ����~�W�A�Ҧp���O�q�����s��@�A�N�u��Q�ΰ��B�����A�H�̩һs�Ӫ��F��Ӫ��F�X�S�ĮĪG�A���H�۹q���h�C�骺���_�P�i�B�A�o�ǥѯu�H���᪺�v���]������H�q���ʵeø�s�X���R���S�ĨӪ��{�A�Ӥ��b���������Ҫ��]���C', '���ԲW', 'A9328024', '2013-06-06'),
(170, '�����C���]�p-���j�Ԫ�', '�����]', '������', 'Web Game�b��~�Ӧ]�������޳N���зs�߲��A����������H��h���S�Ħb�������e�{�A�ҦpGoogle�a�_��JavaScript�޳N�A����Ӻ����@�ɰ_�F���n�ܤơA���ۧ�h�������޳N���~�Ӱ_�AJavaScript�PXML�D�P�B�z�����XAjax�޳N�A�������i�H�D�P�u���U���X��h�u�@�A�]���\�h�������G���F�_�ӡA�ӧڭ̳o�եD�n�Q�Q��JSP+ JS���X���s�������޳N�A���X��o���R�������C���A���\�h��Ĳ���������a�i�H�C���C', '���m��', 'A9328025', '2013-06-06'),
(171, 'RFID���Ω�ն�w���޲z-�H���X�鬰��', '�����]', '�t����', '�H�ն�w���Ө��A�ڭ̱N���XRFID��޻PWeb cam�A�Ϯa���M���X�����Ĥ@�ɶ��x���ĵ��W�U�Ǫ���T�C�C�@��ĵ����֦��@�i�W����RFID�q�l?�O�����d�A�����X��ĵ��H����a�C���ĵ��i�J�Ϊ�?�}�ǰϮɡA�]?�b�ǰϪ��f��RFID?�g���@�����촹���d���L�u�T���N�|�o�X�T����Ǯժ��D���W�A�P��Web cam�]�|�Y���^���v���A�p���@�Ӥ��u�i�H��?�ĵ����W�U�Ǫ��ɶ��A�t�@�譱�t�η|�۰ʩI�s�H�e²�T���A�ȡA�M��ǰe��U�Ӯa��������Pe-mail�H�c�q���a���A�T�����e�]�t�ĵ���F�ǰϩΪ�?�}�ǰϪ��ɶ��P�v���A���a���i�H�Y�ɴx����ĵ����w����T�F�P�ɡA�դ�]��x���ĵ���ժ��ʺA�A�@�P�զ��@��?�w�����q�l�u�@���C', '�f���w', 'A9328027', '2013-06-06'),
(172, '��T�P�D��T�M�~�H����e�ƱоǤ��įq���R---�H���j�ǰ����հϬ���', '���Q��', '�פ���', '�H�۸�T��ު��i�B�o�i�A�ϱo���ں��������νd��U�ӷU�s�A���ȼv�T��`���ͬ��A�P�ɤ]���ܤF�оǪ����A�A����оǪ̦Ө��O�_�౵���p���о����Ҫ����ܩO�H����s�Y�H�оǪ̪����ץX�o�A�Ӥ�����P��t�I���Τ��P�q�����i���оǪ̹�����оǱ����ת��t���C�]���b��s��H����ܤW�A�N�оǪ̨̤��P��t�I���Τ��P�q�����i������աA���O�O�u��T��t�v�P�u�D��T��t�v�C', '������', 'A9328028', '2013-06-06'),
(173, '����ʪ����s�@', '���Q��', '�t����', '��T�q�l��ު��ֳt�o�i�H�κ��ں������|�q�K�F�A�q�l�ӰȤ]�}�l���F�ֳt�������A�����¯ٶǲΪ��ӷ~�Ҧ��A�����A�о�ӹB�@�Ҧ����૬�A�]�i����ܤH���g�٬��ʪ����աA���M�a�a�ʵۥt�@���ӷ~���R�C���N�ثe�o�i�ӬݡA��ڪ��ӰȹB�@�u���O���i��|�������A�H�H���A�Ȫ��򥻤��|�ܡA���q�l�Ӱ����ӬO�ӥ��Ӫ��ͶաC\n', '�\����', 'A9328030', '2013-06-06'),
(174, '�������ץ۸]����������', '���Q��', '�t����', '������ҬO�H���������P�x���X�A�z�L�q�������X�Ӫ���u�Ŷ��P�ӤH����ı�t�ΡBťı�t�ΡBĲı�t�ΡB�ʧ@�P���t�����H�ĤJ�������@�ɡA���禳�p�u��@�ɪ��U�ؤH�ƪ��P�U�ؤH�ƪ������Ҳ��ͪ����ʦ欰�C�G�Q�@�@���}�l�A������Ҫ��o�i�]���n��޳N�B�q���w�骺����U�ƻP�����q�T�����ΡA�X��B�v���P�h�C��}�l���X�A�\�h�������[�]�]���ӥ͡A�p���U�̬y�檺�u�W�ݥH720�ת��������[�A���R�a���Ϊ�����F�{���A�K�i�H���ں����s���Ǥ����C�A�٤U�\�h���K�A����s�]�Ʊ��Ǧ��覡�A�s���X�������ץ۸]�A�ϷR�n�̯�b��²�K�̵ΪA�����A�U�A�Y�ര��220�����]����ơC', '���t�[', 'A9328031', '2013-06-06'),
(175, '�����_�� ', '���Q��', '������', ' ��󤺪�����ƭ����P�j�ݤH���ܦ����쪺�ڭ̡A�Q�ۦp�ൽ�Τ�����\n�I����ƭ����Ӱ��@�ӹC���A�ǥѹC���i�H�Ҿɤ�ƪ��N�q�A�]�i�q�䤤\n�F�ѷ��a�����U�����A�C�����W�[�ǲߪ�����A�i�z�L��ı�P�v�����ĪG\n�ӹF�줬�ʡA���H�}���ӾQ���ڭ̹C�����e�C', '�L�ŧ�', 'A9328032', '2013-06-06'),
(176, '�u�W�����i�ܺ����ХH���i����ѥ��������q����', '�����]', '�t����', '�ѩ��ު��ֳt�i�B�A���y��T���]World Wide Web�^���X�{���ǲβ��~�a�ӤF��}�ʪ��o�i�A�ثe���~��?�۷s�����D�P�D�ԡA�ǥѸ�T�t�Ϊ����U�A���~?�����|��}�g��~�V�ڦV���\�A�H�ۻ����v����q�E�P�B�����ݨD�ܤƧֳt�A�ǲΥ��~���F�ﵽ�ʥ��H���X�j�P�⥫���A�i�ӨϾ�ӥ��~�i�����欰���y�{��y�A�����~���~���Τ����y�{�i�H�F��̤j�ƮĲv�A���ǥѥ��~�y�{�A�y�H���ɥ��~�v���O�H�θѨM�ҭ��{���D�C\n\n���i����ѥ��������q���@�ǲβ��~�U�����鲣�~�A�b���g�Q�l�~�Ӫ��g���A�w���@�w���v����O�A���ǲβ��~���{�쪺���D�A�������_���Y�B�S���@�ӫK�����P��޹D�A�Ӹ�T��޵o�i�ܤ��H�ӡA�ꤺ�|�����������ǲβ��~��T�ơA������O�P�ͶաA���i����ѥ��������q�n���W�����~��T�ơA�Q�κ�����T���X�i�q���A�[�J��ݺ޲z�t�ΡA�����~�D�b���~�����y�{��󦳮Ĳv���޲z�A�ëإߨ��v���O���@�~�y�{�A�@�����~����g�礧����u�{�C\n', '���l��', 'A9328033', '2013-06-06'),
(177, '�ն�������ө��X�ܮw ', '��J�s', '�t����', '���������W���ܮw�A�ӭܮw�A�U�W��q�A�N�O�s��\�h���~���@���x�s�a�C���F�i\n�H���\�h�P�ǭ̡A�i�H��K�B�K�y�ʱo���n���y�A�ڭ̴��Ѥ@�ө�業�x�A���P�ǭ̥i\n�H�N�L�̱��c�檺�G��ѩ�m�b���x�W�A���ݭn���H�ʶR�C�]�ѩ�����N�[�]�b�դ��A\n�ʪ��̥i��ܭ��ﭱ��?�覡�A�P�ǭ̤]�i�H�٤U�@���B�O�C�۫H�b��?�A�o�@�M�t��\n���x�N�|���\�h���ǥͱa?�K?�A�P�N�Q���쪺��ߡC ', '���}��', 'A9328034', '2013-06-06'),
(178, '���F����ظp ��سѾl�g�ۤ�귽�޲z�t�ζ}�o', '�����]', '�t����', '�H�۹q����޻P�������o�i�A�ثe�ꤺ�U�ŬF���D�޾������¼Ʀ���ڶi�A�H�[�j�@�~�K�Q��²�Ʀ�F�����C���b�n����T�ƪ��L�{���A�o�]�����`�N��F��T�q���Ʃҭn���諸�t�άy�Z�סB��ƥ��T�ʻP�w���ʵ����D�C�o�ǰ��D�]�A�F��Ʀb�����ǻ��ɬO�_�|�D�^�����θ�Ưʺ|�B�򥢵��M�I�A�]���b��F��T�t�η����������Ѩ}�n���w������A�H�[�j�t�Ϊ��w���P��Ƥ����T�ʡC', '���T��', 'A9328036', '2013-06-07'),
(179, '��Ʊ��ɧ޳N���c�N�{�������t��', '���Q��', '�t����', '�ѩ�������o�F�A�P�ɲ��ͤF�\�h���D�A�b�ȤJ�I�q���A�c�N�{���������欰�A�y����ƪ��y���A���ȹ���~�άO�ӤH�Ө��A���O���Y�������D�C�]�����F����c�N�{���������A�ڭ̧Ʊ�i�H�]�p�X�@�M�s���f�r�����޳N�A�i�A�Ω�w���M�������f�r�����C', '�����', 'A9328038', '2013-06-07'),
(180, '�x�W�e���Q�j3C���~�����զX���R', '���z�L', '�פ���', '��~�ӡA�x�W���~���c���ܾE�A����޲��~���k�o�i�A�a�ʤF�x�W���g�٩_�ݡC�p��������޲��~����v���O�]�O�ӭ��n�����D�C�����s��H���x�W���e���Q�j3C���~�A��ƨӷ����ѤU���x2006�~5��3��X�������Z�A�ɶ��d�򬰦褸2004�~�P2005�~�C�����A���`���P���Q�������m�A��D�n���d��b��i�h�y�U�ݹζ��x�}�A�H�۹參�������v��X�b�����СA�P�⦨���v��Y�b�����СA�ñN���Q�j3C���~ø�e��BCG�x�}���ϧΡA���ۧQ�θ�ƥ]���k���R�X�e���Q�j3C���~���v���ȡA�ÿ�X�̨Ϊ��Ь���~�A����3C���~���ǲ߫��СC\n', '���ɪ�', 'A9328322', '2013-06-07'),
(181, '�q�l�ө��ҫ��s�@', '��J�s', '�t����', '����s���D�n�ت����G�s�@�@�M�ϰө�������ĺ޲z�ҥͲ����ӫ~�A�åΩ������P�������޲z�t�ΡC�t�ΥD�n���q�l�ө������C�q�l�ө����Ѯ��O�̥i�H�b�����ʶR�ӫ~���u�W�q�ʨt�ΡA�åB�i�H���t�ഫ�����P�������q�l�ө��A�Ʊ�H�̤֪��ɶ��M�B�J�����q�l�ө����ഫ�A�H����̤j���Q���C\n', '���L��', 'A9328329', '2013-06-07'),
(182, '�ǲ��Z������]������', '���z�L', '�פ���', '�Z�ĳo�W���`�`�|�X�{�b�ͬ��P�D�A�ǲ��Z�ħ�s���H�Ҭ�s�Ʀܩ�O�`�J�����Q�C�Ӿǲ��Z���U�W��q�N�O�ǲ߮ĪG�A�p��h�ǲߨ���o�̦n���ĪG�A�o�@���O���[�H�ӫܦh�Ǫ̦b��s����V�A�ɥH�����H�̦欰�W�����СC\n�@�@����s�D�n�O�H�j�ǥͪ��ǲ߼Ҧ��A������y��ì������Z�A�i�ӥh���Q�o�����O�_�P�ڭ̪����׬O�_���ҡC�ӱ��Q����V�O�H�y��B��ءB�W�Үɶ��B�½ҦѮv���D�A�C�C�v�@�⵷��õ�A�O�_�o�쪺���G�|�p�w����A�]�Ʊ�ର�����s���ӰѦҡC\n', '�i��', 'A9328349', '2013-06-07'),
(183, '�i�@�������h��- �������X�H���i�@���߬���', '������', '�t����', '�{�����|�Ѧ~�H�f��ҳv�~���W�A �Ѧ~�H�f�����@�]���F���|�ҭ��������D�A �����ѤH�w�i�@���c���u�H�K���F�{�N�H�ҭ������a��A�w�i�@���c�����ҬO�_�ξA�H�άO�_���������M�~���@�H���A���O��ܦw�i�@���c�ҭn�`�N���a��A�����w�ﰪ�����w�i�@���c�����������Q�A�ھڤ��F�����|�q�ѤH�֧Q�ѤH�w�i�@���c�{�p�����ѡA�ثe�������w�߮ת��ѤH�w�i�@���c�@���|�Q�E�ҡA�M�Ӧ��|�Q�E�Ҫ��w�i�@���c�u���ּƴX�����c�t���������U�譱�����СA�Ӧb�u�W�Y�ɨt�Τ譱�A��󰪶����a�Ϫ��w�i�@���c�å����o�˪������A�]���A������s���ѽu�W�Y�ɼv���s���P����s�����A�ȡA�P�]�Ϊk�H�������p�ߡu�X�H���ѤH�i�@���ߡv���t�X�]�ѦҪ���@�^�i���F�����|�q�ѤH�֧Q�j�C\n���M�D���t�Υi ���ѱ����B���߰|���ѤH���s�޹D�A�ǥѧY�ɰʺA��v�ΦѤH���������d��T�A�i�H���a�ݮɮ����߰|���ѤH�A�Y�Ϩ��B�b����]��z�L�o�F�������o���a���Ѧ~�H�b�i�@���ߪ����d���p�A�åB�i�H�Y���[�ݾi�@���ߤ����ʪ����p�C\n', '�B�a�D', 'A9328351', '2013-06-07'),
(184, '�Ҷq���ҽ����U�x�W���p�����~�o�i�����W��', '���z�L', '�פ���', 'SWOT���R���@���q�����W���u��A�z�L��´���u�աB�H�աB���|�Ϋ¯٤��R�A�i���´�����W���C�q��SWOT ��k�D�Ĩ��h�ؼе��蠟(MCDM)�A �ǥѼh�Ť��R�L�{�H²�ƽ��������D�C���k�NSWOT�Ψ���������СA�B�Χ벼�B�[�v���[�v�������q�Ƥ�k�A�ѤW�ӤU�Ŷq�M����i�ध���q�v�������A�H��o�̨Ϊ�������ܡC����s���Q�O�W���p�����~�b���Һ޲z�t�έn�D�U���v����������A�ܽ�18����ISO9000��ISO14000�]�֭����H�����ߨM���p�աA�õ��X�벼���v������k�A���X�@�ӹ�s�q��SWOT���R�A�H���襤�p���~���v�������A�����F����w�ѦҡC', '�d����', 'A9328388', '2013-06-07'),
(185, '�u�W�d�ߩжU��T����', '�i�}�F', '�t����', '�ѩ�j�h�ƥӿ�жU���H�����F�ѦU�a�Ȧ�жU�Q�v�Y���ܰʸ�T�A���o�Ǥw�g�Q���Q�v�u�M�c�v���U�ڤ�A�u�n���Ǯɶ��n�n�˵��ۤv���жU���p�A��ܧQ�v���u�f���M�׿�z�ഫ�жU��״N��`�٧Q����X�A�άO��ܧ�A�X�ۤv�z�]�ݨD���s�жU�A�����U���I�����жU�t��A�ҥH�Ʊ��ǥѦ��u�W�d�ߩжU��T�����A�i�H���@��U�ڤ���R�P����X�󦳧Q��ۤv���Ȧ�@�жU�A���u�W�d�ߩжU��T�t�Υi�H���ѵ��U�ڤ�@���̨ο�ܤ��ѦҡC\n\n���X���t�Τ����I�O�����ѭӤH�жU�Ը߻��U�A�ȡA�B��h�����ⴤ��ϥΪ���K�ʡB���e���H��ʻP�A�ȥ���ʤΫغc�t�Ϊ��g�٩ʡA�b�Ʀ츨�t���ʹ�֦Ӹ�T�z���Ư঳�ݧV�O���{�p�U�A�Ǧ��t�ΨӨ�U��ϥΪ̥H�ӤH�Ƥ覡�i��жU��T�ϥΡC\n', 'Ĭ�\��', 'A9328467', '2013-06-07'),
(186, '�n�O�W������', '�i�}�F', '�t����', '�ثe�����W���\�h����������, ���O�h���R�A��Ƨe�{���\��, �]�ʥF�P�ϥΪ̤��ʪ��\��;����s�HASP.NET�PACCESS�غc�@�Ӿ�X�\�U�P������T������,�ô��ѤU�Ԧ���椬�ʬd�ߥ\��', '������', 'A9328458', '2013-06-10'),
(187, '�q�l�G��ѩ�-�X�s�ʫ~�ѫ�����', '������', '�t����', '����s�N�լd�o�������x���ի᪺�ϥΪ�, �i��o�G��ѩ����O�s���򥻸�ƤΦ欰, �H���Q�q�l�G��ѩ��U�ȱڸs�欰���R', '�x����', 'A9328321', '2013-06-10'),
(188, '�����V�y�P�̱��z�o���p�U�������M��q����X�ʤ��R', '���Q��', '�פ���', '����s�`�J�F�Ѩ��̦M���B�z�{�Ǩðw��{�p���w������|(�X�s��|)�إ߼����ҫ��H�˵��̱��z�o���������M��q', '�i���^', 'A9428398', '2013-06-10'),
(189, '�H�������u�W�����', '�i�Ż�', '�t����', '����s�N�s�@�H������������������x, �F�Ѩ�L�{�����H������������x���I��[�H�ﵽ, ���ϥΪ̥i�H���K�a�ϥΧڭ̪����x, ��i�@�B���ɥL�̦a�Q�k����L�ϥΪ�, �H�F�����O�ĪG', '�L�z��', 'A9628409', '2013-06-10'),
(190, '�������3D����-�H�X�s�ѵ󬰨�', '���Ԯ�', '�t����', '�Ʀ��޶i�B�w��N�ͬ��P�D���ƪ��Ʀ��,�ϵ�����ҧ޳N������Ҫ��ڷQ�o�H��{,�Q�ε�����ҧ޳N,�q���[���B��P�����B��P�]�p�s�y��,���a�ө��㪺���N,�禨���s�����λP���~�p�e�����n�U�O', '�G���@', 'A9328305', '2013-06-10'),
(191, '�������R�^���t�ε{��', '�i�}�F', '�t����', '�H�ۺ������ֳt�o�i,�H�̯�b�����W�������Ƥ]�V�ӶV�h,���O�b���h����Ʃ��U,�����Ϊ���ƬO������O�@�f�u�Ҥ~�঳�Ī��Q�θ��,�ڭ̥H��Q�|���T���������,���@�ӯ�۰ʧ���P���R��Q�|�������{��,�H�\�h��Q�|���������T�������{��������ؼ�,�۩w����r�H���R�һݪ����,�^���һݪ����,�e�{���ϥΪ�', '���^��', 'A9328489', '2013-06-10'),
(192, '�s�˿���s�m���W�ѵ�3D������Ҿ���', '���Ԯ�', '�t����', '�s�@�s�˿���s�m���W�ѵ�3D������Ҿ������ϥH3D�q��������Ҭ��s�@�C��,�غc�������[�����I,�z�L�ĤT�H�٪����F,�q�ϥΪ̪��[�I�i�J�����Ŷ�, �H���ʦ����覡���㪺�s�����W�a��,3D�q���ʵe�i�O���ؿv�Φ��B�Ŷ��t�m�B��m���S��,�Q�����Y������i,���H�H���u���צb�ؿv�������|���b�䤤���P��,���٥��h�L���W���C�Ȩӻ�, �ڭ̴��ѤF²�����P�a�w�������覡,���z�˦۽�W�����g�a��,�]�h�F�@�����x�P,�H�Ǧ��F��Ŷ��[�����@��', '�I�@��', 'A9328017', '2013-06-10'),
(193, '���ʦ��q�����רt�κ������[�]', '���z�L', '�t����', '�[�]�������Ǯժ��H�ા�D�Ǯդ]���������׹q��������, �S�]���j���������׹L�{�ݩ�D�z�����y�{,���O�̶ȯ൥��,�L�k�`�J�F�ѹq���X�F������D, �ɭP�P�˪����D�i��A���o��,�ɭP���q���a�F�N���s�ʶR���[��, �ҥH�������D�n�ۭ���P�ϥΪ̪������٦����ת��p���Y�ɧ�s,�ǥѨϥΥ������W�[�ϥΪ̹�q�����`�J�F��, �i�@�B�ǲߨ��L�q������', '���ũ�', 'A9328012', '2013-06-10'),
(194, '���r�ӵ�����Ҿ���', '�i�}�F', '�t����', '�H�۬�ު���s�벧�A�H�ʤƪ��o�i�A���[�j�ݤ��@�w�ݭn���X��~�A���~�[�A�F���M�D�Ʊ��ǥѺ���\n\n���������M�ʡA�õ��X���ҵ�����ҡA�������b�a��������Y��j�ݪ������A�ï�q���F�ѥj�ݦb���v\n\n�������ȻP�N�q�C\n�@�~�H�������e�{�覡�A�õ��X������ҡA�e�{���r�Ӫ����������F�b������Ҥ��A�ϥΪ̥i�b�䤤�H\n\n�N���ʡB�[�ݡA��㦳���v�I�����媫�A�i�ǥѷƹ��I�諸�覡�`�J�F�Ѩ�[�q�F�Ӧb�����s��������\n\n�A�|�t�~���Ш��r�ӥH�Ψ䤺���Ҧ����媫�P���v�F�����@�~�O�Q�κ��ں����H�Χڭ̩ҾǪ��غس]�p\n\n�n��Ӷ}�o�������A�Q�ǵ۲{�N��ު��i�B�A���H�̾ǲ߾��v���覡���A�]����ѥ��W�A�óz�L������\n\n�Ҫ��������j���঳�t�����ǲߤ�V�C', '�L�ۧ�', 'A9328016', '2013-06-10'),
(195, '�ȹC��{�t��W���H����������', '������', '�t����', '�{����T�������K�Q��,�ϱo��H�Q�κ������o�ȹC��T�v���W�[,�ۧU�Ȧ�W�����ȹC�覡�纥������,�Ӭ����ȹC�����Ҵ��Ѫ��ȹC���~�@��H�J�w���u���M�ˮȹC���~���D, �ʥF�w��ۧU�Ȧ�̤��Ȼs�ƮȹC��T�A�ȵ���X����', '�L�̧�', 'A9428311', '2013-06-10'),
(196, '�j�ǥͰ��d�Ըߨt�����Τ����R-�H���j�ǰ����հϬ���', '���Q��', '�פ���', '����������,�q�����ϥΤw�g�����j�ǥͥD�n���𶢬���,�[�W�������J�b�~,�ɭP�j�ǥͪ��ɶ��P�q������;�[�W�L�����N����P,�g�`�ʪ��T�\�����`,���M���ߺD�ʼ��]�P���R�B�ʵ��b�b��ܥX�j�ǥͪ����W�ߥͬ��@��;�g��s���X, �����`���@��,���e�f�O�ͤ��D�],�N���ۤj�ǥͪ����d�w�G�_���O', '���Q�', 'A9528341', '2013-06-10'),
(197, '�_�۴˪L Fantasy Forest', '���Q��', '������', '�ë��۱Ш|���z��,�b�C�����|���]�k��,�̭��D�n�O�O�|���ʪ�����Ų,��ӫO�|�ʪ����ͬ��ߩʤ]�|���ԲӪ�����,�Ʊ��Ǧ����|���j�a�O�|�۵M�ͺA���Ҫ����n��', '�\����', 'A9228029', '2013-06-10'),
(198, 'QR-code ����ʪ���', 'ù�ػ�', '�t����', '�{����T��޵o�F�����|�̡A�H�۴��z����������ΤƤΤ���W���A�Ȳ���A����Ψ�������Τw�����j�����H�̤�`�ͬ����@�����A�ήɪ���T���ɻP���ѡA�]���]�����@�j�����A�笰�{�b���ͶաC\n�@�@����s�Q��QR code���{���޳N�P�\��A�P�ظm�@�ӪA���ʪ���T���x�A�ñN�C�ذӫ~�����s�@QR code�A�Q��QR code�K���\��Χֳt���y���S�ʻP�����s���A�����O�̥u�ݭn���P�a�z�L������᪺�ʧ@�A�N��N�ӫ~���P�ʤJ�A�ï��H���˵���һݪ��ӫ~��T�A�W�[��ӫ~���[�h�@�����H���A�]�����a�٤U�\�h�H�Ʀ����C\n    �t�έ����i�H�s����Ҧ��ӫ~��T�A�]�A�U���ӫ~��QR code�A�Y�i�����O�̩�Ӧs���ӫ~��QR code�A�Ϯ��O�̯���ֳt�s���ӫ~�����C���O�̶����n�J�Υ[�J�|���A�~�i�ʶR�ӫ~�C�b��Ʈw�ظm�ɡA�޲z�̥i�H�קﲣ�~�����B�s�W���~�����B�R�����~�����B�q��޲z�B�|���޲z�B�d�߾P��A�Ҷ��v���{�Ҥ~�i�s��C\n', '�i�ӲW', 'A9828303', '2013-06-11'),
(199, 'facebook�t�ͪ��θg��ХH���j�Ǹ�ިt����', '�����]', '�פ���', '�b�o�Ӻ��ں������k�o�i���ɥN�A�����@�ɦ��w�����F�ͬ������i�ίʪ��@�����A�]���ثe��ު��i�B�A�H�P�H��������y���ʡA�w�g���ȶȫ]����{��ͬ������A�i�z�L�ϥιq�������U�ضǼ��u��ӹF���A�]�]���y�N�F�������s���o�ط����C�ꤺ�j�M�|�ըt�үɯɷN�Ѩ���s�o�i���ͶաA��~�Ӷ}�l����facebook�W���t�ͪ��ΡA�Ʊ�z�Lfacebook���v�T�O�A�N���~�դͥH�Ψt�Ҷi�����Y�s���C�]������s���󱴰Q�j�M�հ|facebook�t�ͪ��Υثe�g�礧���p�A�q�ʾ����B���歱�B�������A�`�J�A�Ѩt�ͪ��α��ΡA�úc��t�ͪ��Φp��ݮi�����H�Ϊ��[�g�o�i�C \n����s�H��ڬ[�c�X�@��facebook�t�ͪ��ά�����A���Qfacebook �t�ͪ��Φp��P�i�t�ͻP�t�����Y�o�i�A�H�δ��ɨt�ͦ^�X�t�W���v�T�C��s���G�o�{:�@�B�z�Lfacebook �������S�ʡA�ϱo�t�W�T�������ǲιq�ܩάOE-MAIL�󦳮Ĳv�ǹF���t�͡A�G�B�z�Lfacebook�t�ͪ��ί�����t��?����?�P�����Ǫ��j�ξǧ̩f�A�i�Ӳ���?�P�j?���H�����Y?���A���U��t�W���~�ʹN�~�C�ثe�z�L����s�Ҵ��Ѫ���k�A�b2�Ӥ뤺�w�F��N��270��t�ͥ[�J�����ΡC\n', '�����o', 'A9828335', '2013-06-11'),
(200, '�v�B�Ĥ@���ѳ]���~���Z�ĵ����t��', '�x�M��', '�t����', '���~�`�λs�{��O���Шӵ����s�{�ΰӫ~�~���Z�ġC�s�{��O���R���D�n�ت��O�Ŷq��ӻs�{����O�A�Y�����s�{�ҥͲ����ӫ~�O�_����ŦX�U�ȩγ]�p�̩ҹw���n�D���W��ɭ��C�z�L�s�{��O���R�A�Ͳ������i�H�����ӫ~�U���~��S�ʪ��s�{���ǡA�ðw��s�{��O���t���ӫ~�i��l�ܻP�ﵽ�C���ӫ~����ʪ��~��ﵽ�p���A�s�{��O���R�i���ѭ��n���M����V�A�F�ѥثe�ӫ~���s�{���p�A�w�����}�~�����͡A�T�O�ӫ~���~��b�@�w���ǥH�W�C\n�v�B�Ĥ@���ѳ]����˳]�p��ת��u�I�O�Y�u���ծɶ��P�`�ٸ귽�A�P�ɥi�ѨM�b�ӫ~�ةR���礤�A���ǰӫ~�b�ةR���祼�������e�A�i��]���Y�Ǧ]��(�p���ǰӫ~�|����禳�M�I�ʩΤ��A�X���窺�n�D�A�p�ӫ~�N�~�l�a)�A�ӭn���e�������窺���D�A�H�Φ]�ӫ~�ةR�۷����y���ةR���լO�O�ɦӥB�����������D�C\n�ܦh�~���Z�ĵ����n��O�L�k�B�z�D�`�A�B�]�������~�ةR��ơA�]������s���Q�ӫ~�ةR�b���f���t�B�v�B�Ĥ@���ѳ]����ˤ�ת����]���U�A�o�i�X�����ӫ~�ةR�Z�Ī��έp�˩w�{�ǡC���{�Ǻ٬��v�B�Ĥ@���ѳ]���~���Z�ĵ����t�ΡA�B�O�Y�ɰӷ~���z���@�ӫ~���Z�ĨM�����R�u��A��B�z�D�`�A�B�]�����ӫ~�ةR��ơC�B�Q��C#�h�]�p���Z�ĵ����t�ΡC \n', '���ۿ�', 'A9828385', '2013-06-11'),
(201, '��ʮȹCAPP-�H�ֹؤs�A������', '���Ԯ�', '�t����', '��ʮȹCAPP�����ͬO���F���ѳ\�h�I�]�ȧ󻴫K�����, �۸���H���I�]�ȥ��ݱa�۫p�����a�Ϥλ`�����@�Ǹ�ƥX�C, �{�b�u�ݱa�ۤ@�����z������N����N�H�e���a��,�åB�٥i�H�d�ߨ��h���ȹC��T', '���a��', 'A9828387', '2013-06-11');

-- --------------------------------------------------------

--
-- �������c `query`
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
-- �������c `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- ��s��ƪ�������� `teacher`
--

INSERT INTO `teacher` (`id`, `name`) VALUES
(1, '���Q��'),
(2, '�i�Ż�'),
(3, '�x�M��'),
(4, '������'),
(5, '�����]'),
(6, '���Ԯ�'),
(7, '�i�}�F'),
(8, '���z�L'),
(9, 'ù�ػ�'),
(10, '��J�s'),
(11, '�x�꿳');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;