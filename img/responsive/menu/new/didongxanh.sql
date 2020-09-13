-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th1 13, 2019 lúc 05:21 AM
-- Phiên bản máy phục vụ: 5.6.39-cll-lve
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `didongxanh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_article`
--

CREATE TABLE `olala_article` (
  `article_id` int(11) NOT NULL,
  `article_menu_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` text,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `img_note` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `block` int(11) NOT NULL DEFAULT '0',
  `flat` int(11) NOT NULL DEFAULT '0',
  `open_sale` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `upload_id` bigint(20) NOT NULL DEFAULT '0',
  `comment` text CHARACTER SET utf8mb4,
  `content` longtext CHARACTER SET utf8mb4,
  `youtube` varchar(255) DEFAULT NULL,
  `youtube_img` varchar(255) NOT NULL DEFAULT 'no',
  `tag` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `tags_2` varchar(255) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `pin` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_article`
--

INSERT INTO `olala_article` (`article_id`, `article_menu_id`, `name`, `slug`, `title`, `description`, `keywords`, `img`, `img_note`, `address`, `price`, `block`, `flat`, `open_sale`, `type`, `upload_id`, `comment`, `content`, `youtube`, `youtube_img`, `tag`, `tags`, `tags_2`, `is_active`, `hot`, `pin`, `views`, `created_time`, `modified_time`, `user_id`) VALUES
(919, 458, 'Bất động sản Sài Gòn thưởng Tết tiền tỷ', 'bat-dong-san-sai-gon-thuong-tet-tien-ty', '', '', '', 'bat-dong-san-sai-gon-thuong-tet-tien-ty-1540081876.jpg', '', '', 0, 0, 0, 0, 0, 2177, 'Một công ty địa ốc tại Tân Bình, TP HCM vừa công bố thưởng cuối năm cho nhân viên xuất sắc quà và hiện kim 1,3 tỷ đồng.', '<p>Phần thưởng này được công bố trong lễ tổng kết năm kinh doanh 2017 của doanh nghiệp, tổ chức vào trung tuần tháng 1/2018. Khoản thưởng Tết Mậu Tuất cho nhân viên xuất sắc gồm có: một ôtô 7 chỗ cùng phiếu tích lũy an sinh để mua nhà, tiền mặt và voucher với tổng giá trị 1,3 tỷ đồng; trong đó ôtô chiếm trên 50% giá trị giải thưởng. Năm 2017 vừa qua, doanh nghiệp đã bàn giao và đưa vào vận hành 2 dự án căn hộ tại TP HCM.</p>\r\n\r\n<p>Trong khi đó, lãnh đạo một công ty tư vấn và môi giới bất động sản có trụ sở tại quận 5, TP HCM tiết lộ với&nbsp;<em>VnExpress</em>, khoản thu nhập cả năm cấp trưởng nhóm sale xuất sắc của doanh nghiệp lên đến trên 2 tỷ đồng. Trong đó, khoản lương hồi tố (được trả bù nhờ bán hàng vượt doanh số quy định) lên đến 15 triệu đồng mỗi tháng. Nếu tính 12 tháng hồi tố lương kèm tháng lương thứ 13 và 14 đạt gần 250 triệu đồng.</p>\r\n\r\n<p>Ngoài ra, công ty còn có khoản thưởng 3% hoa hồng dựa trên tổng doanh số mang về. Chính sách thưởng cho nhóm kinh doanh xuất sắc được phân bổ như sau: trưởng nhóm được hưởng 30% quỹ tiền thưởng, phần còn lại chia đều cho các cá nhân có hiệu suất bán hàng tốt trong năm. \"Cộng tất cả các khoản thưởng và lương hồi tố cuối năm, ước tính cá nhân xuất sắc nhất thừa sức rinh về bạc tỷ\", ông nói.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tcs\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"tcs-selection-enabled tcs-selected\"><img alt=\"Khá nhiều công ty bất động sản tại TP HCM rục rịch thưởng Tết bạc tỷ. Ảnh: K.H\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" src=\"https://i-kinhdoanh.vnecdn.net/2018/01/22/a-tb-dia-oc-thuong-Tet-8740-1516635615.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Khá nhiều công ty bất động sản tại TP HCM rục rịch thưởng Tết bạc tỷ. Ảnh:&nbsp;<em>K.H</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Lãnh đạo công ty này cho biết thêm, năm 2016 giám đốc sàn xuất sắc của công ty có khoản thu nhập 1,3 tỷ đồng, nhưng dự kiến năm 2017 có thể tăng đột biến, vọt lên 2-2,2 tỷ đồng, đã bao gồm các khoản thưởng Tết. Năm qua, công ty này bán được 2.800 bất động sản, trong đó 40% là căn hộ giá vừa túi tiền, 60% rổ hàng tiêu thụ được là đất nền và nhà phố. Sản lượng hàng bán được của năm 2017 cao hơn năm trước 1.000 sản phẩm, tăng hơn 50%.</p>\r\n\r\n<p>Doanh nghiệp có hệ thống 6 sàn địa ốc thì 5 sàn đã vượt chỉ tiêu đề ra, toàn công ty có trên 80% nhân viên thuộc diện được hồi tố lương (nhận thêm 8-15 triệu đồng mỗi tháng và bù cho cả năm) nhờ bán hàng đạt chỉ tiêu quy định.</p>\r\n\r\n<p>Riêng một công ty địa ốc có trụ sở tại phố đi bộ Bùi Viện TP HCM tuy bán hàng quy mô vừa và nhỏ cũng đã lên kế hoạch thưởng Tết cho giám đốc sàn xuất sắc bằng xe SH kèm hiện kim, trị giá gần 200 triệu đồng. Ngoài ra, các sàn còn được công ty mẹ (chủ đầu tư) thưởng cho tập thể 500 triệu đồng để nhân viên có quỹ đi du lịch nước ngoài.</p>\r\n\r\n<p>Tổng giám đốc Công ty Việt An Hòa, Trần Khánh Quang cho biết, thưởng Tết ngành địa ốc năm 2017 đạt mốc tiền tỷ là điều dễ hiểu vì trong 12 tháng qua, thị trường đã chứng kiến nhiều cơn sốt đất lan rộng, bất động sản liền thổ đạt thanh khoản cao, biên lợi nhuận ghi nhận ở mức lý tưởng. Bên cạnh đó những doanh nghiệp môi giới phân phối căn hộ bình dân, giá vừa túi tiền đều thắng lớn vì khả năng tiêu thụ hàng ở phân khúc giá rẻ tại Sài Gòn vẫn cực tốt.</p>\r\n\r\n<p>Tuy nhiên, ông Quang đánh giá, mức thưởng Tết tuy ngất ngưởng vươn đến tầm bạc tỷ không phải là hình mẫu đại diện cho toàn thị trường bất động sản. Chỉ có 10-15% những cá nhân và tập thể xuất sắc mới rủng rỉnh tiền thưởng Tết từ bạc trăm đến bạc tỷ đồng, trong đó số người bỏ túi bạc tỷ đếm trên đầu ngón tay. 30-40% nhân viên hoạt động trong ngành này được thưởng ở mức khá tốt, tức có tháng lương 13-14 hoặc 15 kèm hoa hồng. Số đông còn lại của thị trường có thể ăn Tết khiêm tốn hơn vì tiền thưởng chỉ ở mức từ trung bình trở xuống.&nbsp;</p>\r\n\r\n<p style=\"text-align: right;\"><strong>Vũ Lê<br />\r\n(VnExpress.net)</strong></p>\r\n', '', 'no', '', '[]', '[]', 1, 0, 0, 51, 1516677480, 1540081876, 25),
(918, 458, 'Bất động sản nghỉ dưỡng Đà Lạt phát triển cùng du lịch', 'bat-dong-san-nghi-duong-da-lat-phat-trien-cung-du-lich', '', '', '', 'bat-dong-san-nghi-duong-da-lat-phat-trien-cung-du-lich-1540081892.jpg', '', '', 0, 0, 0, 0, 0, 2176, 'Cùng sự đẩy mạnh du lịch của thành phố, dự án bất động sản nghỉ dưỡng khai thác lợi thế về vị trí, thiết kế... để tăng sức cạnh tranh.', '<p>Vào mùa du lịch cuối năm, Đà Lạt là một trong những địa điểm đón lượng khách ồ ạt của cả nước đổ về. Giá khách sạn, nhà nghỉ tăng vào cuối tuần hay dịp lễ, nhưng dường như vẫn chưa đáp ứng đủ nhu cầu. Dọc tuyến phố trung tâm quanh Hồ Xuân Hương và chợ Đà Lạt, vào mùa lễ hội, không khó để bắt gặp các bảng thông báo hết phòng.</p>\r\n\r\n<p>Sự phát triển mạnh mẽ của ngành du lịch cùng những yếu tố thuận lợi về tự nhiên đã góp phần giúp Đà Lạt thu hút nhà đầu tư trong nhiều lĩnh vực. Nhờ vậy, thị trường nhà đất tại thành phố du lịch này cũng có phần sôi động hơn.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tcs\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"tcs-selection-enabled tcs-selected\" style=\"text-align: center;\"><img alt=\"polyad\" crossorigin=\"anonymous\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" src=\"https://i-kinhdoanh.vnecdn.net/2018/01/22/22-1-201837-3106-1516610918.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Đà Lạt là một trong những điểm hấp dẫn du lịch của cả nước. Ảnh:&nbsp;<em>Phong Vân.</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>\"Với nhu cầu lưu trú lớn tại thành phố du lịch, mô hình bất động sản nghỉ dưỡng tại Đà Lạt xuất hiện và phát triển thời gian gần đây dù chưa phải là giải pháp trọn vẹn, nhưng cũng gợi mở một hướng đi cho thành phố\", đại diện công ty Cổ phần Đầu tư Phong Vân cho biết.</p>\r\n\r\n<p>Dự án bất động sản nghỉ dưỡng cũng khai thác những ưu điểm của mình để tạo lợi thế cạnh tranh trong phân khúc này. Đơn cử như The Panorama - Đà Lạt. Sở hữu vị trí đắc địa, nơi giao nhau giữa đường Hoàng Văn Thụ, quốc lộ 20 và cao tốc Liên Khương, sau lưng là đường Phạm Hồng Thái chạy dọc Đà Lạt, dự án có vị trí cửa ngõ, dễ dàng kết nối với các khu vực lân cận.</p>\r\n\r\n<p>Từ dự án, du khách có thể tiếp cận những địa danh nổi tiếng của thành phố như chợ Đà Lạt, dinh Bảo Đại, sân golf Đà Lạt trong khoảng 8 phút di chuyển.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tcs\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"tcs-selection-enabled\" style=\"text-align: center;\"><img alt=\"polyad\" crossorigin=\"anonymous\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" src=\"https://i-kinhdoanh.vnecdn.net/2018/01/22/22-1-201851-7763-1516610918.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Phối cảnh dự án The Panorama - Đà Lạt. Ảnh:&nbsp;<em>Phong Vân.</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Tận dụng lợi thế đó, chủ đầu tư dự án đã có ý tưởng độc đáo là thu Đà Lạt vào trong tầm mắt. Dự án với 3 tầng thương mại và 4 tầng căn hộ nghỉ dưỡng được thiết kế theo hình tháp tròn. Điều này giúp các căn hộ bên trong có tầm nhìn lan tỏa 360 độ, quan sát thành phố Đà Lạt từ nhiều góc.</p>\r\n\r\n<p>Với thiết kế mở, cho phép quan sát quan cảnh của núi rừng và các kiến trúc nhấp nhô nép mình bên những hàng thông, từ đây, du khách có thể tận hưởng không khí bình an của buổi sớm mai, hay ngắm hoàng hôn chiều tà, cũng như Đà Lạt lung linh khi màn đêm buông xuống.</p>\r\n\r\n<p>Nổi bật với kiến trúc độc đáo, thiết kế sang trọng theo phong cách Art Nouveau, dự án hướng đến mang lại cảm giác tách biệt, yên tĩnh, thư thái cho người lữ khách khi lưu trú. Nơi đây còn hội tụ các tiện ích cao cấp, đáp ứng nhu cầu cho cuộc sống hiện đại với tiêu chí “nơi thịnh vượng, chốn bình an”.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tcs\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"tcs-selection-enabled\" style=\"text-align: center;\"><img alt=\"polyad\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" src=\"https://i-kinhdoanh.vnecdn.net/2018/01/22/22-1-20182-490473885-4756-1516610918.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dự án The Panorama - Đà Lạt sở hữu tiện ích cao cấp. Thông tin chi tiết: Hotline ‎090 88888 22.&nbsp;<a href=\"http://www.dalatpanorama.com/\" target=\"_blank\">Website</a>. Ảnh:&nbsp;<em>Phong Vân.</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Với chính sách hạn chế các dự án bất động sản ở khu vực trung tâm và sự eo hẹp của quỹ đất thành phố, The Panorama - Đà Lạt có thể coi là một trong những dự án có vị thế trung tâm. \"Điều này là một trong những yếu tố góp phần giúp dự án thu hút đầu tư và hứa hẹn gia tăng giá trị tại thị trường bất động sản nghỉ dưỡng\", đại diện chủ đầu tư cho biết.</p>\r\n\r\n<p>Dự án tọa lạc tại số 37 Trần Hưng Đạo, phường 10, thành phố Đà Lạt với 7 tầng nổi và 2 tầng hầm. 60 căn hộ có diện tích đa dạng 49m2, 78m2, 87 m2, 252m2. Chủ đầu tư dự án là công ty Cổ phần Đầu tư Phong Vân.</p>\r\n\r\n<p>Hiện dự án triển khai tầng cuối cùng là tầng 7. Theo dự kiến, The Panorama - Đà Lạt sẽ hoàn tất và sẵn sàng bàn giao cho khách hàng vào khoảng tháng 9/2018.</p>\r\n\r\n<p style=\"text-align: right;\"><strong>Y Vân<br />\r\n(VnExpress.net)</strong></p>\r\n', '', 'no', '', '[]', '[]', 1, 0, 0, 9, 1516677360, 1540081892, 25),
(916, 428, 'Trang tư vấn thông tin về các dự án bất động sản Nhà phố Đà Nẵng', 'trang-tu-van-thong-tin-ve-cac-du-an-bat-dong-san-nha-pho-da-nang', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2173, 'Chuyển kênh bất động sản tại Đà Nẵng.', '<p>Bài giới thiệu về chúng tôi...</p>\r\n\r\n<div class=\"locationmap\"><iframe __idm_frm__=\"651\" height=\"350px\" src=\"/editor/googlemap.html?x=16.0495093443346&amp;y=108.19043567421875&amp;z=17&amp;img=Bản đồ Google Map...&amp;googlemap=true\" style=\"border: none; max-width:100%;\" width=\"100%\"></iframe></div>\r\n\r\n<p>&nbsp;</p>\r\n', '', 'no', '', '[]', '[]', 1, 0, 0, 71, 1516350240, 1519704337, 25),
(917, 458, '90% căn hộ phong cách \'chuẩn Nhật\' đã có chủ', '90-can-ho-phong-cach-chuan-nhat-da-co-chu', '', '', '', '90-can-ho-phong-cach-chuan-nhat-da-co-chu-1540081906.jpg', '', '', 0, 0, 0, 0, 0, 2175, 'Ascent Lakeside là dự án căn hộ Nhật Bản do Sanyo Homes - công ty cung cấp giải pháp nhà Nhật Bản hợp tác phát triển cùng Tiến Phát Corporation. Mới đây, chương trình \"Trải nghiệm cuộc sống Nhật Bản giữa lòng Sài Gòn\" dành cho khách mua căn hộ Ascent Lakeside được tổ chức tại Trung tâm Hội nghị Adora Premium (TP HCM).', '<p>Tại dự kiện, ông Kazuya Anzai - Trưởng đại diện Công ty Sanyo Homes cho biết: \"Chúng tôi đã đồng hành cùng Tiến Phát Corporation từ lúc ý tưởng, lên kế hoạch và thi công hoàn chỉnh. Do đó chất lượng và công nghệ trong&nbsp;từng giai đoạn của dự án&nbsp;mang dấu ấn Nhật Bản\". Ascent Lakeside là dự án đầu tiên của Sanyo Homes tại nước ngoài sau 50 năm hoạt động.</p>\r\n\r\n<p>Đại diện chủ đầu tư cho biết, hơn&nbsp;90% căn hộ Ascent Lakeside đã có chủ.&nbsp;Dự án được nhiều khách hàng quan tâm nhờ vị trí đắc địa tại Khu đô thị&nbsp;Phú Mỹ Hưng, có sức hút với nhà đầu tư nhờ có tiềm năng cho thuê hoặc chuyển nhượng với mức sinh lời cao.&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\" class=\"tcs\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"tcs-selection-enabled\" style=\"text-align: center;\"><img alt=\"ASCENT LAKESIDE QUẬN 7 - HƠN 90% CĂN HỘ ĐÃ CÓ CHỦ (Xin edit)\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" src=\"https://i-kinhdoanh.vnecdn.net/2018/01/23/Image-207756341-ExtractWord-0-5069-5885-1516669814.png\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Buổi trò chuyện với nhiều khách mời nổi tiếng.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Ngoài trải nghiệm văn hóa, phong cách sống, khách mời còn tham gia vào buổi talkshow Elle chủ đề cuộc sống phong cách Nhật Bản tại TP HCM do&nbsp;Thùy Dương - Trưởng ban biên tập Elle&nbsp;Decoration dẫn chương trình.&nbsp;</p>\r\n\r\n<p>Theo đại diện&nbsp;Tiến Phát Corporation,&nbsp;Ascent Lakeside là một trong những dự án \"Chuẩn Nhật cho nhà Việt\" hội tụ đầy đủ các yếu tố cho một cuộc sống đẳng cấp, hiện đại. Tại đây, cư dân được tận hưởng những tiện ích tiêu chuẩn Nhật như&nbsp;Cabana kết hợp công viên ven sông, khu đọc sách trên hồ, vườn Thượng Uyển, vườn Cha-Niwa, hồ bơi tràn bờ nước ấm kết hợp jacuzzi…</p>\r\n\r\n<p>Bên cạnh đó, hệ thống lọc nước sạch nhập khẩu&nbsp;từ Nhật Bản giúp cư dân uống&nbsp;trực tiếp tại vòi và&nbsp;sơn ngoại thất chống&nbsp;nóng,&nbsp;thấm, nứt nẻ có khả năng giữ màu từ 5 đến 10 năm.&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\" class=\"tcs\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"tcs-selection-enabled tcs-selected\" style=\"text-align: center;\"><img alt=\"ASCENT LAKESIDE QUẬN 7 - HƠN 90% CĂN HỘ ĐÃ CÓ CHỦ (Xin edit) - 1\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" src=\"https://i-kinhdoanh.vnecdn.net/2018/01/23/Image-ExtractWord-1-Out-1529-1516669814.png\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nhiều khách hàng quan tâm và sở hữu căn hộ tại Ascent Lakeside.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Chị Minh Phương (quận 3) - khách mua căn hộ&nbsp;Ascent Lakdeside nhìn nhận: \"Lối sống tối giản của người Nhật, thiết kế&nbsp;chuẩn mực gần gũi với thiên nhiên là lý do khiến tôi chọn mua căn hộ\".&nbsp;</p>\r\n\r\n<p>Nhiều khách hàng khác chung ý kiến rằng ngoài&nbsp;vị trí đắc địa ngay KĐT Phú Mỹ Hưng,&nbsp;Ascent Lakeside sở hữu&nbsp;có quy mô vừa phải, số lượng căn hộ không quá nhiều, mang nét đặc trưng riêng&nbsp;không \"đụng hàng\".</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\" class=\"tcs\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"tcs-selection-enabled\" style=\"text-align: center;\"><img alt=\"ASCENT LAKESIDE QUẬN 7 - HƠN 90% CĂN HỘ ĐÃ CÓ CHỦ (Xin edit) - 2\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" src=\"https://i-kinhdoanh.vnecdn.net/2018/01/23/Image-664433974-ExtractWord-2-9899-5836-1516669814.png\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Khách mời tới sự kiện là chủ nhân tương lai của căn hộ. Hotline: 0911752588, 0919998890. Website: www.ascentlakeside.vn</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Sau&nbsp;The Ascent - Thao Dien Condominiums tại quận 2, đây là dự án thứ hai mang thương hiệu Ascent có đặc trưng luxury boutique home của Tiến Phát Corporation,</p>\r\n\r\n<p>Ông Lê Quốc Duy - Chủ tịch hội đồng quản trị Tiến Phát Corporation cho biết Ascent sẽ là dòng sản phẩm chính được công ty phát triển, tạo hướng đi riêng trên thị trường bất động sản. Do đó, các dự án&nbsp;Ascent được chú trọng hình thức, thiết kế mang đến cư dân trải nghiệm đa dạng.</p>\r\n\r\n<p>Trong giai đoạn tiếp theo,&nbsp;Tiến Phát Corporation sẽ ra mắt thêm các dự án dòng&nbsp;Ascent gồm&nbsp;Ascent Garden Home (quận 7) và Ascent Cityview (quận 4).</p>\r\n\r\n<p style=\"text-align: right;\"><strong>Huyền Trang<br />\r\n(VnExpress.net)</strong></p>\r\n', '', 'no', '', '[]', '[]', 1, 0, 0, 8, 1516677240, 1540081906, 25),
(943, 458, 'Bất động sản Đà Nẵng: Khu vực nào đang hút nhà đầu tư?', 'bat-dong-san-da-nang-khu-vuc-nao-dang-hut-nha-dau-tu', '', '', '', 'bat-dong-san-da-nang-khu-vuc-nao-dang-hut-nha-dau-tu-1519837822.jpg', '', '', 0, 0, 0, 0, 0, 2412, 'Hàng loạt dự án lớn ở khu vực Tây Bắc Đà Nẵng và lân cận đang triển khai khiến thị trường bất động sản khu vực phát triển mạnh mẽ...', '<p><em><b>Hàng loạt dự án lớn ở khu vực Tây Bắc Đà Nẵng và lân cận đang triển khai khiến thị trường bất động sản khu vực phát triển mạnh mẽ. Với việc hội đủ các điều kiện, nhất là giá cả vừa túi tiền, quy hoạch tốt,… đất nền Tây Bắc Đà Nẵng hiện có xu hướng tăng dần.</b></em></p>\r\n\r\n<p>Đà Nẵng sẽ là điểm đến mới các nhà đầu tư và Tây Bắc Đà Nẵng được đánh giá là khu vực có tiềm năng phát triển mạnh. Sở dĩ đất nền tại khu vực Tây Bắc đang \"nóng\" là do khu vực này đang hội tụ đủ các điều kiện tiếp tục đà tăng trưởng mạnh và bền vững, nhất là phân khúc bất động sản hợp túi tiền của người dân và có quy hoạch tốt.</p>\r\n\r\n<p>Thứ nhất, khu vực Tây Bắc đang có nhiều dự án động lực hoàn toàn có thể thay đổi diện mạo khu vực, thay đổi \"cán cân\" vị thế quận Liên Chiểu và huyện Hòa Vang so với các quận trung tâm. Đơn cử là dự án trục vành đai phía Tây Đà Nẵng với tổng kinh phí ước tính hơn 1.500 tỷ đồng, dự án cảng Liên Chiểu, hầm đường bộ Hải Vân đang triển khai tuyến hầm số 2, đường cao tốc Đà Nẵng - Quảng Ngãi…</p>\r\n\r\n<p>Đặc biệt, với định hướng phát triển bền vững, Đà Nẵng có chiến lược phát triển mạnh những ngành dịch vụ du lịch, công nghệ thông tin, công nghệ cao và nông nghiệp công nghệ cao. Dự án Danang IT Park với tổng vốn đầu tư gần 300 triệu USD thuộc huyện Hòa Vang, Đà Nẵng được đầu tư để trở thành cộng đồng phát triển công nghệ thông tin tốt nhất châu Á theo mô hình thung lũng Silicon tại Đà Nẵng.</p>\r\n\r\n<p>Thứ hai, đề án Khu kinh tế ven biển Đà Nẵng sẽ được các bộ ngành hoàn thiện và bổ sung vào Quy hoạch tổng thể phát triển các khu kinh tế ven biển Việt Nam đến 2020, tầm nhìn 2035. Trong đó, khu kinh tế này bao gồm vịnh Đà Nẵng với một số khu vực lấn biển, Cảng Liên Chiểu, Khu Công nghệ cao Đà Nẵng, Khu công nghiệp Liên Chiểu…</p>\r\n\r\n<p>Thứ ba, với lợi thế nằm ngay điểm giao thông cầu vượt Ngã Ba Huế, nối liền quốc lộ 1A đi vào trung tâm của thành phố, một mặt lại giáp biển Nguyễn Tất Thành, giá đất nền đất nền Tây Bắc hiện vẫn rẻ hơn rất nhiều so với khu vực khác, quãng tăng giá còn rộng và tiềm năng, nên khu Tây Bắc đang trở thành vùng đất mới đầy lực hấp dẫn, thu hút các doanh nghiệp, nhà đầu tư cá nhân đổ về mua đất trong đó tiêu biểu là dự án Golden Hills.</p>\r\n\r\n<p>Ông Bùi Xuân Định, Tổng giám đốc Trung Nam Land chia sẻ: \"Dự án Golden Hills được thiết kế quy hoạch bởi S.O.M - Công ty thiết kế quy hoạch hàng đầu thế giới tại Mỹ có tổng diện tích 400ha với 6 phân khu với đầy đủ các chức năng vượt trội. Năm 2017, Trung Nam đã hoàn thiện giai đoạn 1 dự án với hạ tầng giao thông cao cấp, công viên, khu giải trí hiện đại, trường cấp 2 đẹp nhất Đà Nẵng. Các cơ quan chính quyền, trạm y tế cũng đã hoạt động nên nhanh chóng thu hút đông dân cư sinh sống, làm ăn\".</p>\r\n\r\n<p>Theo ông Định, Trung Nam đang dốc toàn lực thi công giai đoạn 2, đầu tư xây dựng khu phức hợp DITP Power tại đầu tuyến đường Nguyễn Tất Thành nối dài với tổng vốn đầu tư 250 tỷ đồng, 18 tầng; tập trung thi công các khu còn lại; tiếp tục phát triển hệ thống cảnh quan, trung tâm mua sắm và đặc biệt là chuỗi khu phố thương mại Nguyễn Tất Thành để tạo sự sôi động cho khu Tây Bắc Đà Nẵng\".</p>\r\n\r\n<p><a data-fancybox-group=\"img-lightbox\" href=\"https://vneconomy.mediacdn.vn/2017/anh-chinh-1512542277758.jpg\" target=\"_blank\" title=\"\"><img alt=\"undefined - Ảnh 1.\" data-original=\"https://vneconomy.mediacdn.vn/2017/anh-chinh-1512542277758.jpg\" h=\"1125\" height=\"\" id=\"img_072280b0-da50-11e7-97cc-3f2009779d6b\" photoid=\"072280b0-da50-11e7-97cc-3f2009779d6b\" rel=\"lightbox\" src=\"/uploads/images/2018/02/anh-chinh-1512542277758.jpg\" style=\"max-width: 100%;\" title=\"undefined - Ảnh 1.\" type=\"photo\" w=\"2000\" /></a></p>\r\n\r\n<p data-placeholder=\"[nhập chú thích]\">&nbsp;</p>\r\n\r\n<p>Nằm trên cung đường biển đẹp Nguyễn Tất Thành và bên cạnh dòng sông cu Đê, cách trung tâm Thành phố Đà Nẵng khoảng 15 phút đi ôtô, Golden Hills được thiết kế quy hoạch bởi S.O.M - Công ty thiết kết hàng đầu thế giới tại Mỹ.</p>\r\n\r\n<p>Tại Golden Hills, những khu vườn theo phong cách đô thị kết hợp các tuyến phố rợp cây xanh tạo không gian thư giãn cho cư dân.</p>\r\n\r\n<p><a data-fancybox-group=\"img-lightbox\" href=\"https://vneconomy.mediacdn.vn/2017/anh-4-1512542325699.jpeg\" target=\"_blank\" title=\"\"><img alt=\"undefined - Ảnh 2.\" data-original=\"https://vneconomy.mediacdn.vn/2017/anh-4-1512542325699.jpeg\" h=\"1125\" height=\"\" id=\"img_26a95580-da50-11e7-a06b-df02aacc919b\" photoid=\"26a95580-da50-11e7-a06b-df02aacc919b\" rel=\"lightbox\" src=\"/uploads/images/2018/02/anh-4-1512542325699.jpg\" style=\"max-width: 100%;\" title=\"undefined - Ảnh 2.\" type=\"photo\" w=\"2000\" /></a></p>\r\n\r\n<p>Golden Hills có đầy đủ các tiện ích như sân bóng, sân tennis, khu vui chơi cho trẻ em,… đã tạo nên sự phát triển đồng bộ cho toàn khu đô thị. Chính điều này, đến nay, Golden Hills đã thu hút khá đông dân cư đến sinh sống</p>\r\n\r\n<p>Hiện tại, khu A dự án có quy mô gần 100ha đã hoàn thiện hạ tầng và thu hút người đông dân cư đến sinh sống.</p>\r\n\r\n<p>Danang IT Park nằm trong định hướng phát triển công nghệ thông tin về phía Tây Bắc của Đà Nẵng. Nơi đây sẽ góp phần thu hút các nhà khoa học, kỹ sư, các chuyên gia về công nghệ trong và ngoài nước về làm việc, khuyến khích đào tạo các ngành công nghệ cao tại các trường đại học.</p>\r\n\r\n<p><a data-fancybox-group=\"img-lightbox\" href=\"https://vneconomy.mediacdn.vn/2017/anh-6-1512542345028.jpeg\" target=\"_blank\" title=\"\"><img alt=\"undefined - Ảnh 3.\" data-original=\"https://vneconomy.mediacdn.vn/2017/anh-6-1512542345028.jpeg\" h=\"1014\" height=\"\" id=\"img_323173b0-da50-11e7-9915-b99b9cfb322c\" photoid=\"323173b0-da50-11e7-9915-b99b9cfb322c\" rel=\"lightbox\" src=\"/uploads/images/2018/02/anh-6-1512542345028.jpg\" style=\"max-width: 100%;\" title=\"undefined - Ảnh 3.\" type=\"photo\" w=\"2000\" /></a></p>\r\n\r\n<p placeholder=\"[nhập chú thích]\">&nbsp;</p>\r\n\r\n<p>Vị trí dự án được tiếp cận với tuyến đường quốc lộ 1A kết nối với đường cao tốc Đà Nẵng - Quảng Ngãi, đường Nguyễn Tất Thành nối dài và đường DT602, tương lai không xa sẽ có tuyến metro và tuyến xe bus. Danang IT Park sẽ trở thành một trong những cộng đồng phát triển công nghệ thông tin theo mô hình của Thung lũng Silicon, với doanh thu ước đạt 3 tỷ USD/năm.</p>\r\n\r\n<p style=\"text-align: right;\"><strong>Nguồn: VnEconomy</strong></p>\r\n', '', 'no', '', '[]', '[]', 1, 0, 0, 21, 1515430800, 1519837822, 25),
(923, 458, 'Long Giang Land tăng lãi 8 lần sau 3 tháng', 'long-giang-land-tang-lai-8-lan-sau-3-thang', '', '', '', 'long-giang-land-tang-lai-8-lan-sau-3-thang-1540081863.jpg', '', '', 0, 0, 0, 0, 0, 2208, 'Việc bàn giao dự án tại TP HCM giúp đơn vị này ghi nhận doanh thu, lợi nhuận tăng đột biến trong quý cuối năm.', '<p>Công ty cổ phần Đầu tư và Phát triển đô thị Long Giang (mã CK: LGL) vừa công bố báo cáo tài chính hợp nhất với kết quả đột biến trong quý. Báo cáo cho thấy, doanh thu lũy kế năm 2017 đạt 861 tỷ đồng, trong đó, riêng quý IV đạt 718 tỷ đồng doanh thu.&nbsp;</p>\r\n\r\n<p>Kết thúc năm 2017, công ty lãi sau thuế 106 tỷ đồng, trong khi cuối quý III, mới ghi nhận mức lãi sau thuế chưa đến 12 tỷ đồng.&nbsp;</p>\r\n\r\n<p>Long Giang Land cho biết, kết quả kinh doanh hợp nhất tăng đột biến là do ghi nhận doanh thu, lợi nhuận từ hoạt động bán và bàn giao căn hộ dự án Thành Thái. Dự án có 420 căn hộ, được triển khai xây dựng từ năm 2016.&nbsp;</p>\r\n\r\n<p>Tại Đại hội cổ đông đầu năm,&nbsp;đơn vị này đặt mục tiêu lợi nhuận 100 tỷ đồng.&nbsp;Đến cuối năm 2017, tổng tài sản của doanh nghiệp đạt 2.215 tỷ đồng.</p>\r\n\r\n<p style=\"text-align: right;\"><strong>Nguyễn Hà<br />\r\n(VnExpress.net)</strong></p>\r\n', '', 'no', '', '[]', '[]', 1, 0, 0, 21, 1517626560, 1540081863, 25),
(924, 458, 'Hai khách trúng xe Mercedes tại lễ tri ân', 'hai-khach-trung-xe-mercedes-tai-le-tri-an-hado-centrosa-garden', '', '', '', 'hai-khach-trung-xe-mercedes-tai-le-tri-an-hado-centrosa-garden-1540081849.jpg', '', '', 0, 0, 0, 0, 0, 2209, 'Trong sự kiện tri ân ngày 27/1 vừa qua, Tập đoàn Hà Đô đã tìm ra hai khách hàng may mắn của dự án HaDo Centrosa Garden trúng xe Mercedes.', '<p>Chủ đầu tư Tập đoàn Hà Đô từng công bố, 99% khách hàng, những người đã đặt mua hơn 2.100 sản phẩm tại HaDo Centrosa Garden đều có cơ hội tham gia chương trình quay số trúng hai xe Mercedes. Quà tặng này thay cho cho lời tri ân chủ đầu tư Hà Đô dành cho các cư dân tương lai.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tcs\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"tcs-selection-enabled\" style=\"text-align: center;\"><img alt=\"Nhiều khách hàng chứng kiến sự kiện tìm 2 chủ nhân căn hộ may mắn trúng 2 xe Mercedes.\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" src=\"https://i-kinhdoanh.vnecdn.net/2018/01/31/q3-4844-1517364008.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nhiều khách hàng chứng kiến sự kiện tìm hai&nbsp;chủ nhân căn hộ may mắn trúng 2 xe Mercedes.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Theo đó, trong sự kiện \"Chọn chốn an khang - xe sang đón Tết\" ngày 27/1 vừa qua do Tập đoàn Hà Đô triển khai,&nbsp;chủ nhân sở hữu căn hộ I3-16.08 - bà Phạm Thị Hồng Loan và O1-09.10 - ông Đỗ Bá Hùng đã trở thành những khách hàng may mắn trúng xe Mercedes.&nbsp;</p>\r\n\r\n<p>Sau khi xem phát sóng trực tiếp chương trình và nhận thông báo từ chủ đầu tư Hà Đô, hai khách hàng may mắn này đã nhanh chóng có mặt tại dự án để thực hiện thủ tục nhận giải thưởng.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\" class=\"tcs\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"tcs-selection-enabled tcs-selected\" style=\"text-align: center;\"><img alt=\"Gia đình chủ nhân căn hộ I3-16.08 - Bà Phạm Thị Hồng Loan đã may mắn sở hữu chiếc Mercedes trong chương trình.\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" src=\"https://i-kinhdoanh.vnecdn.net/2018/01/31/q2-8115-1517364008.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Gia đình chủ nhân căn hộ I3-16.08 - Bà Phạm Thị Hồng Loan đã may mắn sở hữu chiếc Mercedes trong chương trình.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Bà Phạm Thị Hồng Loan - chủ nhân căn hộ I3-16.08, người trúng chiếc Mercedes đầu tiên trong chương trình chia sẻ: \"Tôi rất bất ngờ khi nhận thông tin trúng giải. Cả gia đình tôi đã cùng đến dự án ngay sau có kết quả quay thưởng. Tôi tin rằng với cách thức thực hiện và phát triển dự án như hiện nay, Tập đoàn Hà Đô sẽ còn phát triển hơn nữa\".</p>\r\n\r\n<p>Ông Đỗ Bá Hùng, chủ nhân căn hộ O1-09.10 người trúng xe Mercedes thứ hai trong chương trình cũng cho biết:&nbsp;\"Sau khi sở hữu một căn thuộc khu nhà phố liên kế, tôi tiếp tục đặt mua thêm một căn hộ tại block Orchid 1 để gia đình sinh sống. Tôi hài lòng về căn nhà phố liên kế cũng như căn hộ đã đặt mua và luôn an tâm thực hiện các tiến độ thanh toán vì tiến độ, chất lượng công trình đảm bảo\".</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tcs\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"tcs-selection-enabled\" style=\"text-align: center;\"><img alt=\"Chủ nhân căn hộ O1-09.10, ông Đỗ Bá Hùng (bên trái) đã may mắn sở hữu chiếc Mercedes thứ hai trong chương trình. Khách hàng có nhu cầu tìm hiểu thông tin chi tiết về dự án, liên hệ: 1800 2018, 0926 756 756 (miễn phí). Địa chỉ dự án: Số 200 đường 3/2, phường 12, quận 10; website: www.hadocentrosagarden.vn\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" src=\"https://i-kinhdoanh.vnecdn.net/2018/02/02/hinh-thay-1-2834-1517544765.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chủ nhân căn hộ O1-09.10, ông Đỗ Bá Hùng (bên trái) đã may mắn sở hữu chiếc Mercedes thứ hai trong chương trình.&nbsp;</p>\r\n\r\n			<p>Khách hàng có nhu cầu tìm hiểu thông tin chi tiết về dự án, liên hệ: 1800 2018,&nbsp;0926 756 756 (miễn phí). Địa chỉ dự án: Số 200 đường 3/2, phường 12, quận 10; website:&nbsp;<a href=\"http://www.hadocentrosagarden.vn/\" target=\"_blank\">www.hadocentrosagarden.vn</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Tại sự kiện, ông Phạm Quốc Huân - Phó Tổng Giám đốc Công ty CP Hà Đô - 756 đã gửi lời tri ân đến toàn thể khách hàng và các đối tác tham gia phát triển dự án. Ông cũng thay mặt chủ đầu tư cam kết dự án đảm bảo tiến độ, chất lượng xây dựng, dự kiến bàn giao sớm đến khách hàng.</p>\r\n\r\n<p style=\"text-align: right;\"><strong>Thế Đan<br />\r\n(VnExpress.net)</strong></p>\r\n', '', 'no', '', '[]', '[]', 1, 0, 0, 29, 1517626680, 1540081971, 25),
(926, 458, 'The Panorama Đà Lạt thu hút khách hàng ngày mở bán', 'the-panorama-da-lat-thu-hut-khach-hang-ngay-mo-ban', '', '', '', 'the-panorama-da-lat-thu-hut-khach-hang-ngay-mo-ban-1540081837.jpg', '', '', 0, 0, 0, 0, 0, 2211, '\"Mười cánh bung nở, xếp tầng, nhỏ dần về phía trên tạo tháp hoa ấn tượng\", Thạc sĩ, KTS Hồ Viết Vinh chia sẻ ý tưởng thiết kế The Panorama.', '<p>Tọa lạc trên \"con đường di sản\" mang đậm phong cách kiến trúc Pháp, dự án căn hộ The Panorama - Đà Lạt được bao quanh bởi rừng thông lớn, nét đặc trưng của thành phố nghìn hoa.</p>\r\n\r\n<p>Từ lợi thế của vị trí đắc địa này, Công ty CP Đầu tư Phong Vân - chủ đầu tư dự án đã triển khai ý tưởng \"thu Đà Lạt vào trong tầm mắt\".</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\" class=\"tcs\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"tcs-selection-enabled\" style=\"text-align: center;\"><img alt=\"The Panorama - Đà Lạt với góc nhìn 360 độ toàn cảnh Đà Lạt.\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" src=\"https://i-kinhdoanh.vnecdn.net/2018/01/29/h4-5016-1517215943.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>The Panorama - Đà Lạt với góc nhìn 360 độ toàn cảnh Đà Lạt.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Chia sẻ về ý tưởng thiết kế, Thạc sĩ, kiến trúc sư Hồ Viết Vinh, Giám đốc Trung tâm Nghiên cứu CREA, Trường Đại học Kiến trúc TP HCM cho biết: \"The Panorama mang dáng vẻ hoa Cẩm Tú Cầu (Hortensia) một loài hoa đặc trưng tại Đà Lạt\".</p>\r\n\r\n<p>Mười cánh bung nở, xếp tầng, thu nhỏ dần về phía trên tạo hình dáng tháp hoa ấn tượng, hòa mình vào vẻ đẹp lãng mạn của thành phố Festival Hoa. Phía bên dưới, các cánh cung cuốn vòm vượt độ cao 8m tạo những cánh hoa rộng để ngắm thiên nhiên từ bên trong\".</p>\r\n\r\n<p>\"The Panorama phù hợp với những khách hàng có nhu cầu trở về với thiên nhiên và tận hưởng trọn vẹn những giây phút thư giãn\", đại diện chủ đầu tư chia sẻ.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\" class=\"tcs\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"tcs-selection-enabled\" style=\"text-align: center;\"><img alt=\"Số lượng căn hộ giới hạn là một trong những điểm thu hút khách hàng.\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" src=\"https://i-kinhdoanh.vnecdn.net/2018/02/01/a1a-9069-1517446324.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Số lượng căn hộ giới hạn là một trong những điểm&nbsp;thu hút khách hàng.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>The Panorama trang trí theo phong cách Art Nouveau. Theo đó, mỗi căn hộ của dự án đều sang trọng, đơn giản và ấm cúng. Các chi tiết trang trí tinh tế, nhằm tô điểm cho bề mặt tường, trần và sàn nhà. Các vật dụng nội thất thiết kế theo hình thức hiện đại nhưng biểu cảm trong chất liệu và tỷ lệ.</p>\r\n\r\n<p>Dự án thiết kế theo phong cách mở, kiến tạo trên giá trị xanh, giữ nguyên vẹn không gian bên ngoài, nhiều ánh sáng bên trong.</p>\r\n\r\n<p>Chủ đầu tư cho biết hiện The Panorama&nbsp;triển khai đến tầng bảy (tầng cuối cùng), dự kiến hoàn tất bàn giao cho khách hàng vào khoảng tháng 9/2018.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tcs\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"tcs-selection-enabled tcs-selected\" style=\"text-align: center;\"><img alt=\"Lễ mở bán căn hộ The Panorama - Đà Lạt thu hút sự quan tâm và tìm hiểu của nhiều khách hàng.\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" src=\"https://i-kinhdoanh.vnecdn.net/2018/02/01/a2-7581-1517446324.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Sự kiện&nbsp;mở bán căn hộ The Panorama - Đà Lạt thu hút sự quan tâm của nhiều khách hàng.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>\"Với những ưu điểm về vị trí, kiến trúc, tiện ích, mức giá phù hợp, The Panorama - Đà Lạt được nhiều khách hàng đặt cọc ngay trong lễ mở bán ngày 28/1. Toàn bộ giỏ hàng đầu tiên đã giao dịch thành công trong 45 phút\", đại diện chủ đầu tư cho biết.</p>\r\n\r\n<p style=\"text-align: right;\"><strong>Thế Đan<br />\r\n(VnExpress.net)</strong></p>\r\n', '', 'no', '', '[]', '[]', 1, 0, 0, 38, 1517626860, 1540081837, 25),
(942, 458, '“Sóng mạnh” đổ về bất động sản Tây Bắc Đà Nẵng', 'song-manh-do-ve-bat-dong-san-tay-bac-da-nang', '', '', '', 'song-manh-do-ve-bat-dong-san-tay-bac-da-nang-1519837512.jpg', '', '', 0, 0, 0, 0, 0, 2411, 'Cùng với lợi thế về giá, khu vực Tây Bắc Đà Nẵng đang chứng kiến các giao dịch bất động sản sôi động hơn bao giờ hết khi hàng loạt dự án “khủng” đang được triển khai tại khu vực này.', '<p>Còn nhớ, tại trong buổi làm việc với lãnh đạo chủ chốt TP Đà Nẵng về tình hình phát triển kinh tế - xã hội trong năm 2016, Thủ tướng Nguyễn Xuân Phúc đã nhấn mạnh: “Tầm nhìn của Đà Nẵng là trở thành thành phố thông minh, một trung tâm giao thương quốc tế, một thành phố cạnh tranh với các thành phố lớn, đẹp của khu vực và thế giới, mà trước hết là một Singapore, một Hong Kong”. &nbsp;</p>\r\n\r\n<p><strong>Tiềm năng lớn</strong></p>\r\n\r\n<p>Theo quy hoạch phát triển không gian đô thị Đà Nẵng đến năm 2020, tầm nhìn 2030, khu vực cũ sẽ là trung tâm lịch sử, chính trị, văn hóa truyền thống, khu ven biển Tây Bắc và ven biển phía đông sẽ trở thành trung tâm thương mại dịch vụ, du lịch nghỉ dưỡng... được coi là nơi an cư lý tưởng đối với các cư dân thành phố biển.</p>\r\n\r\n<p>Quy hoạch này cũng cho thấy rõ một Đà Nẵng đa trung tâm, phát triển toàn diện, bền vững trong tương lai. &nbsp;</p>\r\n\r\n<p>Chỉ tính riêng khu vực Tây Bắc, khu vực này đang được quy hoạch là khu đô thị vệ tinh của TP. Đà Nẵng với các dự án nổi bật như tuyến giao thông vành đai phía Tây (vốn lên đến 1.5 ngàn tỷ đồng), Khu Khép Kín giải trí quốc tế Làng Vân, cảng Liên Chiểu, Khu công nghệ cao, Nhà ga hàng hóa Kim Liên…&nbsp;</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"\" src=\"/uploads/images/2018/02/anh-2-20.jpg\" style=\"max-width: 100%;\" /><br />\r\n<em>Golden Hills đang hoàn thiện dần từng hạng mục, đúng như cam kết từ chủ đầu tư (Ảnh: Trường cấp 2 Đàm Quang Trung trong lòng khu đô thị Golden Hills)</em></p>\r\n\r\n<p>Đồng thời, cũng tại khu vực này, Đà Nẵng đang kêu gọi đầu tư Khu công nghệ thông tin tập trung với mục tiêu đưa nơi này trở thành một cộng đồng CNTT theo mô hình của Thung lũng Silicon tại Hoa Kỳ hay Khu công nghệ cao Hsinchu tại Đài Loan. Qua đó góp phần thu hút các nhà khoa học, kỹ sư, các chuyên gia về công nghệ trong và ngoài nước về làm việc, khuyến khích đào tạo các ngành công nghệ cao tại các trường đại học; hình thành môi trường sống, môi trường làm việc lý tưởng với doanh thu ước đạt 3 tỷ USD/năm và khả năng tuyển dụng 25.000 lao động trong 10 năm tới, góp phần xây dựng nên một đô thị vệ tinh ở vùng Tây Bắc Đà Nẵng với khoảng 100.000 cư dân sinh sống.</p>\r\n\r\n<p>Được biết, với tổng vốn 32 triệu USD, theo kế hoạch, dự án sẽ hoàn tất xây dựng hạ tầng cơ sở trong 10 năm (2013-2023) bao gồm các hạng mục: khu sản xuất, kinh doanh sản phẩm và dịch vụ CNTT; khu nghiên cứu, phát triển và đào tạo, tư vấn; khu văn phòng, trụ sở làm việc; khu trưng bày hội chợ, triển lãm, giới thiệu sản phẩm và truyền thông, hiện dự án đang được triển khai với sự tham gia của công ty CP Trung Nam sau khi đơn vị này nhận chuyển nhượng 65% cổ phần DITP từ tập đoàn Rocky Lai &amp; Associates - Đà Nẵng và các nhà đầu tư tại Hoa Kỳ.&nbsp;</p>\r\n\r\n<p>Đây chính là nền tảng vững chắc để các nhà đầu tư tin rằng, bất động sản Tây Bắc chỉ phát triển theo hướng bền vững, chứ khó có thể xảy ra hiện tượng “bong bóng”. Và đó là một nền tảng để khu vực này không chỉ bứt phá trong năm nay, mà còn tiếp tục “nóng lên” trong những năm kế tiếp.</p>\r\n\r\n<p><strong>Dự án nào đang là tâm điểm?</strong></p>\r\n\r\n<p>Cùng với “cú huých” hạ tầng và những dự án khủng, khu vực Tây Bắc Đà Nẵng còn được giới bất động sản chú ý bởi giá tại khu vực này đang rất rẻ so với tiềm&nbsp;năng.&nbsp;</p>\r\n\r\n<p>Theo các chuyên gia bất động sản, hiện giá bất động sản tại khu vực này tương đối đảm bảo đúng giá trị thực. Các sản phẩm đến được tay người dân có nhu cầu mua để ở, đặc biệt là những người trẻ và gia đình tri thức do giá chỉ khoảng trên dưới 1 tỷ /sản phẩm nhưng nằm trong khu đô thị được đầu tư hạ tầng tốt, kết nối thuận tiện với mạng lưới trường học, bệnh viện, không gian công cộng vui chơi, giải trí,… Đặc biệt, do đường sá thông thoáng, nên việc di chuyển về trung tâm thành phố rất thuận tiện.</p>\r\n\r\n<p>“Lấy ví dụ với dự án Golden Hills, dù sở hữu địa thế thuận lợi trong khu vực phát triển bậc nhất TP Đà Nẵng, được thiết kế quy hoạch rất bài bản bởi đơn vị uy tín đã từng triển khai thành công Khu đô thị Phú Mỹ Hưng – Công ty thiết kế SOM, cách trung tâm TP Đà Nẵng 15 phút đi xe, chỉ cách biển khoảng 5 phút đi bộ nhưng tại dự án này, với tuyến lớn rộng 41m như Nguyễn Tất Thành nối dài, giá 1 lô đất dao động từ 1,2 - 1,4 tỷ đồng còn những tuyến đường nhỏ hơn thì giá 1 lô đất dao động khoảng 600 triệu đồng nên đã thu hút rất nhiều người dân đến sinh sống”, Ngô Văn Phương – môi giới một sản giao dịch tại khu vực này chia sẻ.</p>\r\n\r\n<p>Như vậy, với chiến lược phát triển không gian đô thị Đà Nẵng đến năm 2020, tầm nhìn 2030, có thể khẳng định: “Thiên thời, địa lợi” tại Tây Bắc Đà Nẵng đều đã có cả. Vậy nên, nhiều nhà đầu tư trong và ngoài nước cũng ráo riết khai thác các quỹ đất nơi đây để đầu tư các công trình quy mô lớn, tạo đà phát triển chung cho khu vực. Nhiều “ông lớn” trong ngành bất động sản đã nhanh chân để không bỏ lỡ mất cơ hội “góp mặt” tại “điểm nóng” này.</p>\r\n\r\n<p>Và với việc “quần anh hội tụ” như vậy, theo giới phân tích, 2018 sẽ là thời điểm để thị trường địa ốc Đà Nẵng nói chung và Tây Bắc nói riêng bứt phá ngoạn mục, hứa hẹn nhiều giao dịch sôi động.</p>\r\n\r\n<p style=\"text-align: right;\"><strong>Theo: Thu Giang</strong><br />\r\n<em>http://batdongsan.enternews.vn</em></p>\r\n', '', 'no', '', '[]', '[]', 1, 0, 0, 14, 1515434400, 1519837531, 25),
(935, 457, 'The Sunrise Bay', 'the-sunrise-bay', '', '', '', 'the-sunrise-bay-1519809409.jpg', '', 'Nguyễn Tất Thành, Hải Châu, Đà Nẵng', 3500000000, 0, 0, 0, 2, 2403, 'Sunrise Bay Đà Nẵng – siêu dự án đô thị đẳng cấp quốc tế lớn nhất Đà Nẵng với quy mô 171 ha đất liền & 18 ha diện tích đảo được quy hoạch gồm nhiều hạng mục công trình: khách sạn, sân golf 18 lỗ, khu resort cao cấp, trung tâm hội nghị, bến cảng… cùng nhiều loại hình đầu tư như nhà phố thương mại, nhà phố vườn, biệt thự đơn lập, biệt thự song lập.', '<div class=\"locationmap\"><iframe __idm_frm__=\"982\" height=\"350px\" src=\"/editor/googlemap.html?x=16.08386745636391&amp;y=108.20898749567482&amp;z=15&amp;img=The Sunrise Bay&amp;googlemap=true\" style=\"border: none; max-width:100%;\" width=\"100%\"></iframe></div>\r\n\r\n<div class=\"youtube-embed-wrapper\" style=\"position:relative;padding-bottom:51.5%;padding-top:30px;height:0;overflow:hidden\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"360\" src=\"https://www.youtube.com/embed/1ya_QyERPb0?rel=0\" style=\"position:absolute;top:0;left:0;width:100%;height:100%\" width=\"640\"></iframe></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><u>Sơ đồ tổng thể:</u></h2>\r\n\r\n<p><strong><img alt=\"\" src=\"/uploads/images/2018/02/2017-11-14%20PLACE%20GROUND%20(560x540)%20ALL%20OF%20FINAL%20-%20Out%20Print-01.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/BangPhanKhuTheoCSBH-final.jpg\" style=\"max-width: 100%;\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><u>Khu đô thị vị trí độc tôn tại TP Đà Nẵng:</u></h2>\r\n\r\n<p><img alt=\"\" src=\"/uploads/images/2018/03/page-1.jpg\" style=\"max-width: 100%;\" /></p>\r\n\r\n<p><strong>Dự án The Sunrise Bay</strong>&nbsp;tọa lạc tại vị trí đắc địa - quỹ đất lấn biển vị thế có một không hai.</p>\r\n\r\n<p>The Sunrise Bay, dự án vịnh trong vịnh, nằm gọn trong eo biển, một trong những vị trí đắc địa ngay tại trung tâm của Đà Nẵng, kết nối linh hoạt với các tiện ích vệ tinh chỉ với vài phút di chuyển.</p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/images/2018/03/page-3(1).jpg\" style=\"max-width: 100%;\" /></p>\r\n\r\n<p>-&nbsp;<strong>Chủ đầu tư</strong>: Công ty TNHH The Sunrise Bay</p>\r\n\r\n<p>-&nbsp;<strong>Vị trí</strong>: Phường Thanh Bình và phường Thuận Phước, quận Hải Châu, TP. Đà Nẵng</p>\r\n\r\n<p>+ Hướng Đông: view sông Hàn<br />\r\n+ Hướng Tây: vịnh Thanh Bình<br />\r\n+ Hướng Nam: trung tâm Đà Nẵng<br />\r\n+ Hướng Bắc: bán đảo Sơn Trà</p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/images/2018/03/page-4(1).jpg\" style=\"max-width: 100%;\" /></p>\r\n\r\n<p>-&nbsp;<strong>Diện tích</strong>: 171 ha gồm 153 ha đất liền và 18 ha diện tích đảo</p>\r\n\r\n<p>-&nbsp;<strong>Loại hình sản phẩm</strong>: Nhà phố vườn townhouse /nhà phố thương mại shophouse / biệt thự song lập / biệt thự đơn lập.</p>\r\n\r\n<p>+ Nhà phố vườn townhouse: Diện tích từ 80m<sup>2</sup>&nbsp;- 90m<sup>2</sup>&nbsp;- 100m<sup>2</sup>&nbsp;- 100m<sup>2</sup>&nbsp;- 108m<sup>2</sup>&nbsp;- 120m<sup>2</sup><br />\r\n+ Nhà phố thương mại: Diện tích từ 100m<sup>2</sup>- 108m<sup>2</sup>-120m<sup>2</sup><br />\r\n+ Biệt thự song lập: 150m<sup>2</sup>-160m<sup>2</sup><br />\r\n+ Biệt thự đơn lập: 300m<sup>2</sup></p>\r\n\r\n<p><strong><span style=\"font-size: 10.8333px;\">-&nbsp;</span>Hình thức sở hữu nhà:</strong> Sở hữu lâu dài</p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/images/2018/03/Co%20cau%20san%20pham%20The%20Sunrise%20Bay.jpg\" style=\"max-width: 100%;\" /></p>\r\n\r\n<p><strong>Các đối tác tham gia vào thiết kế dự án</strong></p>\r\n\r\n<p>- Thiết kế quy hoạch và kiến trúc:&nbsp;<strong>AEDAS</strong>, top 5 trong công ty thiết kế kiến trúc hàng đầu thế giới, đến từ Mỹ.</p>\r\n\r\n<p>- Thiết kế cảnh quan:&nbsp;<strong>EDSA</strong>, công ty nổi tiếng thiết kế hơn 500 dự án về cảnh quan trên 100 quốc gia trên toàn cầu.</p>\r\n\r\n<p>- Thiết kế đảo:&nbsp;<strong>SAFDIE ARCHITECT</strong>, ông chủ là&nbsp;<strong>MOSHE SAFDIE</strong>&nbsp;với những công trình kiến trúc độc đáo vô nhị, là người thiết kế nên Marina Bay Sand của Singapore.</p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/images/2018/03/The%20Sunrise%20Bay28(1).jpg\" style=\"max-width: 100%;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/images/2018/03/The%20Sunrise%20Bay30.jpg\" style=\"max-width: 100%;\" /></p>\r\n\r\n<p>-&nbsp;<strong>Tiện ích</strong>: không gian sống của dự án The Sunrise Bay với nhiều tiện ích&nbsp;phong cách resort giúp cư dân tận hưởng cuộc sống an bình thoải mái.</p>\r\n\r\n<p>+ Tiện ích hồ bơi 5 sao<br />\r\n+ Không gian sinh hoạt cộng đồng<br />\r\n+ Khu vui chơi trẻ em<br />\r\n+ Khu công viên kéo dài 1km và công viên nội khu mang đến không gian xanh thư giãn&nbsp;<br />\r\n+ Bãi tắm nhân tạo, bến du thuyền</p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/images/2018/03/page-15.jpg\" style=\"max-width: 100%;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/images/2018/03/page-17.jpg\" style=\"max-width: 100%;\" /></p>\r\n', 'https://www.youtube.com/watch?v=ifl_xlHjBns', 'yt_1519876572_2403_641906a544c5450492e5955920d4cf60_1.jpg', '', '[]', '[]', 1, 0, 0, 18, 1519808400, 1519876572, 25),
(936, 466, 'Phú Gia Compound', 'phu-gia-compound', '', '', '', 'phu-gia-compound-1519809943.jpg', '', '126 Ông Ích Khiêm, Hải Châu, Đà Nẵng', 5800000000, 0, 0, 0, 3, 2404, 'Phú Gia Compound là dự án phức hợp khu nhà phố vườn và nhà phố thương mại ấn tượng tại Trung tâm Đà Nẵng. Với vị trị đắc địa mặt tiền đường Ông Ích Khiêm, tiện ích hiện đại, dự án là một sự lựa chọn hoàn hảo để trải nghiệm một cuộc sống đẳng cấp và khác biệt.', '<div class=\"locationmap\"><iframe __idm_frm__=\"1082\" height=\"350px\" src=\"/editor/googlemap.html?x=16.074320401094994&amp;y=108.21261754277191&amp;z=17&amp;img=Phú Gia Compound&amp;googlemap=true\" style=\"border: none; max-width:100%;\" width=\"100%\"></iframe></div>\r\n\r\n<div class=\"youtube-embed-wrapper\" style=\"position:relative;padding-bottom:51.5%;padding-top:30px;height:0;overflow:hidden\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"360\" src=\"https://www.youtube.com/embed/KJpiEXUzCYE?rel=0\" style=\"position:absolute;top:0;left:0;width:100%;height:100%\" width=\"640\"></iframe></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><u>Sơ đồ tổng thể:</u></h2>\r\n\r\n<p><img alt=\"\" src=\"/uploads/images/2018/02/TONG%20THE%20-%2020161027_PG_Master%20plan%20Filelon.jpg\" style=\"max-width: 100%;\" /></p>\r\n', 'https://www.youtube.com/watch?v=KATNnJ48f_o', 'yt_1519876830_2404_f9f1481defaef85fa68b35c659faf8ee_1.jpg', '', '[]', '[]', 1, 0, 0, 6, 1519806600, 1519876830, 25),
(937, 457, 'Monarchy', 'monarchy', '', '', '', 'monarchy-1519833175.jpg', '', 'Trần Hưng Đạo, Sơn Trà, Đà Nẵng', 3000000000, 0, 0, 0, 2, 2406, 'Nằm trong danh sách các di sản văn hoá thế giới nổi tiếng được UNESCO công nhận như : khu phố cổ Hội An, khu bảo tồn Mỹ Sơn và thành phố Huế thì thành phố Đà Nẵng không chỉ là biểu tượng tăng trưởng kinh tế - văn hoá ,là Điểm đến lý tưởng cho du lịch và giải trí mà còn được biết đến với danh hiệu Thành phố Đáng sống nhất Việt Nam.', '<div class=\"locationmap\"><iframe __idm_frm__=\"1344\" height=\"350px\" src=\"/editor/googlemap.html?x=16.056154453777424&amp;y=108.23243370297394&amp;z=17&amp;img=Monarchy&amp;googlemap=true\" style=\"border: none; max-width:100%;\" width=\"100%\"></iframe></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><u>Mặt bằng căn hộ:</u></h2>\r\n\r\n<p><img alt=\"\" src=\"/uploads/images/2018/02/1_MB%20SH.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/2_MB%20TANG%201.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/3_MB%20TANG%203.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/4_MB%20TANG%204.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/5_MB%20TANG%205.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/6_MB%20TANG%206.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/7_MB%20TANG%207-15-22.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/8_MB%20TANG%208-16-23.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/9_MB%20TANG%209-17-24.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/10_MB%20TANG%2010-11-12-14-18-19-20-22-25-26-27.jpg\" style=\"max-width: 100%;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><u>Tổng quan dự án:</u></h2>\r\n\r\n<p><img alt=\"\" src=\"/uploads/images/2018/02/11_IMG_1401.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/12_IMG_1412.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/13_IMG_1406.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/14_IMG_1419.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/15_IMG_1424.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/16_IMG_1422.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/17_IMG_1427.jpg\" style=\"max-width: 100%;\" /></p>\r\n', '', 'no', '', '[]', '[]', 1, 0, 0, 5, 1519804800, 1519839676, 25),
(938, 457, 'Hiyori Garden Tower', 'hiyori-garden-tower', '', '', '', 'hiyori-garden-tower-1519835455.jpg', '', 'Võ Văn Kiệt, Sơn Trà, Đà Nẵng', 1800000000, 0, 0, 0, 0, 2407, 'Dự án Hiyori Garden Tower nằm trên tuyến đường, thuộc một trong những con đường đắc giá Võ Văn Kiệt, Đà Nẵng. Căn hộ được thiết kế theo căn hộ xanh kết hợp tiện nghi đầy đủ, với đầu tư 100% từ Nhật Bản “Xứ sở hoa anh đào” tại thành phố biển xinh đẹp Đà Nẵng. Nhằm đảm bảo một nơi an cư, mang đến những trải nghiệm tiện ích đầy đủ nhất cho cư dân sống tại căn hộ.', '<div class=\"locationmap\"><iframe __idm_frm__=\"1347\" height=\"350px\" src=\"/editor/googlemap.html?x=16.061300383033252&amp;y=108.23558261635753&amp;z=17&amp;img=Hiyori Garden Tower&amp;googlemap=true\" style=\"border: none; max-width:100%;\" width=\"100%\"></iframe></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><u>Mặt bằng căn hộ:</u></h2>\r\n\r\n<p><img alt=\"\" src=\"/uploads/images/2018/02/201_Floorplan_05.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/202_Floorplan_06.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/203_Floorplan_07.jpg\" style=\"max-width: 100%;\" /></p>\r\n', '', 'no', '', '[]', '[]', 1, 0, 0, 2, 1519801200, 1519839686, 25);
INSERT INTO `olala_article` (`article_id`, `article_menu_id`, `name`, `slug`, `title`, `description`, `keywords`, `img`, `img_note`, `address`, `price`, `block`, `flat`, `open_sale`, `type`, `upload_id`, `comment`, `content`, `youtube`, `youtube_img`, `tag`, `tags`, `tags_2`, `is_active`, `hot`, `pin`, `views`, `created_time`, `modified_time`, `user_id`) VALUES
(939, 455, 'The Ocean Estates', 'the-ocean-estates', '', '', '', 'the-ocean-estates-1519836100.jpg', '', 'Trường Sa, Ngũ Hành Sơn, Đà Nẵng', 16000000000, 0, 0, 0, 2, 2408, 'Khu biệt thự The Ocean Estates là điểm nhấn cuối cùng của dự án nghỉ dưỡng đình đám The Ocean Resort được chủ đầu tư VinaCapital khởi công vào cuối năm 2016. The Ocean Estates sở hữu địa thế chiến lược tại một trong những dải biển đẹp nhất miền Trung, chỉ cách sân bay Đà Nẵng khoảng 20 phút chạy xe và nằm trên trục đường nối liền những di sản văn hóa được UNESCO công nhận như Huế, phố cổ Hội An. Dự án đã được Sở Xây dựng thành phố Đà Nẵng công nhận đủ điều kiện bán nhà ở hình thành trong tương lai.', '<div class=\"locationmap\"><iframe __idm_frm__=\"1355\" height=\"350px\" src=\"/editor/googlemap.html?x=16.012346261805895&amp;y=108.2627909446046&amp;z=15&amp;img=The Ocean Estates&amp;googlemap=true\" style=\"border: none; max-width:100%;\" width=\"100%\"></iframe></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><u>Tổng quan dự án:</u></h2>\r\n\r\n<p><u><img alt=\"\" src=\"/uploads/images/2018/02/The%20Ocean%20Estates.jpg\" style=\"max-width: 100%;\" /></u></p>\r\n', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1519797600, 1519839736, 25),
(940, 458, 'Mua nhà tặng vàng tại Prosper Plaza', 'mua-nha-tang-vang-tai-prosper-plaza', '', '', '', 'mua-nha-tang-vang-tai-prosper-plaza-1540081825.jpg', '', '', 0, 0, 0, 0, 0, 2409, 'Nhân dịp Tết Mậu Tuất, chủ đầu tư dự án Prosper Plaza triển khai nhiều ưu đãi dành cho khách hàng như tặng vàng, chính sách thanh toán linh hoạt...', '<p>Theo đại diện chủ đầu tư, bên cạnh những giải thưởng lớn, khi giao dịch thành công trong đợt mở bán căn hộ Prosper Plaza dịp đầu năm, khách hàng được nhận thêm các phần quà như tiền vàng có giá trị từ 2 đến 5 chỉ vàng 9999. Khách hàng tham quan dự án trong ngày diễn ra sự kiện cũng có cơ hội nhận nhiều phần quà hấp dẫn.</p>\r\n\r\n<p>\"Sau hai đợt mở bán đầu, đã có 1.000 căn tương đương 70% sản phẩm được giao dịch thành công. Để đáp ứng nhu cầu khách hàng, trong giai đoạn 3 này chủ đầu tư tiếp tục tung ra thị trường 469 sản phẩm. Đây là những căn hộ có tầm nhìn, tầng và vị trí đẹp của&nbsp;dự án Prosper Plaza\", đại diện chủ đầu tư cho biết.</p>\r\n\r\n<table border=\"0\" cellpadding=\"2\" cellspacing=\"0\" class=\"tcs\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"tcs-selection-enabled\" style=\"text-align: center;\"><img alt=\"Phối cảnh tổng thể dự án Prosper plaza.\" data-natural-width=\"479\" data-pwidth=\"500\" data-width=\"479\" src=\"/uploads/images/2018/02/Prosper-Plaza.jpg\" style=\"max-width: 100%;\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"tcs-selection-enabled\">\r\n			<p style=\"text-align: center;\">Phối cảnh tổng thể dự án Prosper plaza.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n\r\n<p>Bà Châu Thị Mỹ Linh, Tổng Giám đốc Công ty cổ phần đầu tư Phúc Phúc Yên cũng chia sẻ, Prosper Plaza được thị trường quan tâm với lượng giao dịch lớn bởi dự án thuộc phân khúc cao cấp, giá cả hợp lý, chính sách bán hàng linh hoạt. Bên cạnh đó, dự án có lợi thế về vị trí, được đầu tư thiết kế và quy hoạch hiện đại.</p>\r\n\r\n<p>Prosper Plaza đang ở giai đoạn đã cất nóc Block C, còn Block B đã hoàn thành sàn 18, Block A đã hoàn thành sàn 17 và đang trong quá trình hoàn thiện để chuẩn bị chào đón những cư dân đầu tiên.</p>\r\n\r\n<p>Dự án tiếp giáp các tuyến đại lộ lớn như tuyến đường Trường Chinh - Cộng Hòa. Từ đây, cư dân có thể dễ dàng di chuyển đến các khu vực lân cận như khu đô thị mới quận 12, quận Tân Phú, Tân Bình, Gò Vấp, hay Sân bay Tân Sơn Nhất…&nbsp;</p>\r\n\r\n<p>Ngoài hạ tầng giao thông thuận lợi, cư dân Prosper Plaza còn thừa hưởng hệ thống tiện tích ngoại khu đầy đủ như Coop Mart Trường Chinh, Pandora City, Big C, Aeon Mall cùng nhiều công trình trọng điểm như sân bay quốc tế Tân Sơn Nhất, khu công nghiệp Tân Bình, công viên Hoàng Văn Thụ…</p>\r\n\r\n<table border=\"0\" cellpadding=\"2\" cellspacing=\"0\" class=\"tcs\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"tcs-selection-enabled\" style=\"text-align: center;\"><img alt=\"Hồ bơi trung tâm - tiện ích chuẩn sống xanh tại Prosper plaza. Hiện dự án phân phối bởi đại lý uy tín như PY Prosper. Khách hảng quan tâm dự án liên hệ hotline : 0979 823 322; 02822159683, website: http://tapdoanphucyenprosper.com/\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" src=\"/uploads/images/2018/02/Prosper-Plaza02.jpg\" style=\"max-width: 100%;\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"tcs-selection-enabled\">\r\n			<p style=\"text-align: center;\">Hồ bơi trung tâm - tiện ích chuẩn sống xanh tại Prosper plaza. Hiện dự án phân phối bởi đại lý uy tín như PY Prosper. Khách hảng quan tâm dự án liên hệ Hotline : ‎0979 823 322; 02822159683, website:&nbsp;<a href=\"http://tapdoanphucyenprosper.com.vn/\" target=\"_blank\">http://tapdoanphucyenprosper.com.vn</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Điểm nổi bật của Prosper Plaza là sở hữu hồ sinh thái và công viên nội khu ngay trong lòng dự án. Nhờ quy hoạch và xây dựng khu vực công viên rộng lớn, cư dân ở đây có thể hưởng thụ không gian sống xanh, thanh bình.</p>\r\n\r\n<p>Không chỉ chăm chút về thiết kế, tiện ích nội khu, chủ đầu tư và đơn vị phân phối còn tạo nhiều điều kiện để khách hàng có thể tiếp cận dự án. Bên cạnh phương thức thanh toán linh hoạt, với mức giá trên dưới một tỷ đồng một căn (đã gồm VAT) gồm 2 phòng ngủ, 2 toilet , khách hàng còn được hỗ trợ và hướng dẫn vay vốn ngân hàng, hưởng gói lãi suất ưu đãi ctừ 7,7% một năm trong 12 tháng.</p>\r\n\r\n<p>Prosper Plaza xây dựng trên khu đất rộng 15.585m2 gồm 3 Block. Theo đại diện chủ đầu tư, với quy mô 1.500 căn hộ diện tích trung bình 49-65-70m2, đây là một trong những dự án có thể đáp ứng nhu cầu đa dạng cho mọi đối tượng khách hàng là cư dân hay nhà đầu tư.</p>\r\n\r\n<p style=\"text-align: right;\"><strong>Thế Đan</strong></p>\r\n', '', 'no', 'bất động sản,tại gia,chiến lược kinh doanh,bất động sản giá rẻ,bất động sản nổi bật', '[]', '[]', 1, 0, 0, 32, 1518281220, 1540475755, 25),
(941, 458, 'Bất động sản Đà Nẵng: Dòng tiền đổ vào đâu trong năm 2018', 'bat-dong-san-da-nang-dong-tien-do-vao-dau-trong-nam-2018', '', '', '', 'bat-dong-san-da-nang-dong-tien-do-vao-dau-trong-nam-2018-1519836977.jpg', '', '', 0, 0, 0, 0, 0, 2410, 'Đánh giá về triển vọng thị trường bất động sản năm 2018, giới chuyên môn cho rằng diễn biến sẽ tiếp tục đà khả quan, tuy nhiên, phân khúc căn hộ sẽ phải cạnh tranh rất khốc liệt, thị trường đất nền sẽ lên ngôi.', '<p 20px=\"\" color:=\"\" font-size:=\"\" line-height:=\"\" new=\"\" text-align:=\"\" times=\"\">Theo giới phân tích, tại Đà Nẵng khu vực có tiềm năng phát triển nhất là Tây Bắc bởi nơi này đang hội tụ đủ các điều kiện tăng trưởng bền vững.</p>\r\n\r\n<p 20px=\"\" color:=\"\" font-size:=\"\" line-height:=\"\" new=\"\" text-align:=\"\" times=\"\">Mới đây, tập đoàn khách sạn Mikazuki từ Nhật Bản dự kiến sẽ đầu tư hơn 100 triệu USD để xây dựng công viên nước và khách sạn 5 sao tại khu du lịch Xuân Thiều nằm trên cung đường biển xanh Nguyễn Tất Thành thuộc phía Tây Bắc Đà Nẵng. Dự án này có diện tích gần 13ha nhằm mục tiêu đầu tư phát triển khu phức hợp dịch vụ bao gồm khách sạn đạt chuẩn 5 sao, khu công viên nước, công viên trò chơi và khu ẩm thực. Đây được xem là khoản đầu tư nước ngoài lớn nhất vào bất động sản du lịch Đà Nẵng năm 2017, năm đánh dấu sự kiện quốc tế APEC mở ra một cơ hội cực lớn về thu hút đầu tư cho địa phương.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Khách sạn 5 sao dự kiến sẽ xây dựng tại khu du lịch Xuân Thiều nằm trên cung đường biển Tất Thành Đà Nẵng\" data-original=\"https://dantricdn.com/2017/h1-1513670344360.jpg\" h=\"1024\" id=\"img_216212\" photoid=\"216212\" rel=\"https://dantricdn.com/2017/h1-1513670344360.jpg\" src=\"/uploads/images/2018/02/h1-1513670344360.jpg\" style=\"max-width: 100%;\" type=\"photo\" w=\"2000\" /><br />\r\n<em>Khách sạn 5 sao dự kiến sẽ xây dựng tại khu du lịch Xuân Thiều nằm trên cung đường biển Tất Thành Đà Nẵng.</em></p>\r\n\r\n<p 20px=\"\" color:=\"\" font-size:=\"\" line-height:=\"\" new=\"\" text-align:=\"\" times=\"\">Nguồn vốn gần 1 tỉ USD đổ vào Đà Nẵng tại Diễn đàn đầu tư 2017 được kỳ vọng là động lực mới đẩy nhanh các dự án chưa triển khai ở Q.Liên Chiểu. Trong đó, cảng Liên Chiểu (7.378 tỉ đồng), di dời ga đường sắt và phát triển đô thị TP.Đà Nẵng (15.441 tỉ đồng)… sẽ biến phía tây vịnh Đà Nẵng thành khu kinh tế ven biển. Điển hình là Khu CNTT (Danang IT Park) với tổng vốn đầu tư gần 300 triệu USD đang hoàn thiện theo mô hình thung lũng Silicon. Đặc biệt, thông tin từ Sở Xây dựng Đà Nẵng cho biết trong tương lai, Thành phố sẽ mở rộng quy mô khu đô thị Tây Bắc lên khoảng 37.000ha để đáp ứng quy mô dân số trên 2 triệu người.</p>\r\n\r\n<p 20px=\"\" color:=\"\" font-size:=\"\" line-height:=\"\" new=\"\" text-align:=\"\" times=\"\">&nbsp;</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Theo giới phân tích, đất nền Golden Hills đang được săn lùng do tiềm năng phát triển du lịch biển Nguyễn Tất Thành và khu vực Tây Bắc sẽ bứt phá trong tương lai\" data-original=\"https://dantricdn.com/2017/h2-1513670344362.jpeg\" h=\"1181\" id=\"img_216213\" photoid=\"216213\" rel=\"https://dantricdn.com/2017/h2-1513670344362.jpeg\" src=\"/uploads/images/2018/02/h2-1513670344362.jpg\" style=\"max-width: 100%;\" type=\"photo\" w=\"2000\" /><br />\r\n<em>Theo giới phân tích, đất nền Golden Hills đang được săn lùng do tiềm năng phát triển du lịch biển Nguyễn Tất Thành và khu vực Tây Bắc sẽ bứt phá trong tương lai.</em></p>\r\n\r\n<p 20px=\"\" color:=\"\" font-size:=\"\" line-height:=\"\" new=\"\" text-align:=\"\" times=\"\">Ngoài ra, án ngữ ngay cửa ngõ ra vào khu Tây Bắc Đà Nẵng là dự án khu đô thị Golden Hills có quy mô 400ha do tập đoàn Trung Nam đầu tư từ năm 2011. Theo tìm hiểu, hiện nay khu A dự án Golden Hills có quy mô 100ha đã hoàn thành giai đoạn 1 vào năm 2017 với nhiều tiện ích vượt trội và thu hút đông người dân đến sinh sống.</p>\r\n\r\n<p 20px=\"\" color:=\"\" font-size:=\"\" line-height:=\"\" new=\"\" text-align:=\"\" times=\"\">Giai đoạn 2, Trung Nam đầu tư xây dựng khu phức hợp DITP Power tại đầu tuyến đường Nguyễn Tất Thành nối dài với tổng vốn đầu tư 250 tỉ đồng, 18 tầng; tập trung thi công các khu còn lại và đặc biệt là chuỗi khu phố thương mại Nguyễn Tất Thành để tạo sự sôi động cho khu Tây Bắc Đà Nẵng.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Khu phức hợp DITP Power trên tuyến đường Nguyễn Tất Thành với tổng vốn đầu tư 250 tỷ đồng, 18 tầng đang được triển khai trong năm 2017\" data-original=\"https://dantricdn.com/2017/h3-1513670344364.jpg\" h=\"1481\" id=\"img_216214\" photoid=\"216214\" rel=\"https://dantricdn.com/2017/h3-1513670344364.jpg\" src=\"/uploads/images/2018/02/h3-1513670344364.jpg\" style=\"max-width: 100%;\" type=\"photo\" w=\"1737\" /><br />\r\n<em>Khu phức hợp DITP Power trên tuyến đường Nguyễn Tất Thành với tổng vốn đầu tư 250 tỷ đồng, 18 tầng đang được triển khai trong năm 2017</em></p>\r\n\r\n<p 20px=\"\" color:=\"\" font-size:=\"\" line-height:=\"\" new=\"\" text-align:=\"\" times=\"\">Ghi nhận cho thấy, xu hướng đầu tư đất nền tại các khu vực này là đi theo giá trị thực về nhà ở, người mua đất chủ yếu phục vụ cho nhu cầu ở thực. Hiện tại, giao dịch mua bán đất nền tại khu Tây Bắc vẫn đang diễn ra hết sức sôi động xoay quanh các sản phẩm đất nền có giá từ 1 tỷ đồng nằm trong khu đô thị được đầu tư hạ tầng tốt, kết nối thuận tiện với mạng lưới trường học, bệnh viện, không gian công cộng vui chơi, giải trí. Điều này là một chỉ dấu quan trọng, một mặt phản ánh nhu cầu cao của thị trường về đất, mặt khác cho thấy sự bền vững của giá trị phân khúc đất nền</p>\r\n\r\n<p 20px=\"\" color:=\"\" font-size:=\"\" line-height:=\"\" new=\"\" text-align:=\"\" times=\"\">Đánh giá về triển vọng thị trường BĐS Đà Nẵng, đặc biệt là phân khúc đất nền ông Marc Townsend - Nguyên Tổng giám đốc CBRE Việt Nam cho biết: \"Do tâm lý người dân vẫn ưa chuộng đất nền và nhà phố theo đúng tập tục sinh sống bao đời nay, nhất là phân khúc căn hộ chung cư chưa phải là thị hiếu của khách hàng khu vực miền trung. Phần khác, nhờ sự kiện APEC mà Đà Nẵng đã có một hệ thống hạ tầng giao thông khá quy mô, kết nối đồng bộ. Chính những yếu tố này sẽ kích thích thị trường địa ốc thành phố này tăng trưởng mạnh trong thời gian tới\".</p>\r\n\r\n<p 20px=\"\" color:=\"\" font-size:=\"\" line-height:=\"\" new=\"\" style=\"text-align: right;\" text-align:=\"\" times=\"\"><strong>Nguồn: Dantri.com.vn</strong></p>\r\n', '', 'no', '', '[]', '[]', 1, 0, 0, 9, 1515754800, 1519836977, 25),
(944, 458, 'Tây Bắc – “cực” phát triển mới của Đà Nẵng', 'tay-bac-cuc-phat-trien-moi-cua-da-nang', '', '', '', 'tay-bac-cuc-phat-trien-moi-cua-da-nang-1519837908.jpg', '', '', 0, 0, 0, 0, 0, 2413, 'Theo ông Bùi Minh Trí, đại diện Sở Xây dựng Đà Nẵng, đối với sản phẩm đất nền tại một số dự án đang triển khai ở khu vực Tây Bắc, khi chủ đầu tư rao bán thì giao dịch khá tốt. Điều này chứng tỏ nhu cầu nhà ở của người dân khu vực là rất cao.', '<p font-size:=\"\" new=\"\" times=\"\"><strong>Nhiều cú hích hỗ trợ</strong></p>\r\n\r\n<p font-size:=\"\" new=\"\" times=\"\">Trước đây, nhắc đến bất động sản Đà Nẵng người ta thường nghĩ tới khu vực phía Nam thành phố, khu vực được kế thừa nền tảng đô thị cũ cũng như sự thuận lợi về điều kiện tự nhiên. Thế nhưng, với quỹ đất ở các khu trung tâm ngày càng khan hiếm, các nhà đầu tư trên thị trường địa ốc Đà Nẵng đang có xu hướng dịch chuyển sang các khu vực lân cận nhằm tìm kiếm cơ hội.</p>\r\n\r\n<p font-size:=\"\" new=\"\" times=\"\">Theo đề án quy hoạch của thành phố Đà Nẵng đến năm 2020, Tây Bắc đang là hướng phát triển chiến lược của thành phố. Trong đó, quận Liên Chiểu hiện đang nổi lên như một điểm sáng với hệ thống kết cấu hạ tầng tiên tiến và thuận lợi để thu hút các nhà đầu tư trong và ngoài nước.</p>\r\n\r\n<p font-size:=\"\" new=\"\" times=\"\">Để thực hiện đề án trên, Đà Nẵng đã triển khai hàng loạt công trình trọng điểm. Tháng 2/2017, 65km đầu tiên dự án đường cao tốc Đà Nẵng - Quảng Ngãi đã chính thức được thông xe kỹ thuật.</p>\r\n\r\n<p font-size:=\"\" new=\"\" times=\"\">Các hạng mục còn lại của dự án cũng đang được gấp rút thi công để đưa toàn tuyến vào khai thác cuối năm 2017, tạo điều kiện thuận lợi cho các doanh nghiệp trong các khu công nghiệp Đà Nẵng, Quảng Nam và Quảng Ngãi vận chuyển hàng hóa. Tháng 5/2017, quận Liên Chiểu được công nhận đô thị loại 1 cấp quận. Đây là một bước tiến đáng kể trong việc phát triển kinh tế, xã hội cho toàn khu vực.</p>\r\n\r\n<p font-size:=\"\" new=\"\" times=\"\">Một dự án lớn nữa là ga hàng hóa Kim Liên mới sẽ được xây dựng hơn 80ha, nằm trong tổng thể dự án di dời ga đường sắt Đà Nẵng với tổng mức đầu tư khoảng 5.700 tỷ đồng.</p>\r\n\r\n<p font-size:=\"\" new=\"\" times=\"\">Đề nghị xây Cảng Liên Chiểu theo hình thức hợp tác công tư (PPP) cũng đã được Bộ Giao thông Vận tải thông qua. Các dự án này khi đi vào hoạt động sẽ tạo động lực phát triển kinh tế và thu hút đông đảo lực lượng người lao động tới định cư tại khu vực này.</p>\r\n\r\n<p font-size:=\"\" new=\"\" times=\"\">Bên cạnh đó, với lợi thế nằm ngay điểm giao thông Cầu Vượt Ngã Ba Huế, nối liền Quốc Lộ 1A đi vào trung tâm của Thành Phố, một mặt lại giáp biển Nguyễn Tất Thành, khu Tây Bắc thành phố trở thành vùng đất mới đầy lực hấp dẫn, thu hút các doanh nghiệp, nhà đầu tư cá nhân đổ về săn đất.</p>\r\n\r\n<p font-size:=\"\" new=\"\" times=\"\"><strong>Hạ tầng đi trước, dự án theo sau</strong></p>\r\n\r\n<p font-size:=\"\" new=\"\" times=\"\">Anh Thịnh, một môi giới bất động sản ở Đà Nẵng cho biết, bất động sản luôn phát triển sau hạ tầng một bước. Vì thế với hàng loạt dự án hạ tầng được đầu tư ở phía Tây Bắc thời gian qua, làn sóng đầu tư địa ốc theo các dự án nghìn tỷ diễn ra ở khu vực này cũng là điều dễ hiểu.</p>\r\n\r\n<p font-size:=\"\" new=\"\" times=\"\">Bên cạnh những ưu thế về hạ tầng, về những dự án nghìn tỷ sắp được triển khai, khu vực Tây Bắc Đà Nẵng là một vùng đất được thiên nhiên ưu đãi bên sông, kề núi, cạnh biển, cách trung tâm thành phố chỉ 15 phút di chuyển. Do đó, khu vực này được đánh giá sẽ là mảnh đất tiềm năng thu hút người dân, các chuyên gia làm việc tại các khu lân cận, các trường đại học, các công ty nước ngoài đến làm việc, sinh sống và nghỉ dưỡng.</p>\r\n\r\n<p font-size:=\"\" new=\"\" times=\"\">Những sự thay đổi này đã ít nhiều phát huy tác dụng, kích hoạt hàng loạt các dự án bất động sản cùng chuyển động. Nhiều ông lớn trong ngành bất động sản cũng đã nhanh chân góp mặt tại vùng đất mới này với một số dự án điển hình như: Pandora City và Lakeside Palace, Golden Hills, Khu đô thị Phước Lý, Chăm Riverpark.</p>\r\n\r\n<p font-size:=\"\" new=\"\" times=\"\">Giới đầu tư bất động sản cho rằng, ngoài đòn bẩy hạ tầng và những dự án lớn, khu Tây Bắc thành phố được nhiều doanh nghiệp bất động sản chú ý bởi quỹ đất khu vực này còn nhiều. Vì chưa phát triển mạnh nên giá cả khá mềm so với mặt bằng chung, phù hợp với túi tiền của nhiều người.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Cầu vượt ngã ba Huế nối liền nhiều tuyến đường trọng điểm của thành phố.\" data-original=\"http://channel.mediacdn.vn/prupload/270/2017/10/img20171018110121161.jpg\" src=\"/uploads/images/2018/02/img20171018110121161.jpg\" style=\"max-width: 100%;\" type=\"photo\" /><br />\r\n<em>Cầu vượt ngã ba Huế nối liền nhiều tuyến đường trọng điểm của thành phố.</em></p>\r\n\r\n<p font-size:=\"\" new=\"\" times=\"\">Chính vì vậy, nếu như khu vực phía Nam thành phố là thiên đường của các dự án bất động sản phục vụ nhu cầu đầu tư và nghỉ dưỡng thì khu vực Tây Bắc lại là địa bàn tập trung nhiều dự án đáp ứng nhu cầu ở thực của người dân Đà Nẵng và người dân ở các tỉnh lân cận đang sinh sống và làm việc tại Đà Nẵng.</p>\r\n\r\n<p font-size:=\"\" new=\"\" times=\"\">Hiện nay ngoài những khu đất bố trí tái định cư thì thành phố đang đấu giá những khu đất còn trống và nhu cầu người mua là rất cao. Trong năm 2017 thành phố tổ chức đấu giá rất nhiều khu đất nền.</p>\r\n\r\n<p font-size:=\"\" new=\"\" times=\"\">Nhu cầu đấu giá cũng rất lớn, đối với cả khách hàng là cư dân Đà Nẵng cũng như khách hàng từ các tỉnh khác. Đối với sản phẩm đất nền tại một số dự án đang triển khai ở khu vực Tây Bắc, khi chủ đầu tư rao bán thì giao dịch khá tốt. Điều này chứng tỏ nhu cầu nhà ở của người dân khu vực là rất cao.</p>\r\n\r\n<p font-size:=\"\" new=\"\" times=\"\">Chứng kiến những bước chuyển mình của Tây Bắc thì mới hiểu được sự tỉnh giấc và vươn mình lớn dậy của khu vực này cùng những tác động của nó tới sự phát triển kinh tế - xã hội toàn diện của Đà Nẵng.</p>\r\n\r\n<p font-size:=\"\" new=\"\" times=\"\">Sự bài bản trong quy hoạch, kiến trúc, đầu tư hạ tầng đô thị, những lợi thế về vị trí, tầm nhìn phát triển kinh tế trong tương lai, kết nối thân thiện, sự hình thành các khu đô thị mới khang trang… tất cả các yếu tố trên đều đang tạo sức lan tỏa cho khu vực Tây Bắc, mở ra nhiều cơ hội, mang lại những lợi ích to lớn mà người dân Đà Nẵng là đối tượng thụ hưởng chính.</p>\r\n\r\n<p style=\"text-align: right;\"><strong>Trích: Cafe F</strong></p>\r\n', '', 'no', '', '[]', '[]', 1, 0, 0, 8, 1515345000, 1519837908, 25),
(945, 455, 'Golden Hills', 'golden-hills', '', '', '', 'golden-hills-1519839229.jpg', '', 'Nguyễn Tất Thành, Liên Chiểu, Đà Nẵng', 1270000000, 0, 0, 0, 2, 2414, 'Đến và ngất ngây trước vẻ đẹp thiên nhiên, SOM – Công ty thiết kế qui hoạch hàng đầu của Hoa Kỳ, đã kiến tạo nên khu đô thị sinh thái Golden Hills mang bản sắc riêng,  có quy hoạch kiến trúc bậc nhất tại miền Trung.', '<p>Hòa điệu cùng thiên nhiên kết hợp với thiết kế hiện đại đẳng cấp Quốc tế</p>\r\n\r\n<p>Xây dựng khu đô thị sinh thái Golden Hills có kết cấu phát triển bền vững.</p>\r\n\r\n<h3>Tránh ảnh hưởng của thủy triều dâng hay ngập lụt từ thượng nguồn bằng cách:</h3>\r\n\r\n<ul>\r\n	<li>Nâng đất nền</li>\r\n	<li>Thiết kế những bức tường chắn sóng nước dâng tạo thành đồi</li>\r\n</ul>\r\n\r\n<p>Do đó tạo được cảnh quan và chắn ngập lụt nhưng vẫn không phá vỡ cảnh quan chung của cả dự án.</p>\r\n\r\n<h3>Có khá nhiều kênh rạch:</h3>\r\n\r\n<ul>\r\n	<li>Thiết kế tận dụng tối đa dòng chảy tự nhiên.</li>\r\n	<li>Tạo những kênh rạch ngay trong thành phố.</li>\r\n</ul>\r\n\r\n<p>Những kênh rạch này sẽ đóng vai trò điều tiết dòng chảy trong dự án.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><u>Phác họa:</u></h2>\r\n\r\n<p><u><img alt=\"\" src=\"/uploads/images/2018/02/1.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/2.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/3.jpg\" style=\"max-width: 100%;\" /></u></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><u>Tiêu chuẩn thiết kế:</u></h2>\r\n\r\n<p><img alt=\"\" src=\"/uploads/images/2018/02/-173.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/-175.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/-177.jpg\" style=\"max-width: 100%;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><u>Minh họa:</u></h2>\r\n\r\n<p><u><img alt=\"\" src=\"/uploads/images/2018/02/minhhoa_1_1.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/minhhoa_2.jpg\" style=\"max-width: 100%;\" /><br />\r\n<img alt=\"\" src=\"/uploads/images/2018/02/minhhoa_3.jpg\" style=\"max-width: 100%;\" /></u></p>\r\n', '', 'no', '', '[]', '[]', 1, 0, 0, 7, 1519493040, 1519839229, 25),
(946, 468, 'Người nổi tiếng bất động sản', 'nguoi-noi-tieng-bat-dong-san', '', '', '', 'nguoi-noi-tieng-bat-dong-san-1540080893.jpg', '', '', 0, 0, 0, 0, 0, 2772, 'Trang chủ đắt nhất của Wyoming là tài sản sân bay thuộc sở hửu của Hollywood Power Couple', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 'no', '', '[]', '[]', 1, 0, 0, 53, 1540080780, 1540080893, 25),
(947, 469, 'giới thiệu', 'gioi-thieu-7cxi387x00', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2773, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540406820, 1540406854, 25),
(948, 469, 'hổ trợ đại lý', 'ho-tro-dai-ly', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2774, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540406880, 1540406929, 25),
(949, 469, 'Tìm người thẩm định', 'tim-nguoi-tham-dinh-z7upqfgy2w', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2775, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540406880, 1540406939, 25),
(950, 469, 'Dịch vụ thương mại', 'dich-vu-thuong-mai-2pej0egy08', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2776, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540406940, 1540407001, 25),
(951, 469, 'Liên minh bất động sản', 'lien-minh-bat-dong-san-l8lx7g5mxe', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2777, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407000, 1540407016, 25),
(952, 470, 'Tại sao nên tin tưởng chúng tôi', 'tai-sao-nen-tin-tuong-chung-toi-wzyxwq5ohc', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2778, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407060, 1540407103, 25),
(953, 470, 'Sai lầm tốn kém', 'sai-lam-ton-kem-humbz4j33p', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2779, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407060, 1540407111, 25),
(954, 470, 'Bất động sản', 'bat-dong-san-s5j3vbyexh', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2780, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407060, 1540407124, 25),
(955, 470, 'Qũy cứu trợ', 'quy-cuu-tro-317ixmap9i', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2781, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407120, 1540407147, 25),
(956, 471, 'Tháng an toàn', 'thang-an-toan-o27asy3j37', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2782, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407300, 1540407322, 25),
(957, 471, 'Xây dựng doanh nghiệp', 'xay-dung-doanh-nghiep-uzobtsooqw', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2783, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407360, 1540407396, 25),
(958, 471, 'Trung tâm phát triển', 'trung-tam-phat-trien-h07futjaxi', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2784, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407360, 1540407405, 25),
(959, 471, 'Chương trình giới thiệu', 'chuong-trinh-gioi-thieu', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2785, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407360, 1540407417, 25),
(960, 472, 'Washington bất động sản', 'washington-bat-dong-san-rx0t8zxezx', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2786, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407600, 1540407630, 25),
(961, 472, 'Dallas bất động sản', 'dallas-bat-dong-san-rqa58r9yjp', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2787, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407600, 1540407646, 25),
(962, 472, 'Bất động sản FortWorth', 'bat-dong-san-fortworth-y0x9ru3nmh', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2788, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407600, 1540407654, 25),
(963, 473, 'Căn hộ Denver', 'can-ho-denver-345hyg5pvk', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2789, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407720, 1540407760, 25),
(964, 473, 'Miami Apartments', 'miami-apartments-zji74oyarf', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2790, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407720, 1540407770, 25),
(965, 473, 'Miami Beach Aparments', 'miami-beach-aparments-u0whbqxf0u', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2791, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407720, 1540407845, 25),
(966, 473, 'Miami Apartments', 'miami-apartments-6axk5evgls', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2792, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407780, 1540407833, 25),
(967, 496, 'Thị trường bất động sản địa phương', 'thi-truong-bat-dong-san-dia-phuong', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2793, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407900, 1540407930, 25),
(968, 496, 'Ứng dụng di động', 'ung-dung-di-dong-m7rxvtettg', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2794, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407900, 1540407940, 25),
(969, 496, 'Ứng dụng cho thuê', 'ung-dung-cho-thue-47lhceu42m', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2795, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407900, 1540407951, 25),
(970, 496, 'Máy tính tài chính', 'may-tinh-tai-chinh', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2796, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407960, 1540407964, 25),
(971, 497, 'Alibaba tài sản', 'alibaba-tai-san-npxwnpcs5d', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2797, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540407960, 1540408017, 25),
(972, 497, 'Amazon tài sản', 'amazon-tai-san-ftgvom806n', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2798, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540408020, 1540408028, 25),
(973, 497, 'Micro tài sản', 'micro-tai-san-peomd2j1zs', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2799, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540408020, 1540408039, 25),
(974, 497, 'Tổng hợp tài sản', 'tong-hop-tai-san', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2800, '', '', '', 'no', '', '[]', '[]', 1, 0, 0, 1, 1540408020, 1540408049, 25);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_article_menu`
--

CREATE TABLE `olala_article_menu` (
  `article_menu_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` text,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `comment` text,
  `icon` varchar(255) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `color` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_article_menu`
--

INSERT INTO `olala_article_menu` (`article_menu_id`, `category_id`, `name`, `slug`, `title`, `description`, `keywords`, `parent`, `sort`, `comment`, `icon`, `is_active`, `hot`, `img`, `created_time`, `modified_time`, `user_id`, `color`) VALUES
(455, 89, 'Biệt thự nghỉ dưỡng', 'biet-thu-nghi-duong', '', '', '', 0, 7, '', '', 1, 0, 'no', 1516138087, 1519808422, 25, ''),
(454, 89, 'Khu dân cư', 'khu-dan-cu', '', '', '', 0, 5, '', '', 1, 0, 'no', 1516138077, 1519808411, 1, ''),
(453, 89, 'Khu đô thị', 'khu-do-thi', '', '', '', 0, 4, '', '', 1, 0, 'no', 1516138068, 1519808405, 1, ''),
(452, 89, 'Dự án đất nền', 'du-an-dat-nen', '', '', '', 0, 3, '', '', 1, 0, 'no', 1516138002, 1519808400, 1, ''),
(433, 97, 'Cảnh quan', 'canh-quan', '', '', '', 0, 2, '', 'Nội thất', 1, 0, 'no', 1512182527, 1513524310, 25, ''),
(428, 94, 'Về chúng tôi', 've-chung-toi', '', '', '', 0, 1, '', '', 1, 0, 'no', 1512182375, 1512313435, 25, ''),
(457, 89, 'Căn hộ chung cư', 'can-ho-chung-cu', '', '', '', 0, 2, '', '', 1, 0, 'no', 1516138116, 1519808397, 1, ''),
(456, 89, 'Khu tái định cư', 'khu-tai-dinh-cu', '', '', '', 0, 6, '', '', 1, 0, 'no', 1516138095, 1516138095, 1, ''),
(432, 97, 'Toà nhà', 'toa-nha', '', '', '', 0, 1, '', 'Kiến trúc', 1, 0, 'no', 1512182514, 1514791780, 1, ''),
(458, 96, 'Bản tin bất động sản', 'ban-tin-bat-dong-san', '', '', '', 0, 1, '', '#00ffff', 1, 0, 'no', 1516138144, 1540299401, 25, '#0080c0'),
(459, 96, 'Thông tin nhà đất', 'thong-tin-nha-dat', '', '', '', 0, 2, '', '', 1, 0, 'no', 1516138161, 1516138161, 1, ''),
(460, 96, 'Tin hoạt động', 'tin-hoat-dong', '', '', '', 0, 4, '', '', 1, 0, 'no', 1516138172, 1516138260, 1, ''),
(461, 96, 'Tin tuyển dụng', 'tin-tuyen-dung', '', '', '', 0, 5, '', '', 1, 0, 'no', 1516138182, 1516138264, 1, ''),
(462, 96, 'Tin dự án', 'tin-du-an', '', '', '', 0, 3, '', '', 1, 0, 'no', 1516138249, 1516138256, 1, ''),
(466, 89, 'Nhà phố - Nhà mặt tiền', 'nha-pho-nha-mat-tien', '', '', '', 0, 1, '', '', 1, 0, 'no', 1519808388, 1519808393, 25, ''),
(467, 96, 'Mua', 'mua-6jaqtgj8j8', '', '', '', 0, 6, '', '', 1, 0, 'no', 1540080679, 1540080679, 25, ''),
(468, 96, 'Xu hướng', 'xu-huong', '', '', '', 0, 7, '', '', 1, 0, 'no', 1540080692, 1540080692, 25, ''),
(469, 103, 'Về bất động sản', 've-bat-dong-san', '', '', '', 0, 1, '', '', 1, 0, 'no', 1540405198, 1540405198, 25, '#000000'),
(470, 103, 'Điều cần biết', 'dieu-can-biet', '', '', '', 0, 2, '', '', 1, 0, 'no', 1540405218, 1540407070, 25, '#000000'),
(471, 103, 'Đối với bất động sản', 'doi-voi-bat-dong-san', '', '', '', 0, 3, '', '', 1, 0, 'no', 1540405232, 1540407259, 25, '#000000'),
(472, 103, 'Thị trường bất động sản', 'thi-truong-bat-dong-san-8mgik43ywo', '', '', '', 0, 4, '', '', 1, 1, 'no', 1540405244, 1540407557, 25, '#000000'),
(473, 103, 'Căn hộ', 'can-ho', '', '', '', 0, 5, '', '', 1, 1, 'no', 1540405265, 1540407556, 25, '#000000'),
(496, 103, 'Tài nguyên phổ biến', 'tai-nguyen-pho-bien-f6erya4qp7', '', '', '', 0, 6, '', '', 1, 1, 'no', 1540407536, 1540407556, 25, '#000000'),
(476, 104, 'Bất động sản', 'bat-dong-san-o6ljh8lyby', '', '', '', 0, 3, '', '', 1, 0, 'no', 1540405314, 1540405314, 25, '#000000'),
(497, 103, 'Hồ sơ', 'ho-so', '', '', '', 0, 7, '', '', 1, 1, 'no', 1540407552, 1540407555, 25, '#000000'),
(498, 103, 'Nghề nghiệp', 'nghe-nghiep', '', '', '', 0, 8, '', '', 1, 0, 'no', 1540408487, 1540408487, 25, '#000000'),
(499, 103, 'Phòng truyền thông', 'phong-truyen-thong', '', '', '', 0, 9, '', '', 1, 0, 'no', 1540408498, 1540408498, 25, '#000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_car`
--

CREATE TABLE `olala_car` (
  `car_id` int(11) NOT NULL,
  `car_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `img_note` varchar(255) NOT NULL,
  `upload_id` bigint(20) NOT NULL,
  `model` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `seat` varchar(255) NOT NULL,
  `seat_sort` int(11) NOT NULL DEFAULT '0',
  `color` varchar(255) NOT NULL,
  `price` bigint(15) NOT NULL,
  `sale` int(3) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `content` longtext NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_car_menu`
--

CREATE TABLE `olala_car_menu` (
  `car_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `comment` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_category`
--

CREATE TABLE `olala_category` (
  `category_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `plus` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` text,
  `comment` text,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `menu_main` int(1) NOT NULL DEFAULT '0',
  `sort_hide` int(11) NOT NULL DEFAULT '1',
  `menu_sm` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `icon` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_category`
--

INSERT INTO `olala_category` (`category_id`, `type_id`, `name`, `slug`, `plus`, `title`, `description`, `keywords`, `comment`, `is_active`, `hot`, `sort`, `menu_main`, `sort_hide`, `menu_sm`, `img`, `icon`, `created_time`, `modified_time`, `user_id`) VALUES
(89, 6, 'Nhà của tôi', 'nha-cua-toi', '', '', '', '', '', 1, 1, 6, 1, 2, 1, 'no', '', 0, 1516138386, 1),
(91, 2, 'Slider', 'slider', '', '', '', '', '', 1, 0, 1, 0, 0, 0, 'no', '', 0, 0, 0),
(95, 6, 'Mua', 'mua', '', '', '', '', '', 1, 0, 1, 1, 0, 0, 'no', '', 0, 1516987394, 1),
(94, 6, 'Bán', 'ban', '', '', '', '', '', 1, 0, 2, 1, 1, 1, 'no', '', 0, 1516037693, 25),
(99, 6, 'Thuê', 'thue', '', '', '', '', '', 1, 0, 3, 1, 3, 0, 'no', '', 0, 1518025049, 1),
(96, 1, 'Tin tức & Thông tin chi tiết', 'tin-tuc', '', '', '', '', '', 1, 1, 7, 1, 6, 1, 'no', '', 0, 1519837082, 25),
(101, 6, 'Thế chấp', 'the-chap', '', '', '', '', '', 1, 0, 4, 1, 5, 0, 'no', '', 0, 1518025055, 1),
(88, 6, 'Tìm môi giới', 'tim-moi-gioi', '', '', '', '', '', 1, 0, 5, 1, 1, 0, 'no', '', 0, 1546323562, 25),
(102, 2, 'Hình ảnh phòng ngủ', 'quang-cao', '', '', '', '', '', 1, 0, 1, 0, 1, 0, 'no', '', 0, 1540820286, 25),
(1, 15, 'Quản lý đất', 'quan-ly-dat', '', '', '', '', '', 1, 0, 1, 0, 1, 0, 'no', '', 0, 0, 0),
(2, 15, 'Địa chỉ', 'dia-chi', '', '', '', '', '', 1, 0, 1, 0, 1, 0, 'no', '', 0, 0, 0),
(103, 1, 'BẤT ĐỘNG SẢN', 've-chung-toi-qdzko0dxe6', '', '', '', '', '', 1, 0, 1, 0, 1, 0, 'no', '', 0, 1540408365, 25),
(110, 2, 'Hình ảnh 360', 'hinh-anh-360', '', '', '', '', '', 1, 0, 1, 0, 1, 0, 'no', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_category_type`
--

CREATE TABLE `olala_category_type` (
  `type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(30) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_category_type`
--

INSERT INTO `olala_category_type` (`type_id`, `name`, `slug`, `sort`, `is_active`) VALUES
(1, 'Bài viết', 'article_manager', 1, 1),
(2, 'Hình ảnh', 'gallery_manager', 2, 1),
(7, 'Đăng ký thông tin', 'newsletter', 9, 1),
(6, 'Sản phẩm', 'product_manager', 3, 1),
(8, 'Booking online', 'order_list', 7, 1),
(9, 'Tour du lịch', 'tour_manager', 5, 0),
(10, 'Đồ lưu niệm', 'gift_manager', 0, 0),
(11, 'Thuê xe', 'car_manager', 6, 0),
(12, 'Vị trí địa lý', 'location_manager', 0, 0),
(13, 'Dữ liệu đường phố', 'street_manager', 0, 0),
(14, 'Dữ liệu phương hướng', 'direction_manager', 0, 0),
(15, 'Dữ liệu khác', 'others_manager', 4, 1),
(16, 'Chiều rộng đường', 'road_manager', 0, 0),
(17, 'Dự án', 'project_manager', 0, 0),
(18, 'BĐS kinh doanh', 'bds_business_manager', 0, 0),
(19, 'Dữ liệu tên dự án', 'prjname_manager', 0, 0),
(20, 'Thư liên hệ', 'contact_list', 8, 1),
(21, 'Văn bản / Tài liệu', 'document_manager', 3, 0),
(22, 'Trả góp', 'tragop_list', 14, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_constant`
--

CREATE TABLE `olala_constant` (
  `constant_id` int(11) NOT NULL,
  `constant` varchar(50) NOT NULL,
  `value` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` int(2) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_constant`
--

INSERT INTO `olala_constant` (`constant_id`, `constant`, `value`, `name`, `type`, `sort`) VALUES
(1, 'date', 'd/m/Y', 'Kiểu hiển thị ngày tháng năm', 3, 1),
(2, 'time', 'H:i', 'Kiểu hiển thị giờ phút', 3, 2),
(3, 'timezone', 'Asia/Bangkok', 'Múi giờ', 3, 4),
(4, 'title', 'Bất động sản Đà Nẵng', 'Title (trang chủ)', 0, 1),
(5, 'description', 'Bất động sản Đà Nẵng', 'Description (trang chủ)', 0, 2),
(6, 'keywords', 'mua bán nhà đất', 'Keywords (trang chủ)', 0, 3),
(74, 'script_body', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.5\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n', 'Script sau body', 4, 6),
(76, 'link_linkedin', '', 'LinkedIn', 5, 6),
(7, 'email_contact', 'nhanduc96@gmail.com', 'Email', 0, 8),
(8, 'tell_contact', '0332852398', 'Điện thoại', 0, 9),
(9, 'fulldate', 'D, d/m/Y', 'Kiểu hiển ngày đầy đủ', 3, 3),
(10, 'SMTP_username', 'nhanduc@didongxanhvn.com', 'Tài khoản email', 1, 0),
(11, 'SMTP_password', 'nhanduc', 'Mật khẩu email', 1, 0),
(12, 'error_page', '<p>Vì lý do kỹ&nbsp;thuật website tạm ngưng&nbsp;hoạt động. Thành thật xin lỗi các bạn&nbsp;vì sự bất tiện này!</p>\r\n', 'Thông báo ngừng hoạt động', 0, 19),
(13, 'file_logo', '/uploads/images/site/logo.png', 'Logo front-end', 0, 4),
(14, 'SMTP_secure', 'ssl', 'Sử dụng xác thực', 1, 0),
(15, 'SMTP_host', 'sg2plcpnl0206.prod.sin2.secureserver.net', 'Máy chủ (SMTP) Thư gửi đi', 1, 0),
(16, 'SMTP_port', '465', 'Cổng gửi mail', 1, 0),
(17, 'backup_auto', '', 'Tự động sao lưu', 2, 0),
(18, 'backup_filetype', 'sql.gz', 'Định dạng lưu file CSDL', 2, 0),
(19, 'backup_filecount', '5', 'Số file CSDL lưu lại', 2, 0),
(20, 'backup_email', 'olala.3w@gmail.com', 'Email nhận thông báo và file', 2, 0),
(21, 'SMTP_mailname', 'Bất đông sản', 'Tên tài khoản email', 1, 0),
(22, 'link_facebook', 'https://www.facebook.com', 'Facebook', 5, 1),
(23, 'link_googleplus', 'https://plus.google.com', 'Google+', 5, 3),
(24, 'link_twitter', 'https://twitter.com', 'Twitter', 5, 4),
(25, 'address_contact', 'Đà Nẵng, Việt Nam', 'Địa chỉ', 0, 11),
(73, 'script_bottom', '<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?\'http\':\'https\';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+\'://platform.twitter.com/widgets.js\';fjs.parentNode.insertBefore(js,fjs);}}(document, \'script\', \'twitter-wjs\');</script>\r\n<script src=\"https://apis.google.com/js/platform.js\" async defer>\r\n  {lang: \'vi\'}\r\n</script>\r\n', 'Script cuối trang', 4, 7),
(26, 'content_registertry', '', 'Email đăng ký học thử', 13, 17),
(27, 'author_google', '', 'ID profile Google+', 4, 1),
(28, 'google_analytics', '', 'Google analytics', 4, 4),
(29, 'chat_online', '', 'Script Chat Online', 4, 5),
(30, 'english_test', '', 'Kiểm tra tiếng Anh của bạn', 13, 18),
(31, 'google_calendar', '', 'Google Calendar (Account)', 4, 3),
(32, 'help_address', 'killlllme@gmail.com,0974.779.085,huy.to.bsn,mr.killlllme', 'Tư vấn - Địa chỉ', 13, 8),
(33, 'help_icon', 'fa-envelope-o,fa-phone,fa-skype,fa-facebook', 'Tư vấn - Icon', 13, 9),
(34, 'link_youtube', '', 'Youtube', 5, 5),
(35, 'search_destination', 'Hà Nội,Đà Nẵng,Hồ Chí Minh,Phú Quốc,Nha Trang,Hạ Long,Đà Lạt,Phong Nha Kẻ Bàng,Côn đảo Vũng Tàu,Thái Lan,Singapore,Malaysia,Campuchia,Trung Quốc,Nhật Bản,Hàn Quốc,Hà Lan,Myanmar,Úc,Hong Kong,Philippines,Indonesia,Đài Loan,Châu Á,Châu Âu,Châu Mỹ,Châu Phi,Châu Úc', 'Điểm đến (Tìm kiếm tour)', 13, 8),
(36, 'search_day', '1 Ngày,1 Ngày 1 Đêm,2 Ngày,2 Ngày 1 Đêm,3 Ngày,3 Ngày 2 Đêm,4 Ngày,4 Ngày 3 Đêm,5 Ngày,5 Ngày 4 Đêm,6 Ngày,6 Ngày 5 Đêm,7 Ngày,7 Ngày 6 Đêm,8 Ngày,8 Ngày 7 Đêm,9 Ngày,9 Ngày 8 Đêm,10 Ngày,10 Ngày 9 Đêm,11 Ngày,11 Ngày 10 Đêm,12 Ngày,12 Ngày 11 Đêm,1 Tuần,2 Tuần,3 Tuần,1 Tháng,2 Tháng,3 Tháng', 'Thời gian (Tìm kiếm tour)', 13, 9),
(75, 'fb_app_id', '', 'Facebook App ID', 4, 2),
(77, 'upload_img_max_w', '1900', 'Kích thước ảnh tối đa', 6, 1),
(78, 'upload_max_size', '52428800', 'Dung lượng tối đa', 6, 2),
(79, 'upload_checking_mode', 'mild', 'Kiểu kiểm tra file tải lên', 6, 3),
(80, 'upload_type', '1,4,5,6,7,8,9,10,11', 'Loại files cho phép', 6, 4),
(81, 'upload_ext', '', 'Phần mở rộng bị cấm', 6, 5),
(82, 'upload_mime', '', 'Loại mime bị cấm', 6, 6),
(83, 'upload_img_max_h', '594', 'Kích thước ảnh tối đa', 6, 1),
(84, 'upload_auto_resize', '1', 'Tự động resize ảnh', 6, 1),
(85, 'article_author', '', 'Property = article:author', 4, 2),
(86, 'meta_author', 'Bất động sản Đà Nẵng | BatDongSanDaNang.com.vn', 'Meta author', 0, 4),
(88, 'meta_site_name', 'Bất Động Sản Đà Nẵng | NhaPhoDaNang.com.vn', 'Meta site name', 0, 5),
(89, 'meta_copyright', 'Copyright © 2018 Nhà phố Đà Nẵng | NhaPhoDaNang.com.vn', 'Meta copyright', 0, 6),
(90, 'image_thumbnailUrl', '/uploads/images/site/Bat-dong-san-Nha-pho-Da-Nang.jpg', 'Image : thumbnailUrl', 0, 7),
(91, 'skype_contact', 'skype_ducnhan', 'Skype', 0, 10),
(92, 'link_instagram', 'https://www.instagram.com', 'Instagram', 5, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_contact`
--

CREATE TABLE `olala_contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `content` text,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `ip` varchar(255) DEFAULT NULL,
  `icon` varchar(255) NOT NULL DEFAULT 'fa-send-o',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_contact`
--

INSERT INTO `olala_contact` (`contact_id`, `name`, `address`, `email`, `phone`, `content`, `is_active`, `ip`, `icon`, `created_time`, `modified_time`) VALUES
(33, 'zet1111', '', 'nhatduyit4443@gmail.com', '0976158826', '<div marginwidth=\"0\" marginheight=\"0\" style=\"font-family:Arial,serif;\"><table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"table-layout:fixed;\"><tbody><tr><td width=\"100%\" valign=\"top\" bgcolor=\"#f5f5f5\" style=\"padding:0\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"margin:0 auto;width:100%;\"><tbody><tr><td bgcolor=\"#39b54a\" style=\"padding:10px 0; text-align: center;\"><a href=\"http://didongxanhvn.com\" target=\"_blank\"><img src=\"http://didongxanhvn.com/uploads/images/site/logo.png\" style=\"max-height:70px;max-width:80%;\" alt=\"Bất Động Sản Đà Nẵng | NhaPhoDaNang.com.vn\" border=\"0\"></a></td></tr></tbody></table><div style=\"min-height:35px\">&nbsp;</div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"min-width:290px;margin:0 auto;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;\" width=\"620\"><tbody><tr><td style=\"border-left:6px solid #dfdfdf;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;vertical-align:top;padding:15px 8px 25px 20px;\" bgcolor=\"#fdfdfd\"><p style=\"margin: 10px 0\">Chào <b> zet1111</b>,</p><p style=\"margin: 10px 0\">Xin chân thành cảm ơn Quý khách đã quan tâm và sử dụng dịch vụ của chúng tôi!<br>Yêu cầu của Quý khách đã gửi thành công. Chúng tôi sẽ phản hồi lại trong vòng 24h tới.</p><p style=\"margin: 10px 0\"><b style=\"text-decoration:underline;\">THÔNG TIN ĐĂNG KÝ CỦA QUÝ KHÁCH:</b><br/><label style=\"font-weight:600;padding-left:12px;\">Họ và tên: </label> zet1111<br/><label style=\"font-weight:600;padding-left:12px;\">Địa chỉ: </label> <br/><label style=\"font-weight:600;padding-left:12px;\">Email: </label> nhatduyit4443@gmail.com<br/><label style=\"font-weight:600;padding-left:12px;\">Số điện thoại: </label> 0976158826<br/>\n	<label style=\"font-weight:600;padding-left:12px;\">Giá: </label> 20 tỷ/tháng<br/>\n	<label style=\"font-weight:600;padding-left:12px;\">Diện tích: </label> 122 m<sup>2</sup><br/>\n	<label style=\"font-weight:600;padding-left:12px;\">Loại đường: </label> Loại đường 10m5<br/>\n	<label style=\"font-weight:600;padding-left:12px;\">Hướng: </label> Hướng Đông<br/>\n	<label style=\"font-weight:600;padding-left:12px;\">Phòng ngủ: </label> 2 phòng tắm<br/>\n	<label style=\"font-weight:600;padding-left:12px;\">Phòng tắm: </label> 2 phòng ngủ<br/>\n	<label style=\"font-weight:600;padding-left:12px;\">Nội dung: </label> aaaaaaaaaaaaa<br/><label style=\"font-weight:600;padding-left:12px;\">IP truy cập: </label> 116.110.210.16<br/><label style=\"font-weight:600;padding-left:12px;\">Ngày gửi đăng ký: </label> 26/11/2018 18:31<br/></p><p style=\"margin: 10px 0\">Đây là hộp thư tự động. Sau thời gian trên nếu quý khách chưa nhân được phản hồi từ nhân viên của chúng tôi, rất có thể đã gặp sự cố nhỏ nào đó vì vậy Quý khách có thể liên hệ trực tiếp chúng tôi để nhận được những thông tin nhanh nhất.</p><p style=\"margin: 10px 0\">Chân thành cảm ơn!</p></td></tr></tbody></table><div style=\"min-height:35px\">&nbsp;</div><table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\"><tbody><tr><td bgcolor=\"#e1e1e1\" style=\"padding:15px 10px 25px\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"margin:0 auto;min-width:290px;\" width=\"620\"><tbody><tr><td><table width=\"80%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"left\"><tbody><tr><td valign=\"top\" style=\"font-size:12px;color:#5e5e5e;font-family:Arial,serif;line-height:15px;font-weight:bold;\">Bất Động Sản Đà Nẵng | NhaPhoDaNang.com.vn</td></tr></tbody></table><table width=\"20%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tbody><tr><td style=\"font-size:13px;color:#5e5e5e;font-family:Arial,serif;line-height:1;vertical-align:top;text-align:right;font-style:italic;\"><span>Follow us on</span><br><a href=\"https://www.facebook.com\" target=\"_blank\"><img src=\"https://ci5.googleusercontent.com/proxy/PMSfAkbhhMLEe-tDCLFilReG-hlq_DWsTblTQ2qp8Dsq9KFW1UyFcKTr_uwU3EqyR8AhiFIooeExoAw9Oe3G5c6hvIEoOnU=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/fb.png\" width=\"27\" height=\"27\" alt=\"Facebook logo\" title=\"Facebook\" border=\"0\" style=\"padding:3px;\"></a>&nbsp;<a href=\"https://twitter.com\" target=\"_blank\"><img src=\"https://ci3.googleusercontent.com/proxy/GNHxgrYKL99Apyic0XnGYk6IqVZAc-wFuhgCDxzBYMr80NGggmI1nRORIBVRIkPkJHbQHGGMrTFtbzTDoxk5dc0i_H0HOc0=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/tw.png\" width=\"27\" height=\"27\" alt=\"Twitter logo\" title=\"Twitter\" border=\"0\" style=\"padding:3px;\"></a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div>', 0, '116.110.210.16', 'fa-send-o', 1543231863, 1543231886);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_core_privilege`
--

CREATE TABLE `olala_core_privilege` (
  `privilege_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL,
  `privilege_slug` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_core_privilege`
--

INSERT INTO `olala_core_privilege` (`privilege_id`, `role_id`, `type`, `privilege_slug`) VALUES
(2250, 1, 'direction', 'direction_del'),
(2249, 1, 'direction', 'direction_edit'),
(2248, 1, 'direction', 'direction_add'),
(2255, 1, 'pages', 'plugin_page_edit'),
(1071, 1, 'backup', 'backup_config'),
(1545, 1, 'config', 'config_search'),
(4825, 1, 'tool', 'tool_ipdie'),
(4824, 1, 'tool', 'tool_keywords'),
(2656, 1, 'bds_business', 'bds_business_del;50'),
(2103, 2, 'product', 'product_menu_add;37'),
(2102, 2, 'product', 'category_edit;37'),
(2101, 2, 'article', 'article_del;13'),
(2100, 2, 'article', 'article_edit;13'),
(2099, 2, 'article', 'article_add;13'),
(2098, 2, 'article', 'article_list;13'),
(2097, 2, 'article', 'article_menu_del;13'),
(2096, 2, 'article', 'article_menu_edit;13'),
(2095, 2, 'article', 'article_menu_add;13'),
(2094, 2, 'article', 'category_edit;13'),
(2093, 2, 'article', 'article_del;9'),
(2092, 2, 'article', 'article_edit;9'),
(2091, 2, 'article', 'article_add;9'),
(2090, 2, 'article', 'article_list;9'),
(2089, 2, 'article', 'article_menu_del;9'),
(2088, 2, 'article', 'article_menu_edit;9'),
(2087, 2, 'article', 'article_menu_add;9'),
(2086, 2, 'article', 'category_edit;9'),
(273, 2, 'gallery', 'gallery_menu_add;6'),
(274, 2, 'gallery', 'gallery_menu_edit;6'),
(275, 2, 'gallery', 'gallery_menu_del;6'),
(276, 2, 'gallery', 'gallery_add;6'),
(277, 2, 'gallery', 'gallery_edit;6'),
(278, 2, 'gallery', 'gallery_del;6'),
(279, 2, 'pages', 'pages_add'),
(280, 2, 'pages', 'pages_edit'),
(281, 2, 'pages', 'pages_del'),
(287, 2, 'backup', 'backup_data'),
(288, 2, 'backup', 'backup_config'),
(289, 2, 'config', 'config_general'),
(290, 2, 'config', 'config_search'),
(291, 2, 'config', 'config_ipdie'),
(292, 2, 'config', 'config_upload'),
(293, 2, 'tool', 'tool_delete'),
(294, 2, 'tool', 'tool_site'),
(295, 2, 'tool', 'tool_keywords'),
(296, 2, 'tool', 'tool_update'),
(330, 2, 'core', 'core_mail'),
(2655, 1, 'bds_business', 'bds_business_edit;50'),
(2654, 1, 'bds_business', 'bds_business_add;50'),
(1070, 1, 'backup', 'backup_data'),
(1544, 1, 'config', 'config_socialnetwork'),
(4823, 1, 'tool', 'tool_site'),
(4822, 1, 'tool', 'tool_delete'),
(3333, 1, 'core', 'core_dashboard'),
(2653, 1, 'bds_business', 'bds_business_list;50'),
(3331, 1, 'core', 'core_role'),
(1543, 1, 'config', 'config_plugins'),
(3332, 1, 'core', 'core_user'),
(2254, 1, 'pages', 'plugin_page_add'),
(2252, 1, 'street', 'street_edit'),
(2251, 1, 'street', 'street_add'),
(2208, 1, 'location', 'location_del;40'),
(2207, 1, 'location', 'location_edit;40'),
(2206, 1, 'location', 'location_add;40'),
(2205, 1, 'location', 'location_list;40'),
(2204, 1, 'location', 'location_menu_del;40'),
(2203, 1, 'location', 'location_menu_edit;40'),
(2202, 1, 'location', 'location_menu_add;40'),
(2201, 1, 'location', 'category_edit;40'),
(4821, 1, 'tool', 'tool_ckfinder'),
(1542, 1, 'config', 'config_datetime'),
(1541, 1, 'config', 'config_smtp'),
(1540, 1, 'config', 'config_general'),
(1546, 1, 'config', 'config_upload'),
(2200, 1, 'location', 'location_del;39'),
(2198, 1, 'location', 'location_add;39'),
(2199, 1, 'location', 'location_edit;39'),
(2197, 1, 'location', 'location_list;39'),
(2195, 1, 'location', 'location_menu_edit;39'),
(2196, 1, 'location', 'location_menu_del;39'),
(2194, 1, 'location', 'location_menu_add;39'),
(4963, 1, 'article', 'article_edit;106'),
(3983, 1, 'tour', 'tour_del;70'),
(3982, 1, 'tour', 'tour_edit;70'),
(3981, 1, 'tour', 'tour_add;70'),
(3980, 1, 'tour', 'tour_list;70'),
(3979, 1, 'tour', 'tour_menu_del;70'),
(3978, 1, 'tour', 'tour_menu_edit;70'),
(3977, 1, 'tour', 'tour_menu_add;70'),
(3976, 1, 'tour', 'category_edit;70'),
(1712, 1, 'gift', 'gift_add;22'),
(1711, 1, 'gift', 'gift_list;22'),
(1710, 1, 'gift', 'gift_menu_del;22'),
(1709, 1, 'gift', 'gift_menu_edit;22'),
(1708, 1, 'gift', 'gift_menu_add;22'),
(1707, 1, 'gift', 'category_edit;22'),
(3838, 1, 'car', 'car_list;67'),
(3837, 1, 'car', 'car_menu_del;67'),
(3836, 1, 'car', 'car_menu_edit;67'),
(3835, 1, 'car', 'car_menu_add;67'),
(3834, 1, 'car', 'category_edit;67'),
(1713, 1, 'gift', 'gift_edit;22'),
(1714, 1, 'gift', 'gift_del;22'),
(2193, 1, 'location', 'category_edit;39'),
(3328, 1, 'info', 'sys_info_expansion'),
(3327, 1, 'info', 'sys_info_site'),
(4962, 1, 'article', 'article_add;106'),
(2085, 2, 'category', 'article_manager'),
(4903, 1, 'product', 'product_menu_edit;99'),
(2253, 1, 'street', 'street_del'),
(2256, 1, 'pages', 'plugin_page_del'),
(2290, 1, 'road', 'road_add'),
(2291, 1, 'road', 'road_edit'),
(2292, 1, 'road', 'road_del'),
(2780, 1, 'project', 'project_list;13'),
(2779, 1, 'project', 'project_menu_del;13'),
(2778, 1, 'project', 'project_menu_edit;13'),
(2777, 1, 'project', 'project_menu_add;13'),
(2776, 1, 'project', 'category_edit;13'),
(3841, 1, 'car', 'car_del;67'),
(3840, 1, 'car', 'car_edit;67'),
(3839, 1, 'car', 'car_add;67'),
(4027, 1, 'document', 'document_add;73'),
(2652, 1, 'bds_business', 'bds_business_menu_del;50'),
(2651, 1, 'bds_business', 'bds_business_menu_edit;50'),
(2650, 1, 'bds_business', 'bds_business_menu_add;50'),
(2649, 1, 'bds_business', 'category_edit;50'),
(2781, 1, 'project', 'project_add;13'),
(2782, 1, 'project', 'project_edit;13'),
(2783, 1, 'project', 'project_del;13'),
(2784, 1, 'project', 'category_edit;53'),
(2785, 1, 'project', 'project_menu_add;53'),
(2786, 1, 'project', 'project_menu_edit;53'),
(2787, 1, 'project', 'project_menu_del;53'),
(2788, 1, 'project', 'project_list;53'),
(2789, 1, 'project', 'project_add;53'),
(2790, 1, 'project', 'project_edit;53'),
(2791, 1, 'project', 'project_del;53'),
(2792, 9, 'category', 'product_manager'),
(2793, 9, 'product', 'product_list;37'),
(2794, 9, 'product', 'product_add;37'),
(2795, 9, 'product', 'product_edit;37'),
(2796, 9, 'product', 'product_del;37'),
(2797, 11, 'category', 'article_manager'),
(2798, 11, 'category', 'gallery_manager'),
(2799, 11, 'category', 'project_manager'),
(2800, 11, 'category', 'product_manager'),
(2801, 11, 'category', 'location_manager'),
(2802, 11, 'category', 'street_manager'),
(2803, 11, 'category', 'road_manager'),
(2804, 11, 'category', 'direction_manager'),
(2805, 11, 'category', 'others_manager'),
(2806, 11, 'category', 'plugin_page'),
(3031, 11, 'article', 'article_menu_add;9'),
(3030, 11, 'article', 'category_edit;9'),
(2809, 11, 'config', 'config_socialnetwork'),
(2815, 11, 'pages', 'plugin_page_del'),
(2814, 11, 'pages', 'plugin_page_edit'),
(2813, 11, 'pages', 'plugin_page_add'),
(2816, 1, 'prjname', 'prjname_add'),
(2817, 1, 'prjname', 'prjname_edit'),
(2818, 1, 'prjname', 'prjname_del'),
(2830, 12, 'category', 'article_manager'),
(2831, 12, 'category', 'gallery_manager'),
(2832, 12, 'category', 'project_manager'),
(2833, 12, 'category', 'product_manager'),
(2834, 12, 'category', 'location_manager'),
(2835, 12, 'category', 'road_manager'),
(2836, 12, 'category', 'street_manager'),
(2837, 12, 'category', 'direction_manager'),
(2838, 12, 'category', 'prjname_manager'),
(2839, 12, 'category', 'others_manager'),
(2840, 12, 'category', 'plugin_page'),
(2841, 12, 'pages', 'plugin_page_add'),
(2842, 12, 'pages', 'plugin_page_edit'),
(2843, 12, 'pages', 'plugin_page_del'),
(2908, 12, 'article', 'category_edit;9'),
(2909, 12, 'article', 'article_menu_add;9'),
(2910, 12, 'article', 'article_menu_edit;9'),
(2911, 12, 'article', 'article_menu_del;9'),
(2912, 12, 'article', 'article_list;9'),
(2913, 12, 'article', 'article_add;9'),
(2914, 12, 'article', 'article_edit;9'),
(2915, 12, 'article', 'article_del;9'),
(2916, 12, 'article', 'category_edit;51'),
(2917, 12, 'article', 'article_menu_add;51'),
(2918, 12, 'article', 'article_menu_edit;51'),
(2919, 12, 'article', 'article_menu_del;51'),
(2920, 12, 'article', 'article_list;51'),
(2921, 12, 'article', 'article_add;51'),
(2922, 12, 'article', 'article_edit;51'),
(2923, 12, 'article', 'article_del;51'),
(2924, 12, 'article', 'category_edit;7'),
(2925, 12, 'article', 'article_menu_add;7'),
(2926, 12, 'article', 'article_menu_edit;7'),
(2927, 12, 'article', 'article_menu_del;7'),
(2928, 12, 'article', 'article_list;7'),
(2929, 12, 'article', 'article_add;7'),
(2930, 12, 'article', 'article_edit;7'),
(2931, 12, 'article', 'article_del;7'),
(2932, 12, 'project', 'category_edit;13'),
(2933, 12, 'project', 'project_menu_add;13'),
(2934, 12, 'project', 'project_menu_edit;13'),
(2935, 12, 'project', 'project_menu_del;13'),
(2936, 12, 'project', 'project_list;13'),
(2937, 12, 'project', 'project_add;13'),
(2938, 12, 'project', 'project_edit;13'),
(2939, 12, 'project', 'project_del;13'),
(2940, 12, 'project', 'category_edit;53'),
(2941, 12, 'project', 'project_menu_add;53'),
(2942, 12, 'project', 'project_menu_edit;53'),
(2943, 12, 'project', 'project_menu_del;53'),
(2944, 12, 'project', 'project_list;53'),
(2945, 12, 'project', 'project_add;53'),
(2946, 12, 'project', 'project_edit;53'),
(2947, 12, 'project', 'project_del;53'),
(2948, 12, 'gallery', 'category_edit;4'),
(2949, 12, 'gallery', 'gallery_menu_add;4'),
(2950, 12, 'gallery', 'gallery_menu_edit;4'),
(2951, 12, 'gallery', 'gallery_menu_del;4'),
(2952, 12, 'gallery', 'gallery_list;4'),
(2953, 12, 'gallery', 'gallery_add;4'),
(2954, 12, 'gallery', 'gallery_edit;4'),
(2955, 12, 'gallery', 'gallery_del;4'),
(2956, 12, 'gallery', 'category_edit;52'),
(2957, 12, 'gallery', 'gallery_menu_add;52'),
(2958, 12, 'gallery', 'gallery_menu_edit;52'),
(2959, 12, 'gallery', 'gallery_menu_del;52'),
(2960, 12, 'gallery', 'gallery_list;52'),
(2961, 12, 'gallery', 'gallery_add;52'),
(2962, 12, 'gallery', 'gallery_edit;52'),
(2963, 12, 'gallery', 'gallery_del;52'),
(2964, 12, 'product', 'category_edit;37'),
(2965, 12, 'product', 'product_menu_add;37'),
(2966, 12, 'product', 'product_menu_edit;37'),
(2967, 12, 'product', 'product_menu_del;37'),
(2968, 12, 'product', 'product_list;37'),
(2969, 12, 'product', 'product_add;37'),
(2970, 12, 'product', 'product_edit;37'),
(2971, 12, 'product', 'product_del;37'),
(2985, 12, 'location', 'location_add;39'),
(2984, 12, 'location', 'location_list;39'),
(2983, 12, 'location', 'location_menu_del;39'),
(2982, 12, 'location', 'location_menu_edit;39'),
(2981, 12, 'location', 'location_menu_add;39'),
(2980, 12, 'location', 'category_edit;39'),
(2986, 12, 'location', 'location_edit;39'),
(2987, 12, 'location', 'location_del;39'),
(2988, 12, 'location', 'category_edit;40'),
(2989, 12, 'location', 'location_menu_add;40'),
(2990, 12, 'location', 'location_menu_edit;40'),
(2991, 12, 'location', 'location_menu_del;40'),
(2992, 12, 'location', 'location_list;40'),
(2993, 12, 'location', 'location_add;40'),
(2994, 12, 'location', 'location_edit;40'),
(2995, 12, 'location', 'location_del;40'),
(2996, 12, 'road', 'road_add'),
(2997, 12, 'road', 'road_edit'),
(2998, 12, 'road', 'road_del'),
(2999, 12, 'street', 'street_add'),
(3000, 12, 'street', 'street_edit'),
(3001, 12, 'street', 'street_del'),
(3002, 12, 'direction', 'direction_add'),
(3003, 12, 'direction', 'direction_edit'),
(3004, 12, 'direction', 'direction_del'),
(3005, 12, 'prjname', 'prjname_add'),
(3006, 12, 'prjname', 'prjname_edit'),
(3007, 12, 'prjname', 'prjname_del'),
(3008, 12, 'backup', 'backup_data'),
(3009, 12, 'backup', 'backup_config'),
(3010, 12, 'config', 'config_general'),
(3011, 12, 'config', 'config_smtp'),
(3012, 12, 'config', 'config_datetime'),
(3013, 12, 'config', 'config_plugins'),
(3014, 12, 'config', 'config_socialnetwork'),
(3015, 12, 'config', 'config_search'),
(3016, 12, 'config', 'config_upload'),
(3017, 12, 'tool', 'tool_delete'),
(3018, 12, 'tool', 'tool_site'),
(3019, 12, 'tool', 'tool_keywords'),
(3020, 12, 'tool', 'tool_ipdie'),
(3021, 12, 'tool', 'tool_update'),
(3022, 12, 'core', 'core_role'),
(3023, 12, 'core', 'core_user'),
(3024, 12, 'core', 'core_dashboard'),
(3025, 12, 'core', 'core_mail'),
(3026, 12, 'info', 'Info_diary'),
(3027, 12, 'info', 'Info_php'),
(3028, 12, 'info', 'Info_site'),
(3029, 12, 'info', 'Info_expansion'),
(3032, 11, 'article', 'article_menu_edit;9'),
(3033, 11, 'article', 'article_menu_del;9'),
(3034, 11, 'article', 'article_list;9'),
(3035, 11, 'article', 'article_add;9'),
(3036, 11, 'article', 'article_edit;9'),
(3037, 11, 'article', 'article_del;9'),
(3038, 11, 'article', 'category_edit;51'),
(3039, 11, 'article', 'article_menu_add;51'),
(3040, 11, 'article', 'article_menu_edit;51'),
(3041, 11, 'article', 'article_menu_del;51'),
(3042, 11, 'article', 'article_list;51'),
(3043, 11, 'article', 'article_add;51'),
(3044, 11, 'article', 'article_edit;51'),
(3045, 11, 'article', 'article_del;51'),
(3046, 11, 'article', 'category_edit;7'),
(3047, 11, 'article', 'article_menu_add;7'),
(3048, 11, 'article', 'article_menu_edit;7'),
(3049, 11, 'article', 'article_menu_del;7'),
(3050, 11, 'article', 'article_list;7'),
(3051, 11, 'article', 'article_add;7'),
(3052, 11, 'article', 'article_edit;7'),
(3053, 11, 'article', 'article_del;7'),
(3054, 11, 'gallery', 'category_edit;4'),
(3055, 11, 'gallery', 'gallery_menu_add;4'),
(3056, 11, 'gallery', 'gallery_menu_edit;4'),
(3057, 11, 'gallery', 'gallery_menu_del;4'),
(3058, 11, 'gallery', 'gallery_list;4'),
(3059, 11, 'gallery', 'gallery_add;4'),
(3060, 11, 'gallery', 'gallery_edit;4'),
(3061, 11, 'gallery', 'gallery_del;4'),
(3062, 11, 'gallery', 'category_edit;52'),
(3063, 11, 'gallery', 'gallery_menu_add;52'),
(3064, 11, 'gallery', 'gallery_menu_edit;52'),
(3065, 11, 'gallery', 'gallery_menu_del;52'),
(3066, 11, 'gallery', 'gallery_list;52'),
(3067, 11, 'gallery', 'gallery_add;52'),
(3068, 11, 'gallery', 'gallery_edit;52'),
(3069, 11, 'gallery', 'gallery_del;52'),
(3070, 11, 'project', 'category_edit;13'),
(3071, 11, 'project', 'project_menu_add;13'),
(3072, 11, 'project', 'project_menu_edit;13'),
(3073, 11, 'project', 'project_menu_del;13'),
(3074, 11, 'project', 'project_list;13'),
(3075, 11, 'project', 'project_add;13'),
(3076, 11, 'project', 'project_edit;13'),
(3077, 11, 'project', 'project_del;13'),
(3078, 11, 'project', 'category_edit;53'),
(3079, 11, 'project', 'project_menu_add;53'),
(3080, 11, 'project', 'project_menu_edit;53'),
(3081, 11, 'project', 'project_menu_del;53'),
(3082, 11, 'project', 'project_list;53'),
(3083, 11, 'project', 'project_add;53'),
(3084, 11, 'project', 'project_edit;53'),
(3085, 11, 'project', 'project_del;53'),
(3137, 11, 'product', 'owner_real;37'),
(3136, 11, 'product', 'product_del;37'),
(3135, 11, 'product', 'product_edit;37'),
(3134, 11, 'product', 'product_add;37'),
(4902, 1, 'product', 'product_menu_add;99'),
(3133, 11, 'product', 'product_list;37'),
(3138, 11, 'product', 'owner_cus;37'),
(3326, 1, 'info', 'sys_info_php'),
(3325, 1, 'info', 'sys_info_diary'),
(3334, 1, 'core', 'core_mail'),
(5025, 1, 'gallery', 'gallery_list;102'),
(5024, 1, 'gallery', 'gallery_menu_del;102'),
(5022, 1, 'gallery', 'gallery_menu_add;102'),
(5023, 1, 'gallery', 'gallery_menu_edit;102'),
(5021, 1, 'gallery', 'category_edit;102'),
(5020, 1, 'gallery', 'gallery_del;91'),
(5019, 1, 'gallery', 'gallery_edit;91'),
(5018, 1, 'gallery', 'gallery_add;91'),
(5017, 1, 'gallery', 'gallery_list;91'),
(5016, 1, 'gallery', 'gallery_menu_del;91'),
(5015, 1, 'gallery', 'gallery_menu_edit;91'),
(5012, 1, 'others', 'others_del;2'),
(4026, 1, 'document', 'document_list;73'),
(4025, 1, 'document', 'document_menu_del;73'),
(4024, 1, 'document', 'document_menu_edit;73'),
(4023, 1, 'document', 'document_menu_add;73'),
(4022, 1, 'document', 'category_edit;73'),
(4028, 1, 'document', 'document_edit;73'),
(4029, 1, 'document', 'document_del;73'),
(5051, 1, 'category', 'newsletter'),
(4901, 1, 'product', 'category_edit;99'),
(4900, 1, 'product', 'product_del;94'),
(4899, 1, 'product', 'product_edit;94'),
(4898, 1, 'product', 'product_add;94'),
(4897, 1, 'product', 'product_list;94'),
(4896, 1, 'product', 'product_menu_del;94'),
(4961, 1, 'article', 'article_list;106'),
(4960, 1, 'article', 'article_menu_del;106'),
(4959, 1, 'article', 'article_menu_edit;106'),
(4958, 1, 'article', 'article_menu_add;106'),
(4957, 1, 'article', 'category_edit;106'),
(4956, 1, 'article', 'article_del;105'),
(5011, 1, 'others', 'others_edit;2'),
(5010, 1, 'others', 'others_add;2'),
(5009, 1, 'others', 'others_list;2'),
(5008, 1, 'others', 'others_menu_del;2'),
(5007, 1, 'others', 'others_menu_edit;2'),
(5006, 1, 'others', 'others_menu_add;2'),
(5005, 1, 'others', 'category_edit;2'),
(5004, 1, 'others', 'others_del;1'),
(5003, 1, 'others', 'others_edit;1'),
(5002, 1, 'others', 'others_add;1'),
(5001, 1, 'others', 'others_list;1'),
(5000, 1, 'others', 'others_menu_del;1'),
(4999, 1, 'others', 'others_menu_edit;1'),
(4998, 1, 'others', 'others_menu_add;1'),
(4997, 1, 'others', 'category_edit;1'),
(5050, 1, 'category', 'contact_list'),
(5049, 1, 'category', 'order_list'),
(4955, 1, 'article', 'article_edit;105'),
(4954, 1, 'article', 'article_add;105'),
(4953, 1, 'article', 'article_list;105'),
(4952, 1, 'article', 'article_menu_del;105'),
(4951, 1, 'article', 'article_menu_edit;105'),
(4950, 1, 'article', 'article_menu_add;105'),
(4949, 1, 'article', 'category_edit;105'),
(4948, 1, 'article', 'article_del;104'),
(4947, 1, 'article', 'article_edit;104'),
(4946, 1, 'article', 'article_add;104'),
(4945, 1, 'article', 'article_list;104'),
(4944, 1, 'article', 'article_menu_del;104'),
(4943, 1, 'article', 'article_menu_edit;104'),
(4942, 1, 'article', 'article_menu_add;104'),
(4941, 1, 'article', 'category_edit;104'),
(4940, 1, 'article', 'article_del;103'),
(4939, 1, 'article', 'article_edit;103'),
(4938, 1, 'article', 'article_add;103'),
(4937, 1, 'article', 'article_list;103'),
(4936, 1, 'article', 'article_menu_del;103'),
(4935, 1, 'article', 'article_menu_edit;103'),
(4934, 1, 'article', 'article_menu_add;103'),
(4933, 1, 'article', 'category_edit;103'),
(4826, 1, 'tool', 'tool_update'),
(5048, 1, 'category', 'others_manager'),
(4895, 1, 'product', 'product_menu_edit;94'),
(4894, 1, 'product', 'product_menu_add;94'),
(4893, 1, 'product', 'category_edit;94'),
(4892, 1, 'product', 'product_del;95'),
(4891, 1, 'product', 'product_edit;95'),
(4890, 1, 'product', 'product_add;95'),
(4889, 1, 'product', 'product_list;95'),
(4888, 1, 'product', 'product_menu_del;95'),
(4887, 1, 'product', 'product_menu_edit;95'),
(4886, 1, 'product', 'product_menu_add;95'),
(4885, 1, 'product', 'category_edit;95'),
(5047, 1, 'category', 'product_manager'),
(5046, 1, 'category', 'gallery_manager'),
(5026, 1, 'gallery', 'gallery_add;102'),
(5014, 1, 'gallery', 'gallery_menu_add;91'),
(5013, 1, 'gallery', 'category_edit;91'),
(4904, 1, 'product', 'product_menu_del;99'),
(4905, 1, 'product', 'product_list;99'),
(4906, 1, 'product', 'product_add;99'),
(4907, 1, 'product', 'product_edit;99'),
(4908, 1, 'product', 'product_del;99'),
(4909, 1, 'product', 'category_edit;101'),
(4910, 1, 'product', 'product_menu_add;101'),
(4911, 1, 'product', 'product_menu_edit;101'),
(4912, 1, 'product', 'product_menu_del;101'),
(4913, 1, 'product', 'product_list;101'),
(4914, 1, 'product', 'product_add;101'),
(4915, 1, 'product', 'product_edit;101'),
(4916, 1, 'product', 'product_del;101'),
(4917, 1, 'product', 'category_edit;88'),
(4918, 1, 'product', 'product_menu_add;88'),
(4919, 1, 'product', 'product_menu_edit;88'),
(4920, 1, 'product', 'product_menu_del;88'),
(4921, 1, 'product', 'product_list;88'),
(4922, 1, 'product', 'product_add;88'),
(4923, 1, 'product', 'product_edit;88'),
(4924, 1, 'product', 'product_del;88'),
(4925, 1, 'product', 'category_edit;89'),
(4926, 1, 'product', 'product_menu_add;89'),
(4927, 1, 'product', 'product_menu_edit;89'),
(4928, 1, 'product', 'product_menu_del;89'),
(4929, 1, 'product', 'product_list;89'),
(4930, 1, 'product', 'product_add;89'),
(4931, 1, 'product', 'product_edit;89'),
(4932, 1, 'product', 'product_del;89'),
(4964, 1, 'article', 'article_del;106'),
(4965, 1, 'article', 'category_edit;107'),
(4966, 1, 'article', 'article_menu_add;107'),
(4967, 1, 'article', 'article_menu_edit;107'),
(4968, 1, 'article', 'article_menu_del;107'),
(4969, 1, 'article', 'article_list;107'),
(4970, 1, 'article', 'article_add;107'),
(4971, 1, 'article', 'article_edit;107'),
(4972, 1, 'article', 'article_del;107'),
(4973, 1, 'article', 'category_edit;108'),
(4974, 1, 'article', 'article_menu_add;108'),
(4975, 1, 'article', 'article_menu_edit;108'),
(4976, 1, 'article', 'article_menu_del;108'),
(4977, 1, 'article', 'article_list;108'),
(4978, 1, 'article', 'article_add;108'),
(4979, 1, 'article', 'article_edit;108'),
(4980, 1, 'article', 'article_del;108'),
(4981, 1, 'article', 'category_edit;109'),
(4982, 1, 'article', 'article_menu_add;109'),
(4983, 1, 'article', 'article_menu_edit;109'),
(4984, 1, 'article', 'article_menu_del;109'),
(4985, 1, 'article', 'article_list;109'),
(4986, 1, 'article', 'article_add;109'),
(4987, 1, 'article', 'article_edit;109'),
(4988, 1, 'article', 'article_del;109'),
(4989, 1, 'article', 'category_edit;96'),
(4990, 1, 'article', 'article_menu_add;96'),
(4991, 1, 'article', 'article_menu_edit;96'),
(4992, 1, 'article', 'article_menu_del;96'),
(4993, 1, 'article', 'article_list;96'),
(4994, 1, 'article', 'article_add;96'),
(4995, 1, 'article', 'article_edit;96'),
(4996, 1, 'article', 'article_del;96'),
(5027, 1, 'gallery', 'gallery_edit;102'),
(5028, 1, 'gallery', 'gallery_del;102'),
(5029, 1, 'gallery', 'category_edit;110'),
(5030, 1, 'gallery', 'gallery_menu_add;110'),
(5031, 1, 'gallery', 'gallery_menu_edit;110'),
(5032, 1, 'gallery', 'gallery_menu_del;110'),
(5033, 1, 'gallery', 'gallery_list;110'),
(5034, 1, 'gallery', 'gallery_add;110'),
(5035, 1, 'gallery', 'gallery_edit;110'),
(5036, 1, 'gallery', 'gallery_del;110'),
(5045, 1, 'category', 'article_manager'),
(5052, 1, 'category', 'tragop_list'),
(5053, 1, 'category', 'plugin_page');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_core_role`
--

CREATE TABLE `olala_core_role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_core_role`
--

INSERT INTO `olala_core_role` (`role_id`, `name`, `comment`, `is_active`, `modified_time`, `user_id`) VALUES
(1, 'Administrator', 'Nhóm quản trị tối cao', 1, 1441786254, 1),
(2, 'Tester', 'Nhóm kiểm thử', 1, 1441851198, 1),
(9, 'Broker', 'Nhân viên môi giới. Chỉ nhập và quản lý thông tin BĐS.', 1, 1439055844, 1),
(13, 'quan ly cong ty', 'chuyên quan ly thong tin cong ty', 1, 1542120090, 25),
(14, 'Manager', '', 1, 1544011658, 25),
(15, 'Nhân viên môi giới', '', 1, 1546347694, 25);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_core_user`
--

CREATE TABLE `olala_core_user` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_name` varchar(16) NOT NULL,
  `password` varchar(50) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `gender` int(1) NOT NULL DEFAULT '0',
  `birthday` int(11) NOT NULL DEFAULT '0',
  `apply` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `is_show` int(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `vote` bigint(20) NOT NULL DEFAULT '1',
  `click_vote` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id_edit` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_core_user`
--

INSERT INTO `olala_core_user` (`user_id`, `role_id`, `user_name`, `password`, `full_name`, `gender`, `birthday`, `apply`, `email`, `phone`, `address`, `comment`, `is_show`, `sort`, `img`, `is_active`, `vote`, `click_vote`, `created_time`, `modified_time`, `user_id_edit`) VALUES
(1, 1, 'admin', 'f6fdffe48c908deb0f4c3bd36c032e72', 'Administrator', 1, 694198800, 'Quản trị Website', 'huy.to@olalagroup.vn', '0974779085', 'http://fb.me/olalaweb.vn', '', 1, 1, 'u_1528878763_97f2752a66d5fbedfdcf44e68847d13e.jpg', 1, 1, 1, 1408159832, 1528878763, 1),
(59, 9, 'ducnhan123', '4e9a80f6f8870a05fa517cace35cd925', 'Nguyễn Hiền', 1, 631126800, '', 'nhanduc1995@gmail.com', '01679960030', '', '', 0, 4, 'no', 1, 3, 1, 1547313643, 0, 1),
(55, 2, 'dev123', 'da34c577f5ba1b35038540bd427da45a', 'Test', 1, 631126800, '', 'abc@gmail.com', '97644534534', '4', '', 0, 2, 'no', 1, 3, 1, 1546615848, 0, 1),
(58, 2, 'ducnhan', 'd2228c49bcd7251467f8541b8be983ff', 'Nguyễn Đức Nhân', 1, 633632400, '', 'nhanduc@gmail.com', '01679960030', '', '', 0, 3, 'no', 1, 3, 1, 1547313273, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_direction`
--

CREATE TABLE `olala_direction` (
  `direction_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_document`
--

CREATE TABLE `olala_document` (
  `document_id` int(11) NOT NULL,
  `document_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `release_date` int(11) NOT NULL DEFAULT '0',
  `effective_date` int(11) NOT NULL DEFAULT '0',
  `file` varchar(255) NOT NULL DEFAULT 'no',
  `type` varchar(5) NOT NULL DEFAULT 'unk',
  `size` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `content` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_document_menu`
--

CREATE TABLE `olala_document_menu` (
  `document_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL DEFAULT 'not-found',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `comment` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_focus`
--

CREATE TABLE `olala_focus` (
  `id_focus` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_time` int(11) NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `olala_focus`
--

INSERT INTO `olala_focus` (`id_focus`, `name`, `comment`, `icon`, `created_time`, `id_product`) VALUES
(15, 'nhan', '123', 'fa-home', 1543682058, 696),
(27, 'hoa1', '1211111', '', 1545492078, 697),
(14, 'nhan1', '234', 'fa-user', 1543682058, 696),
(26, 'nhan4', '1234', 'fa-file-text-o', 1545492078, 697),
(25, 'nhan2', '123', 'fa-home', 1545492078, 697),
(24, 'nhan1', '234', 'fa-user', 1545492078, 697);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_gallery`
--

CREATE TABLE `olala_gallery` (
  `gallery_id` int(11) NOT NULL,
  `gallery_menu_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `upload_id` bigint(20) NOT NULL DEFAULT '0',
  `comment` text,
  `content` text,
  `link` varchar(255) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_gallery`
--

INSERT INTO `olala_gallery` (`gallery_id`, `gallery_menu_id`, `name`, `slug`, `title`, `description`, `keywords`, `img`, `upload_id`, `comment`, `content`, `link`, `is_active`, `hot`, `views`, `created_time`, `modified_time`, `user_id`) VALUES
(628, 84, 'IMG 01', 'img-1', '', '', '', '247land-1518025932.jpg', 1793, '', '', '', 1, 1, 1, 1495295400, 1518025968, 1),
(636, 84, 'IMG 02', 'img-02', '', '', '', 'img-02-1518025985.jpg', 2230, '', '', '', 1, 0, 1, 1486489920, 1518025984, 1),
(637, 84, 'IMG 03', 'img-03', '', '', '', 'img-03-1518026138.jpg', 2231, '', '', '', 1, 0, 1, 1486488000, 1518026138, 1),
(638, 84, 'IMG 04', 'img-04', '', '', '', 'img-04-1518026168.jpg', 2232, '', '', '', 1, 0, 1, 1486487400, 1518026168, 1),
(639, 84, 'IMG 05', 'img-05', '', '', '', 'img-05-1518026209.jpg', 2233, '', '', '', 1, 0, 1, 1486486800, 1518026209, 1),
(640, 84, 'IMG 06', 'img-06', '', '', '', 'img-06-1518026243.jpg', 2234, '', '', '', 1, 0, 1, 1483808400, 1518026243, 1),
(641, 85, 's6', 's6', '', '', '', 'hinh-anh-1-1540820627.jpg', 2814, '', '', '', 1, 0, 1, 1540820460, 1541700101, 25),
(642, 85, 's4', 's4', '', '', '', 'hinh-anh-2-1540820682.jpg', 2815, '', '', '', 1, 0, 1, 1540820640, 1541700043, 25),
(643, 85, 's5', 's5', '', '', '', 'hinh-3-1540820698.jpg', 2816, '', '', '', 1, 0, 1, 1540820640, 1541700052, 25),
(644, 85, 's1', 's1', '', '', '', 'hinh-anh-4-1540820713.jpg', 2817, '', '', '', 1, 0, 1, 1540820700, 1541699882, 25),
(645, 85, 's2', 's2', '', '', '', 'hinh-anh-5-1540820735.jpg', 2818, '', '', '', 1, 0, 1, 1540820700, 1541700001, 25),
(646, 85, 's3', 's3', '', '', '', 'hinh-anh-6-1540820765.jpg', 2819, '', '', '', 1, 0, 1, 1540820700, 1541700026, 25),
(655, 87, 'a1', 'a1', '', '', '', 'a1-1543155039.jpg', 2835, '', '', '', 1, 0, 1, 1541614680, 1543155039, 25),
(654, 87, 'a2', 'a2', '', '', '', 'a2-1543166801.jpg', 2834, '', '', '', 1, 0, 1, 1541614620, 1543166801, 25),
(653, 87, 'a3', 'a3', '', '', '', 'a3-1543166842.jpg', 2833, '', '', '', 1, 0, 1, 1541614380, 1543166842, 25);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_gallery_menu`
--

CREATE TABLE `olala_gallery_menu` (
  `gallery_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` text,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `comment` text,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_gallery_menu`
--

INSERT INTO `olala_gallery_menu` (`gallery_menu_id`, `category_id`, `name`, `slug`, `title`, `description`, `keywords`, `parent`, `sort`, `comment`, `is_active`, `hot`, `img`, `created_time`, `modified_time`, `user_id`) VALUES
(84, 91, 'Slider home', 'slider-home', '', '', '', 0, 1, '', 1, 0, 'no', 1495095137, 1495095137, 1),
(85, 102, 'Hình ảnh phòng ngủ 1', 'hinh-anh-phong-ngu-1', '', '', '', 0, 1, '', 1, 0, 'no', 1540820299, 1540820660, 25),
(87, 110, 'Ảnh Mục 1', 'anh-muc-1', '', '', '', 0, 1, '', 1, 0, 'no', 1541614389, 1541699717, 25),
(88, 110, 'test anh 3', 'test-anh-3', '', '', '', 0, 2, '', 1, 0, 'test-anh-3-1542115266.png', 1542115266, 1542115266, 25);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_gift`
--

CREATE TABLE `olala_gift` (
  `gift_id` int(11) NOT NULL,
  `gift_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `img_note` varchar(255) NOT NULL,
  `price` bigint(15) NOT NULL DEFAULT '0',
  `made` varchar(255) NOT NULL,
  `material` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `content` longtext NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_gift_menu`
--

CREATE TABLE `olala_gift_menu` (
  `gift_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_link`
--

CREATE TABLE `olala_link` (
  `link_id` bigint(20) NOT NULL,
  `link` varchar(255) NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `menu` int(11) NOT NULL DEFAULT '0',
  `post` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_link`
--

INSERT INTO `olala_link` (`link_id`, `link`, `category`, `menu`, `post`, `modified_time`) VALUES
(1, 'gioi-thieu', 94, 0, 0, 1513527252),
(2, 'slider', 91, 0, 0, 0),
(5, 'du-an', 89, 0, 0, 1516138386),
(54, 'city', 95, 0, 0, 1494961394),
(59, 'da-nang', 95, 3, 0, 1494961453),
(60, 'quang-nam', 95, 4, 0, 1494961457),
(61, 'quang-ngai', 95, 5, 0, 1494961461),
(192, 'hai-chau', 95, 3, 131, 1495043231),
(193, 'thanh-khe', 95, 3, 132, 1495043241),
(194, 'lien-chieu', 95, 3, 133, 1495043251),
(195, 'cam-le', 95, 3, 134, 1495043259),
(196, 'son-tra', 95, 3, 135, 1495043267),
(197, 'ngu-hanh-son', 95, 3, 136, 1495043278),
(198, 'hoa-vang', 95, 3, 137, 1495043293),
(199, 'hoang-sa', 95, 3, 138, 1495043633),
(200, 'tam-ky', 95, 4, 139, 1495043672),
(201, 'hoi-an', 95, 4, 140, 1495043679),
(202, 'tay-giang', 95, 4, 141, 1495043687),
(203, 'phu-ninh', 95, 4, 142, 1495043731),
(204, 'dai-loc', 95, 4, 143, 1495043737),
(205, 'nam-giang', 95, 4, 144, 1495043743),
(206, 'dong-giang', 95, 4, 145, 1495043835),
(207, 'nong-son', 95, 4, 146, 1495043849),
(208, 'hiep-duc', 95, 4, 147, 1495043854),
(209, 'que-son', 95, 4, 148, 1495043860),
(210, 'tien-phuoc', 95, 4, 149, 1495043869),
(211, 'phuoc-son', 95, 4, 150, 1495043876),
(212, 'nui-thanh', 95, 4, 151, 1495043917),
(213, 'nam-tra-my', 95, 4, 152, 1495043926),
(214, 'dien-ban', 95, 4, 153, 1495043934),
(215, 'duy-xuyen', 95, 4, 154, 1495043942),
(216, 'thang-binh', 95, 4, 155, 1495043951),
(217, 'bac-tra-my', 95, 4, 156, 1495043958),
(218, 'slider-home', 91, 84, 0, 1495095137),
(237, 'blog', 96, 0, 0, 1519837082),
(258, 'img-1', 91, 84, 628, 1518025968),
(267, 'olala', 0, 0, 0, 0),
(269, 'lien-he', 0, 0, 0, 0),
(318, 've-chung-toi', 94, 428, 0, 1512313435),
(350, 'tags', 0, 0, 0, 0),
(351, 'page', 0, 0, 0, 0),
(359, 'nha-dat-ban', 99, 0, 0, 1518025049),
(360, 'dat-tho-cu', 99, 255, 0, 1517849853),
(361, 'dat-nong-nghiep', 99, 256, 0, 1516136188),
(362, 'dat-cong-nghiep', 99, 257, 0, 1516136196),
(363, 'dat-loai-khac', 99, 258, 0, 1516136204),
(364, 'mua', 95, 0, 0, 1517631447),
(367, 'thue', 99, 0, 0, 1518025055),
(368, 'ban', 94, 0, 0, 1516136339),
(369, 'nha-cua-toi', 89, 270, 0, 1516136348),
(370, 'mat-bang-cho-thue', 101, 265, 0, 1516136359),
(371, 'kho-xuong-cho-thue', 101, 266, 0, 1516136367),
(373, 'du-an-dat-nen', 89, 452, 0, 1516138002),
(374, 'khu-do-thi', 89, 453, 0, 1516138068),
(375, 'khu-dan-cu', 89, 454, 0, 1516138766),
(376, 'biet-thu-nghi-duong', 89, 455, 0, 1516309992),
(377, 'khu-tai-dinh-cu', 89, 456, 0, 1516138095),
(378, 'can-ho-chung-cu', 89, 457, 0, 1516138116),
(379, 'ban-tin-bat-dong-san', 96, 458, 0, 1540299401),
(380, 'thong-tin-nha-dat', 96, 459, 0, 1516138161),
(381, 'tin-hoat-dong', 96, 460, 0, 1516138172),
(382, 'tin-tuyen-dung', 96, 461, 0, 1516138182),
(383, 'tin-du-an', 96, 462, 0, 1516138249),
(388, 'trang-tu-van-thong-tin-ve-cac-du-an-bat-dong-san-nha-pho-da-nang', 94, 428, 916, 1519704337),
(389, '90-can-ho-phong-cach-chuan-nhat-da-co-chu', 96, 458, 917, 1540081906),
(390, 'bat-dong-san-nghi-duong-da-lat-phat-trien-cung-du-lich', 96, 458, 918, 1540081892),
(391, 'bat-dong-san-sai-gon-thuong-tet-tien-ty', 96, 458, 919, 1540081876),
(395, 'tim-realtors-8nnjopjtvy', 88, 0, 0, 1546323562),
(396, 'ban-3-lo-dat-mat-bien-gan-cong-vien-dai-duong-duong-hoang-sa-phuong-tho-quang-son-tra-da-nang', 99, 255, 664, 1519876925),
(397, 'ban-lo-dat-duong-nguyen-tat-thanh-cach-bien-800m-135m2-7-5-x18-2', 99, 255, 665, 1517814728),
(398, 'can-ban-cap-dat-duong-le-quang-dao-rat-dep-gan-bien-my-khe-duong-7-5m-gia-17-7-ty', 99, 255, 666, 1517848912),
(399, 'long-giang-land-tang-lai-8-lan-sau-3-thang', 96, 458, 923, 1540081863),
(400, 'hai-khach-trung-xe-mercedes-tai-le-tri-an-hado-centrosa-garden', 96, 458, 924, 1540081971),
(402, 'the-panorama-da-lat-thu-hut-khach-hang-ngay-mo-ban', 96, 458, 926, 1540081837),
(411, 'can-ban-dat-tai-mat-tien-duong-an-thuong-30-dt-162m2-huong-nam-hop-xay-khach-san-homestay', 99, 255, 667, 1517848920),
(412, 'dat-nen-du-an', 99, 254, 0, 1518197752),
(413, 'dat-nam-viet-a-dat-nghiem-xuan-yem-gia-huu-nghi-cuoi-nam', 99, 254, 669, 1517850586),
(420, 'bat-dong-san', 0, 0, 0, 0),
(421, 'img-02', 91, 84, 636, 1518025984),
(422, 'img-03', 91, 84, 637, 1518026138),
(423, 'img-04', 91, 84, 638, 1518026168),
(424, 'img-05', 91, 84, 639, 1518026209),
(425, 'img-06', 91, 84, 640, 1518026243),
(426, 'khu-do-thi-fpt-city-da-nang-phuong-hoa-hai-quan-ngu-hanh-son-da-nang', 99, 254, 668, 1518197758),
(427, 'nha-pho-nha-mat-tien', 89, 466, 0, 1519808388),
(428, 'the-sunrise-bay', 89, 457, 935, 1519876572),
(429, 'phu-gia-compound', 89, 466, 936, 1519876830),
(430, 'monarchy', 89, 457, 937, 1519839676),
(431, 'hiyori-garden-tower', 89, 457, 938, 1519839685),
(432, 'the-ocean-estates', 89, 455, 939, 1519839736),
(433, 'mua-nha-tang-vang-tai-prosper-plaza', 96, 458, 940, 1540475755),
(434, 'bat-dong-san-da-nang-dong-tien-do-vao-dau-trong-nam-2018', 96, 458, 941, 1519836977),
(435, 'song-manh-do-ve-bat-dong-san-tay-bac-da-nang', 96, 458, 942, 1519837530),
(436, 'bat-dong-san-da-nang-khu-vuc-nao-dang-hut-nha-dau-tu', 96, 458, 943, 1519837822),
(437, 'tay-bac-cuc-phat-trien-moi-cua-da-nang', 96, 458, 944, 1519837908),
(438, 'golden-hills', 89, 455, 945, 1519839229),
(439, 'home', 0, 0, 0, 0),
(440, 'tin-tuc', 96, 0, 0, 0),
(441, 'tim-realtors', 88, 0, 0, 0),
(442, 'quang-cao', 102, 0, 0, 1540820286),
(443, 'tim-realtors', 88, 0, 0, 0),
(444, 'can-ban-dat-tai-mat-tien-duong-an-thuo', 101, 262, 676, 1539266746),
(445, 'can-ban-cap-dat-duong-le-quang-dao', 101, 262, 677, 1539267551),
(446, 'the-chap', 101, 0, 0, 0),
(447, 'mua-nha-dat', 95, 267, 0, 1539267822),
(448, 'ban-nha-dat', 94, 268, 0, 1539268480),
(449, 'timrealors', 88, 269, 0, 1546323803),
(450, 'nha-cua-toi-b0g4gvp3ie', 89, 270, 0, 1539362725),
(451, 'can-ban-cap-dat-duong-le-quang-dao-lvnkuhvsfu', 95, 267, 678, 1539360632),
(452, 'can-ban-cap-dat-duong-le-quang-dao-u6shwna3aq', 95, 267, 679, 1539360684),
(453, 'can-ban-cap-dat-duong-le-quang-dao-8r4419xbcz', 95, 267, 680, 1543680523),
(454, 'dat-nghiem-xuan-yem-gia-huu-nghi', 94, 268, 681, 1539360835),
(455, 'dat-nam-viet-a-dat-nghiem-xuan', 94, 268, 682, 1541695147),
(456, 'can-ban-cap-dat-duong-le-quang-dao-da-nang', 94, 268, 683, 1541695006),
(457, 'ban', 94, 268, 0, 0),
(458, 'ban-chung-cu', 94, 271, 0, 1539362379),
(459, 'ban-biet-thu', 94, 272, 0, 1539362395),
(460, 'mua-biet-thu', 95, 273, 0, 1539362420),
(461, 'mua-chung-cu', 95, 274, 0, 1539362433),
(462, 'can-ban-cap-dat-duong-le-quang-dao-4sbx8pw7dx', 94, 271, 684, 1539362493),
(463, 'can-ban-cap-dat-duong-le-quang-dao-nxr4omb3iz', 95, 273, 685, 1539362552),
(464, 'ban-ngoi-nha-hien-tai', 89, 270, 686, 1539362684),
(465, 'ngoi-nha-cua-toi', 89, 275, 0, 1539363244),
(466, 'ban-ngoi-nha-hien-tai-gia-uu-dai', 88, 269, 687, 1540834048),
(472, 'duc-nhan-en0z8663e0', 95, 274, 693, 1540055804),
(473, 'duc-nhan-i0596w242z', 95, 274, 694, 1540055978),
(474, 'duc-nhan-h7th9plmrv', 95, 274, 695, 1540057633),
(475, 'mua-6jaqtgj8j8', 96, 467, 0, 1540080679),
(476, 'xu-huong', 96, 468, 0, 1540080692),
(477, 'nguoi-noi-tieng-bat-dong-san', 96, 468, 946, 1540080893),
(478, 've-chung-toi-qdzko0dxe6', 103, 0, 0, 1540408365),
(479, 'tai-nguye-pho-bien', 104, 0, 0, 0),
(480, 'doi-voi-realtors', 105, 0, 0, 0),
(481, 'thi-truong-bat-dong-san-noi-tieng', 106, 0, 0, 0),
(482, 'can-ho-noi-tieng', 107, 0, 0, 0),
(483, 'tai-nguyen-pho-bien', 108, 0, 0, 0),
(484, 'ho-so-tai-san', 109, 0, 0, 0),
(485, 've-bat-dong-san', 103, 469, 0, 1540405198),
(486, 'dieu-can-biet', 103, 470, 0, 1540407070),
(487, 'doi-voi-bat-dong-san', 103, 471, 0, 1540407259),
(488, 'thi-truong-bat-dong-san-8mgik43ywo', 103, 472, 0, 1540407481),
(489, 'can-ho', 103, 473, 0, 1540407499),
(490, 'tai-sao-nen-tin-tuong-chung-toi', 104, 474, 0, 1540405283),
(491, 'sai-lam-ton-kem', 104, 475, 0, 1540405303),
(492, 'bat-dong-san-o6ljh8lyby', 104, 476, 0, 1540405314),
(493, 'quy-cuu-tro', 104, 477, 0, 1540405324),
(494, 'thang-an-toan', 105, 478, 0, 1540405344),
(495, 'xay-dung-doanh-nghiep', 105, 479, 0, 1540405360),
(496, 'chuong-trinh-realtors', 105, 480, 0, 1540405377),
(497, 'trung-tam-phat-trien', 105, 481, 0, 1540405393),
(498, 'washington-bat-dong-san', 106, 482, 0, 1540405414),
(499, 'dallas-bat-dong-san', 106, 483, 0, 1540405424),
(500, 'bat-dong-san-fortworth', 106, 484, 0, 1540405434),
(501, 'bat-dong-san-houston', 106, 485, 0, 1540405449),
(502, 'can-ho-denver', 107, 486, 0, 1540405459),
(503, 'miami-apartments', 107, 487, 0, 1540405469),
(504, 'poriland-or-aparments', 107, 488, 0, 1540405504),
(505, 'miami-beach-aparments', 107, 489, 0, 1540405537),
(506, 'thi-truong-bat-dong-san', 108, 490, 0, 1540405578),
(507, 'ung-dung-di-dong', 108, 491, 0, 1540405592),
(508, 'ung-dung-cho-thue', 108, 492, 0, 1540405605),
(509, 'amazon-tai-san', 109, 493, 0, 1540405626),
(510, 'alibaba-tai-san', 109, 494, 0, 1540405637),
(511, 'micro-tai-san', 109, 495, 0, 1540405650),
(512, 'gioi-thieu-7cxi387x00', 103, 469, 947, 1540406854),
(513, 'ho-tro-dai-ly', 103, 469, 948, 1540406929),
(514, 'tim-nguoi-tham-dinh-z7upqfgy2w', 103, 469, 949, 1540406939),
(515, 'dich-vu-thuong-mai-2pej0egy08', 103, 469, 950, 1540407001),
(516, 'lien-minh-bat-dong-san-l8lx7g5mxe', 103, 469, 951, 1540407016),
(517, 'tai-sao-nen-tin-tuong-chung-toi-wzyxwq5ohc', 103, 470, 952, 1540407103),
(518, 'sai-lam-ton-kem-humbz4j33p', 103, 470, 953, 1540407111),
(519, 'bat-dong-san-s5j3vbyexh', 103, 470, 954, 1540407124),
(520, 'quy-cuu-tro-317ixmap9i', 103, 470, 955, 1540407147),
(521, 'thang-an-toan-o27asy3j37', 103, 471, 956, 1540407322),
(522, 'xay-dung-doanh-nghiep-uzobtsooqw', 103, 471, 957, 1540407396),
(523, 'trung-tam-phat-trien-h07futjaxi', 103, 471, 958, 1540407405),
(524, 'chuong-trinh-gioi-thieu', 103, 471, 959, 1540407417),
(525, 'tai-nguyen-pho-bien-f6erya4qp7', 103, 496, 0, 1540407536),
(526, 'ho-so', 103, 497, 0, 1540407552),
(527, 'washington-bat-dong-san-rx0t8zxezx', 103, 472, 960, 1540407630),
(528, 'dallas-bat-dong-san-rqa58r9yjp', 103, 472, 961, 1540407646),
(529, 'bat-dong-san-fortworth-y0x9ru3nmh', 103, 472, 962, 1540407654),
(530, 'can-ho-denver-345hyg5pvk', 103, 473, 963, 1540407760),
(531, 'miami-apartments-zji74oyarf', 103, 473, 964, 1540407770),
(532, 'miami-beach-aparments-u0whbqxf0u', 103, 473, 965, 1540407845),
(533, 'miami-apartments-6axk5evgls', 103, 473, 966, 1540407833),
(534, 'thi-truong-bat-dong-san-dia-phuong', 103, 496, 967, 1540407930),
(535, 'ung-dung-di-dong-m7rxvtettg', 103, 496, 968, 1540407940),
(536, 'ung-dung-cho-thue-47lhceu42m', 103, 496, 969, 1540407951),
(537, 'may-tinh-tai-chinh', 103, 496, 970, 1540407964),
(538, 'alibaba-tai-san-npxwnpcs5d', 103, 497, 971, 1540408017),
(539, 'amazon-tai-san-ftgvom806n', 103, 497, 972, 1540408028),
(540, 'micro-tai-san-peomd2j1zs', 103, 497, 973, 1540408039),
(541, 'tong-hop-tai-san', 103, 497, 974, 1540408049),
(542, 'nghe-nghiep', 103, 498, 0, 1540408487),
(543, 'phong-truyen-thong', 103, 499, 0, 1540408498),
(544, 'nguyen-duc-nhan', 95, 267, 696, 1543682058),
(545, 'dat-nen-hoa-xuan-lo-117', 95, 267, 697, 1545492078),
(546, 'hinh-anh-phong-ngu-1', 102, 85, 0, 1540820660),
(547, 's6', 102, 85, 641, 1541700101),
(548, 's4', 102, 85, 642, 1541700043),
(549, 's5', 102, 85, 643, 1541700052),
(550, 's1', 102, 85, 644, 1541699882),
(551, 's2', 102, 85, 645, 1541700001),
(552, 's3', 102, 85, 646, 1541700026),
(553, 'anh-muc-1', 110, 87, 0, 1541699717),
(554, 'a3', 110, 87, 653, 1543166842),
(555, 'a2', 110, 87, 654, 1543166801),
(556, 'a1', 110, 87, 655, 1543155039),
(557, 'test-them-muc', 95, 276, 0, 1542033184),
(558, 'test-anh-3', 110, 88, 0, 1542115266),
(560, 'nguyen-nhan', 95, 267, 699, 1543682166),
(561, 'nhan-duc', 95, 267, 700, 1543681651),
(562, 'nhanduc', 95, 267, 701, 1543680556),
(563, 'tim-moi-gioi', 88, 0, 0, 1495043241),
(564, 'tim-moi-gioi', 88, 0, 0, 1495043241),
(565, 'tim-moi-gioi', 88, 0, 0, 1495043241),
(566, 'tim-moi-gioi', 88, 0, 0, 0),
(567, 'tra-truoc', 1, 8, 0, 1547239394),
(568, 'ky-han', 1, 9, 0, 1547239413);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_location`
--

CREATE TABLE `olala_location` (
  `location_id` int(11) NOT NULL,
  `location_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_location_menu`
--

CREATE TABLE `olala_location_menu` (
  `location_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_newsletter`
--

CREATE TABLE `olala_newsletter` (
  `newsletter_id` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_newsletter`
--

INSERT INTO `olala_newsletter` (`newsletter_id`, `phone`, `ip`, `is_active`, `created_time`) VALUES
(1, '0974779085', '127.0.0.1', 0, 1517848149),
(2, '01675338434', '127.0.0.1', 0, 1517848379);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_online`
--

CREATE TABLE `olala_online` (
  `online_id` bigint(20) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `site` varchar(255) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `olala_online`
--

INSERT INTO `olala_online` (`online_id`, `ip`, `created_time`, `site`, `agent`, `user_id`) VALUES
(4044, '101.99.59.102', 1547381826, 'url=olala-admin/js/highcharts/graphics/loader.white.gif', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_online_daily`
--

CREATE TABLE `olala_online_daily` (
  `online_daily_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_online_daily`
--

INSERT INTO `olala_online_daily` (`online_daily_id`, `date`, `count`) VALUES
(1, '2014-08-18', 3),
(2, '2014-08-17', 1),
(3, '2014-08-14', 102),
(4, '2014-08-06', 100),
(5, '2014-08-16', 3),
(6, '2014-08-13', 10),
(7, '2014-08-11', 40),
(8, '2014-08-09', 90),
(9, '2014-08-15', 82),
(10, '2014-08-12', 207),
(11, '2014-08-10', 10),
(12, '2014-08-08', 7),
(13, '2014-08-07', 13),
(14, '2014-08-19', 13),
(15, '2014-08-20', 9),
(16, '2014-08-21', 135),
(17, '2014-08-22', 5),
(18, '2014-09-27', 7),
(19, '2014-09-28', 16),
(20, '2014-09-29', 5),
(21, '2014-09-30', 14),
(22, '2014-10-01', 16),
(23, '2014-10-02', 12),
(24, '2014-10-03', 7),
(25, '2014-10-04', 1),
(26, '2014-10-05', 2),
(27, '2014-10-07', 4),
(28, '2014-10-08', 11),
(29, '2014-10-14', 1),
(30, '2014-10-20', 1),
(31, '2014-10-26', 4),
(32, '2014-10-27', 9),
(33, '2014-10-28', 11),
(34, '2014-10-29', 13),
(35, '2014-10-30', 10),
(36, '2014-10-31', 14),
(37, '2014-11-01', 8),
(38, '2014-11-02', 12),
(39, '2014-11-03', 2),
(40, '2014-11-05', 4),
(41, '2014-11-06', 2),
(42, '2014-11-07', 4),
(43, '2014-11-08', 1),
(44, '2014-11-09', 1),
(45, '2014-11-10', 11),
(46, '2014-11-11', 8),
(47, '2014-11-12', 3),
(48, '2014-11-13', 5),
(49, '2014-11-14', 6),
(50, '2014-11-15', 1),
(51, '2014-11-16', 1),
(52, '2014-11-17', 4),
(53, '2014-11-18', 1),
(54, '2014-11-19', 4),
(55, '2014-11-20', 1),
(56, '2014-11-21', 4),
(57, '2014-11-22', 1),
(58, '2014-11-23', 16),
(59, '2014-11-24', 1),
(60, '2014-11-25', 5),
(61, '2014-11-27', 15),
(62, '2014-11-28', 18),
(63, '2014-11-29', 10),
(64, '2014-11-30', 10),
(65, '2014-12-01', 6),
(66, '2014-12-02', 13),
(67, '2014-12-03', 9),
(68, '2014-12-04', 9),
(69, '2014-12-05', 7),
(70, '2014-12-06', 1),
(71, '2014-12-08', 5),
(72, '2014-12-09', 2),
(73, '2014-12-10', 5),
(74, '2014-12-11', 13),
(75, '2014-12-12', 4),
(76, '2014-12-16', 2),
(77, '2014-12-20', 11),
(78, '2014-12-21', 6),
(79, '2014-12-22', 5),
(80, '2014-12-23', 3),
(81, '2014-12-24', 1),
(82, '2014-12-26', 2),
(83, '2014-12-27', 10),
(84, '0000-00-00', 1),
(85, '2014-12-28', 15),
(86, '2014-12-29', 11),
(87, '2014-12-30', 1),
(88, '2015-01-02', 11),
(89, '2015-01-03', 4),
(90, '2015-01-04', 2),
(91, '2015-01-05', 9),
(92, '2015-01-06', 7),
(93, '2015-01-07', 1),
(94, '2015-01-08', 7),
(95, '2015-01-09', 13),
(96, '2015-01-10', 2),
(97, '2015-01-12', 1),
(98, '2015-01-19', 2),
(99, '2015-01-20', 12),
(100, '2015-01-21', 8),
(101, '2015-01-22', 43),
(102, '2015-01-23', 36),
(103, '2015-01-24', 34),
(104, '2015-01-24', 34),
(105, '2015-01-25', 46),
(106, '2015-01-26', 51),
(107, '2015-01-27', 53),
(108, '2015-01-28', 46),
(109, '2015-01-29', 471),
(110, '2015-01-30', 191),
(111, '2015-01-31', 106),
(112, '2015-02-01', 61),
(113, '2015-02-02', 37),
(114, '2015-02-03', 53),
(115, '2015-02-04', 66),
(116, '2015-02-05', 63),
(117, '2015-02-06', 86),
(118, '2015-02-07', 63),
(119, '2015-02-08', 68),
(120, '2015-02-09', 64),
(121, '2015-02-10', 46),
(122, '2015-02-11', 53),
(123, '2015-02-12', 28),
(124, '2015-02-13', 155),
(125, '2015-02-14', 43),
(126, '2015-02-15', 27),
(127, '2015-02-16', 22),
(128, '2015-02-17', 20),
(129, '2015-02-18', 19),
(130, '2015-02-19', 16),
(131, '2015-02-20', 18),
(132, '2015-02-21', 33),
(133, '2015-02-22', 31),
(134, '2015-02-23', 34),
(135, '2015-02-24', 22),
(136, '2015-02-25', 26),
(137, '2015-02-26', 34),
(138, '2015-02-27', 19),
(139, '2015-02-28', 5),
(140, '2015-03-01', 12),
(141, '2015-03-02', 24),
(142, '2015-03-03', 48),
(143, '2015-03-04', 49),
(144, '2015-03-05', 43),
(145, '2015-03-06', 33),
(146, '2015-03-07', 52),
(147, '2015-03-08', 26),
(148, '2015-03-09', 46),
(149, '2015-03-10', 37),
(150, '2015-03-11', 47),
(151, '2015-03-12', 33),
(152, '2015-03-13', 28),
(153, '2015-03-14', 2),
(154, '2015-03-16', 5),
(155, '2015-03-17', 18),
(156, '2015-03-18', 11),
(157, '2015-03-19', 21),
(158, '2015-03-20', 18),
(159, '2015-03-21', 3),
(160, '2015-05-06', 5),
(161, '2015-05-07', 4),
(162, '2015-05-08', 3),
(163, '2015-05-09', 2),
(164, '2015-05-10', 8),
(165, '2015-05-11', 3),
(166, '2015-05-12', 4),
(167, '2015-05-15', 1),
(168, '2015-05-16', 2),
(169, '2015-05-17', 2),
(170, '2015-05-18', 1),
(171, '2015-05-19', 3),
(172, '2015-05-23', 1),
(173, '2015-05-24', 1),
(174, '2015-05-25', 2),
(175, '2015-05-26', 2),
(176, '2015-05-27', 4),
(177, '2015-05-28', 4),
(178, '2015-05-29', 3),
(179, '2015-05-31', 3),
(180, '2015-06-01', 1),
(181, '2015-06-02', 2),
(182, '2015-06-03', 3),
(183, '2015-06-04', 3),
(184, '2015-06-05', 1),
(185, '2015-06-06', 1),
(186, '2015-06-08', 1),
(187, '2015-06-09', 2),
(188, '2015-06-10', 1),
(189, '2015-06-11', 2),
(190, '2015-06-12', 3),
(191, '2015-06-13', 2),
(192, '2015-06-14', 1),
(193, '2015-06-15', 4),
(194, '2015-06-16', 1),
(195, '2015-06-17', 1),
(196, '2015-06-18', 1),
(197, '2015-06-21', 1),
(198, '2015-06-22', 3),
(199, '2015-06-23', 1),
(200, '2015-06-24', 8),
(201, '2015-06-28', 1),
(202, '2015-06-29', 3),
(203, '2015-06-30', 4),
(204, '2015-07-01', 4),
(205, '2015-07-02', 3),
(206, '2015-07-03', 3),
(207, '2015-07-06', 1),
(208, '2015-07-07', 1),
(209, '2015-07-12', 4),
(210, '2015-07-13', 6),
(211, '2015-07-14', 29),
(212, '2015-07-15', 190),
(213, '2015-07-16', 361),
(214, '2015-07-17', 354),
(215, '2015-07-18', 238),
(216, '2015-07-19', 343),
(217, '2015-07-20', 802),
(218, '2015-07-21', 1926),
(219, '2015-07-22', 1349),
(220, '2015-07-23', 1648),
(221, '2015-07-24', 2370),
(222, '2015-07-25', 4986),
(223, '2015-07-26', 2251),
(224, '2015-07-27', 3882),
(225, '2015-07-28', 3496),
(226, '2015-07-29', 3603),
(227, '2015-07-30', 2778),
(228, '2015-07-31', 5),
(229, '2015-08-01', 2),
(230, '2015-08-02', 3),
(231, '2015-08-03', 2),
(232, '2015-08-05', 5),
(233, '2015-08-06', 1),
(234, '2015-08-07', 5),
(235, '2015-08-08', 8),
(236, '2015-08-09', 7),
(237, '2015-08-10', 6),
(238, '2015-08-11', 1),
(239, '2015-08-12', 2),
(240, '2015-08-13', 3),
(241, '2015-08-14', 1),
(242, '2015-08-16', 2),
(243, '2015-08-17', 2),
(244, '2015-08-18', 1),
(245, '2015-08-28', 2),
(246, '2015-08-29', 1),
(247, '2015-08-30', 1),
(248, '2015-08-31', 3),
(249, '2015-09-01', 1),
(250, '2015-09-04', 1),
(251, '2015-09-05', 1),
(252, '2015-09-06', 1),
(253, '2015-09-07', 1),
(254, '2015-09-08', 1),
(255, '2015-09-09', 3),
(256, '2015-09-10', 3),
(257, '2015-09-11', 2),
(258, '2015-09-17', 1),
(259, '2015-09-27', 3),
(260, '2015-09-28', 2),
(261, '2015-10-19', 1),
(262, '2015-10-20', 4),
(263, '2015-10-21', 1),
(264, '2015-10-24', 1),
(265, '2015-10-25', 5),
(266, '2015-10-26', 22),
(267, '2015-10-27', 36),
(268, '2015-11-10', 1),
(269, '2015-11-11', 3),
(270, '2015-11-12', 22),
(271, '2015-11-13', 45),
(272, '2015-11-14', 9),
(273, '2015-11-15', 27),
(274, '2015-11-16', 36),
(275, '2015-11-17', 24),
(276, '2015-11-18', 10),
(277, '2015-11-19', 14),
(278, '2015-11-20', 7),
(279, '2015-11-21', 5),
(280, '2015-11-22', 1),
(281, '2015-11-23', 12),
(282, '2015-11-24', 5),
(283, '2015-11-27', 1),
(284, '2015-11-28', 2),
(285, '2015-11-29', 1),
(286, '2015-11-30', 4),
(287, '2015-12-01', 38),
(288, '2015-12-02', 34),
(289, '2015-12-03', 41),
(290, '2015-12-04', 34),
(291, '2015-12-09', 1),
(292, '2015-12-19', 1),
(293, '2015-12-20', 2),
(294, '2015-12-21', 7),
(295, '2015-12-22', 5),
(296, '2015-12-23', 52),
(297, '2015-12-24', 37),
(298, '2015-12-25', 39),
(299, '2015-12-26', 13),
(300, '2015-12-27', 2),
(301, '2015-12-28', 18),
(302, '2015-12-29', 9),
(303, '2015-12-30', 16),
(304, '2015-12-31', 6),
(305, '2016-01-07', 3),
(306, '2016-01-08', 3),
(307, '2016-01-09', 7),
(308, '2016-01-10', 1),
(309, '2016-01-12', 7),
(310, '2016-01-13', 4),
(311, '2016-01-14', 4),
(312, '2016-01-15', 14),
(313, '2016-01-16', 66),
(314, '2016-01-17', 45),
(315, '2016-01-18', 31),
(316, '2016-01-19', 7),
(317, '2016-01-20', 12),
(318, '2016-01-21', 5),
(319, '2016-01-22', 7),
(320, '2016-01-23', 4),
(321, '2016-01-24', 1),
(322, '2016-01-25', 25),
(323, '2016-01-26', 1),
(324, '2016-01-27', 11),
(325, '2016-01-28', 40),
(326, '2016-01-29', 35),
(327, '2016-01-30', 6),
(328, '2016-02-01', 14),
(329, '2016-02-02', 40),
(330, '2016-02-03', 163),
(331, '2016-02-04', 81),
(332, '2016-02-05', 63),
(333, '2016-02-06', 52),
(334, '2016-02-07', 38),
(335, '2016-02-08', 35),
(336, '2016-02-09', 48),
(337, '2016-02-10', 39),
(338, '2016-02-11', 34),
(339, '2016-02-12', 74),
(340, '2016-02-13', 56),
(341, '2016-02-14', 60),
(342, '2016-02-15', 104),
(343, '2016-02-16', 59),
(344, '2016-02-17', 58),
(345, '2016-02-18', 43),
(346, '2016-02-19', 2),
(347, '2016-02-20', 2),
(348, '2016-02-22', 3),
(349, '2016-03-01', 1),
(350, '2016-03-04', 3),
(351, '2016-03-04', 3),
(352, '2016-03-07', 1),
(353, '2016-03-08', 1),
(354, '2016-03-09', 14),
(355, '2016-03-10', 5),
(356, '2016-03-11', 6),
(357, '2016-03-13', 2),
(358, '2016-03-14', 1),
(359, '2016-03-20', 1),
(360, '2016-03-26', 8),
(361, '2016-03-27', 8),
(362, '2016-03-28', 46),
(363, '2016-03-29', 1),
(364, '2016-03-30', 11),
(365, '2016-03-31', 2),
(366, '2016-04-02', 1),
(367, '2016-04-03', 5),
(368, '2016-04-04', 10),
(369, '2016-04-05', 31),
(370, '2016-04-06', 65),
(371, '2016-04-07', 35),
(372, '2016-04-08', 15),
(373, '2016-04-09', 1),
(374, '2016-04-20', 2),
(375, '2016-04-22', 2),
(376, '2016-04-23', 7),
(377, '2016-04-24', 8),
(378, '2016-04-25', 1),
(379, '2016-04-26', 2),
(380, '2016-04-27', 4),
(381, '2016-04-28', 3),
(382, '2016-05-05', 1),
(383, '2016-05-08', 9),
(384, '2016-05-09', 3),
(385, '2016-05-10', 2),
(386, '2016-05-11', 5),
(387, '2016-05-12', 6),
(388, '2016-05-13', 11),
(389, '2016-05-15', 3),
(390, '2016-05-16', 8),
(391, '2016-05-17', 7),
(392, '2016-05-19', 3),
(393, '2016-05-19', 3),
(394, '2016-05-20', 2),
(395, '2016-05-22', 5),
(396, '2016-05-23', 1),
(397, '2016-05-24', 1),
(398, '2016-05-30', 5),
(399, '2016-06-16', 1),
(400, '2016-06-24', 5),
(401, '2016-06-25', 12),
(402, '2016-06-26', 5),
(403, '2016-08-08', 6),
(404, '2016-08-09', 4),
(405, '2016-08-10', 5),
(406, '2016-08-11', 2),
(407, '2016-08-12', 6),
(408, '2016-08-14', 1),
(409, '2016-08-16', 12),
(410, '2016-08-17', 39),
(411, '2016-08-18', 157),
(412, '2016-08-19', 196),
(413, '2016-08-20', 227),
(414, '2016-08-21', 190),
(415, '2016-08-22', 545),
(416, '2016-08-23', 367),
(417, '2016-08-24', 369),
(418, '2016-08-25', 418),
(419, '2016-08-26', 512),
(420, '2016-08-27', 614),
(421, '2016-08-28', 631),
(422, '2016-08-29', 728),
(423, '2016-08-30', 579),
(424, '2016-08-31', 333),
(425, '2016-09-01', 219),
(426, '2016-09-02', 108),
(427, '2016-09-03', 157),
(428, '2016-09-04', 156),
(429, '2016-09-05', 662),
(430, '2016-09-06', 744),
(431, '2016-09-07', 504),
(432, '2016-09-08', 571),
(433, '2016-09-09', 516),
(434, '2016-09-10', 484),
(435, '2016-09-11', 384),
(436, '2016-09-12', 332),
(437, '2016-09-13', 371),
(438, '2016-09-14', 338),
(439, '2016-09-15', 366),
(440, '2016-09-16', 536),
(441, '2016-09-17', 345),
(442, '2016-09-18', 363),
(443, '2016-09-19', 354),
(444, '2016-09-20', 359),
(445, '2016-09-21', 471),
(446, '2016-09-22', 405),
(447, '2016-09-23', 460),
(448, '2016-09-24', 461),
(449, '2016-09-25', 426),
(450, '2016-09-26', 432),
(451, '2016-09-27', 447),
(452, '2016-09-28', 324),
(453, '2016-09-29', 167),
(454, '2016-09-30', 265),
(455, '2016-10-01', 334),
(456, '2016-10-02', 272),
(457, '2016-10-03', 217),
(458, '2016-10-04', 214),
(459, '2016-10-05', 367),
(460, '2016-10-06', 462),
(461, '2016-10-07', 394),
(462, '2016-10-08', 321),
(463, '2016-10-09', 247),
(464, '2016-10-10', 268),
(465, '2016-10-11', 348),
(466, '2016-10-12', 471),
(467, '2016-10-13', 451),
(468, '2016-10-14', 502),
(469, '2016-10-15', 300),
(470, '2016-10-16', 228),
(471, '2016-10-17', 234),
(472, '2016-10-18', 272),
(473, '2016-10-19', 276),
(474, '2016-10-20', 366),
(475, '2016-10-21', 205),
(476, '2016-10-22', 228),
(477, '2016-10-23', 304),
(478, '2016-10-24', 286),
(479, '2016-10-25', 383),
(480, '2016-10-26', 338),
(481, '2016-10-27', 249),
(482, '2016-10-28', 295),
(483, '2016-10-29', 542),
(484, '2016-10-30', 468),
(485, '2016-10-31', 473),
(486, '2016-11-01', 300),
(487, '2016-11-02', 263),
(488, '2016-11-03', 369),
(489, '2016-11-04', 320),
(490, '2016-11-05', 202),
(491, '2016-11-06', 216),
(492, '2016-11-07', 243),
(493, '2016-11-08', 228),
(494, '2016-11-09', 200),
(495, '2016-11-10', 335),
(496, '2016-11-11', 189),
(497, '2016-11-12', 199),
(498, '2016-11-13', 476),
(499, '2016-11-14', 748),
(500, '2016-11-15', 384),
(501, '2016-11-16', 535),
(502, '2016-11-17', 669),
(503, '2016-11-18', 714),
(504, '2016-11-19', 778),
(505, '2016-11-20', 472),
(506, '2016-11-21', 339),
(507, '2016-11-22', 489),
(508, '2016-11-23', 283),
(509, '2016-11-24', 246),
(510, '2016-11-25', 276),
(511, '2016-11-26', 288),
(512, '2016-11-27', 268),
(513, '2016-11-28', 504),
(514, '2016-11-29', 478),
(515, '2016-11-30', 694),
(516, '2016-12-01', 524),
(517, '2016-12-02', 456),
(518, '2016-12-03', 450),
(519, '2016-12-04', 248),
(520, '2016-12-05', 99),
(521, '2016-12-06', 406),
(522, '2016-12-07', 508),
(523, '2016-12-08', 343),
(524, '2016-12-09', 452),
(525, '2016-12-10', 356),
(526, '2016-12-11', 415),
(527, '2016-12-12', 405),
(528, '2016-12-13', 260),
(529, '2016-12-14', 328),
(530, '2016-12-15', 697),
(531, '2016-12-16', 506),
(532, '2016-12-17', 388),
(533, '2016-12-18', 289),
(534, '2016-12-19', 312),
(535, '2016-12-20', 345),
(536, '2016-12-21', 349),
(537, '2016-12-22', 228),
(538, '2016-12-23', 374),
(539, '2016-12-24', 270),
(540, '2016-12-25', 201),
(541, '2016-12-26', 163),
(542, '2016-12-27', 178),
(543, '2016-12-28', 204),
(544, '2016-12-29', 244),
(545, '2016-12-30', 291),
(546, '2016-12-31', 535),
(547, '2017-01-01', 432),
(548, '2017-01-02', 383),
(549, '2017-01-03', 456),
(550, '2017-01-04', 324),
(551, '2017-01-05', 269),
(552, '2017-01-06', 117),
(553, '2017-01-07', 211),
(554, '2017-01-08', 282),
(555, '2017-01-09', 259),
(556, '2017-01-10', 270),
(557, '2017-01-11', 287),
(558, '2017-01-12', 287),
(559, '2017-01-13', 310),
(560, '2017-01-14', 96),
(561, '2017-01-15', 138),
(562, '2017-01-16', 173),
(563, '2017-01-17', 120),
(564, '2017-01-18', 206),
(565, '2017-01-19', 179),
(566, '2017-01-20', 136),
(567, '2017-01-21', 152),
(568, '2017-01-22', 257),
(569, '2017-01-23', 206),
(570, '2017-01-24', 226),
(571, '2017-01-25', 291),
(572, '2017-01-26', 154),
(573, '2017-01-27', 64),
(574, '2017-01-28', 118),
(575, '2017-01-29', 61),
(576, '2017-01-30', 89),
(577, '2017-01-31', 121),
(578, '2017-02-01', 98),
(579, '2017-02-02', 229),
(580, '2017-02-03', 310),
(581, '2017-02-04', 219),
(582, '2017-02-05', 254),
(583, '2017-02-06', 348),
(584, '2017-02-07', 279),
(585, '2017-02-08', 249),
(586, '2017-02-09', 215),
(587, '2017-02-10', 155),
(588, '2017-02-11', 140),
(589, '2017-02-12', 120),
(590, '2017-02-13', 154),
(591, '2017-02-14', 327),
(592, '2017-02-15', 314),
(593, '2017-02-16', 292),
(594, '2017-02-17', 183),
(595, '2017-02-18', 276),
(596, '2017-02-19', 211),
(597, '2017-02-20', 247),
(598, '2017-02-21', 141),
(599, '2017-02-22', 138),
(600, '2017-02-23', 166),
(601, '2017-02-24', 100),
(602, '2017-02-25', 175),
(603, '2017-02-26', 163),
(604, '2017-02-27', 6),
(605, '2017-02-28', 1),
(606, '2017-03-01', 3),
(607, '2017-03-05', 6),
(608, '2017-03-06', 1),
(609, '2017-03-07', 4),
(610, '2017-03-08', 97),
(611, '2017-03-09', 6),
(612, '2017-03-10', 1),
(613, '2017-03-11', 1),
(614, '2017-03-11', 1),
(615, '2017-03-13', 2),
(616, '2017-03-14', 2),
(617, '2017-03-15', 3),
(618, '2017-03-20', 3),
(619, '2017-03-21', 2),
(620, '2017-04-16', 1),
(621, '2017-04-17', 5),
(622, '2017-04-21', 3),
(623, '2017-04-22', 1),
(624, '2017-04-26', 1),
(625, '2017-04-28', 6),
(626, '2017-04-29', 3),
(627, '2017-05-03', 4),
(628, '2017-05-04', 2),
(629, '2017-05-05', 7),
(630, '2017-05-07', 9),
(631, '2017-05-08', 1),
(632, '2017-05-09', 6),
(633, '2017-05-10', 6),
(634, '2017-05-12', 1),
(635, '2017-05-16', 2),
(636, '2017-05-17', 11),
(637, '2017-05-18', 30),
(638, '2017-05-19', 10),
(639, '2017-05-20', 8),
(640, '2017-05-21', 20),
(641, '2017-05-22', 3),
(642, '2017-05-23', 3),
(643, '2017-05-29', 1),
(644, '2017-05-30', 2),
(645, '2017-05-31', 3),
(646, '2017-06-01', 1),
(647, '2017-06-03', 1),
(648, '2017-06-07', 1),
(649, '2017-06-08', 3),
(650, '2017-06-09', 6),
(651, '2017-06-11', 1),
(652, '2017-06-12', 6),
(653, '2017-06-13', 16),
(654, '2017-06-14', 1),
(655, '2017-06-15', 2),
(656, '2017-06-16', 1),
(657, '2017-06-17', 2),
(658, '2017-06-18', 5),
(659, '2017-06-21', 1),
(660, '2017-06-22', 1),
(661, '2017-06-23', 2),
(662, '2017-06-24', 1),
(663, '2017-06-26', 4),
(664, '2017-06-27', 12),
(665, '2017-06-28', 25),
(666, '2017-06-29', 36),
(667, '2017-06-30', 50),
(668, '2017-07-01', 46),
(669, '2017-07-02', 55),
(670, '2017-07-03', 83),
(671, '2017-07-04', 60),
(672, '2017-07-05', 3),
(673, '2017-07-06', 10),
(674, '2017-07-07', 1),
(675, '2017-07-09', 1),
(676, '2017-07-11', 12),
(677, '2017-07-12', 8),
(678, '2017-07-13', 3),
(679, '2017-07-17', 2),
(680, '2017-07-18', 1),
(681, '2017-07-21', 1),
(682, '2017-07-28', 1),
(683, '2017-08-04', 1),
(684, '2017-08-05', 5),
(685, '2017-08-06', 2),
(686, '2017-08-07', 3),
(687, '2017-08-08', 2),
(688, '2017-08-09', 1),
(689, '2017-08-10', 3),
(690, '2017-08-11', 1),
(691, '2017-08-12', 1),
(692, '2017-08-13', 1),
(693, '2017-11-27', 1),
(694, '2017-11-29', 4),
(695, '2017-11-30', 5),
(696, '2017-12-01', 5),
(697, '2017-12-02', 4),
(698, '2017-12-03', 4),
(699, '2017-12-04', 4),
(700, '2017-12-05', 2),
(701, '2017-12-06', 3),
(702, '2017-12-07', 1),
(703, '2017-12-08', 2),
(704, '2017-12-09', 3),
(705, '2017-12-13', 1),
(706, '2017-12-16', 2),
(707, '2017-12-17', 1),
(708, '2017-12-18', 5),
(709, '2017-12-19', 6),
(710, '2017-12-20', 6),
(711, '2017-12-21', 1),
(712, '2017-12-22', 1),
(713, '2017-12-24', 4),
(714, '2017-12-25', 3),
(715, '2017-12-27', 2),
(716, '2017-12-28', 1),
(717, '2017-12-30', 5),
(718, '2017-12-31', 1),
(719, '2018-01-01', 4),
(720, '2018-01-06', 1),
(721, '2018-01-08', 1),
(722, '2018-01-09', 6),
(723, '2018-01-10', 6),
(724, '2018-01-11', 4),
(725, '2018-01-12', 2),
(726, '2018-01-14', 3),
(727, '2018-01-15', 21),
(728, '2018-01-16', 13),
(729, '2018-01-17', 14),
(730, '2018-01-18', 2),
(731, '2018-01-19', 8),
(732, '2018-01-20', 3),
(733, '2018-01-23', 4),
(734, '2018-01-24', 1),
(735, '2018-01-25', 15),
(736, '2018-01-26', 8),
(737, '2018-01-27', 3),
(738, '2018-01-28', 5),
(739, '2018-01-29', 6),
(740, '2018-01-31', 3),
(741, '2018-02-01', 2),
(742, '2018-02-02', 1),
(743, '2018-02-03', 2),
(744, '2018-02-05', 4),
(745, '2018-02-06', 5),
(746, '2018-02-07', 1),
(747, '2018-02-08', 6),
(748, '2018-02-09', 4),
(749, '2018-02-10', 10),
(750, '2018-02-11', 2),
(751, '2018-02-23', 5),
(752, '2018-02-24', 3),
(753, '2018-02-26', 4),
(754, '2018-02-27', 9),
(755, '2018-02-28', 9),
(756, '2018-03-01', 1),
(757, '2018-03-05', 1),
(758, '2018-03-10', 7),
(759, '2018-03-19', 2),
(760, '2018-04-24', 1),
(761, '2018-06-13', 1),
(762, '2018-10-08', 1),
(763, '2018-10-09', 15),
(764, '2018-10-10', 6),
(765, '2018-10-11', 5),
(766, '2018-10-12', 1),
(767, '2018-10-13', 12),
(768, '2018-10-18', 5),
(769, '2018-10-19', 15),
(770, '2018-10-20', 5),
(771, '2018-10-21', 4),
(772, '2018-10-23', 1),
(773, '2018-10-23', 1),
(774, '2018-10-24', 3),
(775, '2018-10-25', 5),
(776, '2018-10-26', 23),
(777, '2018-10-27', 11),
(778, '2018-10-28', 36),
(779, '2018-10-29', 16),
(780, '2018-10-30', 17),
(781, '2018-10-31', 9),
(782, '2018-11-01', 17),
(783, '2018-11-02', 13),
(784, '2018-11-04', 1),
(785, '2018-11-05', 2),
(786, '2018-11-07', 1),
(787, '2018-11-07', 1),
(788, '2018-11-08', 32),
(789, '2018-11-09', 45),
(790, '2018-11-10', 73),
(791, '2018-11-11', 45),
(792, '2018-11-12', 64),
(793, '2018-11-13', 69),
(794, '2018-11-14', 78),
(795, '2018-11-15', 70),
(796, '2018-11-16', 43),
(797, '2018-11-17', 41),
(798, '2018-11-18', 44),
(799, '2018-11-19', 43),
(800, '2018-11-20', 56),
(801, '2018-11-21', 88),
(802, '2018-11-22', 46),
(803, '2018-11-23', 50),
(804, '2018-11-24', 62),
(805, '2018-11-25', 58),
(806, '2018-11-26', 61),
(807, '2018-11-27', 69),
(808, '2018-11-28', 44),
(809, '2018-11-29', 60),
(810, '2018-11-30', 46),
(811, '2018-12-01', 38),
(812, '2018-12-02', 36),
(813, '2018-12-03', 39),
(814, '2018-12-04', 46),
(815, '2018-12-05', 54),
(816, '2018-12-06', 33),
(817, '2018-12-07', 27),
(818, '2018-12-08', 19),
(819, '2018-12-09', 12),
(820, '2018-12-10', 26),
(821, '2018-12-11', 28),
(822, '2018-12-12', 72),
(823, '2018-12-13', 40),
(824, '2018-12-14', 40),
(825, '2018-12-15', 36),
(826, '2018-12-16', 65),
(827, '2018-12-17', 62),
(828, '2018-12-18', 28),
(829, '2018-12-19', 22),
(830, '2018-12-20', 35),
(831, '2018-12-21', 50),
(832, '2018-12-22', 56),
(833, '2018-12-23', 37),
(834, '2018-12-24', 31),
(835, '2018-12-25', 23),
(836, '2018-12-26', 42),
(837, '2018-12-27', 26),
(838, '2018-12-28', 25),
(839, '2018-12-29', 26),
(840, '2018-12-30', 13),
(841, '2018-12-31', 61),
(842, '2019-01-01', 78),
(843, '2019-01-02', 73),
(844, '2019-01-03', 44),
(845, '2019-01-04', 15),
(846, '2019-01-05', 23),
(847, '2019-01-06', 12),
(848, '2019-01-07', 23),
(849, '2019-01-08', 52),
(850, '2019-01-09', 39),
(851, '2019-01-10', 21),
(852, '2019-01-11', 19),
(853, '2019-01-12', 44),
(854, '2019-01-13', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_order`
--

CREATE TABLE `olala_order` (
  `order_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `content` text,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `ip` varchar(255) DEFAULT NULL,
  `icon` varchar(255) NOT NULL DEFAULT 'fa-shopping-cart',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `road1` varchar(255) DEFAULT NULL,
  `price_unit` varchar(255) DEFAULT NULL,
  `content1` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `road` varchar(255) DEFAULT NULL,
  `district` int(11) NOT NULL DEFAULT '0',
  `city` int(11) NOT NULL DEFAULT '0',
  `bathroom` int(11) NOT NULL DEFAULT '0',
  `bedroom` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `acreage` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `product_menu_id` int(11) NOT NULL DEFAULT '0',
  `name_pro` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_order`
--

INSERT INTO `olala_order` (`order_id`, `name`, `phone`, `address`, `email`, `content`, `is_active`, `ip`, `icon`, `created_time`, `modified_time`, `type`, `road1`, `price_unit`, `content1`, `comment`, `road`, `district`, `city`, `bathroom`, `bedroom`, `price`, `acreage`, `status`, `product_menu_id`, `name_pro`) VALUES
(16, 'Nguyễn Đức Nhân123', '01679960030', 'Thăng Bình - Quảng Nam1', 'nhanduc96@gmail.com', '<div marginwidth=\"0\" marginheight=\"0\" style=\"font-family:Arial,serif;\"><table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"table-layout:fixed;\"><tbody><tr><td width=\"100%\" valign=\"top\" bgcolor=\"#f5f5f5\" style=\"padding:0\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"margin:0 auto;width:100%;\"><tbody><tr><td bgcolor=\"#39b54a\" style=\"padding:10px 0; text-align: center;\"><a href=\"http://didongxanhvn.com\" target=\"_blank\"><img src=\"http://didongxanhvn.com/uploads/images/site/logo.png\" style=\"max-height:70px;max-width:80%;\" alt=\"Bất Động Sản Đà Nẵng | NhaPhoDaNang.com.vn\" border=\"0\"></a></td></tr></tbody></table><div style=\"min-height:35px\">&nbsp;</div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"min-width:290px;margin:0 auto;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;\" width=\"620\"><tbody><tr><td style=\"border-left:6px solid #dfdfdf;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;vertical-align:top;padding:15px 8px 25px 20px;\" bgcolor=\"#fdfdfd\"><p style=\"margin: 10px 0\">Chào <b> Nguyễn Đức Nhân123</b>,</p><p style=\"margin: 10px 0\">Xin chân thành cảm ơn Quý khách đã quan tâm và sử dụng dịch vụ của chúng tôi!<br>Yêu cầu của Quý khách đã gửi thành công. Chúng tôi sẽ phản hồi lại trong vòng 24h tới.</p><p style=\"margin: 10px 0\"><b style=\"text-decoration:underline;\">THÔNG TIN KÝ GỬI CỦA QUÝ KHÁCH:</b><br/><label style=\"font-weight:600;padding-left:12px;\">Họ và tên: </label> Nguyễn Đức Nhân123<br/><label style=\"font-weight:600;padding-left:12px;\">Địa chỉ: </label> Thăng Bình - Quảng Nam1<br/><label style=\"font-weight:600;padding-left:12px;\">Email: </label> nhanduc96@gmail.com<br/><label style=\"font-weight:600;padding-left:12px;\">Số điện thoại: </label> 01679960030<br/>\n		<label style=\"font-weight:600;padding-left:12px;\">Tên lô đất: </label> 123<br/>\n		<label style=\"font-weight:600;padding-left:12px;\">Mục : </label> Mua chung cư<br/>\n		<label style=\"font-weight:600;padding-left:12px;\">Diện tích : </label> 123<br/>\n		<label style=\"font-weight:600;padding-left:12px;\">Giá : </label> 123<br/>\n		<label style=\"font-weight:600;padding-left:12px;\">Phòng ngủ : </label> 21<br/>\n		<label style=\"font-weight:600;padding-left:12px;\">Phòng tắm : </label> 12<br/>\n		<label style=\"font-weight:600;padding-left:12px;\">Nội dung: </label> <br/><label style=\"font-weight:600;padding-left:12px;\">IP truy cập: </label> 101.99.59.125<br/><label style=\"font-weight:600;padding-left:12px;\">Ngày gửi liên hệ: </label> 02/01/2019 01:50<br/></p><p style=\"margin: 10px 0\">Đây là hộp thư tự động. Sau thời gian trên nếu quý khách chưa nhân được phản hồi từ nhân viên của chúng tôi, rất có thể đã gặp sự cố nhỏ nào đó vì vậy Quý khách có thể liên hệ trực tiếp chúng tôi để nhận được những thông tin nhanh nhất.</p><p style=\"margin: 10px 0\">Chân thành cảm ơn!</p></td></tr></tbody></table><div style=\"min-height:35px\">&nbsp;</div><table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\"><tbody><tr><td bgcolor=\"#e1e1e1\" style=\"padding:15px 10px 25px\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"margin:0 auto;min-width:290px;\" width=\"620\"><tbody><tr><td><table width=\"80%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"left\"><tbody><tr><td valign=\"top\" style=\"font-size:12px;color:#5e5e5e;font-family:Arial,serif;line-height:15px;font-weight:bold;\">Bất Động Sản Đà Nẵng | NhaPhoDaNang.com.vn</td></tr></tbody></table><table width=\"20%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tbody><tr><td style=\"font-size:13px;color:#5e5e5e;font-family:Arial,serif;line-height:1;vertical-align:top;text-align:right;font-style:italic;\"><span>Follow us on</span><br><a href=\"https://www.facebook.com\" target=\"_blank\"><img src=\"https://ci5.googleusercontent.com/proxy/PMSfAkbhhMLEe-tDCLFilReG-hlq_DWsTblTQ2qp8Dsq9KFW1UyFcKTr_uwU3EqyR8AhiFIooeExoAw9Oe3G5c6hvIEoOnU=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/fb.png\" width=\"27\" height=\"27\" alt=\"Facebook logo\" title=\"Facebook\" border=\"0\" style=\"padding:3px;\"></a>&nbsp;<a href=\"https://twitter.com\" target=\"_blank\"><img src=\"https://ci3.googleusercontent.com/proxy/GNHxgrYKL99Apyic0XnGYk6IqVZAc-wFuhgCDxzBYMr80NGggmI1nRORIBVRIkPkJHbQHGGMrTFtbzTDoxk5dc0i_H0HOc0=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/tw.png\" width=\"27\" height=\"27\" alt=\"Twitter logo\" title=\"Twitter\" border=\"0\" style=\"padding:3px;\"></a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div>', 0, '101.99.59.125', 'fa-shopping-cart', 1546368628, 1546368707, 1, '21', '/m<sup>2</sup>/năm', '<p>12</p>', '21', '3m75', 0, 3, 12, 21, 123, 123, 0, 274, '123'),
(17, 'Nguyễn Đức Nhân', '0332852398', 'Thăng Bình - Quảng Nam', 'admin@gmail.com', '<br/>\n		<label style=\"font-weight:600;padding-left:12px;\">Phòng ngủ : </label> <br/>\n		<label style=\"font-weight:600;padding-left:12px;\">Phòng tắm : </label> <br/>\n		<label style=\"font-weight:600;padding-left:12px;\">Nội dung: </label> <br/><label style=\"font-weight:600;padding-left:12px;\">IP truy cập: </label> 101.99.59.42<br/><label style=\"font-weight:600;padding-left:12px;\">Ngày gửi liên hệ: </label> 12/01/2019 02:00<br/></p><p style=\"margin: 10px 0\">Đây là hộp thư tự động. Sau thời gian trên nếu quý khách chưa nhân được phản hồi từ nhân viên của chúng tôi, rất có thể đã gặp sự cố nhỏ nào đó vì vậy Quý khách có thể liên hệ trực tiếp chúng tôi để nhận được những thông tin nhanh nhất.</p><p style=\"margin: 10px 0\">Chân thành cảm ơn!</p></td></tr></tbody></table><div style=\"min-height:35px\">&nbsp;</div><table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\"><tbody><tr><td bgcolor=\"#e1e1e1\" style=\"padding:15px 10px 25px\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"margin:0 auto;min-width:290px;\" width=\"620\"><tbody><tr><td><table width=\"80%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"left\"><tbody><tr><td valign=\"top\" style=\"font-size:12px;color:#5e5e5e;font-family:Arial,serif;line-height:15px;font-weight:bold;\">Bất Động Sản Đà Nẵng | NhaPhoDaNang.com.vn</td></tr></tbody></table><table width=\"20%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tbody><tr><td style=\"font-size:13px;color:#5e5e5e;font-family:Arial,serif;line-height:1;vertical-align:top;text-align:right;font-style:italic;\"><span>Follow us on</span><br><a href=\"https://www.facebook.com\" target=\"_blank\"><img src=\"https://ci5.googleusercontent.com/proxy/PMSfAkbhhMLEe-tDCLFilReG-hlq_DWsTblTQ2qp8Dsq9KFW1UyFcKTr_uwU3EqyR8AhiFIooeExoAw9Oe3G5c6hvIEoOnU=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/fb.png\" width=\"27\" height=\"27\" alt=\"Facebook logo\" title=\"Facebook\" border=\"0\" style=\"padding:3px;\"></a>&nbsp;<a href=\"https://twitter.com\" target=\"_blank\"><img src=\"https://ci3.googleusercontent.com/proxy/GNHxgrYKL99Apyic0XnGYk6IqVZAc-wFuhgCDxzBYMr80NGggmI1nRORIBVRIkPkJHbQHGGMrTFtbzTDoxk5dc0i_H0HOc0=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/tw.png\" width=\"27\" height=\"27\" alt=\"Twitter logo\" title=\"Twitter\" border=\"0\" style=\"padding:3px;\"></a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div>', 1, '101.99.59.42', 'fa-shopping-cart', 1547233245, 0, 1, '', '/m<sup>2</sup>/năm', '', '', '3m75', 0, 0, 0, 0, 0, 0, 0, 267, 'Nhan dức d');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_others`
--

CREATE TABLE `olala_others` (
  `others_id` int(11) NOT NULL,
  `others_menu_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `p_from` double NOT NULL DEFAULT '0',
  `p_to` double NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_others`
--

INSERT INTO `olala_others` (`others_id`, `others_menu_id`, `name`, `slug`, `p_from`, `p_to`, `sort`, `is_active`, `hot`, `created_time`, `modified_time`, `user_id`) VALUES
(1, 1, 'Đông', 'huong-dong', 0, 0, 1, 1, 0, 1493924049, 1495564275, 1),
(2, 1, 'Tây', 'huong-tay', 0, 0, 2, 1, 0, 1493924055, 1495564280, 1),
(3, 1, 'Nam', 'huong-nam', 0, 0, 3, 1, 0, 1493924080, 1495564287, 1),
(4, 1, 'Bắc', 'huong-bac', 0, 0, 4, 1, 0, 1493924087, 1495564294, 1),
(5, 1, 'Đông Bắc', 'huong-dong-bac', 0, 0, 5, 1, 0, 1493924548, 1495564300, 1),
(6, 1, 'Đông Nam', 'huong-dong-nam', 0, 0, 6, 1, 0, 1493924554, 1495564306, 1),
(7, 1, 'Tây Bắc', 'huong-tay-bac', 0, 0, 7, 1, 0, 1493924560, 1495564312, 1),
(8, 1, 'Tây Nam', 'huong-tay-nam', 0, 0, 8, 1, 0, 1493924580, 1495564320, 1),
(9, 1, '(không xác định)', 'huong-khong-xac-dinh', 0, 0, 9, 1, 0, 1493924585, 1494962163, 1),
(10, 2, '3m75', '3m75', 0, 0, 1, 1, 0, 1493924665, 1494962014, 1),
(11, 2, '5m5', '5m5', 0, 0, 2, 1, 0, 1493924674, 1494962014, 1),
(12, 2, '7m5', '7m5', 0, 0, 3, 1, 0, 1493924685, 1494962014, 1),
(13, 2, '10m5', '10m5', 0, 0, 4, 1, 0, 1493924699, 1494962014, 1),
(14, 2, '11m5', '11m5', 0, 0, 5, 1, 0, 1493924709, 1494962014, 1),
(15, 2, '15m', '15m', 0, 0, 6, 1, 0, 1493924717, 1494962014, 1),
(16, 2, '21m', '21m', 0, 0, 7, 1, 0, 1493924721, 1494962015, 1),
(17, 2, '24m', '24m', 0, 0, 8, 1, 0, 1493924727, 1494962015, 1),
(18, 2, '30m', '30m', 0, 0, 9, 1, 0, 1493924735, 1494962015, 1),
(19, 2, '33m', '33m', 0, 0, 10, 1, 0, 1493924748, 1494962015, 1),
(20, 2, '42m', '42m', 0, 0, 11, 1, 0, 1493924753, 1494962015, 1),
(21, 2, '48m', '48m', 0, 0, 12, 1, 0, 1493924825, 1494962016, 1),
(22, 2, '60m', '60m', 0, 0, 13, 1, 0, 1493924830, 1494962016, 1),
(23, 2, '(không xác định)', 'duong-khong-xac-dinh', 0, 0, 14, 1, 0, 1493924837, 1494962229, 1),
(24, 6, '(không xác định)', 'khong-xac-dinh', 0, 0, 1, 1, 0, 0, 1494962255, 1),
(25, 6, 'Lê Duẩn', 'le-duan', 0, 0, 2, 1, 0, 0, 1494962017, 1),
(26, 6, 'Phan Chu Trinh', 'phan-chu-trinh', 0, 0, 3, 1, 0, 0, 1494962017, 1),
(27, 6, 'Hàm Nghi', 'ham-nghi', 0, 0, 4, 1, 0, 0, 1494962017, 1),
(28, 6, 'Hùng Vương', 'hung-vuong', 0, 0, 5, 1, 0, 0, 1494962017, 1),
(29, 6, 'Trần Hưng Đạo', 'tran-hung-dao', 0, 0, 6, 1, 0, 0, 1494962017, 1),
(30, 6, 'Phan Thanh', 'phan-thanh', 0, 0, 7, 1, 0, 0, 1494962017, 1),
(31, 6, 'Võ Nguyên Giáp', 'vo-nguyen-giap', 0, 0, 8, 1, 0, 0, 1494962017, 1),
(32, 6, 'Nguyễn Chí Thanh', 'nguyen-chi-thanh', 0, 0, 9, 1, 0, 0, 1494962017, 1),
(33, 6, 'Nguyễn Văn Linh', 'nguyen-van-linh', 0, 0, 10, 1, 0, 0, 1494962017, 1),
(34, 6, 'Nguyễn Sinh Sắc', 'nguyen-sinh-sac', 0, 0, 11, 1, 0, 0, 1494962476, 1),
(35, 6, 'Lê Bôi', 'le-boi', 0, 0, 13, 1, 0, 0, 1494962017, 1),
(36, 6, 'Đống Đa', 'dong-da', 0, 0, 14, 1, 0, 0, 1494962018, 1),
(37, 6, 'Trần Quốc Hoàn', 'tran-quoc-hoan', 0, 0, 15, 1, 0, 0, 1494962018, 1),
(38, 6, 'Nguyễn Tất Thành', 'nguyen-tat-thanh', 0, 0, 16, 1, 0, 0, 1494962545, 1),
(39, 6, 'Hoài Thanh', 'hoai-thanh', 0, 0, 17, 1, 0, 0, 1494962018, 1),
(40, 6, 'Mỹ Đa Tây 2', 'my-da-tay-2', 0, 0, 17, 1, 0, 0, 1494962018, 1),
(41, 6, 'Trưng Nữ Vương', 'trung-nu-vuong', 0, 0, 18, 1, 0, 0, 1494962018, 1),
(42, 6, '2 Tháng 9', '2-thang-9', 0, 0, 20, 1, 0, 0, 1494962018, 1),
(43, 6, 'Nguyễn Lộ Trạc', 'nguyen-lo-trac', 0, 0, 21, 1, 0, 0, 1494962019, 1),
(44, 6, 'Tuệ Tĩnh', 'tue-tinh', 0, 0, 22, 1, 0, 0, 1494962019, 1),
(45, 6, 'Kinh Dương Vương', 'kinh-duong-vuong', 0, 0, 23, 1, 0, 0, 1494962019, 1),
(46, 6, 'Tiểu La', 'tieu-la', 0, 0, 24, 1, 0, 0, 1494962019, 1),
(47, 6, 'Trần Bình Trọng', 'tran-binh-trong', 0, 0, 25, 1, 0, 0, 1494962019, 1),
(48, 6, 'Trưng Nhị', 'trung-nhi', 0, 0, 26, 1, 0, 0, 1494962019, 1),
(49, 6, 'Anh Thơ', 'anh-tho', 0, 0, 27, 1, 0, 0, 1494962019, 1),
(50, 6, 'Núi Thành', 'dg-nui-thanh', 0, 0, 28, 1, 0, 0, 1495043912, 1),
(51, 6, 'Lương Ngọc Quyến', 'luong-ngoc-quyen', 0, 0, 29, 1, 0, 0, 1494962020, 1),
(52, 6, 'Bàu Hạc 1', 'bau-hac-1', 0, 0, 30, 1, 0, 0, 1494962020, 1),
(53, 6, 'Đỗ Quang', 'do-quang', 0, 0, 31, 1, 0, 0, 1494962020, 1),
(54, 6, 'Lê Đình Dương', 'le-dinh-duong', 0, 0, 32, 1, 0, 0, 1494962020, 1),
(55, 6, 'Hồ Xuân Hương', 'ho-xuan-huong', 0, 0, 33, 1, 0, 0, 1494962020, 1),
(56, 6, 'Cù Chính Lan', 'cu-chinh-lan', 0, 0, 34, 1, 0, 0, 1494962020, 1),
(57, 6, 'Phạm Văn Nghị', 'pham-van-nghi', 0, 0, 35, 1, 0, 0, 1494962020, 1),
(58, 6, 'Nguyễn Trung Trực', 'nguyen-trung-truc', 0, 0, 36, 1, 0, 0, 1494962020, 1),
(59, 6, 'Hoàng Hoa Thám', 'hoang-hoa-tham', 0, 0, 37, 1, 0, 0, 1494962020, 1),
(60, 6, 'Nguyễn Chí Diễu ', 'nguyen-chi-dieu', 0, 0, 38, 1, 0, 0, 1494962020, 1),
(61, 6, 'Điện Biên Phủ', 'dien-bien-phu', 0, 0, 39, 1, 0, 0, 1494962020, 1),
(62, 6, 'Đa Phước 4', 'da-phuoc-4', 0, 0, 40, 1, 0, 0, 1494962020, 1),
(63, 6, '3 Tháng 2', '3-thang-2', 0, 0, 40, 1, 0, 0, 1494962020, 1),
(64, 6, '30 Tháng 4', '30-thang-4', 0, 0, 41, 1, 0, 0, 1494962021, 1),
(65, 6, 'Hoàng Sa', 'dg-hoang-sa', 0, 0, 42, 1, 0, 0, 1495043506, 1),
(66, 6, 'Trường Sa', 'truong-sa', 0, 0, 43, 1, 0, 0, 1494962021, 1),
(67, 6, 'Võ Văn Kiệt', 'vo-van-kiet', 0, 0, 44, 1, 0, 0, 1494962021, 1),
(68, 6, 'Tô Hiến Thành', 'to-hien-thanh', 0, 0, 45, 1, 0, 0, 1494962021, 1),
(69, 6, 'Huỳnh Thúc Kháng', 'huynh-thuc-khang', 0, 0, 46, 1, 0, 0, 1494962021, 1),
(70, 6, 'Ngọc Hân', 'ngoc-han', 0, 0, 47, 1, 0, 0, 1494962021, 1),
(71, 6, 'Mai Hắc Đế', 'mai-hac-de', 0, 0, 48, 1, 0, 0, 1494962021, 1),
(72, 6, 'Lê Chân', 'le-chan', 0, 0, 49, 1, 0, 0, 1494962022, 1),
(73, 6, 'Nguyễn Thiếp', 'nguyen-thiep', 0, 0, 50, 1, 0, 0, 1494962022, 1),
(74, 6, 'Trục 42m', 'truc-42m', 0, 0, 51, 1, 0, 0, 1494962022, 1),
(75, 6, 'An Cư 7', 'an-cu-7', 0, 0, 52, 1, 0, 0, 1494962022, 1),
(76, 6, 'Tản Đà', 'tan-da', 0, 0, 53, 1, 0, 0, 1494962023, 1),
(77, 6, 'Hồ Thấu', 'ho-thau', 0, 0, 54, 1, 0, 0, 1494962023, 1),
(78, 6, 'Nguyễn Lộ Trạch', 'nguyen-lo-trach', 0, 0, 55, 1, 0, 0, 1494962023, 1),
(79, 6, 'Phạm Văn Đồng', 'pham-van-dong', 0, 0, 56, 1, 0, 0, 1494962023, 1),
(80, 6, 'Phước Trường', 'phuoc-truong', 0, 0, 57, 1, 0, 0, 1494962024, 1),
(81, 6, 'Nguyễn Cao Luyện', 'nguyen-cao-luyen', 0, 0, 58, 1, 0, 0, 1494962024, 1),
(82, 6, 'Lê Đình Lý', 'le-dinh-ly', 0, 0, 59, 1, 0, 0, 1494962024, 1),
(83, 6, 'Mỹ An 5', 'my-an-5', 0, 0, 60, 1, 0, 0, 1494962024, 1),
(84, 6, 'Đỗ Bí', 'do-bi', 0, 0, 61, 1, 0, 0, 1494962024, 1),
(85, 6, 'Hoàng Diệu', 'hoang-dieu', 0, 0, 62, 1, 0, 0, 1494962024, 1),
(86, 6, 'Nam Sơn', 'nam-son', 0, 0, 63, 1, 0, 0, 1494962024, 1),
(87, 6, 'Ung Văn Khiêm', 'ung-van-khiem', 0, 0, 64, 1, 0, 0, 1494962025, 1),
(88, 6, 'Tống Phước Phổ', 'tong-phuoc-pho', 0, 0, 65, 1, 0, 0, 1494962025, 1),
(89, 6, 'Trần Phú', 'tran-phu', 0, 0, 66, 1, 0, 0, 1494962025, 1),
(90, 6, 'Dương Trí Trạch', 'duong-tri-trach', 0, 0, 68, 1, 0, 0, 1494962025, 1),
(91, 6, 'Hàn Thuyên', 'han-thuyen', 0, 0, 69, 1, 0, 0, 1494962025, 1),
(92, 6, 'Trần Nguyên Hãn', 'tran-nguyen-han', 0, 0, 70, 1, 0, 0, 1494962025, 1),
(93, 6, 'Lê Lợi', 'le-loi', 0, 0, 71, 1, 0, 0, 1494962026, 1),
(94, 6, 'Sơn Thủy Đông 4', 'son-thuy-dong-4', 0, 0, 73, 1, 0, 0, 1494962026, 1),
(95, 6, 'Võ Văn Tần', 'vo-van-tan', 0, 0, 73, 1, 0, 0, 1494962026, 1),
(96, 6, 'Phước Trường 14', 'phuoc-truong-14', 0, 0, 74, 1, 0, 0, 1494962026, 1),
(97, 6, 'Thanh Long', 'thanh-long', 0, 0, 75, 1, 0, 0, 1494962026, 1),
(98, 6, 'Cô Giang', 'co-giang', 0, 0, 76, 1, 0, 0, 1494962026, 1),
(99, 6, 'Lê Quang Đạo', 'le-quang-dao', 0, 0, 77, 1, 0, 0, 1494962026, 1),
(100, 6, 'An Thượng 30', 'an-thuong-30', 0, 0, 78, 1, 0, 0, 1494962027, 1),
(101, 6, 'Phan Tôn', 'phan-ton', 0, 0, 78, 1, 0, 0, 1494962027, 1),
(102, 6, 'Hoàng Văn Thụ', 'hoang-van-thu', 0, 0, 79, 1, 0, 0, 1494962027, 1),
(103, 6, 'Nguyễn Khuyến', 'nguyen-khuyen', 0, 0, 80, 1, 0, 0, 1494962680, 1),
(104, 6, 'Lưu Quý Kỳ', 'luu-quy-ky', 0, 0, 81, 1, 0, 0, 1494962027, 1),
(105, 6, 'Đầm Rong 2', 'dam-rong-2', 0, 0, 82, 1, 0, 0, 1494962028, 1),
(106, 6, 'Hoàng Bích Sơn', 'hoang-bich-son', 0, 0, 83, 1, 0, 0, 1494962028, 1),
(107, 6, 'Phạm Như Xương', 'pham-nhu-xuong', 0, 0, 84, 1, 0, 0, 1494962769, 1),
(108, 6, 'Võ Như Hưng', 'vo-nhu-hung', 0, 0, 85, 1, 0, 0, 1494962028, 1),
(109, 6, 'Tùng Thiên Vương', 'tung-thien-vuong', 0, 0, 86, 1, 0, 0, 1494962028, 1),
(110, 6, 'Nguyễn Hữu Thọ', 'nguyen-huu-tho', 0, 0, 87, 1, 0, 0, 1494962028, 1),
(111, 6, 'Đặng Văn Ngữ', 'dang-van-ngu', 0, 0, 88, 1, 0, 0, 1494962028, 1),
(112, 6, 'Tân Thuận', 'tan-thuan', 0, 0, 89, 1, 0, 0, 1494962029, 1),
(113, 6, 'Thanh Thủy ', 'thanh-thuy', 0, 0, 90, 1, 0, 0, 1494962029, 1),
(114, 6, 'Lê Hữu Trác', 'le-huu-trac', 0, 0, 91, 1, 0, 0, 1494962029, 1),
(115, 6, 'Đa Mặn 3', 'da-man-3', 0, 0, 92, 1, 0, 0, 1494962029, 1),
(116, 6, 'Trần Đức Thông', 'tran-duc-thong', 0, 0, 93, 1, 0, 0, 1494962029, 1),
(117, 6, 'Lê Văn Hiến', 'le-van-hien', 0, 0, 94, 1, 0, 0, 1494962029, 1),
(118, 6, 'Khúc Hạo', 'khuc-hao', 0, 0, 95, 1, 0, 0, 1494962029, 1),
(119, 6, 'Đông Giang', 'dg-dong-giang', 0, 0, 96, 1, 0, 0, 1495043830, 1),
(120, 6, 'Hải Phòng', 'hai-phong', 0, 0, 97, 1, 0, 0, 1494962029, 1),
(121, 6, 'Hồ Nghinh', 'ho-nghinh', 0, 0, 98, 1, 0, 0, 1494962029, 1),
(122, 6, 'Dương Tự Minh', 'duong-tu-minh', 0, 0, 99, 1, 0, 0, 1494962029, 1),
(123, 6, 'Nguyễn Văn Huyên', 'nguyen-van-huyen', 0, 0, 100, 1, 0, 0, 1494962030, 1),
(124, 6, 'Phùng Hưng', 'phung-hung', 0, 0, 101, 1, 0, 0, 1494962030, 1),
(125, 6, 'Phan Châu Trinh', 'phan-chau-trinh', 0, 0, 102, 1, 0, 0, 1494962030, 1),
(126, 6, 'Bàu Năng 3', 'bau-nang-3', 0, 0, 103, 1, 0, 0, 1494962030, 1),
(127, 6, 'Nguyễn Đức An', 'nguyen-duc-an', 0, 0, 104, 1, 0, 0, 1494962030, 1),
(128, 6, 'Lê Thước', 'le-thuoc', 0, 0, 105, 1, 0, 0, 1494962030, 1),
(129, 6, 'Đông Kinh Nghĩa Thục', 'dong-kinh-nghia-thuc', 0, 0, 106, 1, 0, 0, 1494962030, 1),
(130, 6, 'Dương Đình Nghệ', 'duong-dinh-nghe', 0, 0, 107, 1, 0, 0, 1494962030, 1),
(131, 3, 'Hải Châu', 'hai-chau', 0, 0, 1, 1, 0, 1495043231, 1495043231, 1),
(132, 3, 'Thanh Khê', 'thanh-khe', 0, 0, 2, 1, 0, 1495043240, 1495043240, 1),
(133, 3, 'Liên Chiểu', 'lien-chieu', 0, 0, 3, 1, 0, 1495043251, 1495043251, 1),
(134, 3, 'Cẩm Lệ', 'cam-le', 0, 0, 4, 1, 0, 1495043259, 1495043259, 1),
(135, 3, 'Sơn Trà', 'son-tra', 0, 0, 5, 1, 0, 1495043267, 1495043267, 1),
(136, 3, 'Ngũ Hành Sơn', 'ngu-hanh-son', 0, 0, 6, 1, 0, 1495043278, 1495043278, 1),
(137, 3, 'Hòa Vang', 'hoa-vang', 0, 0, 7, 1, 0, 1495043293, 1495043293, 1),
(138, 3, 'Hoàng Sa', 'hoang-sa', 0, 0, 8, 1, 0, 1495043633, 1495043633, 1),
(139, 4, 'Tam Kỳ', 'tam-ky', 0, 0, 1, 1, 0, 1495043672, 1495043672, 1),
(140, 4, 'Hội An', 'hoi-an', 0, 0, 2, 1, 0, 1495043679, 1495043679, 1),
(141, 4, 'Tây Giang', 'tay-giang', 0, 0, 3, 1, 0, 1495043686, 1495043686, 1),
(142, 4, 'Phú Ninh', 'phu-ninh', 0, 0, 4, 1, 0, 1495043731, 1495043731, 1),
(143, 4, 'Đại Lộc', 'dai-loc', 0, 0, 5, 1, 0, 1495043737, 1495043737, 1),
(144, 4, 'Nam Giang', 'nam-giang', 0, 0, 6, 1, 0, 1495043743, 1495043743, 1),
(145, 4, 'Đông Giang', 'dong-giang', 0, 0, 7, 1, 0, 1495043787, 1495043835, 1),
(146, 4, 'Nông Sơn', 'nong-son', 0, 0, 8, 1, 0, 1495043848, 1495043848, 1),
(147, 4, 'Hiệp Đức', 'hiep-duc', 0, 0, 9, 1, 0, 1495043854, 1495043854, 1),
(148, 4, 'Quế Sơn', 'que-son', 0, 0, 10, 1, 0, 1495043860, 1495043860, 1),
(149, 4, 'Tiên Phước', 'tien-phuoc', 0, 0, 11, 1, 0, 1495043869, 1495043869, 1),
(150, 4, 'Phước Sơn', 'phuoc-son', 0, 0, 12, 1, 0, 1495043876, 1495043876, 1),
(151, 4, 'Núi Thành', 'nui-thanh', 0, 0, 13, 1, 0, 1495043916, 1495043916, 1),
(152, 4, 'Nam Trà My', 'nam-tra-my', 0, 0, 14, 1, 0, 1495043925, 1495043925, 1),
(153, 4, 'Điện Bàn', 'dien-ban', 0, 0, 15, 1, 0, 1495043934, 1495043934, 1),
(154, 4, 'Duy Xuyên', 'duy-xuyen', 0, 0, 16, 1, 0, 1495043942, 1495043942, 1),
(155, 4, 'Thăng Bình', 'thang-binh', 0, 0, 17, 1, 0, 1495043951, 1495043951, 1),
(156, 4, 'Bắc Trà My', 'bac-tra-my', 0, 0, 18, 1, 0, 1495043958, 1495043958, 1),
(161, 6, 'Trường Chinh', 'truong-chinh', 0, 0, 108, 1, 0, 1495218192, 1495218192, 1),
(164, 6, 'Con Đường Màu Xanh', 'con-duong-mau-xanh', 0, 0, 109, 1, 0, 1495222047, 1495222047, 1),
(165, 6, '', '', 0, 0, 110, 1, 0, 1495222128, 1495222128, 1),
(166, 6, 'Bình Hòa', 'binh-hoa', 0, 0, 111, 1, 0, 1495381088, 1495381088, 1),
(167, 6, 'Khuê Mỹ Đông', 'khue-my-dong', 0, 0, 112, 1, 0, 1498926932, 1498926932, 1),
(168, 6, 'Lê Ninh', 'le-ninh', 0, 0, 113, 1, 0, 1498928147, 1498928147, 1),
(169, 6, 'Lê Mạnh Trinh', 'le-manh-trinh', 0, 0, 114, 1, 0, 1498928519, 1498928519, 1),
(170, 6, 'An Thượng 4', 'an-thuong-4', 0, 0, 115, 1, 0, 1498928766, 1498928766, 1),
(171, 6, 'Hoàng Kế Viêm', 'hoang-ke-viem', 0, 0, 116, 1, 0, 1498929615, 1498929615, 1),
(172, 6, 'Bà Huyện Thanh Quan', 'ba-huyen-thanh-quan', 0, 0, 117, 1, 0, 1499008385, 1499008385, 27),
(173, 6, 'Đỗ Bí', 'do-bi-yqvusr6aby', 0, 0, 118, 1, 0, 1499008657, 1499008657, 27),
(174, 6, 'Lê Văn Lương', 'le-van-luong', 0, 0, 119, 1, 0, 1499008863, 1499008863, 27),
(175, 6, 'Quốc Lộ 1A', 'quoc-lo-1a', 0, 0, 120, 1, 0, 1499009230, 1499009230, 27),
(176, 6, 'An Thượng 29', 'an-thuong-29', 0, 0, 121, 1, 0, 1499009642, 1499009642, 27),
(177, 6, 'Châu Thị Vĩnh Tế', 'chau-thi-vinh-te', 0, 0, 122, 1, 0, 1499010011, 1499010011, 27),
(178, 6, 'Nguyễn Khoa Chiêm', 'nguyen-khoa-chiem', 0, 0, 123, 1, 0, 1499010152, 1499010152, 27),
(179, 6, 'Bùi Thị Xuân', 'bui-thi-xuan', 0, 0, 124, 1, 0, 1499010306, 1499010306, 27),
(180, 6, 'Hồ Nghinh', 'ho-nghinh-vjhkihq6pl', 0, 0, 125, 1, 0, 1499010480, 1499010480, 27),
(181, 6, 'Phước Trường 2', 'phuoc-truong-2', 0, 0, 126, 1, 0, 1499061085, 1499061085, 27),
(182, 6, 'Tâm Chơn 6', 'tam-chon-6', 0, 0, 127, 1, 0, 1517641666, 1517641666, 25),
(183, 6, 'Thăng Long', 'thang-long', 0, 0, 128, 1, 0, 1517642417, 1517642417, 25),
(184, 6, 'Nghiêm Xuân Yêm', 'nghiem-xuan-yem', 0, 0, 129, 1, 0, 1517814454, 1517814454, 25),
(185, 6, 'Nguyễn Tất Thành', 'nguyen-tat-thanh-q4h4v', 0, 0, 130, 1, 0, 1517814727, 1517814727, 25),
(186, 6, 'Hoang-Sa-Tveqa78Hjh', 'hoang-sa-tveqa78hjh', 0, 0, 131, 1, 0, 1517814752, 1517814752, 25),
(187, 6, 'Ngô Quyền', 'ngo-quyen', 0, 0, 132, 1, 0, 1517814833, 1517814833, 25),
(188, 6, '2', '2', 0, 0, 133, 1, 0, 1539266807, 1539266807, 25),
(189, 6, 'Thăng Bình', 'thang-binh', 0, 0, 134, 1, 0, 1539360878, 1539360878, 25),
(190, 6, 'Thăng Bình - Quảng Nam', 'thang-binh-quang-nam', 0, 0, 135, 1, 0, 1540049836, 1540049836, 25),
(191, 8, '10', '10', 0, 0, 1, 1, 0, 1547239622, 1547239622, 1),
(192, 8, '20', '20', 0, 0, 3, 1, 0, 1547239629, 1547239665, 1),
(193, 8, '30', '30', 0, 0, 4, 1, 0, 1547239634, 1547239657, 1),
(194, 8, '12', '12', 0, 0, 2, 1, 0, 1547239641, 1547239669, 1),
(195, 8, '40', '40', 0, 0, 5, 1, 0, 1547239674, 1547239674, 1),
(196, 8, '50', '50', 0, 0, 6, 1, 0, 1547239680, 1547239680, 1),
(197, 9, '12', '12', 0, 0, 1, 1, 0, 1547239856, 1547239856, 1),
(198, 9, '24', '24', 0, 0, 2, 1, 0, 1547239864, 1547239864, 1),
(199, 9, '36', '36', 0, 0, 3, 1, 0, 1547239873, 1547239873, 1),
(200, 9, '48', '48', 0, 0, 4, 1, 0, 1547239880, 1547239880, 1),
(201, 9, '60', '60', 0, 0, 5, 1, 0, 1547239887, 1547239887, 1),
(202, 9, '72', '72', 0, 0, 6, 1, 0, 1547239895, 1547239895, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_others_menu`
--

CREATE TABLE `olala_others_menu` (
  `others_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `plus` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_others_menu`
--

INSERT INTO `olala_others_menu` (`others_menu_id`, `category_id`, `name`, `slug`, `plus`, `parent`, `sort`, `is_active`, `hot`, `created_time`, `modified_time`, `user_id`) VALUES
(1, 1, 'Hướng', 'huong', '', 0, 1, 1, 0, 1470944854, 1517024264, 1),
(2, 1, 'Loại đường', 'loai-duong', '', 0, 2, 1, 0, 1493371968, 1517024268, 1),
(3, 2, 'Đà Nẵng', 'da-nang', '', 0, 1, 1, 0, 1493371980, 1494961453, 1),
(4, 2, 'Quảng Nam', 'quang-nam', '', 0, 2, 1, 0, 1493371987, 1494961457, 1),
(5, 2, 'Quảng Ngãi', 'quang-ngai', '', 0, 3, 1, 0, 1493371994, 1494961461, 1),
(6, 1, 'Tên đường', 'ten-duong', '', 0, 4, 1, 0, 1493924265, 1495204126, 1),
(7, 1, 'Mức giá', 'muc-gia', '', 0, 3, 1, 0, 1493924502, 1517024272, 1),
(8, 1, 'Trả trước', 'tra-truoc', '', 0, 5, 1, 0, 1547239394, 1547239394, 1),
(9, 1, 'Kỳ hạn', 'ky-han', '', 0, 6, 1, 0, 1547239413, 1547239413, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_page`
--

CREATE TABLE `olala_page` (
  `page_id` int(11) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `content` longtext NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_page`
--

INSERT INTO `olala_page` (`page_id`, `alias`, `name`, `comment`, `content`, `is_active`, `views`, `modified_time`, `user_id`) VALUES
(27, 'copyright', 'Copyright', '', '<p><strong>Trang thông tin bất động sản Nhà phố&nbsp;Đà Nẵng</strong></p>\r\n\r\n<p><u><label>Địa chỉ:</label></u>&nbsp;Tòa nhà PVcombank - Đường 30/4,&nbsp;TP. Đà Nẵng<br />\r\n<label><u>Điện thoại:</u></label>&nbsp;0935 40 04 83<br />\r\n<label><u>Email:</u></label>&nbsp;phanthucquynh@gmail.com</p>\r\n\r\n<p>© Copyright 2016 NhaPhoDaNang.com.vn, All rights reserved.</p>\r\n', 1, 1, 1519747307, 25),
(110, 'contact', 'Thông tin liên hệ cuối trang chủ', '', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"480\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.8627693985927!2d108.13585811428598!3d16.072609488878868!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31421f2a16760673%3A0xe7dad6ca35118ef2!2zMzE3IMOCdSBDxqEsIEhvw6AgS2jDoW5oIELhuq9jLCBMacOqbiBDaGnhu4N1LCDEkMOgIE7hurVuZywgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1540480276876\" style=\"border:0\" width=\"100%\"></iframe></p>\r\n', 1, 1, 1540480303, 25),
(106, 'contact_page', 'Thông tin liên hệ quảng cáo', '', '<p><span style=\"color:#02b9a0;font-size:16px\"><strong>Liên hệ quảng cáo với thông tin dưới đây</strong></span><br />\r\n<u>Địa chỉ:</u> 317 Âu Cơ, Hòa Khánh, TP. Đà Nẵng<br />\r\n<u>Điện thoại:</u> 0163 2852 398&nbsp; -&nbsp; <u>Email:</u> nhanduc96@gmail.com&nbsp; -&nbsp; <u>Website:</u> www.bdssale.com.vn</p>\r\n', 1, 1, 1540299193, 25),
(115, 'name_slider', 'Tên Slider', 'Khám phá ngôi nhà hoàn hảo của bạn', '<p>Với nguồn nhà hoàn chỉnh nhất để bán và bất động sản gần bạn</p>\r\n', 1, 1, 1540079175, 25),
(107, 'adv', 'Đăng quảng cáo', '', '<p><img alt=\"\" src=\"/uploads/images/site/img_201703090909551209.gif\" style=\"max-width: 100%;\" /></p>\r\n', 1, 1, 1518058590, 25),
(112, 'project', 'Dự án bất động sản nổi bật', '', '<h1 class=\"title\">Dự án bất động sản nổi bật</h1>\r\n\r\n<p class=\"f-space10\">Nhà phố Đà Nẵng mang đến cho bạn đầy đủ thông tin các dự án bất động sản nổi bật nhất hiện nay.</p>\r\n', 1, 1, 1518191811, 25),
(113, 'realty', 'Nhà đất bán nổi bật', '', '<h1 class=\"title\">Bất động sản nổi bật</h1>\r\n\r\n<p>Với Nhà phố Đà Nẵng, bạn sẽ trải nghiệm sự phong phú về sản phẩm và thông minh trong giao diện hiển thị.</p>\r\n', 1, 1, 1518191812, 25),
(114, 'post', 'Tin tức thị trường', '', '<h1 class=\"title\">Tin tức thị trường</h1>\r\n\r\n<p>Nhận định thị trường, thông tin hoạt động bất động sản và góc chia sẻ kiến thức.</p>\r\n', 1, 1, 1518194375, 25),
(116, 'vung_lan_can', 'Tìm vùng lân cận của bạn', 'Tìm vùng lân cận của bạn', '<p>Các chổ cho thuê thân thiện với vật nuôi không? Tỷ lệ tội phạm là gì? Các trường học thế nào? Nhận<br />\r\nthông tin địa phương quan trọng về khu vực bạn quan tâm nhất.</p>\r\n', 1, 1, 1540080096, 25),
(117, 'muc_trung_binh', 'Mức Trung Bình', 'Mức trung bình quốc gia của ngày hôm nay', '<p>&nbsp;&nbsp;</p>\r\n', 1, 1, 1540080356, 25),
(118, 'cong_cu', 'Công cụ và thông tin', 'Người cho vay thế chấp', 'Nhận lãi xuất ngay hôm nay, kết nối với người địa phương và nhận thông báo.\r\n', 1, 1, 1540080576, 25);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_prjname`
--

CREATE TABLE `olala_prjname` (
  `prjname_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_product`
--

CREATE TABLE `olala_product` (
  `product_id` int(11) NOT NULL,
  `product_menu_id` int(11) NOT NULL DEFAULT '0',
  `project` int(11) NOT NULL DEFAULT '0',
  `owner` int(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `img_note` varchar(255) DEFAULT NULL,
  `upload_id` bigint(20) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `acreage` float NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `price_unit` varchar(255) DEFAULT NULL,
  `direction` varchar(255) DEFAULT NULL,
  `direction_2` varchar(255) DEFAULT NULL,
  `road` varchar(255) DEFAULT NULL,
  `road_2` varchar(255) DEFAULT NULL,
  `bedroom` int(11) NOT NULL DEFAULT '0',
  `bathroom` int(11) NOT NULL DEFAULT '0',
  `city` varchar(255) DEFAULT NULL,
  `city_2` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `district_2` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4,
  `content` text CHARACTER SET utf8mb4,
  `youtube` varchar(255) DEFAULT NULL,
  `youtube_img` varchar(255) NOT NULL DEFAULT 'no',
  `tags` varchar(255) DEFAULT NULL,
  `tags_2` varchar(255) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `pin` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `thebest` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `map` text,
  `history` text,
  `pano` varchar(255) DEFAULT NULL,
  `mail` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_product`
--

INSERT INTO `olala_product` (`product_id`, `product_menu_id`, `project`, `owner`, `name`, `slug`, `img`, `img_note`, `upload_id`, `status`, `acreage`, `price`, `price_unit`, `direction`, `direction_2`, `road`, `road_2`, `bedroom`, `bathroom`, `city`, `city_2`, `district`, `district_2`, `address`, `address_2`, `comment`, `content`, `youtube`, `youtube_img`, `tags`, `tags_2`, `is_active`, `hot`, `pin`, `views`, `thebest`, `title`, `description`, `keywords`, `created_time`, `modified_time`, `user_id`, `map`, `history`, `pano`, `mail`) VALUES
(664, 255, 0, 0, 'Đại Dương, đường Hoàng Sa, phường Thọ Quang, Sơn Trà, Đà Nẵng', 'ban-3-lo-dat-mat-bien-gan-cong-vien-dai-duong-duong-hoang-sa-phuong-tho-quang-son-tra-da-nang', 'dai-duong-duong-hoang-sa-phuong-tho-quang-son-tra-da-nang-1517814753.png', '', 2183, 1, 372, 0, '', '[]', '[]', '[]', '[]', 0, 0, 'da-nang', 'Đà Nẵng', 'son-tra', 'Sơn Trà', 'hoang-sa-tveqa78hjh', 'Hoang-Sa-Tveqa78Hjh', 'Chính chủ bán 3 lô đất B2.8 ô 33, 34, 35, tổng diện tích 372,4m2 đường Hoàng Sa, phường Thọ Quang, Sơn Trà, Đà Nẵng.', '<p>Chính chủ bán 3 lô đất B2.8 ô 33, 34, 35, tổng diện tích 372,4m2 đường Hoàng Sa,&nbsp;phường Thọ Quang, Sơn Trà, Đà Nẵng, giá 150tr/m2 ô ba mặt 35 nhân hệ số 1,2.<br />\r\nĐất ở Đô thị.<br />\r\nHướng Đông Nam.<br />\r\n<strong>Liên hệ chính chủ 0905779085</strong></p>\r\n', '', 'no', '[]', '[]', 1, 0, 0, 136, 0, '', '', '', 1516985760, 1519876925, 25, '', '', '', 0),
(665, 255, 0, 0, 'Bán lô đất đường nguyễn tất thành, cách biển 800m - 135m2 (7.5 x18.2)', 'ban-lo-dat-duong-nguyen-tat-thanh-cach-bien-800m-135m2-7-5-x18-2', 'ban-lo-dat-duong-nguyen-tat-thanh-cach-bien-800m-135m2-7-5-x18-2-1517814728.jpg', '', 2206, 1, 135.8, 9300000, '/m<sup>2</sup>', '[\"huong-nam\",\"huong-dong-bac\"]', '[\"Nam\",\"Đông Bắc\"]', '[\"15m\",\"21m\"]', '[\"15m\",\"21m\"]', 0, 0, 'da-nang', 'Đà Nẵng', 'lien-chieu', 'Liên Chiểu', 'nguyen-tat-thanh-q4h4v', 'Nguyễn Tất Thành', 'Cuối năm, cần bán lô đất ở quận Liên Chiểu, gần cảng biển Liên Chiểu, nằm ngay khu phố đặc khu kinh tế Tây Bắc của Đà Nẵng.', '<p>Cuối năm, cần bán lô đất ở quận Liên Chiểu, gần cảng biển Liên Chiểu, nằm ngay khu phố đặc khu kinh tế&nbsp;Tây Bắc&nbsp;của Đà Nẵng.<br />\r\nVị trí cách biển 800m, cách đường Nguyễn Tất Thành khoảng 50m, bao quanh hồ thoáng mát rất tiện để đầu tư hoặc nghỉ dưỡng.<br />\r\nDiện tích: 7.5 x 18.2 = 135m2.<br />\r\nGiá: 9.3 triệu/m2.<br />\r\nMặt tiền đường 17.5m - lề 4m.<br />\r\nCó hỗ trợ vay vốn ngân hàng 50% giá trị sản phẩm, ưu đãi không lãi suất trong năm đầu tiên.<br />\r\nLiên hệ SĐT: 0941.50.42.05.<br />\r\nVui lòng liên hệ trước 30p khi đi xem đất.<br />\r\nCảm ơn!</p>\r\n', '', 'no', '[\"Đất bán\",\"Đất thổ cư\"]', '[\"dat-ban\",\"dat-tho-cu\"]', 1, 0, 0, 63, 0, '', '', '', 1517218560, 1517814728, 25, '', '', '', 0),
(666, 255, 0, 0, 'Cần bán cặp đất đường lê quang đạo rất đẹp, gần biển mỹ khê. đường 7,5m, giá 17,7 tỷ', 'can-ban-cap-dat-duong-le-quang-dao-rat-dep-gan-bien-my-khe-duong-7-5m-gia-17-7-ty', 'can-ban-cap-dat-duong-le-quang-dao-rat-dep-gan-bien-my-khe-duong-7-1517814653.jpg', '', 2207, 1, 164, 17700000000, '', '[\"huong-tay\"]', '[\"Tây\"]', '[\"7m5\"]', '[\"7m5\"]', 0, 0, 'da-nang', 'Đà Nẵng', 'ngu-hanh-son', 'Ngũ Hành Sơn', 'le-quang-dao', 'Lê Quang Đạo', 'Tôi bán cặp đất đường Lê Quang Đạo vị trí đẹp quận Ngũ Hành Sơn, Đà Nẵng - Gần biển Mỹ Khê, 1 trong 10 bãi biển đẹp nhất thế giới.', '<p>Tôi bán cặp đất đường Lê Quang Đạo vị trí đẹp quận&nbsp;Ngũ Hành Sơn, Đà Nẵng - Gần biển Mỹ Khê, 1 trong 10 bãi biển đẹp nhất thế giới.<br />\r\n<br />\r\nKhu dân cư đông đúc dân trí cao, khu 387 quy hoạch phố Tây.<br />\r\n<br />\r\nĐông khách du lịch, kinh doanh nhà nghỉ khách sạn sầm uất.<br />\r\n<br />\r\nDiện tích 9*18,3m = 164,8m2, hướng Tây, đường 7.5m.<br />\r\n<br />\r\nGiá 17,7 tỷ.</p>\r\n', '', 'no', '[\"Đất bán\",\"Đất thổ cư\"]', '[\"dat-ban\",\"dat-tho-cu\"]', 1, 0, 1, 116, 0, '', '', '', 1517220060, 1518195168, 25, '', '', '', 0),
(667, 255, 0, 0, 'Cần bán đất tại mặt tiền đường an thượng 30, dt 162m2, hướng nam, hợp xây khách sạn, homestay', 'can-ban-dat-tai-mat-tien-duong-an-thuong-30-dt-162m2-huong-nam-hop-xay-khach-san-homestay', 'can-ban-dat-tai-mat-tien-duong-an-thuong-30-dt-162m2-huong-nam-hop-xay-k-1517814494.jpg', '', 2220, 1, 162, 19500000000, '', '[\"huong-nam\"]', '[\"Nam\"]', '[\"5m5\"]', '[\"5m5\"]', 0, 0, 'da-nang', 'Đà Nẵng', 'ngu-hanh-son', 'Ngũ Hành Sơn', 'an-thuong-30', 'An Thượng 30', 'Tôi bán đất tại mặt tiền đường An Thượng 30, khu biển 387 du lịch đông đúc. Gái cả hợp lý.', '<p>- DT: 162m2 = 9 x 18m.<br />\r\n- Đường quy hoạch 5m5, vỉa hè 3m.<br />\r\n- Hướng: Nam.<br />\r\n- Thích hợp xây KD khách sạn, homestay.<br />\r\n- Giá: 19,5 tỷ&nbsp;<br />\r\n&nbsp;</p>\r\n', '', 'no', '[\"Đất bán\",\"Đất thổ cư\"]', '[\"dat-ban\",\"dat-tho-cu\"]', 1, 0, 1, 94, 0, '', '', '', 1517629020, 1517848920, 25, '', '', '', 0),
(668, 254, 0, 0, 'Khu đô thị FPT City Đà Nẵng - Phường Hòa Hải, Quận Ngũ Hành Sơn, Đà Nẵng', 'khu-do-thi-fpt-city-da-nang-phuong-hoa-hai-quan-ngu-hanh-son-da-nang', 'khu-do-thi-fpt-city-da-nang-phuong-hoa-hai-quan-ngu-hanh-son-da-nang-1517814467.jpg', '', 2221, 1, 500, 10000000, '/m<sup>2</sup>', '[]', '[]', '[\"10m5\"]', '[\"10m5\"]', 0, 0, 'da-nang', 'Đà Nẵng', 'ngu-hanh-son', 'Ngũ Hành Sơn', '', '', 'Mở bán đất nền biệt thự ven sông Đà Nẵng, bên cạnh đại học FPT, 6,5 triệu/m2, chiết khấu đến 8%', '<p><strong>ĐẤT BIỂN ĐÀ NẴNG - KHU ĐÔ THỊ FPT.</strong></p>\r\n\r\n<p><strong>1, Vị trí:</strong></p>\r\n\r\n<p>- Đất Hòa Hải Đà Nẵng - Đất nền&nbsp;<strong>biệt thự</strong>&nbsp;ven sông vị trí trung tâm khu kinh tế trọng điểm phía Nam Đà Nẵng.</p>\r\n\r\n<p>- Cách cầu Rồng Đà Nẵng chỉ 10km, cách bệnh viện 600 giường 5km.</p>\r\n\r\n<p>- Nằm trên tuyến đường ven biển kết nối phố cổ Hội An và Đà Nẵng. Cách phố cổ Hội An 15km.</p>\r\n\r\n<p><strong>2, Lý do chọn&nbsp;<strong>đất nền</strong>&nbsp;biệt thự ven sông để đầu tư ở thời điểm hiện tại:</strong></p>\r\n\r\n<p>- Đất FPT Đà Nẵng- Vị trí kim cương, kết nối các khu đô thị lớn xung quanh.</p>\r\n\r\n<p>- Hạ tầng hoàn thiện đã có sổ đỏ.</p>\r\n\r\n<p>- Giá đầu tư đất Hòa Quý Đà Nẵng chỉ từ: 6,5&nbsp;tr/m2.</p>\r\n\r\n<p>- Hạ tầng xung quanh hoàn thiện tốt.</p>\r\n\r\n<p><strong>3, Chính sách bán hàng đất Ngũ Hành Sơn.</strong></p>\r\n\r\n<p>Đất Đà Nẵng giá rẻ, chiết khấu cao lên đến 8% cho khách hàng giao dịch trước ngày 21/1.</p>\r\n\r\n<p>Hỗ trợ làm sổ hồng nhanh trong vòng 24h.</p>\r\n\r\n<p><strong>Liên hệ: Mr Thái khi mua đất làng đại học Đà Nẵng.</strong></p>\r\n', '', 'no', '[]', '[]', 1, 0, 0, 32, 0, '', '', '', 1517630400, 1518197758, 25, '', '', '', 0),
(669, 254, 0, 0, 'Đất Nam Việt Á - Đất Nghiêm Xuân Yêm giá hữu nghị cuối năm', 'dat-nam-viet-a-dat-nghiem-xuan-yem-gia-huu-nghi-cuoi-nam', 'dat-nam-viet-a-dat-nghiem-xuan-yem-gia-huu-nghi-cuoi-nam-1517814455.jpg', '', 2222, 1, 100, 3000000000, '', '[]', '[]', '[]', '[]', 0, 0, 'da-nang', 'Đà Nẵng', 'hai-chau', 'Hải Châu', 'nghiem-xuan-yem', 'Nghiêm Xuân Yêm', 'Đất Nam Việt Á giá hữu nghị Đường Nghiêm Xuân Yêm  Diện tích 100m2. 5x20m Giá 3 tỷ  Nhanh tay liên hệ để biết thêm thông tin. Cuối năm hốt lẹ qua năm có thêm thu nhập lớn.', '<p>Đất Nam Việt Á giá hữu nghị</p>\r\n\r\n<p>Đường&nbsp;Nghiêm Xuân Yêm&nbsp;</p>\r\n\r\n<p>Diện tích 100m2. 5x20m</p>\r\n\r\n<p>Giá 3 tỷ&nbsp;</p>\r\n\r\n<p>Nhanh tay liên hệ để biết thêm thông tin.</p>\r\n\r\n<p>Cuối năm hốt lẹ qua năm có thêm thu nhập lớn</p>\r\n\r\n<p>Rất hân hạnh được đón tiếp quý khách.</p>\r\n', '', 'no', '[\"Đất bán\",\"Đất nền dự án\"]', '[\"dat-ban\",\"dat-nen-du-an\"]', 1, 0, 0, 21, 0, '', '', '', 1517630640, 1517850586, 25, '', '', '', 0),
(676, 262, 0, 0, 'Cần bán đất tại mặt tiền đường an thượ', 'can-ban-dat-tai-mat-tien-duong-an-thuo', 'can-ban-dat-tai-mat-tien-duong-an-thuo-1539266746.jpg', '', 2415, 1, 12, 2000000000, '/m<sup>2</sup>', '[\"huong-dong\"]', '[\"Đông\"]', '[\"5m5\"]', '[\"5m5\"]', 2, 3, 'da-nang', 'Đà Nẵng', 'thanh-khe', 'Thanh Khê', '', '', 'Tôi bán đất tại mặt tiền đường An Thượng 30, khu biển 387 du lịch đông đúc. Gái cả hợp lý.', '<p>Tôi bán đất tại mặt tiền đường&nbsp;An Thượng&nbsp;30, khu biển 387 du lịch đông đúc. Gái cả hợp lý.</p>\r\n', '', 'no', '[]', '[]', 1, 0, 0, 24, 0, '', '', '', 1539266460, 1539266746, 25, '', '', '', 0),
(677, 262, 0, 0, 'Cần bán cặp đất đường lê quang đạo', 'can-ban-cap-dat-duong-le-quang-dao', 'can-ban-cap-dat-duong-le-quang-dao-1539266807.jpg', '', 2416, 1, 22, 22222222, '/m<sup>2</sup>', '[\"huong-khong-xac-dinh\"]', '[\"(không xác định)\"]', '[\"42m\"]', '[\"42m\"]', 2, 2, 'da-nang', 'Đà Nẵng', 'hoang-sa', 'Hoàng Sa', '2', '2', '\r\nĐất Nam Việt Á - Đất Nghiêm Xuân Yêm giá hữu nghị cuối năm\r\nĐất Nam Việt Á giá hữu nghị Đường Nghiêm Xuân Yêm Diện tích 100m2. 5x20m Giá 3 tỷ ..', '<h3><a href=\"http://webnhan:81/dat-nam-viet-a-dat-nghiem-xuan-yem-gia-huu-nghi-cuoi-nam\" title=\"Đất Nam Việt Á - Đất Nghiêm Xuân Yêm giá hữu nghị cuối năm\">Đất Nam Việt Á - Đất Nghiêm Xuân Yêm giá hữu nghị cuối năm</a></h3>\r\n\r\n<p>Đất Nam Việt Á giá hữu nghị Đường Nghiêm Xuân Yêm Diện tích 100m2. 5x20m Giá 3 tỷ ..</p>\r\n', '', 'no', '[]', '[]', 1, 0, 0, 63, 0, '', '', '', 1539266700, 1539267551, 25, '', '', '', 0),
(678, 267, 0, 0, 'Cần bán cặp đất đường lê quang đạo', 'can-ban-cap-dat-duong-le-quang-dao-lvnkuhvsfu', 'can-ban-cap-dat-duong-le-quang-dao-1539360632.jpg', '', 2417, 1, 2, 32111, '/m<sup>2</sup>', '[\"huong-dong\"]', '[\"Đông\"]', '[\"5m5\"]', '[\"5m5\"]', 2, 2, 'da-nang', 'Đà Nẵng', 'thanh-khe', 'Thanh Khê', 'hai-phong', 'Hải Phòng', 'Đất Nam Việt Á - Đất Nghiêm Xuân Yêm giá hữu nghị cuối năm Đất Nam Việt Á ', '<p>Đất Nam Việt Á - Đất Nghiêm Xuân Yêm giá hữu nghị cuối năm Đất Nam Việt Á&nbsp;</p>\r\n', '', 'no', '[]', '[]', 1, 0, 0, 8, 0, '', '', '', 1539360480, 0, 25, '', '', '', 0),
(679, 267, 0, 0, 'Cần bán cặp đất đường lê quang đạo', 'can-ban-cap-dat-duong-le-quang-dao-u6shwna3aq', 'can-ban-cap-dat-duong-le-quang-dao-1539360684.jpg', '', 2418, 1, 2, 2222222, '/tháng', '[\"huong-tay\"]', '[\"Tây\"]', '[\"5m5\"]', '[\"5m5\"]', 2, 2, 'quang-nam', 'Quảng Nam', 'hoi-an', 'Hội An', 'tran-hung-dao', 'Trần Hưng Đạo', 'Đất Nam Việt Á - Đất Nghiêm Xuân Yêm giá hữu nghị cuối năm Đất Nam Việt Á ', '<p>Đất Nam Việt Á - Đất Nghiêm Xuân Yêm giá hữu nghị cuối năm Đất Nam Việt Á&nbsp;</p>\r\n', '', 'no', '[]', '[]', 1, 0, 0, 5, 0, '', '', '', 1539360600, 0, 25, '', '', '', 0),
(680, 267, 0, 0, 'Cần bán cặp đất đường lê quang đạo', 'can-ban-cap-dat-duong-le-quang-dao-8r4419xbcz', 'can-ban-cap-dat-duong-le-quang-dao-1539360759.jpg', '', 2419, 1, 2, 22000, '/m<sup>2</sup>', '[\"huong-tay-bac\"]', '[\"Tây Bắc\"]', '[\"48m\"]', '[\"48m\"]', 2, 2, 'quang-nam', 'Quảng Nam', 'hiep-duc', 'Hiệp Đức', 'thang-long', 'Thăng Long', 'Đất Nam Việt Á - Đất Nghiêm Xuân Yêm giá hữu nghị cuối năm Đất Nam Việt Á ', '<p>Đất Nam Việt Á - Đất Nghiêm Xuân Yêm giá hữu nghị cuối năm Đất Nam Việt Á&nbsp;</p>\r\n', '', 'no', '[]', '[]', 1, 0, 0, 5, 0, '', '', '', 1539360660, 1543680523, 25, '', '', '[]', 0),
(681, 268, 0, 0, 'Đất Nghiêm Xuân Yêm giá hữu nghị', 'dat-nghiem-xuan-yem-gia-huu-nghi', 'dat-nghiem-xuan-yem-gia-huu-nghi-1539360835.jpg', '', 2420, 1, 222, 22, '/tháng', '[\"huong-tay\"]', '[\"Tây\"]', '[\"5m5\"]', '[\"5m5\"]', 2, 2, 'da-nang', 'Đà Nẵng', 'hai-chau', 'Hải Châu', 'thang-long', 'Thăng Long', 'Đất Nam Việt Á - Đất Nghiêm Xuân Yêm giá hữu nghị cuối năm Đất Nam Việt Á ', '<p>Đất Nam Việt Á - Đất Nghiêm Xuân Yêm giá hữu nghị cuối năm Đất Nam Việt Á&nbsp;</p>\r\n', '', 'no', '[]', '[]', 1, 0, 0, 7, 0, '', '', '', 1539360780, 0, 25, '', '', '', 0),
(682, 268, 0, 0, 'Đất Nam Việt Á - Đất Nghiêm Xuân', 'dat-nam-viet-a-dat-nghiem-xuan', 'dat-nam-viet-a-dat-nghiem-xuan-1539360878.jpg', '', 2421, 1, 120, 2, '/tháng', '[]', '[]', '[\"21m\"]', '[\"21m\"]', 4, 2, 'da-nang', 'Đà Nẵng', 'hoa-vang', 'Hòa Vang', 'thang-binh', 'Thăng Bình', 'Đất Nam Việt Á - Đất Nghiêm Xuân Yêm giá hữu nghị cuối năm Đất Nam Việt Á ', '<p>Đất Nam Việt Á - Đất Nghiêm Xuân Yêm giá hữu nghị cuối năm Đất Nam Việt Á&nbsp;</p>\r\n', '', 'no', '[]', '[]', 1, 0, 0, 1, 0, '', '', '', 1539360840, 1541695147, 25, '', '', '[]', 0),
(683, 268, 0, 0, 'Cần bán cặp đất đường lê quang đạo đà nẵng', 'can-ban-cap-dat-duong-le-quang-dao-da-nang', 'can-ban-cap-dat-duong-le-quang-dao-1539361092.jpg', '', 2422, 1, 99, 2, '/m<sup>2</sup>', '[]', '[]', '[]', '[]', 4, 3, 'da-nang', 'Đà Nẵng', 'cam-le', 'Cẩm Lệ', '2-thang-9', '2 Tháng 9', 'Thăng Bình - Quảng Nam', '<p>Thăng Bình - Quảng Nam</p>\r\n', '', 'no', '[]', '[]', 1, 0, 0, 1, 0, '', '', '', 1539361020, 1541695006, 25, '', '', '[]', 0),
(684, 271, 0, 0, 'Cần bán cặp đất đường lê quang đạo', 'can-ban-cap-dat-duong-le-quang-dao-4sbx8pw7dx', 'can-ban-cap-dat-duong-le-quang-dao-1539362493.jpg', '', 2423, 1, 2, 2, '/m<sup>2</sup>', '[]', '[]', '[\"3m75\"]', '[\"3m75\"]', 2, 2, 'da-nang', 'Đà Nẵng', 'hai-chau', 'Hải Châu', 'trung-nu-vuong', 'Trưng Nữ Vương', 'Đất Nam Việt Á - Đất Nghiêm Xuân Yêm giá hữu nghị cuối năm Đất Nam Việt Á ', '<p>Đất Nam Việt Á - Đất Nghiêm Xuân Yêm giá hữu nghị cuối năm Đất Nam Việt Á&nbsp;</p>\r\n', '', 'no', '[]', '[]', 1, 0, 0, 29, 0, '', '', '', 1539362460, 0, 25, '', '', '', 0),
(685, 273, 0, 0, 'Cần bán cặp đất đường lê quang đạo', 'can-ban-cap-dat-duong-le-quang-dao-nxr4omb3iz', 'can-ban-cap-dat-duong-le-quang-dao-1539362552.jpg', '', 2424, 1, 0, 2, '/tháng', '[\"huong-dong\"]', '[\"Đông\"]', '[\"3m75\"]', '[\"3m75\"]', 2, 2, 'da-nang', 'Đà Nẵng', 'hai-chau', 'Hải Châu', '', '', 'Cần bán cặp đất đường lê quang đạo', '<p>Cần bán cặp đất đường lê quang đạo</p>\r\n', '', 'no', '[]', '[]', 1, 0, 0, 32, 0, '', '', '', 1539362520, 0, 25, '', '', '', 0),
(686, 270, 0, 0, 'Bán ngôi nhà hiện tại', 'ban-ngoi-nha-hien-tai', 'ban-ngoi-nha-hien-tai-1539362684.jpg', '', 2425, 1, 2, 2, '/tháng', '[]', '[]', '[\"21m\"]', '[\"21m\"]', 2, 2, 'da-nang', 'Đà Nẵng', 'cam-le', 'Cẩm Lệ', 'tran-hung-dao', 'Trần Hưng Đạo', 'Bạn vui lòng quay lại sau', '<h3>Bạn vui lòng quay lại sau</h3>\r\n', '', 'no', '[]', '[]', 1, 0, 0, 97, 0, '', '', '', 1539362580, 0, 25, '', '', '', 0),
(687, 269, 0, 0, 'Bán ngồi nhà hiện tại giá ưu đãi', 'ban-ngoi-nha-hien-tai-gia-uu-dai', 'ban-ngoi-nha-hien-tai-gia-uu-dai-1539363517.jpg', '', 2426, 1, 2, 2, '/tháng', '[]', '[]', '[\"5m5\"]', '[\"5m5\"]', 2, 2, '', '', '', '', '', '', 'Bán ngồi nhà hiện tại giá ưu đãi', '<p>Bán ngồi nhà hiện tại giá ưu đãi</p>\r\n', '', 'no', '[]', '[]', 1, 0, 0, 230, 641, '', '', '', 1539363420, 1540834048, 25, '', '', '', 0),
(696, 267, 0, 0, 'Nguyễn Đức Nhân', 'nguyen-duc-nhan', 'no', '', 2801, 1, 22, 22, '/tháng', '[\"huong-dong\"]', '[\"Đông\"]', '[\"5m5\"]', '[\"5m5\"]', 2, 2, '', '', '', '', '', '', 'Không có mô tả ', '<p>Không có nội dung...</p>\r\n', '', 'no', '[]', '[]', 1, 0, 0, 74, 0, '', '', '', 1540579080, 1543682058, 25, '', '', '[]', 0),
(697, 267, 0, 0, 'Đất nền Hòa Xuân Lô 117', 'dat-nen-hoa-xuan-lo-117', 'no', '', 2803, 1, 122, 20000000000, '/tháng', '[\"huong-dong\"]', '[\"Đông\"]', '[\"10m5\"]', '[\"10m5\"]', 2, 2, 'da-nang', 'Đà Nẵng', 'lien-chieu', 'Liên Chiểu', 'nguyen-chi-thanh', 'Nguyễn Chí Thanh', 'no', '<p id=\"ldp-detail-romance\">A very special home located on nearly 20 acres. The beautiful setting is one of a kind. This 4-5 bedroom home has an additional club house with a 3/4 bath and, kitchen and stone fireplace, with a large deck overlooking the fully stocked lake. Great for entertaining. A perfect setting for a pool also.</p>\r\n\r\n<h4>Schools</h4>\r\n\r\n<ul>\r\n	<li>Elementary School: FREEBURG DIST 70</li>\r\n	<li>High School: Freeburg</li>\r\n	<li>Middle School: FREEBURG DIST 70</li>\r\n	<li>School District: Freeburg DIST 70</li>\r\n</ul>\r\n', '0', 'no', '[]', '[]', 1, 1, 1, 1201, 641, '', '', '', 0, 1545492078, 25, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15336.17101198008!2d108.18234668902934!3d16.06327108984515!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219001064ce23%3A0x67d2fa43164ccba6!2zS2h1IFbEg24gaMOzYSBEdSBs4buLY2ggS2jDtG5nIEdpYW4gWMawYQ!5e0!3m2!1svi!2s!4v1541614842063', '', '[\"653\",\"654\",\"655\"]', 0),
(699, 267, 0, 0, 'Nguyên Nhân', 'nguyen-nhan', 'no', '', 2838, 1, 0, 0, '', '[]', '[]', '[]', '[]', 0, 0, '', '', '', '', '', '', '', '', '', 'no', '[]', '[]', 1, 0, 0, 1, 0, '', '', '', 1543679580, 1543682166, 25, '', '', '[]', 0),
(700, 267, 0, 0, 'Nhan duc', 'nhan-duc', 'no', '', 2839, 1, 0, 0, '', '[]', '[]', '[]', '[]', 0, 0, '', '', '', '', '', '', '', '', '', 'no', '[]', '[]', 1, 0, 0, 1, 0, '', '', '', 1543679760, 1543681651, 25, '', '', '[]', 0),
(701, 267, 0, 0, 'nhanduc', 'nhanduc', 'no', '', 2840, 1, 0, 0, '', '[]', '[]', '[]', '[]', 0, 0, '', '', '', '', '', '', '', '', '', 'no', '[]', '[]', 1, 0, 0, 1, 0, '', '', '', 1543679820, 1546352521, 25, '', '', '[]', 1),
(693, 274, 0, 0, 'Đức Nhân', 'duc-nhan-en0z8663e0', 'no', '', 2764, 1, 2, 2, '/m<sup>2</sup>', '[]', '[]', '[\"33m\"]', '[\"33m\"]', 2, 0, 'quang-nam', 'Quảng Nam', 'hoi-an', 'Hội An', 'tran-hung-dao', 'Trần Hưng Đạo', 'Không', '<p>Không có nHÂN</p>\r\n', '', 'no', '[]', '[]', 1, 0, 0, 10, 0, '', '', '', 1540055580, 0, 25, '', '', '', 0),
(694, 274, 0, 0, 'Đức Nhân', 'duc-nhan-i0596w242z', 'no', '', 2765, 1, 2, 2, '/m<sup>2</sup>', '[]', '[]', '[]', '[]', 2, 2, 'da-nang', 'Đà Nẵng', 'son-tra', 'Sơn Trà', '2-thang-9', '2 Tháng 9', 'Không có ', '<p>Không cso</p>\r\n', '', 'no', '[]', '[]', 1, 0, 0, 11, 0, '', '', '', 1540055820, 0, 25, '', '', '', 0),
(695, 274, 0, 0, 'Đức Nhân', 'duc-nhan-h7th9plmrv', 'no', '', 2771, 1, 2, 2, '/m<sup>2</sup>', '[\"huong-tay\"]', '[\"Tây\"]', '[\"3m75\",\"21m\"]', '[\"3m75\",\"21m\"]', 2, 2, 'da-nang', 'Đà Nẵng', 'thanh-khe', 'Thanh Khê', '', '', 'cư', '<p>cqcwqc</p>\r\n', '', 'no', '[]', '[]', 1, 0, 0, 30, 0, '', '', '', 1540057500, 0, 25, '', '', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_product_menu`
--

CREATE TABLE `olala_product_menu` (
  `product_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `plus` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` text,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_product_menu`
--

INSERT INTO `olala_product_menu` (`product_menu_id`, `category_id`, `name`, `slug`, `plus`, `title`, `description`, `keywords`, `parent`, `sort`, `is_active`, `hot`, `img`, `created_time`, `modified_time`, `user_id`) VALUES
(254, 99, 'Đất nền dự án', 'dat-nen-du-an', '', '', '', '', 0, 1, 1, 0, 'no', 1516136086, 1518197752, 25),
(255, 99, 'Đất thổ cư', 'dat-tho-cu', '', '', '', '', 0, 2, 1, 0, 'no', 1516136176, 1517849853, 25),
(256, 99, 'Đất nông nghiệp', 'dat-nong-nghiep', '', '', '', '', 0, 3, 1, 0, 'no', 1516136188, 1516136188, 1),
(257, 99, 'Đất công nghiệp', 'dat-cong-nghiep', '', '', '', '', 0, 4, 1, 0, 'no', 1516136196, 1516136196, 1),
(258, 99, 'Đất loại khác', 'dat-loai-khac', '', '', '', '', 0, 5, 1, 0, 'no', 1516136204, 1516136204, 1),
(262, 101, 'Căn hộ cho thuê', 'can-ho-cho-thue', '', '', '', '', 0, 1, 1, 0, 'no', 1516136331, 1516136331, 1),
(263, 101, 'Cho thuê nhà', 'cho-thue-nha', '', '', '', '', 0, 2, 1, 0, 'no', 1516136339, 1516136339, 1),
(264, 101, 'Đất cho thuê', 'dat-cho-thue', '', '', '', '', 0, 3, 1, 0, 'no', 1516136348, 1516136348, 1),
(265, 101, 'Mặt bằng cho thuê', 'mat-bang-cho-thue', '', '', '', '', 0, 4, 1, 0, 'no', 1516136359, 1516136359, 1),
(266, 101, 'Kho xưởng cho thuê', 'kho-xuong-cho-thue', '', '', '', '', 0, 5, 1, 0, 'no', 1516136367, 1516136367, 1),
(267, 95, 'Mua nhà đất', 'mua-nha-dat', '', '', '', '', 0, 1, 1, 0, 'no', 1539267822, 1539267822, 25),
(268, 94, 'Bán nhà đất', 'ban-nha-dat', '', '', '', '', 0, 1, 1, 0, 'no', 1539268480, 1539268480, 25),
(269, 88, 'Tìm môi giới', 'timrealors', '', '', '', '', 0, 1, 1, 0, 'no', 1539268505, 1546323803, 25),
(270, 89, 'Hiện trạng ngôi nhà', 'nha-cua-toi-b0g4gvp3ie', '', '', '', '', 0, 1, 1, 0, 'no', 1539268519, 1539362725, 25),
(271, 94, 'Bán chung cư', 'ban-chung-cu', '', '', '', '', 0, 2, 1, 0, 'no', 1539362379, 1539362379, 25),
(272, 94, 'Bán biệt thự', 'ban-biet-thu', '', '', '', '', 0, 3, 1, 0, 'no', 1539362395, 1539362395, 25),
(273, 95, 'Mua biệt thự', 'mua-biet-thu', '', '', '', '', 0, 2, 1, 0, 'no', 1539362420, 1539362420, 25),
(274, 95, 'Mua chung cư', 'mua-chung-cu', '', '', '', '', 0, 3, 1, 0, 'no', 1539362433, 1539362433, 25),
(275, 89, 'Ngôi nhà của tôi', 'ngoi-nha-cua-toi', '', '', '', '', 0, 2, 1, 0, 'no', 1539363244, 1539363244, 25),
(276, 95, 'test them muc', 'test-them-muc', '', '', '', '', 0, 4, 1, 0, 'no', 1542033184, 1542033184, 25);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_project`
--

CREATE TABLE `olala_project` (
  `project_id` int(11) NOT NULL,
  `project_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `content` longtext NOT NULL,
  `upload_id` bigint(20) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_project_menu`
--

CREATE TABLE `olala_project_menu` (
  `project_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `comment` text NOT NULL,
  `project_type` int(11) NOT NULL DEFAULT '0',
  `price_max` bigint(20) NOT NULL DEFAULT '0',
  `price_min` bigint(20) NOT NULL DEFAULT '0',
  `legal` int(1) NOT NULL DEFAULT '0',
  `location` int(11) NOT NULL DEFAULT '0',
  `geo_radius` int(11) NOT NULL DEFAULT '0',
  `project_use` varchar(255) NOT NULL,
  `project_hot` varchar(255) NOT NULL,
  `project_involve` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_road`
--

CREATE TABLE `olala_road` (
  `road_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_role_user`
--

CREATE TABLE `olala_role_user` (
  `role_user_id` int(11) NOT NULL,
  `role` int(11) DEFAULT '0',
  `user` int(11) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `olala_role_user`
--

INSERT INTO `olala_role_user` (`role_user_id`, `role`, `user`, `created_time`, `created_user`) VALUES
(1, 2, 58, 1547313273, 1),
(2, 9, 59, 1547313643, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_share`
--

CREATE TABLE `olala_share` (
  `share_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `count` bigint(20) NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_share`
--

INSERT INTO `olala_share` (`share_id`, `article_id`, `name`, `phone`, `email`, `session`, `count`, `created_time`, `modified_time`) VALUES
(15, 915, 'Tô Thái Huy', '0974779085', 'killlllme@gmail.com', '1e161bb14eb5e2af1394b954c9a6f1bc', 11, 1513784557, 1513779767),
(18, 895, 'Thái Huy', '0905779085', 'huyto.qng@gmail.com', 'bd5add404333f2b7cce53a75ca1fb1ef', 4, 1514617549, 1514621167),
(19, 895, 'Huy Tô', '0905779085', 'killlllme@gmail.com', '9e3f95c855f9bde7c8a0a793f2765b57', 4, 1514618514, 1514618523),
(20, 895, 'Thai Huy To', '0905779086', 'huyto.qng@gmail.com', '4b1d2c56b0c1cf756d52b6fd26a565ae', 2, 1514792970, 1514794776);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_street`
--

CREATE TABLE `olala_street` (
  `street_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_table_extend`
--

CREATE TABLE `olala_table_extend` (
  `table_extend_id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `olala_table_extend`
--

INSERT INTO `olala_table_extend` (`table_extend_id`, `id_product`, `name`, `content`, `created_time`, `sort`) VALUES
(7001, 695, 'qưcqwc', '<p>qưcqcq</p>\r\n', 1540057633, 0),
(7002, 695, 'qucwqc', '<p>qcqwcwqc</p>\r\n', 1540057633, 0),
(7003, 695, 'qưqwvqwvwv', '<p>ưqvwqvwvwqvqvq</p>\r\n', 1540057633, 0),
(7037, 696, 'Ngôi nhà', '<p>Không có nội dung</p>\r\n', 1543682058, 0),
(7038, 696, 'Chất lượng', '<p>Không có nội dung 3</p>\r\n', 1543682058, 0),
(7039, 696, 'Cao cấp', '<p>Không có nội dung</p>\r\n', 1543682058, 0),
(7046, 697, 'Thêm nội dung tin 1', '<h5>About History &amp; Taxes Data</h5>\r\n\r\n<p>The price and tax history data displayed is obtained from public records and/or MLS feeds from the local jurisdiction. Contact your REALTOR<sup>®</sup>&nbsp;directly in order to obtain the most up-to-date information available.</p>\r\n', 1545492078, 0),
(7047, 697, 'Thêm nội dung tin 2', '<h5>About History &amp; Taxes Data</h5>\r\n\r\n<p>The price and tax history data displayed is obtained from public records and/or MLS feeds from the local jurisdiction. Contact your REALTOR<sup>®</sup>&nbsp;directly in order to obtain the most up-to-date information available.</p>\r\n', 1545492078, 0),
(7048, 697, 'Thêm nội dung tin 3', '<h5>About History &amp; Taxes Data</h5>\r\n\r\n<p>The price and tax history data displayed is obtained from public records and/or MLS feeds from the local jurisdiction. Contact your REALTOR<sup>®</sup>&nbsp;directly in order to obtain the most up-to-date information available.</p>\r\n', 1545492078, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_tags`
--

CREATE TABLE `olala_tags` (
  `tags_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count` bigint(20) NOT NULL DEFAULT '0',
  `click` bigint(20) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `olala_tags`
--

INSERT INTO `olala_tags` (`tags_id`, `name`, `slug`, `count`, `click`, `created_time`, `modified_time`, `user_id`) VALUES
(7, 'Kiến trúc', 'kien-truc', 4, 20, 1513669122, 1515532879, 1),
(8, 'Nhà ở', 'nha-o', 9, 5, 1513669122, 1515657455, 1),
(10, 'Sài Gòn', 'sai-gon', 2, 0, 1513669141, 1513669141, 1),
(11, 'Đà Nẵng', 'da-nang', 2, 2, 1513669163, 1515516653, 1),
(12, 'Ý tưởng', 'y-tuong', 1, 0, 1513670256, 1513670256, 1),
(13, 'Toà nhà', 'toa-nha', 1, 0, 1513670256, 1513670256, 1),
(15, 'Nội thất', 'noi-that', 4, 0, 1513670538, 1515657455, 1),
(16, 'Hà Nội', 'ha-noi', 1, 0, 1513670539, 1515657455, 1),
(17, 'Tin tức', 'tin-tuc', 7, 1, 1513670686, 1517626927, 1),
(18, 'Thông tin thị trường', 'thong-tin-thi-truong', 2, 0, 1513670687, 1513670687, 1),
(19, 'Nhật Bản', 'nhat-ban', 1, 0, 1513670687, 1513670687, 1),
(20, 'Giới thiệu', 'gioi-thieu', 1, 1, 1516350305, 1518060089, 1),
(21, 'Về chúng tôi', 've-chung-toi', 1, 0, 1516350305, 1518060089, 1),
(22, 'Bản tin bất động sản', 'ban-tin-bat-dong-san', 7, 0, 1516677398, 1517626927, 25),
(23, 'Dự án', 'du-an', 6, 0, 1516900007, 1517891014, 25),
(24, 'Căn hộ chung cư', 'can-ho-chung-cu', 6, 0, 1516900007, 1517891014, 25),
(25, 'Đất bán', 'dat-ban', 0, 0, 1517218806, 1517218806, 1),
(26, 'Đất thổ cư', 'dat-tho-cu', 0, 0, 1517218806, 1517218806, 1),
(27, 'Góc tư vấn', 'goc-tu-van', 5, 0, 1517627930, 1517628435, 25),
(28, 'Tư vấn kiến trúc', 'tu-van-kien-truc', 4, 0, 1517627931, 1517628435, 25),
(29, 'Mẫu nhà đẹp', 'mau-nha-dep', 1, 0, 1517628148, 1517628165, 25),
(30, 'Đất nền dự án', 'dat-nen-du-an', 0, 0, 1517630594, 1517630594, 25),
(31, 'Nhà bán', 'nha-ban', 0, 0, 1517631245, 1517631245, 25),
(32, 'Nhà phố - Nhà mặt tiền', 'nha-pho-nha-mat-tien', 0, 0, 1517631245, 1517631245, 25),
(33, 'Biệt thự - Villa', 'biet-thu-villa', 0, 0, 1517631784, 1517631784, 25);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_tmp`
--

CREATE TABLE `olala_tmp` (
  `upload_id` int(11) NOT NULL,
  `article` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `olala_tmp`
--

INSERT INTO `olala_tmp` (`upload_id`, `article`, `img`, `created_time`) VALUES
(8, 689, 'nhandevweb_11403.jpeg', 1540050138),
(10, 0, 'nhandevweb_12762.png', 1540050949),
(11, 692, 'nhandevweb_22027.png', 1540055092),
(12, 693, 'nhandevweb_31302.jpeg', 1540055644),
(13, 694, 'nhandevweb_360.png', 1540055886),
(14, 695, 'nhandevweb_5127.jpeg', 1540057572),
(15, 697, 'nhandevweb_28708.jpeg', 1540688913),
(16, 0, 'nhandevweb_19579.jpeg', 1540691531),
(17, 0, 'nhandevweb_204816091.jpeg', 1542430459),
(18, 0, 'nhandevweb_1572069890.jpeg', 1542468059),
(19, 0, 'nhandevweb_1058801507.jpeg', 1543676784),
(20, 0, 'nhandevweb_999516887.jpeg', 1543678369),
(21, 701, 'nhandevweb_1575104972.jpeg', 1543679889),
(22, 680, 'nhandevweb_72873110.jpeg', 1543680519),
(23, 0, 'nhandevweb_1396960118.png', 1543680550),
(24, 700, 'nhandevweb_1947300763.png', 1543681643),
(25, 0, 'nhandevweb_618894951.png', 1543682018),
(26, 696, 'nhandevweb_1070941797.png', 1543681161),
(27, 0, 'nhandevweb_1969006955.png', 1543681202),
(28, 0, 'nhandevweb_1576561561.png', 1543681301),
(29, 0, 'nhandevweb_2024640380.jpeg', 1543681942),
(30, 0, 'nhandevweb_787799509.jpeg', 1543682050),
(31, 699, 'nhandevweb_324892706.png', 1543682163);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_tour`
--

CREATE TABLE `olala_tour` (
  `tour_id` int(11) NOT NULL,
  `tour_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `img_note` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `tour_keys` varchar(255) NOT NULL,
  `price` bigint(15) NOT NULL DEFAULT '0',
  `date_schedule` varchar(255) NOT NULL,
  `date_departure` int(11) NOT NULL DEFAULT '0',
  `means` varchar(255) NOT NULL,
  `tour_type` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `sale` int(3) NOT NULL DEFAULT '0',
  `schedule` text NOT NULL,
  `price_list_service` text NOT NULL,
  `upload_id` bigint(20) NOT NULL,
  `maps` text NOT NULL,
  `video` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `pin` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_tour_menu`
--

CREATE TABLE `olala_tour_menu` (
  `tour_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_tragop`
--

CREATE TABLE `olala_tragop` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `hinh` varchar(255) DEFAULT NULL,
  `laixuat` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `olala_tragop`
--

INSERT INTO `olala_tragop` (`id`, `ten`, `hinh`, `laixuat`, `sort`) VALUES
(1, 'PPF (Home Credit)', 'hf2yitd1-1-ppf-home-credit.png', '3', 0),
(2, 'M-CREDIT', 't47licbi-2-m-credit.jpg', '2', 0),
(3, 'HD SAISON', '5okfhi4t-3-hd-saison.png', '5', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_uploads_tmp`
--

CREATE TABLE `olala_uploads_tmp` (
  `upload_id` bigint(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `list_img` text,
  `created_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_uploads_tmp`
--

INSERT INTO `olala_uploads_tmp` (`upload_id`, `status`, `list_img`, `created_time`) VALUES
(1606, 0, '', 1494148567),
(1607, 0, '', 1494148608),
(1608, 0, '', 1494148724),
(1628, 0, '', 1494522106),
(1619, 1, '', 1494180762),
(1622, 0, '', 1494183294),
(1616, 0, '', 1494180652),
(1627, 0, '', 1494217625),
(1629, 0, '', 1494953260),
(1630, 0, '', 1494955327),
(1631, 0, '', 1494956909),
(1632, 0, '', 1494956952),
(1633, 0, '', 1494957143),
(1634, 0, '', 1494957148),
(1635, 0, '', 1494957283),
(1636, 0, '', 1494957291),
(1637, 0, '', 1494957477),
(1638, 0, '', 1494957571),
(1639, 0, '', 1494957620),
(1640, 0, '', 1494957740),
(1641, 0, '', 1494957784),
(1642, 0, '', 1494957897),
(1643, 0, '', 1494957911),
(1644, 0, '', 1494957928),
(1645, 0, '', 1494957938),
(1646, 0, '', 1494957963),
(1647, 0, '', 1494958319),
(1648, 0, '', 1494958338),
(1649, 0, '', 1494958380),
(1650, 0, '', 1494964431),
(1651, 0, '', 1494964594),
(1652, 0, '', 1494964628),
(1653, 0, '', 1494964706),
(1654, 0, '', 1494964720),
(1655, 0, '', 1494964728),
(1656, 0, '', 1494965079),
(1657, 0, '', 1494965086),
(1658, 0, '', 1494965100),
(1659, 0, '', 1494965108),
(1660, 0, '', 1494965195),
(1661, 0, '', 1494965197),
(1662, 0, '', 1494965321),
(1663, 0, '', 1494965622),
(1664, 0, '', 1494965634),
(1665, 0, '', 1494965702),
(1666, 0, '', 1494965808),
(1667, 0, '', 1494965898),
(1668, 0, '', 1494965988),
(1669, 0, '', 1495042897),
(1670, 0, '', 1495042931),
(1671, 0, '', 1495042992),
(1672, 0, '', 1495043043),
(1673, 0, '', 1495043080),
(1674, 0, '', 1495043121),
(1675, 0, '', 1495043181),
(1676, 0, '', 1495043969),
(1677, 0, '', 1495071652),
(1678, 0, '', 1495073071),
(1679, 0, '', 1495077827),
(1680, 0, '', 1495077935),
(1681, 0, '', 1495077944),
(1682, 0, '', 1495078243),
(1683, 0, '', 1495078255),
(1684, 0, '', 1495080039),
(1685, 0, '', 1495080041),
(1686, 0, '', 1495080128),
(1687, 0, '', 1495080264),
(1688, 0, '', 1495081141),
(1689, 0, '', 1495081156),
(1690, 0, '', 1495081196),
(1691, 0, '', 1495081212),
(1692, 0, '', 1495081253),
(1693, 0, '', 1495081273),
(1694, 0, '', 1495081338),
(1695, 0, '', 1495081368),
(1696, 0, '', 1495081388),
(1697, 0, '', 1495081414),
(1698, 0, '', 1495081426),
(1699, 0, '', 1495082018),
(1700, 0, '', 1495082099),
(1701, 0, '', 1495082263),
(1702, 0, '', 1495090079),
(1703, 0, '', 1495090087),
(1704, 0, '', 1495090095),
(1705, 0, '', 1495090509),
(1706, 0, '', 1495091563),
(1707, 0, '', 1495091622),
(1708, 0, '', 1495091681),
(1709, 0, '', 1495091842),
(1710, 0, '', 1495092033),
(1711, 0, '', 1495092064),
(1712, 0, '', 1495092066),
(1713, 0, '', 1495092142),
(1714, 0, '', 1495092189),
(1715, 0, '', 1495092205),
(1716, 0, '', 1495092208),
(1717, 0, '', 1495092245),
(1718, 0, '', 1495092309),
(1719, 0, '', 1495092339),
(1720, 0, '', 1495092354),
(1721, 0, '', 1495092390),
(1722, 0, '', 1495092406),
(1723, 0, '', 1495092453),
(1724, 0, '', 1495092462),
(1725, 0, '', 1495092683),
(1726, 0, '', 1495092730),
(1727, 0, '', 1495092796),
(1728, 0, '', 1495092880),
(1729, 0, '', 1495093352),
(1730, 0, '', 1495093880),
(1731, 0, '', 1495094500),
(1732, 0, '', 1495094582),
(1733, 0, '', 1495094601),
(1734, 0, '', 1495094603),
(1735, 0, '', 1495094640),
(1736, 0, '', 1495094707),
(1737, 0, '', 1495094808),
(1738, 0, '', 1495094867),
(1739, 0, '', 1495094913),
(1740, 0, '', 1495095142),
(1741, 0, '', 1495095336),
(1742, 0, '', 1495096192),
(1743, 0, '', 1495097070),
(1744, 0, '', 1495097239),
(1745, 0, '', 1495097275),
(1746, 0, '', 1495097289),
(1747, 0, '', 1495098068),
(1748, 0, '', 1495098188),
(1749, 0, '', 1495098424),
(1750, 0, '', 1495098682),
(1751, 0, '', 1495102772),
(1752, 0, '', 1495103096),
(1753, 0, '', 1495103191),
(1754, 0, '', 1495103200),
(1755, 0, '', 1495103240),
(1756, 0, '', 1495126834),
(1757, 0, '', 1495126842),
(1758, 0, '', 1495179895),
(1759, 0, '', 1495186231),
(1760, 0, '', 1495204220),
(1761, 0, '', 1495214441),
(1762, 0, '', 1495214502),
(1763, 0, '', 1495214510),
(1764, 0, '', 1495214557),
(1765, 0, '', 1495214574),
(1766, 0, '', 1495214615),
(1767, 0, '', 1495214627),
(1777, 0, '', 1495222079),
(1769, 0, '', 1495218917),
(1770, 0, '', 1495218918),
(1771, 0, '', 1495218930),
(1772, 0, '', 1495219014),
(1780, 0, '', 1495222936),
(1781, 0, '', 1495225687),
(1782, 0, '', 1495225695),
(1783, 0, '', 1495225709),
(1784, 0, '', 1495225783),
(1785, 0, '', 1495225788),
(1786, 0, '', 1495225795),
(1787, 0, '', 1495225921),
(1788, 0, '', 1495225980),
(1815, 0, '', 1498926316),
(1790, 0, '', 1495226209),
(1791, 0, '', 1495226270),
(1792, 0, '', 1495226279),
(1793, 1, '', 1495295825),
(2174, 0, '', 1516354287),
(2173, 1, '', 1516350265),
(1798, 0, '1495358188_1798_668c88252cb9e162b36d6713cb174c0d.jpg;1495358191_1798_a0d5434b0d5b08def83572649240c0d0.jpg;1495358193_1798_38a1905ecf631d468fddb233ee51b363.jpg;1495358196_1798_76764969447e3dbec7c38db97a6ad7ac.jpg;1495358198_1798_41556e4e12791ab26815bba9270fb00e.jpg;1495358201_1798_a9b7093b799d6d1af3f0f36140a99b00.jpg;1495358312_1798_4a1f7b9a6eaa938287d515789d6ce165.jpg;1495358597_1798_877678f580798b55d2ba436ed981e43f.jpg;1495358713_1798_98a69e0f2b0f255debde85fec5527457.jpg;1495359221_1798_30b32757c538d89ad60fc821bffaf712.jpg;', 1495357896),
(1799, 0, '', 1495378192),
(1822, 0, '', 1498930039),
(1872, 0, '', 1512200462),
(1868, 0, '', 1512199995),
(1867, 0, '', 1512199992),
(1870, 0, '', 1512200004),
(1869, 0, '', 1512199997),
(1871, 0, '', 1512200459),
(1873, 0, '', 1512200480),
(1862, 0, '', 1512199394),
(1861, 0, '', 1512199378),
(1860, 0, '', 1512199283),
(1859, 0, '', 1512199258),
(1858, 0, '', 1512196492),
(1857, 0, '', 1512196489),
(1856, 0, '', 1512196235),
(1801, 0, '', 1495380859),
(1805, 0, '', 1495383166),
(1803, 0, '', 1495381092),
(1804, 0, '', 1495381176),
(1806, 0, '', 1495383327),
(1807, 0, '', 1495438809),
(1808, 0, '', 1495564220),
(1809, 0, '', 1496917138),
(1810, 0, '', 1496941270),
(1812, 0, '', 1498783037),
(1813, 0, '', 1498783213),
(1814, 0, '', 1498783548),
(1874, 0, '', 1512200572),
(1875, 0, '', 1512200591),
(1876, 0, '', 1512200603),
(1877, 0, '', 1512200625),
(1878, 0, '', 1512200962),
(1879, 0, '', 1512201090),
(1880, 0, '', 1512201162),
(1881, 0, '', 1512201165),
(2171, 0, '', 1516139245),
(1866, 0, '', 1512199983),
(1865, 0, '', 1512199903),
(1864, 0, '', 1512199424),
(1863, 0, '', 1512199422),
(1855, 0, '', 1512195909),
(1941, 0, '', 1515214301),
(2230, 1, '', 1518025971),
(1846, 0, '', 1500602267),
(1848, 0, '', 1502208452),
(1850, 0, '', 1502293558),
(1851, 0, '', 1502522062),
(1895, 0, '', 1513580979),
(1884, 0, '', 1512355126),
(2406, 1, '', 1519832195),
(2407, 1, '', 1519835098),
(2408, 1, '', 1519835704),
(2409, 1, '', 1519836442),
(2410, 1, '', 1519836783),
(2411, 1, '', 1519837394),
(2412, 1, '', 1519837548),
(2413, 1, '', 1519837842),
(2414, 1, '', 1519838692),
(2179, 0, '', 1516898823),
(2178, 0, '', 1516898771),
(2177, 1, '', 1516677486),
(2176, 1, '', 1516677413),
(2175, 1, '', 1516677284),
(1896, 0, '', 1513611478),
(1897, 0, '', 1513612543),
(1898, 0, '', 1513612561),
(1899, 0, '', 1513613547),
(1900, 0, '', 1513613624),
(1901, 0, '', 1513613659),
(1904, 0, '', 1513614302),
(1905, 0, '', 1513615488),
(2170, 0, '', 1516139232),
(2169, 0, '', 1516139163),
(2168, 0, '', 1516139161),
(1914, 0, '', 1513667575),
(1915, 0, '', 1513667630),
(1923, 0, '', 1513753446),
(1917, 0, '', 1513667813),
(1922, 0, '', 1513744161),
(1921, 0, '', 1513741762),
(1924, 0, '', 1513761677),
(1925, 0, '', 1513761807),
(1940, 0, '', 1514649365),
(1927, 0, '', 1513777098),
(1928, 0, '', 1513788910),
(1929, 0, '', 1513788912),
(1930, 0, '', 1513789012),
(1931, 0, '', 1513930085),
(1932, 0, '', 1513930095),
(1933, 0, '', 1513930419),
(1934, 0, '', 1513930437),
(1935, 0, '', 1513930488),
(1936, 0, '', 1513930504),
(1937, 0, '', 1513930650),
(1938, 0, '', 1514195304),
(1939, 0, '', 1514195323),
(1942, 0, '', 1515214599),
(1943, 0, '', 1515214669),
(1944, 0, '', 1515214689),
(1945, 0, '', 1515214694),
(1946, 0, '', 1515214709),
(1947, 0, '', 1515214762),
(1948, 0, '', 1515214922),
(1949, 0, '', 1515215198),
(1950, 0, '', 1515401574),
(1951, 0, '', 1515401577),
(1952, 0, '', 1515401954),
(1953, 0, '', 1515401967),
(1954, 0, '', 1515401977),
(1955, 0, '', 1515402106),
(1956, 0, '', 1515402607),
(1957, 0, '', 1515402610),
(1958, 0, '', 1515402623),
(1959, 0, '', 1515402689),
(1960, 0, '', 1515402694),
(1961, 0, '', 1515402754),
(1962, 0, '', 1515402908),
(1963, 0, '', 1515402945),
(1964, 0, '', 1515402970),
(1965, 0, '', 1515403040),
(1966, 0, '', 1515403042),
(1967, 0, '', 1515403170),
(1968, 0, '', 1515403183),
(1969, 0, '', 1515403187),
(1970, 0, '', 1515403190),
(1971, 0, '', 1515403598),
(1972, 0, '', 1515404112),
(1973, 0, '', 1515404245),
(1974, 0, '', 1515404286),
(1975, 0, '', 1515404316),
(1976, 0, '', 1515404356),
(1977, 0, '', 1515404446),
(1978, 0, '', 1515404454),
(1979, 0, '', 1515404500),
(1980, 0, '', 1515404546),
(1981, 0, '', 1515404561),
(1982, 0, '', 1515404619),
(1983, 0, '', 1515404667),
(1984, 0, '', 1515404719),
(1985, 0, '', 1515405018),
(1986, 0, '', 1515405094),
(1987, 0, '', 1515405094),
(1988, 0, '', 1515405099),
(1989, 0, '', 1515405141),
(1990, 0, '', 1515405152),
(1991, 0, '', 1515405159),
(1992, 0, '', 1515405257),
(1993, 0, '', 1515405376),
(1994, 0, '', 1515405550),
(1995, 0, '', 1515405571),
(1996, 0, '', 1515405613),
(1997, 0, '', 1515405657),
(1998, 0, '', 1515405709),
(1999, 0, '', 1515405750),
(2000, 0, '', 1515405763),
(2001, 0, '', 1515448172),
(2002, 0, '', 1515448187),
(2003, 0, '', 1515448342),
(2004, 0, '', 1515448342),
(2005, 0, '', 1515448350),
(2006, 0, '', 1515448459),
(2007, 0, '', 1515448632),
(2008, 0, '', 1515448654),
(2009, 0, '', 1515449804),
(2010, 0, '', 1515449812),
(2011, 0, '', 1515449870),
(2012, 0, '', 1515449875),
(2013, 0, '', 1515450054),
(2014, 0, '', 1515450066),
(2015, 0, '', 1515450128),
(2016, 0, '', 1515450378),
(2017, 0, '', 1515450429),
(2018, 0, '', 1515450493),
(2019, 0, '', 1515450512),
(2020, 0, '', 1515450524),
(2021, 0, '', 1515450590),
(2022, 0, '', 1515450905),
(2023, 0, '', 1515450936),
(2024, 0, '', 1515451033),
(2025, 0, '', 1515451075),
(2026, 0, '', 1515451102),
(2027, 0, '', 1515451209),
(2028, 0, '', 1515451215),
(2029, 0, '', 1515451399),
(2030, 0, '', 1515451614),
(2031, 0, '', 1515451725),
(2032, 0, '', 1515451903),
(2033, 0, '', 1515451916),
(2034, 0, '', 1515451943),
(2035, 0, '', 1515452284),
(2036, 0, '', 1515453283),
(2037, 0, '', 1515453296),
(2038, 0, '', 1515453325),
(2039, 0, '', 1515453345),
(2040, 0, '', 1515453628),
(2041, 0, '', 1515453633),
(2042, 0, '', 1515454042),
(2043, 0, '', 1515454688),
(2044, 0, '', 1515454692),
(2045, 0, '', 1515454742),
(2046, 0, '', 1515455314),
(2047, 0, '', 1515455321),
(2048, 0, '', 1515455343),
(2049, 0, '', 1515455517),
(2050, 0, '', 1515455524),
(2051, 0, '', 1515455524),
(2052, 0, '', 1515455545),
(2053, 0, '', 1515455554),
(2054, 0, '', 1515455572),
(2055, 0, '', 1515455596),
(2056, 0, '', 1515455643),
(2057, 0, '', 1515455792),
(2058, 0, '', 1515455828),
(2059, 0, '', 1515455941),
(2060, 0, '', 1515455978),
(2061, 0, '', 1515456004),
(2062, 0, '', 1515456057),
(2063, 0, '', 1515456083),
(2064, 0, '', 1515456302),
(2065, 0, '', 1515456362),
(2066, 0, '', 1515456392),
(2067, 0, '', 1515456687),
(2068, 0, '', 1515456706),
(2069, 0, '', 1515456736),
(2070, 0, '', 1515456803),
(2071, 0, '', 1515456833),
(2072, 0, '', 1515456919),
(2073, 0, '', 1515456940),
(2074, 0, '', 1515456967),
(2075, 0, '', 1515456985),
(2076, 0, '', 1515457026),
(2077, 0, '', 1515457039),
(2078, 0, '', 1515457136),
(2079, 0, '', 1515457152),
(2080, 0, '', 1515457166),
(2081, 0, '', 1515457182),
(2082, 0, '', 1515457197),
(2083, 0, '', 1515457205),
(2084, 0, '', 1515457213),
(2085, 0, '', 1515457227),
(2086, 0, '', 1515457326),
(2087, 0, '', 1515457404),
(2088, 0, '', 1515457454),
(2089, 0, '', 1515457491),
(2090, 0, '', 1515457493),
(2091, 0, '', 1515457580),
(2092, 0, '', 1515457619),
(2093, 0, '', 1515457620),
(2094, 0, '', 1515458002),
(2095, 0, '', 1515458045),
(2096, 0, '', 1515458108),
(2097, 0, '', 1515467254),
(2098, 0, '', 1515467337),
(2099, 0, '', 1515467700),
(2100, 0, '', 1515467768),
(2101, 0, '', 1515467971),
(2102, 0, '', 1515467999),
(2103, 0, '', 1515468461),
(2104, 0, '', 1515469672),
(2105, 0, '', 1515471848),
(2106, 0, '', 1515471850),
(2107, 0, '', 1515516672),
(2108, 0, '', 1515517106),
(2109, 0, '', 1515517127),
(2110, 0, '', 1515517129),
(2111, 0, '', 1515518223),
(2112, 0, '', 1515518280),
(2113, 0, '', 1515518331),
(2114, 0, '', 1515518401),
(2115, 0, '', 1515518610),
(2116, 0, '', 1515518616),
(2117, 0, '', 1515518748),
(2118, 0, '', 1515518776),
(2119, 0, '', 1515518911),
(2120, 0, '', 1515519168),
(2121, 0, '', 1515519243),
(2122, 0, '', 1515520821),
(2123, 0, '', 1515520993),
(2124, 0, '', 1515521010),
(2125, 0, '', 1515521010),
(2126, 0, '', 1515521190),
(2127, 0, '', 1515521190),
(2128, 0, '', 1515521190),
(2129, 0, '', 1515524381),
(2130, 0, '', 1515524703),
(2131, 0, '', 1515552176),
(2132, 0, '', 1515552289),
(2133, 0, '', 1515554338),
(2134, 0, '', 1515554368),
(2135, 0, '', 1515554369),
(2136, 0, '', 1515554510),
(2137, 0, '', 1515554512),
(2138, 0, '', 1515624298),
(2139, 0, '', 1515626737),
(2140, 0, '', 1515645038),
(2141, 0, '', 1515651326),
(2142, 0, '', 1515651363),
(2143, 0, '', 1515651380),
(2144, 0, '', 1515651452),
(2145, 0, '', 1515651521),
(2146, 0, '', 1515653076),
(2147, 0, '', 1515653131),
(2148, 0, '', 1515653295),
(2149, 0, '', 1515653300),
(2150, 0, '', 1515653343),
(2151, 0, '', 1515653379),
(2152, 0, '', 1515653463),
(2153, 0, '', 1515653789),
(2154, 0, '', 1515653798),
(2155, 0, '', 1515653823),
(2156, 0, '', 1515654036),
(2157, 0, '', 1515654222),
(2158, 0, '', 1515654285),
(2159, 0, '', 1515654476),
(2160, 0, '', 1515654478),
(2161, 0, '', 1515654479),
(2162, 0, '', 1515654646),
(2163, 0, '', 1515654656),
(2164, 0, '', 1515654657),
(2165, 0, '', 1515654657),
(2166, 0, '', 1515654657),
(2167, 0, '', 1515660330),
(2183, 1, '', 1516985812),
(2184, 0, '', 1516987127),
(2185, 0, '', 1516987225),
(2186, 0, '', 1516987567),
(2187, 0, '', 1516988575),
(2188, 0, '', 1516989166),
(2189, 0, '', 1516989358),
(2190, 0, '', 1516989363),
(2191, 0, '', 1516989386),
(2192, 0, '', 1517021922),
(2193, 0, '', 1517023207),
(2194, 0, '', 1517023215),
(2195, 0, '', 1517023238),
(2196, 0, '', 1517023460),
(2197, 0, '', 1517023619),
(2198, 0, '', 1517023650),
(2199, 0, '', 1517023700),
(2200, 0, '', 1517023985),
(2201, 0, '', 1517023992),
(2202, 0, '', 1517024000),
(2203, 0, '', 1517024313),
(2204, 0, '', 1517128617),
(2205, 0, '', 1517128632),
(2206, 1, '', 1517218585),
(2207, 1, '', 1517220102),
(2208, 1, '', 1517626608),
(2209, 1, '', 1517626690),
(2240, 0, '', 1519444177),
(2211, 1, '', 1517626879),
(2405, 0, '', 1519832104),
(2404, 1, '1519876802_2404_911c195710b7f869c32c6d5cd7251839.jpg;1519876802_2404_d5708621a21425803c5a100d374c3b68.jpg;1519876803_2404_be02917e44c17fa312dfd30727823082.jpg;1519876803_2404_d7c80768484d12f6cb1a543454ea9860.jpg;1519876804_2404_5056aca984b96d84782be49a6de0cf72.jpg;1519876804_2404_4e743addcd772190cc7672c99d30f8a3.jpg;1519876805_2404_a618354826c1e784956f115336dab726.jpg;1519876805_2404_e601e17d1fcdd8f2cf18d6a8ea0bcef9.jpg;1519876818_2404_c376dce3e660d2c14bd3f02a5f897d49.jpg;1519876818_2404_c286911a5a601addaa964fc8bfec1fd0.jpg;1519876819_2404_a238acc78471e3791c8f4927e0ff8325.jpg;1519876819_2404_6f3a40632e7b3a875c78418be3273614.jpg;1519876820_2404_d1a732af66dd9c73ebd3d178a8a142a9.jpg;1519876821_2404_980c8cd4b967d261e9b0d5fee0d42aed.jpg;', 1519809549),
(2403, 1, '1519875141_2403_ac23257fb9505c520d9293ff508b9b04.png;1519875141_2403_d869d9b8798491151b9f0f813b6e2cd2.png;1519875142_2403_6b4b780bccfaa59c1cd8b9b86eef895e.png;1519875142_2403_3cabbb4f059a4a9c666ed4703fd171b3.png;1519875142_2403_1f938d8aea931a8c7a825430f2d7cb03.png;1519875143_2403_5b84f0bee2237ab86ca44733d9572fed.png;1519875143_2403_7b75b57bc35a55083e0f728eafb6e43d.png;1519875143_2403_dcc176f488c89d3829b9c10515b5948a.png;1519875144_2403_8e6a8392211d9f2ac05be9e67a231edf.png;1519875144_2403_52ee7db167af35959bff9c8fdb104dc8.png;1519875157_2403_db1f311a7476b49e5410476cd3943889.png;1519875158_2403_362994a2aacc5f1980a8a0854a2fecc5.png;1519875158_2403_bffb6bb46c9df4eabf98f88b67c0db6d.png;1519875158_2403_7a78bc8334b728cc6498f2bf310a8b0b.png;1519875159_2403_91931c1a5071ca707895f2459cf0c7a6.png;1519875159_2403_21921fac80ad55163d448a0c7d8a58aa.png;1519875159_2403_0f232e958b55102fef6aa6cbac0874f0.png;1519875160_2403_402b0b2322f19912ea485d275674959a.png;1519875160_2403_96ef83f2037b66a6a71ed501ffe903ac.png;1519875161_2403_f2394c24ab4b2e895bb51f97ad9811d2.jpg;1519875215_2403_ed08ad021a1d795b66531412d36d23cb.jpg;1519875216_2403_bf2f33507ff1e77d5bd7fc469a4059c2.jpg;1519875216_2403_fe9b342791509aaa28c5f8a80b7a94fb.jpg;1519875216_2403_ce792f909e120ee293abc1b1110ac72c.jpg;1519875217_2403_b21bb7c1cd59b9ba511dd49b73ac3184.jpg;1519875217_2403_b0f5592fe30e05fd95e98d3f6d5867c5.jpg;1519875218_2403_1abd221b8d61a36dcce7ac443b81fb8d.jpg;1519875219_2403_e2f09dcc7b2371f7536bc5ccce8555c5.jpg;1519875221_2403_9178a739a48c91ceb76acd7e9e8d3fed.jpg;1519875223_2403_39d4ac90ee298e9729886b250428faa2.jpg;1519875238_2403_21947a735e07994ba3f03b2c1d4c4de1.jpg;1519875239_2403_a13b39ff8853b1bc9291adfba06e64aa.jpg;1519875240_2403_08df8c3c6f62ebed829cfb3ea4e58cf0.jpg;1519875240_2403_6433b2f7912b79059be5a65f08ef78a6.jpg;1519875240_2403_bbf1584567a7587c4774aa169820af9b.jpg;1519875241_2403_67cc33e613e8f091e821dc8d9b4749a6.jpg;', 1519808456),
(2239, 0, '', 1519444170),
(2238, 0, '', 1518134077),
(2237, 0, '', 1518131968),
(2220, 1, '', 1517629032),
(2221, 1, '', 1517630417),
(2222, 1, '', 1517630674),
(2223, 0, '', 1517631008),
(2236, 0, '', 1518131944),
(2235, 0, '', 1518130013),
(2234, 1, '', 1518026225),
(2233, 1, '', 1518026184),
(2232, 1, '', 1518026146),
(2231, 1, '', 1518026114),
(2241, 0, '', 1519444238),
(2242, 0, '', 1519444241),
(2243, 0, '', 1519444255),
(2244, 0, '', 1519445287),
(2245, 0, '', 1519445308),
(2246, 0, '', 1519445308),
(2247, 0, '', 1519445328),
(2248, 0, '', 1519445782),
(2249, 0, '', 1519446085),
(2250, 0, '', 1519446262),
(2251, 0, '', 1519446332),
(2252, 0, '', 1519446416),
(2253, 0, '', 1519446484),
(2254, 0, '', 1519446586),
(2255, 0, '', 1519446587),
(2256, 0, '', 1519453153),
(2257, 0, '', 1519456477),
(2258, 0, '', 1519458704),
(2259, 0, '', 1519458800),
(2260, 0, '', 1519613315),
(2261, 0, '', 1519613392),
(2262, 0, '', 1519613515),
(2263, 0, '', 1519613520),
(2264, 0, '', 1519613521),
(2265, 0, '', 1519613522),
(2266, 0, '', 1519613751),
(2267, 0, '', 1519613785),
(2268, 0, '', 1519613795),
(2269, 0, '', 1519628355),
(2270, 0, '', 1519628364),
(2271, 0, '', 1519628365),
(2272, 0, '', 1519628365),
(2273, 0, '', 1519628365),
(2274, 0, '', 1519628366),
(2275, 0, '', 1519628366),
(2276, 0, '', 1519628366),
(2277, 0, '', 1519628366),
(2278, 0, '', 1519628419),
(2279, 0, '', 1519628422),
(2280, 0, '', 1519628595),
(2281, 0, '', 1519628656),
(2282, 0, '', 1519628656),
(2283, 0, '', 1519628656),
(2284, 0, '', 1519628657),
(2285, 0, '', 1519628657),
(2286, 0, '', 1519628657),
(2287, 0, '', 1519628657),
(2288, 0, '', 1519628657),
(2289, 0, '', 1519628657),
(2290, 0, '', 1519628663),
(2291, 0, '', 1519628663),
(2292, 0, '', 1519628663),
(2293, 0, '', 1519628664),
(2294, 0, '', 1519628664),
(2295, 0, '', 1519629479),
(2296, 0, '', 1519629482),
(2297, 0, '', 1519631569),
(2298, 0, '', 1519631703),
(2299, 0, '', 1519631794),
(2300, 0, '', 1519631796),
(2301, 0, '', 1519632616),
(2302, 0, '', 1519633405),
(2303, 0, '', 1519633406),
(2304, 0, '', 1519633449),
(2305, 0, '', 1519633451),
(2306, 0, '', 1519633454),
(2307, 0, '', 1519633460),
(2308, 0, '', 1519633481),
(2309, 0, '', 1519633559),
(2310, 0, '', 1519635470),
(2311, 0, '', 1519635479),
(2312, 0, '', 1519635497),
(2313, 0, '', 1519635503),
(2314, 0, '', 1519635505),
(2315, 0, '', 1519635547),
(2316, 0, '', 1519635672),
(2317, 0, '', 1519635680),
(2318, 0, '', 1519635735),
(2319, 0, '', 1519635738),
(2320, 0, '', 1519635773),
(2321, 0, '', 1519635798),
(2322, 0, '', 1519635837),
(2323, 0, '', 1519635868),
(2324, 0, '', 1519635870),
(2325, 0, '', 1519635872),
(2326, 0, '', 1519635872),
(2327, 0, '', 1519636078),
(2328, 0, '', 1519636105),
(2329, 0, '', 1519636238),
(2330, 0, '', 1519636256),
(2331, 0, '', 1519636257),
(2332, 0, '', 1519636259),
(2333, 0, '', 1519636498),
(2334, 0, '', 1519637121),
(2335, 0, '', 1519637404),
(2336, 0, '', 1519637434),
(2337, 0, '', 1519637436),
(2338, 0, '', 1519637454),
(2339, 0, '', 1519637608),
(2340, 0, '', 1519637680),
(2341, 0, '', 1519637700),
(2342, 0, '', 1519637750),
(2343, 0, '', 1519637930),
(2344, 0, '', 1519638027),
(2345, 0, '', 1519638280),
(2346, 0, '', 1519638788),
(2347, 0, '', 1519638801),
(2348, 0, '', 1519638802),
(2349, 0, '', 1519638802),
(2350, 0, '', 1519638802),
(2351, 0, '', 1519638810),
(2352, 0, '', 1519638998),
(2353, 0, '', 1519639060),
(2354, 0, '', 1519639256),
(2355, 0, '', 1519639272),
(2356, 0, '', 1519699627),
(2357, 0, '', 1519699677),
(2358, 0, '', 1519699692),
(2359, 0, '', 1519700871),
(2360, 0, '', 1519700873),
(2361, 0, '', 1519701696),
(2362, 0, '', 1519701798),
(2363, 0, '', 1519701834),
(2364, 0, '', 1519701835),
(2365, 0, '', 1519701860),
(2366, 0, '', 1519701866),
(2367, 0, '', 1519701867),
(2368, 0, '', 1519701939),
(2369, 0, '', 1519701940),
(2370, 0, '', 1519702036),
(2371, 0, '', 1519702061),
(2372, 0, '', 1519702070),
(2373, 0, '', 1519702071),
(2374, 0, '', 1519702273),
(2375, 0, '', 1519702299),
(2376, 0, '', 1519702301),
(2377, 0, '', 1519702303),
(2378, 0, '', 1519702407),
(2379, 0, '', 1519702697),
(2380, 0, '', 1519702698),
(2381, 0, '', 1519702708),
(2382, 0, '', 1519702764),
(2383, 0, '', 1519702864),
(2384, 0, '', 1519702982),
(2385, 0, '', 1519703012),
(2386, 0, '', 1519703074),
(2387, 0, '', 1519703120),
(2388, 0, '', 1519703142),
(2389, 0, '', 1519703217),
(2390, 0, '', 1519703265),
(2391, 0, '', 1519703385),
(2392, 0, '', 1519703388),
(2393, 0, '', 1519703389),
(2394, 0, '', 1519703389),
(2395, 0, '', 1519703401),
(2396, 0, '', 1519703405),
(2397, 0, '', 1519703407),
(2398, 0, '', 1519703419),
(2399, 0, '', 1519703505),
(2400, 0, '', 1519704159),
(2401, 0, '', 1519704160),
(2402, 0, '', 1519791796),
(2415, 1, '', 1539266480),
(2416, 1, '', 1539266753),
(2417, 1, '', 1539360488),
(2418, 1, '', 1539360638),
(2419, 1, '', 1539360690),
(2420, 1, '', 1539360780),
(2421, 1, '', 1539360841),
(2422, 1, '', 1539361021),
(2423, 1, '', 1539362462),
(2424, 1, '', 1539362524),
(2425, 1, '', 1539362628),
(2426, 1, '', 1539363453),
(2427, 0, '', 1539870860),
(2428, 0, '', 1539870980),
(2429, 0, '', 1539871053),
(2430, 0, '', 1539871174),
(2431, 0, '', 1539871272),
(2432, 0, '', 1539871280),
(2433, 0, '', 1539871333),
(2434, 0, '', 1539871354),
(2435, 0, '', 1539871374),
(2436, 0, '', 1539871667),
(2437, 0, '', 1539871821),
(2438, 0, '', 1539871910),
(2439, 0, '', 1539871959),
(2440, 0, '', 1539871961),
(2441, 0, '', 1539871972),
(2442, 0, '', 1539871984),
(2443, 0, '', 1539872032),
(2444, 0, '', 1539872054),
(2445, 0, '', 1539872104),
(2446, 0, '', 1539872128),
(2447, 0, '', 1539872191),
(2448, 0, '', 1539872206),
(2449, 0, '', 1539872217),
(2450, 0, '', 1539872243),
(2451, 0, '', 1539872253),
(2452, 0, '', 1539872287),
(2453, 0, '', 1539872305),
(2454, 0, '', 1539872316),
(2455, 0, '', 1539872347),
(2456, 0, '', 1539872363),
(2457, 0, '', 1539872371),
(2458, 0, '', 1539872388),
(2459, 0, '', 1539872402),
(2460, 0, '', 1539872771),
(2461, 0, '', 1539873015),
(2462, 0, '', 1539873119),
(2463, 0, '', 1539873184),
(2464, 0, '', 1539873210),
(2465, 0, '', 1539873363),
(2466, 0, '', 1539873363),
(2467, 0, '', 1539873380),
(2468, 0, '', 1539873576),
(2469, 0, '', 1539873595),
(2470, 0, '', 1539873622),
(2471, 0, '', 1539873819),
(2472, 0, '', 1539877837),
(2473, 0, '', 1539878122),
(2474, 0, '', 1539878219),
(2475, 0, '', 1539878278),
(2476, 0, '', 1539878315),
(2477, 0, '', 1539878422),
(2478, 0, '', 1539878499),
(2479, 0, '', 1539878558),
(2480, 0, '', 1539878701),
(2481, 0, '', 1539878773),
(2482, 0, '', 1539878785),
(2483, 0, '', 1539878863),
(2484, 0, '', 1539878890),
(2485, 0, '', 1539880748),
(2486, 0, '', 1539880783),
(2487, 0, '', 1539880783),
(2488, 0, '', 1539880784),
(2489, 0, '', 1539880809),
(2490, 0, '', 1539882023),
(2491, 0, '', 1539882059),
(2492, 0, '', 1539882073),
(2493, 0, '', 1539882124),
(2494, 0, '', 1539882196),
(2495, 0, '', 1539882210),
(2496, 0, '', 1539882541),
(2497, 0, '', 1539882551),
(2498, 0, '', 1539882648),
(2499, 0, '', 1539882800),
(2500, 0, '', 1539882827),
(2501, 0, '', 1539882839),
(2502, 0, '', 1539882854),
(2503, 0, '', 1539882873),
(2504, 0, '', 1539882891),
(2505, 0, '', 1539882955),
(2506, 0, '', 1539883128),
(2507, 0, '', 1539912477),
(2508, 0, '', 1540019201),
(2509, 0, '', 1540019249),
(2510, 0, '', 1540019310),
(2511, 0, '', 1540019360),
(2512, 0, '', 1540019366),
(2513, 0, '', 1540019411),
(2514, 0, '', 1540019614),
(2515, 0, '', 1540019661),
(2516, 0, '', 1540020133),
(2517, 0, '', 1540021663),
(2518, 0, '', 1540021956),
(2519, 0, '', 1540021983),
(2520, 0, '', 1540022007),
(2521, 0, '', 1540022037),
(2522, 0, '', 1540022068),
(2523, 0, '', 1540022336),
(2524, 0, '', 1540022337),
(2525, 0, '', 1540022338),
(2526, 0, '', 1540022338),
(2527, 0, '', 1540022338),
(2528, 0, '', 1540022351),
(2529, 0, '', 1540022382),
(2530, 0, '', 1540022392),
(2531, 0, '', 1540022465),
(2532, 0, '', 1540022474),
(2533, 0, '', 1540022519),
(2534, 0, '', 1540022552),
(2535, 0, '', 1540022580),
(2536, 0, '', 1540022622),
(2537, 0, '', 1540022630),
(2538, 0, '', 1540022898),
(2539, 0, '', 1540023258),
(2540, 0, '', 1540023265),
(2541, 0, '', 1540023320),
(2542, 0, '', 1540023453),
(2543, 0, '', 1540023455),
(2544, 0, '', 1540023471),
(2545, 0, '', 1540023579),
(2546, 0, '', 1540023590),
(2547, 0, '1540023609_2547_037741a6271a73c33938615c48127bb9.jpg;1540023610_2547_b8b761a4c2d574cda5a00778a37b3eb0.png;1540023610_2547_3e45416347e102804f4a8c865d849fd2.jpg;1540023611_2547_977bd45c1ad142d664ce5abb0f7ef692.jpg;', 1540023597),
(2548, 0, '', 1540023627),
(2549, 0, '', 1540023636),
(2550, 0, '', 1540023756),
(2551, 0, '', 1540024183),
(2552, 0, '', 1540024207),
(2553, 0, '', 1540024241),
(2554, 0, '', 1540024253),
(2555, 0, '', 1540024289),
(2556, 0, '', 1540030787),
(2557, 0, '', 1540031369),
(2558, 0, '', 1540041538),
(2559, 0, '', 1540041826),
(2560, 0, '', 1540041938),
(2561, 0, '', 1540041951),
(2562, 0, '', 1540042010),
(2563, 0, '', 1540042191),
(2564, 0, '', 1540042243),
(2565, 0, '', 1540042244),
(2566, 0, '', 1540043002),
(2567, 0, '', 1540043047),
(2568, 0, '', 1540043097),
(2569, 0, '', 1540043154),
(2570, 0, '', 1540043183),
(2571, 0, '', 1540043217),
(2572, 0, '', 1540043218),
(2573, 0, '', 1540043219),
(2574, 0, '', 1540043219),
(2575, 0, '', 1540043219),
(2576, 0, '', 1540043219),
(2577, 0, '', 1540043220),
(2578, 0, '', 1540043220),
(2579, 0, '', 1540043220),
(2580, 0, '', 1540043220),
(2581, 0, '', 1540043221),
(2582, 0, '', 1540043221),
(2583, 0, '', 1540043275),
(2584, 0, '', 1540043319),
(2585, 0, '', 1540043397),
(2586, 0, '', 1540043399),
(2587, 0, '', 1540043399),
(2588, 0, '', 1540043400),
(2589, 0, '', 1540043400),
(2590, 0, '', 1540043400),
(2591, 0, '', 1540043401),
(2592, 0, '', 1540043436),
(2593, 0, '', 1540043522),
(2594, 0, '', 1540043574),
(2595, 0, '', 1540043619),
(2596, 0, '', 1540043669),
(2597, 0, '', 1540044197),
(2598, 0, '', 1540044293),
(2599, 0, '', 1540044293),
(2600, 0, '', 1540044293),
(2601, 0, '', 1540044294),
(2602, 0, '', 1540044294),
(2603, 0, '', 1540044294),
(2604, 0, '', 1540044574),
(2605, 0, '', 1540044635),
(2606, 0, '', 1540044636),
(2607, 0, '', 1540044636),
(2608, 0, '', 1540044636),
(2609, 0, '', 1540044637),
(2610, 0, '', 1540044637),
(2611, 0, '', 1540044637),
(2612, 0, '', 1540044637),
(2613, 0, '', 1540044675),
(2614, 0, '', 1540044719),
(2615, 0, '', 1540044737),
(2616, 0, '', 1540044744),
(2617, 0, '', 1540044759),
(2618, 0, '', 1540044759),
(2619, 0, '', 1540044760),
(2620, 0, '', 1540044760),
(2621, 0, '', 1540044760),
(2622, 0, '', 1540044761),
(2623, 0, '', 1540044799),
(2624, 0, '', 1540044848),
(2625, 0, '', 1540044848),
(2626, 0, '', 1540044848),
(2627, 0, '', 1540044849),
(2628, 0, '', 1540044849),
(2629, 0, '', 1540044849),
(2630, 0, '', 1540044849),
(2631, 0, '', 1540044849),
(2632, 0, '', 1540044850),
(2633, 0, '', 1540044850),
(2634, 0, '', 1540044850),
(2635, 0, '', 1540044850),
(2636, 0, '', 1540044850),
(2637, 0, '', 1540044851),
(2638, 0, '', 1540044851),
(2639, 0, '', 1540044851),
(2640, 0, '', 1540044851),
(2641, 0, '', 1540044851),
(2642, 0, '', 1540044851),
(2643, 0, '', 1540044852),
(2644, 0, '', 1540044852),
(2645, 0, '', 1540044852),
(2646, 0, '', 1540044853),
(2647, 0, '', 1540044907),
(2648, 0, '', 1540044908),
(2649, 0, '', 1540044908),
(2650, 0, '', 1540044908),
(2651, 0, '', 1540044908),
(2652, 0, '', 1540044908),
(2653, 0, '', 1540044909),
(2654, 0, '', 1540044946),
(2655, 0, '', 1540044946),
(2656, 0, '', 1540044947),
(2657, 0, '', 1540044947),
(2658, 0, '', 1540044947),
(2659, 0, '', 1540044947),
(2660, 0, '', 1540044948),
(2661, 0, '', 1540044948),
(2662, 0, '', 1540044948),
(2663, 0, '', 1540044948),
(2664, 0, '', 1540044949),
(2665, 0, '', 1540044949),
(2666, 0, '', 1540044949),
(2667, 0, '', 1540044949),
(2668, 0, '', 1540044949),
(2669, 0, '', 1540044950),
(2670, 0, '', 1540044950),
(2671, 0, '', 1540044950),
(2672, 0, '', 1540044950),
(2673, 0, '', 1540044950),
(2674, 0, '', 1540045026),
(2675, 0, '', 1540045120),
(2676, 0, '', 1540045134),
(2677, 0, '', 1540045135),
(2678, 0, '', 1540045149),
(2679, 0, '', 1540045150),
(2680, 0, '', 1540045151),
(2681, 0, '', 1540045179),
(2682, 0, '', 1540045219),
(2683, 0, '', 1540045290),
(2684, 0, '', 1540045334),
(2685, 0, '', 1540045354),
(2686, 0, '', 1540045409),
(2687, 0, '', 1540045467),
(2688, 0, '', 1540045536),
(2689, 0, '', 1540045566),
(2690, 0, '', 1540045593),
(2691, 0, '', 1540045663),
(2692, 0, '', 1540045746),
(2693, 0, '', 1540045753),
(2694, 0, '', 1540045881),
(2695, 0, '', 1540045897),
(2696, 0, '', 1540046036),
(2697, 0, '', 1540046114),
(2698, 0, '', 1540046135),
(2699, 0, '', 1540046150),
(2700, 0, '', 1540046159),
(2701, 0, '', 1540046179),
(2702, 0, '', 1540046193),
(2703, 0, '', 1540046218),
(2704, 0, '', 1540046299),
(2705, 0, '', 1540046329),
(2706, 0, '', 1540046349),
(2707, 0, '', 1540046438),
(2708, 0, '', 1540047068),
(2709, 0, '', 1540047087),
(2710, 0, '', 1540047117),
(2711, 0, '', 1540047175),
(2712, 0, '', 1540047198),
(2713, 0, '', 1540047210),
(2714, 0, '', 1540047351),
(2715, 0, '', 1540047408),
(2716, 0, '', 1540047571),
(2717, 0, '', 1540047697),
(2718, 0, '', 1540047708),
(2719, 0, '', 1540047731),
(2720, 0, '', 1540047911),
(2721, 0, '', 1540047945),
(2722, 0, '', 1540047945),
(2723, 0, '', 1540047964),
(2724, 0, '', 1540047978),
(2725, 0, '', 1540048067),
(2726, 0, '', 1540048094),
(2727, 0, '', 1540048126),
(2728, 0, '', 1540048388),
(2729, 0, '', 1540048486),
(2730, 0, '', 1540048526),
(2731, 0, '', 1540048573),
(2732, 0, '', 1540048807),
(2733, 0, '', 1540049145),
(2734, 0, '', 1540049147),
(2735, 0, '', 1540049148),
(2736, 0, '', 1540049149),
(2737, 0, '', 1540049149),
(2738, 0, '', 1540049149),
(2739, 0, '', 1540049150),
(2740, 0, '', 1540049150),
(2741, 0, '', 1540049150),
(2742, 0, '', 1540049150),
(2743, 0, '', 1540049181),
(2744, 0, '', 1540049202),
(2745, 0, '', 1540049245),
(2746, 0, '', 1540049427),
(2747, 0, '', 1540049448),
(2748, 0, '', 1540049721),
(2803, 1, '1545492105_2803_4b897d762756d94afc43404efa3c9373.jpg;1545492106_2803_94d4c984773aaa102bb7fd2c3f9bb143.jpg;1545492107_2803_29d87026b466fa617f06524e45666f53.jpg;', 1540688880),
(2845, 0, NULL, 1545756753),
(2846, 0, NULL, 1545756804),
(2847, 0, NULL, 1546327629),
(2848, 0, NULL, 1546368765),
(2802, 0, '', 1540658266),
(2751, 0, '', 1540050450),
(2752, 0, '', 1540050930),
(2753, 0, '', 1540050952),
(2754, 0, '', 1540051099),
(2755, 0, '', 1540051110),
(2756, 0, '', 1540051256),
(2757, 0, '', 1540051286),
(2758, 0, '', 1540051409),
(2759, 0, '', 1540051426),
(2760, 0, '', 1540052149),
(2761, 0, '', 1540052321),
(2762, 0, '', 1540052998),
(2801, 1, '', 1540579115),
(2764, 1, '', 1540055632),
(2765, 1, '', 1540055872),
(2766, 0, '', 1540056043),
(2767, 0, '', 1540056105),
(2768, 0, '', 1540056333),
(2769, 0, '', 1540056369),
(2770, 0, '', 1540056412),
(2771, 1, '', 1540057556),
(2772, 1, '', 1540080823),
(2773, 1, '', 1540406831),
(2774, 1, '', 1540406919),
(2775, 1, '', 1540406933),
(2776, 1, '', 1540406996),
(2777, 1, '', 1540407011),
(2778, 1, '', 1540407098),
(2779, 1, '', 1540407108),
(2780, 1, '', 1540407117),
(2781, 1, '', 1540407127),
(2782, 1, '', 1540407317),
(2783, 1, '', 1540407391),
(2784, 1, '', 1540407401),
(2785, 1, '', 1540407410),
(2786, 1, '', 1540407628),
(2787, 1, '', 1540407643),
(2788, 1, '', 1540407652),
(2789, 1, '', 1540407756),
(2790, 1, '', 1540407765),
(2791, 1, '', 1540407777),
(2792, 1, '', 1540407823),
(2793, 1, '', 1540407919),
(2794, 1, '', 1540407934),
(2795, 1, '', 1540407944),
(2796, 1, '', 1540407960),
(2797, 1, '', 1540408014),
(2798, 1, '', 1540408020),
(2799, 1, '', 1540408033),
(2800, 1, '', 1540408043),
(2804, 0, '', 1540691116),
(2805, 0, '', 1540691325),
(2806, 0, '', 1540691370),
(2807, 0, '', 1540691406),
(2808, 0, '', 1540691432),
(2809, 0, '', 1540691447),
(2810, 0, '', 1540691508),
(2811, 0, '', 1540691794),
(2812, 0, '', 1540719366),
(2813, 0, '', 1540723280),
(2814, 1, '1540833777_2814_273960fc25b565c72862c5720f60d283.jpg;1540833778_2814_1e58f14fff9031b6bca1920f95928584.jpg;1540833778_2814_66f15653a77e093be07f9cf1e9663b44.jpg;1540833779_2814_aba5a2325ef79dc5ed78aa65cc8dbf4f.jpg;1540833779_2814_3b3aa99b25505d7063de50e0a5ab738c.jpg;1540833780_2814_69998c73ee52dc85fd63f9d5ede2f66a.jpg;', 1540820512),
(2815, 1, '', 1540820672),
(2816, 1, '1540833758_2816_dabce36cdf141dc06c330a43bcac53b8.jpg;1540833759_2816_80e72c9c0f52d48ca536d124e96d8a87.jpg;1540833760_2816_42b25ff9bef897e07a8dc5a4e5580b8d.jpg;1540833760_2816_ae671f2e15038689d5b82eca8dc9080c.jpg;1540833761_2816_e0081a3c0abe557e3b10d15dc464e00f.jpg;1540833761_2816_ee1405ca44c340b4d2ee2bd60565a554.jpg;1540833762_2816_331a07cc030031a1c81b103c58827915.jpg;', 1540820685),
(2817, 1, '1540833277_2817_df4dc5bb4ff68dc86821493692aeff7f.jpg;1540833279_2817_25f24ac3c614807a0e672ba0e9602832.jpg;1540833280_2817_47aebad0f0ec4a97d35a3e9f3923566b.jpg;1540833281_2817_6ffbe61e8a56979a888117d469b6ec9b.jpg;1540833281_2817_16d32ded068237882de008dba3ac1e11.jpg;1540833282_2817_008a8887dd5dfe2aa7314ba5d48969ba.jpg;', 1540820701),
(2818, 1, '1540833304_2818_41556831e80b06af4869e8e7309f9d0a.jpg;1540833305_2818_d73ec3d9e68c7add56f323ca1a1c7f60.jpg;1540833305_2818_4c966d332d635007b060385a99cc8c49.jpg;1540833306_2818_15d6bdb67731c8716bbe2346de050b1e.jpg;1540833307_2818_67b4b833be20f4dd74b4e7710569695e.jpg;1540833307_2818_979f721f8992e5ab58d62f117a038b45.jpg;', 1540820716),
(2819, 1, '1540833740_2819_11ab9316ca3f3901819d49254f4b6249.jpg;1540833741_2819_468e2c8fcc24a0e8ed29cf11a75e2019.jpg;1540833741_2819_12a44d9b1fd6e78b5719b4d7fa93304d.jpg;1540833742_2819_163e7b73cd00070337f3cff3b87d6129.jpg;1540833742_2819_7d859bc3c3a8e3bcbb986cd4663321cc.jpg;1540833742_2819_ced64fbb64957c36273ae361b3640881.jpg;', 1540820753),
(2826, 0, '', 1540823357),
(2827, 0, '', 1540823453),
(2828, 0, '', 1540999658),
(2829, 0, '', 1540999674),
(2830, 0, '', 1540999907),
(2831, 0, '', 1540999968),
(2832, 0, '', 1541000076),
(2833, 1, '', 1541614396),
(2838, 1, NULL, 1543679616),
(2839, 1, NULL, 1543679767),
(2840, 1, NULL, 1543679832),
(2841, 0, NULL, 1544015185),
(2842, 0, NULL, 1544015217),
(2843, 0, NULL, 1544015297),
(2844, 0, NULL, 1544015910),
(2853, 0, NULL, 1546369688),
(2854, 0, NULL, 1546369705),
(2834, 1, '', 1541614656),
(2855, 0, NULL, 1546369729),
(2856, 0, NULL, 1546616534),
(2857, 0, NULL, 1546617094),
(2835, 1, '', 1541614696),
(2836, 0, NULL, 1542034092),
(2849, 0, NULL, 1546368779),
(2850, 0, NULL, 1546368787),
(2851, 0, NULL, 1546369011),
(2852, 0, NULL, 1546369258);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala_vote`
--

CREATE TABLE `olala_vote` (
  `vote_id` bigint(20) NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `vote` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala_vote`
--

INSERT INTO `olala_vote` (`vote_id`, `session`, `user_id`, `vote`, `created_time`) VALUES
(18, '', 35, 664, 1542200409),
(19, '', 35, 665, 1542200430),
(20, '', 35, 696, 1542201145),
(21, '', 35, 695, 1542201193),
(22, '', 35, 694, 1542201409),
(23, '', 46, 665, 1542207399),
(24, '', 46, 696, 1542207456),
(25, '', 46, 695, 1542207489),
(26, '', 49, 696, 1542292720),
(27, '', 49, 695, 1542292725),
(28, '', 51, 664, 1546343765),
(29, '', 51, 665, 1546343768),
(30, '', 51, 666, 1546343789),
(31, '', 51, 667, 1546343791),
(32, '', 51, 684, 1546344325),
(33, '', 51, 683, 1546344369),
(34, '', 51, 682, 1546344419),
(35, '', 51, 681, 1546344500),
(36, '', 51, 697, 1546344596),
(37, '', 51, 701, 1546344616),
(38, '', 51, 699, 1546344720),
(39, '', 51, 696, 1546344758),
(40, '', 51, 685, 1546344775),
(41, '', 51, 680, 1546344793),
(42, '', 51, 679, 1546344824),
(43, '', 51, 693, 1546344883),
(44, '', 51, 694, 1546344888),
(45, '', 51, 700, 1546344891),
(46, '', 51, 668, 1546345344),
(47, '', 51, 669, 1546345348);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `olala_article`
--
ALTER TABLE `olala_article`
  ADD PRIMARY KEY (`article_id`);

--
-- Chỉ mục cho bảng `olala_article_menu`
--
ALTER TABLE `olala_article_menu`
  ADD PRIMARY KEY (`article_menu_id`);

--
-- Chỉ mục cho bảng `olala_car`
--
ALTER TABLE `olala_car`
  ADD PRIMARY KEY (`car_id`);

--
-- Chỉ mục cho bảng `olala_car_menu`
--
ALTER TABLE `olala_car_menu`
  ADD PRIMARY KEY (`car_menu_id`);

--
-- Chỉ mục cho bảng `olala_category`
--
ALTER TABLE `olala_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `olala_category_type`
--
ALTER TABLE `olala_category_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Chỉ mục cho bảng `olala_constant`
--
ALTER TABLE `olala_constant`
  ADD PRIMARY KEY (`constant_id`);

--
-- Chỉ mục cho bảng `olala_contact`
--
ALTER TABLE `olala_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `olala_core_privilege`
--
ALTER TABLE `olala_core_privilege`
  ADD PRIMARY KEY (`privilege_id`);

--
-- Chỉ mục cho bảng `olala_core_role`
--
ALTER TABLE `olala_core_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Chỉ mục cho bảng `olala_core_user`
--
ALTER TABLE `olala_core_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Chỉ mục cho bảng `olala_direction`
--
ALTER TABLE `olala_direction`
  ADD PRIMARY KEY (`direction_id`);

--
-- Chỉ mục cho bảng `olala_document`
--
ALTER TABLE `olala_document`
  ADD PRIMARY KEY (`document_id`);

--
-- Chỉ mục cho bảng `olala_document_menu`
--
ALTER TABLE `olala_document_menu`
  ADD PRIMARY KEY (`document_menu_id`);

--
-- Chỉ mục cho bảng `olala_focus`
--
ALTER TABLE `olala_focus`
  ADD PRIMARY KEY (`id_focus`);

--
-- Chỉ mục cho bảng `olala_gallery`
--
ALTER TABLE `olala_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Chỉ mục cho bảng `olala_gallery_menu`
--
ALTER TABLE `olala_gallery_menu`
  ADD PRIMARY KEY (`gallery_menu_id`);

--
-- Chỉ mục cho bảng `olala_gift`
--
ALTER TABLE `olala_gift`
  ADD PRIMARY KEY (`gift_id`);

--
-- Chỉ mục cho bảng `olala_gift_menu`
--
ALTER TABLE `olala_gift_menu`
  ADD PRIMARY KEY (`gift_menu_id`);

--
-- Chỉ mục cho bảng `olala_link`
--
ALTER TABLE `olala_link`
  ADD PRIMARY KEY (`link_id`);

--
-- Chỉ mục cho bảng `olala_location`
--
ALTER TABLE `olala_location`
  ADD PRIMARY KEY (`location_id`);

--
-- Chỉ mục cho bảng `olala_location_menu`
--
ALTER TABLE `olala_location_menu`
  ADD PRIMARY KEY (`location_menu_id`);

--
-- Chỉ mục cho bảng `olala_newsletter`
--
ALTER TABLE `olala_newsletter`
  ADD PRIMARY KEY (`newsletter_id`);

--
-- Chỉ mục cho bảng `olala_online`
--
ALTER TABLE `olala_online`
  ADD PRIMARY KEY (`online_id`);

--
-- Chỉ mục cho bảng `olala_online_daily`
--
ALTER TABLE `olala_online_daily`
  ADD PRIMARY KEY (`online_daily_id`);

--
-- Chỉ mục cho bảng `olala_order`
--
ALTER TABLE `olala_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `olala_others`
--
ALTER TABLE `olala_others`
  ADD PRIMARY KEY (`others_id`);

--
-- Chỉ mục cho bảng `olala_others_menu`
--
ALTER TABLE `olala_others_menu`
  ADD PRIMARY KEY (`others_menu_id`);

--
-- Chỉ mục cho bảng `olala_page`
--
ALTER TABLE `olala_page`
  ADD PRIMARY KEY (`page_id`);

--
-- Chỉ mục cho bảng `olala_prjname`
--
ALTER TABLE `olala_prjname`
  ADD PRIMARY KEY (`prjname_id`);

--
-- Chỉ mục cho bảng `olala_product`
--
ALTER TABLE `olala_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `olala_product_menu`
--
ALTER TABLE `olala_product_menu`
  ADD PRIMARY KEY (`product_menu_id`);

--
-- Chỉ mục cho bảng `olala_project`
--
ALTER TABLE `olala_project`
  ADD PRIMARY KEY (`project_id`);

--
-- Chỉ mục cho bảng `olala_project_menu`
--
ALTER TABLE `olala_project_menu`
  ADD PRIMARY KEY (`project_menu_id`);

--
-- Chỉ mục cho bảng `olala_road`
--
ALTER TABLE `olala_road`
  ADD PRIMARY KEY (`road_id`);

--
-- Chỉ mục cho bảng `olala_role_user`
--
ALTER TABLE `olala_role_user`
  ADD PRIMARY KEY (`role_user_id`);

--
-- Chỉ mục cho bảng `olala_share`
--
ALTER TABLE `olala_share`
  ADD PRIMARY KEY (`share_id`);

--
-- Chỉ mục cho bảng `olala_street`
--
ALTER TABLE `olala_street`
  ADD PRIMARY KEY (`street_id`);

--
-- Chỉ mục cho bảng `olala_table_extend`
--
ALTER TABLE `olala_table_extend`
  ADD PRIMARY KEY (`table_extend_id`);

--
-- Chỉ mục cho bảng `olala_tags`
--
ALTER TABLE `olala_tags`
  ADD PRIMARY KEY (`tags_id`);

--
-- Chỉ mục cho bảng `olala_tmp`
--
ALTER TABLE `olala_tmp`
  ADD PRIMARY KEY (`upload_id`);

--
-- Chỉ mục cho bảng `olala_tour`
--
ALTER TABLE `olala_tour`
  ADD PRIMARY KEY (`tour_id`);

--
-- Chỉ mục cho bảng `olala_tour_menu`
--
ALTER TABLE `olala_tour_menu`
  ADD PRIMARY KEY (`tour_menu_id`);

--
-- Chỉ mục cho bảng `olala_tragop`
--
ALTER TABLE `olala_tragop`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `olala_uploads_tmp`
--
ALTER TABLE `olala_uploads_tmp`
  ADD PRIMARY KEY (`upload_id`);

--
-- Chỉ mục cho bảng `olala_vote`
--
ALTER TABLE `olala_vote`
  ADD PRIMARY KEY (`vote_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `olala_article`
--
ALTER TABLE `olala_article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=975;

--
-- AUTO_INCREMENT cho bảng `olala_article_menu`
--
ALTER TABLE `olala_article_menu`
  MODIFY `article_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500;

--
-- AUTO_INCREMENT cho bảng `olala_car`
--
ALTER TABLE `olala_car`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT cho bảng `olala_car_menu`
--
ALTER TABLE `olala_car_menu`
  MODIFY `car_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT cho bảng `olala_category`
--
ALTER TABLE `olala_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT cho bảng `olala_category_type`
--
ALTER TABLE `olala_category_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `olala_constant`
--
ALTER TABLE `olala_constant`
  MODIFY `constant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT cho bảng `olala_contact`
--
ALTER TABLE `olala_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `olala_core_privilege`
--
ALTER TABLE `olala_core_privilege`
  MODIFY `privilege_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5054;

--
-- AUTO_INCREMENT cho bảng `olala_core_role`
--
ALTER TABLE `olala_core_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `olala_core_user`
--
ALTER TABLE `olala_core_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `olala_direction`
--
ALTER TABLE `olala_direction`
  MODIFY `direction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `olala_document`
--
ALTER TABLE `olala_document`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `olala_document_menu`
--
ALTER TABLE `olala_document_menu`
  MODIFY `document_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `olala_focus`
--
ALTER TABLE `olala_focus`
  MODIFY `id_focus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `olala_gallery`
--
ALTER TABLE `olala_gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=656;

--
-- AUTO_INCREMENT cho bảng `olala_gallery_menu`
--
ALTER TABLE `olala_gallery_menu`
  MODIFY `gallery_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `olala_gift`
--
ALTER TABLE `olala_gift`
  MODIFY `gift_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT cho bảng `olala_gift_menu`
--
ALTER TABLE `olala_gift_menu`
  MODIFY `gift_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT cho bảng `olala_link`
--
ALTER TABLE `olala_link`
  MODIFY `link_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=569;

--
-- AUTO_INCREMENT cho bảng `olala_location`
--
ALTER TABLE `olala_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `olala_location_menu`
--
ALTER TABLE `olala_location_menu`
  MODIFY `location_menu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `olala_newsletter`
--
ALTER TABLE `olala_newsletter`
  MODIFY `newsletter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `olala_online`
--
ALTER TABLE `olala_online`
  MODIFY `online_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4045;

--
-- AUTO_INCREMENT cho bảng `olala_online_daily`
--
ALTER TABLE `olala_online_daily`
  MODIFY `online_daily_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=855;

--
-- AUTO_INCREMENT cho bảng `olala_order`
--
ALTER TABLE `olala_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `olala_others`
--
ALTER TABLE `olala_others`
  MODIFY `others_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT cho bảng `olala_others_menu`
--
ALTER TABLE `olala_others_menu`
  MODIFY `others_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `olala_page`
--
ALTER TABLE `olala_page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT cho bảng `olala_prjname`
--
ALTER TABLE `olala_prjname`
  MODIFY `prjname_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `olala_product`
--
ALTER TABLE `olala_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=702;

--
-- AUTO_INCREMENT cho bảng `olala_product_menu`
--
ALTER TABLE `olala_product_menu`
  MODIFY `product_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT cho bảng `olala_project`
--
ALTER TABLE `olala_project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT cho bảng `olala_project_menu`
--
ALTER TABLE `olala_project_menu`
  MODIFY `project_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT cho bảng `olala_road`
--
ALTER TABLE `olala_road`
  MODIFY `road_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `olala_role_user`
--
ALTER TABLE `olala_role_user`
  MODIFY `role_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `olala_share`
--
ALTER TABLE `olala_share`
  MODIFY `share_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `olala_street`
--
ALTER TABLE `olala_street`
  MODIFY `street_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `olala_table_extend`
--
ALTER TABLE `olala_table_extend`
  MODIFY `table_extend_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7049;

--
-- AUTO_INCREMENT cho bảng `olala_tags`
--
ALTER TABLE `olala_tags`
  MODIFY `tags_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `olala_tmp`
--
ALTER TABLE `olala_tmp`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `olala_tour`
--
ALTER TABLE `olala_tour`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `olala_tour_menu`
--
ALTER TABLE `olala_tour_menu`
  MODIFY `tour_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT cho bảng `olala_tragop`
--
ALTER TABLE `olala_tragop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `olala_uploads_tmp`
--
ALTER TABLE `olala_uploads_tmp`
  MODIFY `upload_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2858;

--
-- AUTO_INCREMENT cho bảng `olala_vote`
--
ALTER TABLE `olala_vote`
  MODIFY `vote_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
