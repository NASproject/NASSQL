-- phpMyAdmin SQL Dump
-- version 3.5.0
-- http://www.phpmyadmin.net
--
-- �D��: localhost
-- ���ͤ��: 2014 �~ 03 �� 05 �� 20:27
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
