/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : auroradev

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 09/04/2023 15:04:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `activity_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `activity_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `activity_lable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `activity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `activity_locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `activity_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `activity_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `createtime` bigint NULL DEFAULT NULL,
  `activity_statetime` bigint NULL DEFAULT NULL,
  `activity_endtime` bigint NULL DEFAULT NULL,
  `updatetime` bigint NULL DEFAULT NULL,
  `activity_favour_num` int NULL DEFAULT NULL,
  `activity_num` int NULL DEFAULT NULL,
  `activity_read_num` int NULL DEFAULT NULL,
  `activity_state` int NULL DEFAULT NULL,
  `activity_istop` int NULL DEFAULT NULL,
  `ispublic` int NULL DEFAULT NULL,
  `activity_impose` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1119a140-91b2-11ea-b4b2-534983822470', '0a2afba0-91a2-11ea-bda1-53a75d166860', '篮球', '体育', '线下', '三食堂篮球场', '<p>篮球场打篮球，去的联系</p><h2>QQ2389627846</h2>', NULL, 1589000427732, 1589000391000, 1590681600000, 1589000427732, 0, 10, 14, 0, 0, 1, 'false', 'admin');
INSERT INTO `activity` VALUES ('0aad8200-91b6-11ea-b4b2-534983822470', 'acb43a80-91a7-11ea-953f-dfe0b5c8db9e', '后山跑步', '体育', '线下', '后山', '<p>后山跑步</p>', NULL, 1589002134944, 1589002145000, 1589002147000, 1589002134944, 0, 0, 3, 0, 0, 1, 'false', 'admin');
INSERT INTO `activity` VALUES ('32a57000-91c1-11ea-b4b2-534983822470', '570395c0-5842-11ea-8396-f196e3bde291', '图书馆志愿者', '志愿者', '线下', '学校图书馆', '<p>图书馆志愿者</p><p>主要任务：整理图书，帮助管理员整理图书馆</p>', NULL, 1589006926464, 1589006899000, 1589006901000, 1589006926464, 0, 50, 1, 0, 0, -1, 'true', 'admin');
INSERT INTO `activity` VALUES ('938bf4c0-91c1-11ea-b4b2-534983822470', '570395c0-5842-11ea-8396-f196e3bde291', '防疫志愿服务', '志愿者', '线下', '学校', '<p>通知：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;为持续做好全校防疫志愿服务工作，现需招募至16号之前的16级毕业生志愿者（包括16号），每班1-2人，一班两小时，同时为了避免志愿者的物资多次传递，造成不必要的接触，自愿连续几天值班的志愿者优先考虑。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有意向参加的同学加入下群。并将上岗时间按格式发送到春季开学防疫志愿者通知群里。希望可以积极参与，谢谢~</p><p class=\"ql-align-center\"><img src=\"http://oss.guoang.xyz/7908398272acf68af2f35e5ef1b0fa62.jpg\"></p>', NULL, 1589007089036, 1589007042000, 1589007039000, 1589007089036, 0, 0, 39, 0, 0, 0, 'true', NULL);
INSERT INTO `activity` VALUES ('5ef687d0-d5e7-11ed-97da-a3019c4a062f', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '打 阿萨大大', '体育', '线上', '', '<p>dada奥迪</p>', NULL, 1680942493773, 1680942516000, 1682697600000, 1681000143890, 0, 0, 0, 0, 0, 0, 'false', NULL);

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `user_createtime` bigint NULL DEFAULT NULL,
  `isfk` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `isgl` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `issh` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `isyh` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `user_state` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('72be7370-7557-11ea-b6e7-61307321129f', 'guoang', '388b122f7520b1ab77f559ebbc7ac222', '超级管理员', 1585882874791, '1', '1', '1', '1', '1');
INSERT INTO `admin` VALUES ('05b7b9c0-7558-11ea-b6e7-61307321129f', 'qqqqqqqq', 'b7cef2688c1aef2887626e4b9590e86f', 'asdas', 1585883121372, '0', '0', '1', '1', '1');
INSERT INTO `admin` VALUES ('f7c731a0-7558-11ea-b96e-15e045391126', 'aaaaaaaa', '901a067d3cf176962f6d05d941ae38ac', '管理员', 1585883527481, '1', '1', '1', '1', '1');
INSERT INTO `admin` VALUES ('1810e140-7559-11ea-b96e-15e045391126', 'hhhhhhh', 'afcc43eb0d9dcf6357865e592b09d279', '管理员', 1585883581652, '0', '1', '1', '1', '1');
INSERT INTO `admin` VALUES ('03d88230-7c9a-11ea-8780-0557547caa65', 'bbbbbbbb', 'e2fe8eaf27b80cf682e3232dba8c4575', '管理员', 1586681123154, '1', '1', '1', '1', '1');
INSERT INTO `admin` VALUES ('93661680-853a-11ea-9804-d96c09cf498f', 'aaaaaaa', 'ae4d7705edefee4ee30c17364375ae28', '管理员', 1587629692776, '1', '1', '1', '1', '1');
INSERT INTO `admin` VALUES ('98313980-8542-11ea-81ae-6fb1319a1ba1', 'aaaa44444', '89a51fdab129724eb5371967b67251f6', '管理员', 1587633136792, '1', '1', '1', '1', '1');
INSERT INTO `admin` VALUES ('333fc190-8547-11ea-81ae-6fb1319a1ba1', 'aaaaaaa1', '334dd8cc47b2b5b916b5d650c1f081fa', '管理员', 1587635114921, '0', '1', '1', '1', '1');
INSERT INTO `admin` VALUES ('69941670-b1d3-11ea-b59c-0367d155e2d0', 'admin', '3e1a8c4d35c7041a2704e9f1a044c50e', '管理员', 1592533186775, '1', '1', '1', '1', '1');
INSERT INTO `admin` VALUES ('cdaa6510-d511-11ed-afc2-91d117d3db4a', 'asdasd', '750aca817d4018e2c578ae83f6d11023', '管理员', 1680850767201, '0', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement`  (
  `announcement_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `announcement_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `announcement_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `announcement_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `content_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `announcement_createtime` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`announcement_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of announcement
-- ----------------------------
INSERT INTO `announcement` VALUES ('7f63c500-d5e7-11ed-97da-a3019c4a062f', 'asdas', 'asdad', 'activity', '5ef687d0-d5e7-11ed-97da-a3019c4a062f', 1680942548176);
INSERT INTO `announcement` VALUES ('820ca1a0-95d5-11ea-b59c-0367d155e2d0', '关于防疫志愿者活动的在通知', '由于疫情已经结束，防疫志愿者活动取消', 'activity', '938bf4c0-91c1-11ea-b4b2-534983822470', 1589455454266);

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `article_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `article_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `article_introduction` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `article_lable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `article_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `article_createtime` bigint NULL DEFAULT NULL,
  `article_updatetime` bigint NULL DEFAULT NULL,
  `article_favour_num` int NULL DEFAULT NULL,
  `article_read_num` int NULL DEFAULT NULL,
  `article_state` int NULL DEFAULT NULL,
  `article_istop` int NULL DEFAULT NULL,
  `ispublic` int NULL DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('8f8d50e0-91b6-11ea-b4b2-534983822470', 'acb43a80-91a7-11ea-953f-dfe0b5c8db9e', '你好，2020', '在我年轻的时候，唔…我的意思是说，在我更年轻的时候，我总觉得，2020年，是一个充满了科幻感的年份，会有很多很多很神奇的事情发生在这一年。\n\n现在，2020年，这个在年少的记忆里充满了科幻感的年份终于来到了身边。只不过，当她真的到来的时候，你我都心知肚明，这只不过是普普通通、平平无奇的一年罢了。', '好文', '<p><img src=\"http://oss.guoang.xyz/118fb14c9128c0dcec6014d3db45c0c4.webp\"></p><p>在我年轻的时候，唔…我的意思是说，在我更年轻的时候，我总觉得，2020年，是一个充满了科幻感的年份，会有很多很多很神奇的事情发生在这一年。</p><p>现在，2020年，这个在年少的记忆里充满了科幻感的年份终于来到了身边。只不过，当她真的到来的时候，你我都心知肚明，这只不过是普普通通、平平无奇的一年罢了。</p><p>但是也许，就像平凡人也可以扮演一个特别的角色一样，普通的一年也可以成为标注人生的一页书签。更何况，她还有一个回环的名字。</p><p>1999年，我注册了QQ和邮箱，并开始以“门”为代号；2009年，我重新规划人生，决定回到自己的专业，以律师为业；2019年，我们律师团队经受住了更多的考验，无论这个考验是来自业务，来自客户，还是来自其他方面；接下来，希望我们有能力、也有机会去迎接更大的挑战，挑战更大的搏击。</p><p>竟然只一转眼，我们就已经站在了2020年的门口。回头一望，距离我来到上海，已经整整9年。这9年，我的状态可以用三个字来概括：埋头跑。下一个9年，我要换一个关键词。这个关键词是什么呢？我想用时间来告诉自己，用行动来告诉大家。</p><p>当你抬眼他正踏过江面，你好，2020。</p><p><br></p><p><br></p>', 1589002357870, 1589002357870, 0, 26, 0, 0, 1, 'admin');
INSERT INTO `article` VALUES ('ad02bbc0-91bf-11ea-b4b2-534983822470', '570395c0-5842-11ea-8396-f196e3bde291', '《让岁月变成诗》名人语录', '海子说：生命中有很多东西，能忘掉的叫过去，忘不掉的叫记忆。\n一个人的寂寞，有时候，很难隐藏得太久，时间太久了，人就会变得沉默，那时候，有些往日的情怀，就找不回来了。三毛说：如果有来生，要做一棵树，站成永恒，没有悲伤的姿势：一半在尘土里安详，一半在空中飞扬；一半散落阴凉，一半沐浴阳光。非常沉默非常骄傲，从不依靠从不寻找。', '好文', '<p><br></p><p><img src=\"http://oss.guoang.xyz/b43f4f19889bfad3279aa1d810253ed4.webp\"></p><p><br></p><p><span style=\"color: rgb(64, 64, 64);\">村上春树说：最纯粹的爱情观，如若相爱，便携手到老；如若错过，便护他安好。</span></p><p><br></p><p><img src=\"http://oss.guoang.xyz/1f1c80f1ac916b5459d9388697fc1f14.webp\"></p><p><br></p><p><span style=\"color: rgb(64, 64, 64);\">三毛说：如果有来生，要做一棵树，站成永恒，没有悲伤的姿势：一半在尘土里安详，一半在空中飞扬；一半散落阴凉，一半沐浴阳光。非常沉默非常骄傲，从不依靠从不寻找。</span></p>', 1589006272764, 1589006272764, 0, 1, 0, 0, -1, 'admin');
INSERT INTO `article` VALUES ('38b02e00-91c0-11ea-b4b2-534983822470', '0a2afba0-91a2-11ea-bda1-53a75d166860', '细读《挪威的森林》', '花了六天时间读完，基本上是小半天小半天的样子下看完的，算是细读些了。小说我是很少会细读的，基本是凭语感一气而下，遇到生字或不通顺也不停顿，其实个别地方跳过一般也不影响对小说主旨的把握。《挪威的森林》，村上春树的代表作。因它的名气特别响亮，特定网购了一本，放在书架上放好几个月了，最近才有时间打开阅读。', '好文', '<p><br></p><p><img src=\"http://oss.guoang.xyz/0d766e70174073eeae85de95738404e6.webp\"></p><p>《挪威的森林》，村上春树的代表作。因它的名气特别响亮，特定网购了一本，放在书架上放好几个月了，最近才有时间打开阅读。</p><p>花了六天时间读完，基本上是小半天小半天的样子下看完的，算是细读些了。小说我是很少会细读的，基本是凭语感一气而下，遇到生字或不通顺也不停顿，其实个别地方跳过一般也不影响对小说主旨的把握</p><h2>书中故事</h2><p>小说主人翁叫“渡边君”，故事围绕他的中学生活到大学生活的描写，重点写他青春里的感情生活，又或者说爱情吧。其他的主人翁分别有中学时的朋友：木月、直子（女），大学认识的朋友：绿子（女）、永泽、室友“敢死队（记不起叫啥了）”、初美（永泽女友），包括直子疗养院的室友：玲子（女）。</p><p>以心相交的好友木月中学时自杀了。渡边一下子失去了能谈心的伙伴，后面选择离家很远没有人认识的地方读大学，也想重新开始自己的人生。本来单调乏味的大学生活他一直无感的持续着，在地铁上再次遇到好友木月的女朋友直子，让渡边的生活发生了大的变化，并在种种纠结中同直子自然而然的睡了，可心理又总觉得愧疚于木月。</p><p>同直子甜蜜的大学生活还未能怎么样，她就突然消失了，令渡边十分忐忑迷茫，一下子也不知所错了。</p><p>故事中的渡边是一个十分笃定坦诚又真实的人，有自己思考，绝不是个人云亦云的家伙。他的内心波澜不惊，仿佛对什么都不感兴趣，也不好奇，一切按自己的节奏生活着，其他人的高低贵贱完全无视，他是那么的纯真。</p><p>因为一本《了不起的盖茨比》认识了身为富家子弟的同学永泽。这位富二代心气十分高，一副看透世事一般，大多数人在他眼里全是阿谀奉承的废材，根本就是没有思想只是活着而已。因渡边把《了不起的盖茨比》看了三遍，便认定他配成为自己的朋友。一定程度上他们确实成了好友，那种彼此看透相互认可尊重但却完全不同的朋友。</p><p>看似完全不同的两类人，一般来说是完全没有可能成为朋友的，但他们却一起鬼混泡妞谈天，彼此成为对方的知己。应该说他们俩都是内心孤独的人，也都是十分坚定的人，就好像武侠小说里那些顶尖强者们的心心相惜，但又选择保持距离。</p><p>通过永泽认识了初美，一位华贵高雅的完美“梦中型”女人。第一次见到她，渡边便直言十分喜欢，是心中理想的女友。故事结尾，在得知初美自杀后，断然与永泽绝交了。</p><p>在失去直子联系的日子里，渡边认识了上同一门选修课的同学绿子。后面的故事，直子与绿子两个人都走进了渡边心里，但他们又不是三角恋（青春少年本就该有如此的烦恼，那才叫青春），在渡边搞不懂自己，纠结中发生了很多故事...</p><p>后来给直子老家寄信才联系上了她，去疗养院看望直子又认识了她的病室友玲子，一个大自己十几岁的女人，两次深夜散步中了解了她的故事。</p><p>直子最终病情加重自杀了，渡边因此独自流浪了一个多月，深夜里独自痛哭。</p><p>故事结局，渡边在同看望自己的玲子睡了后，明白了自己的内心，其实早已离不开来绿子了，而绿子也深爱着他，在公用电话亭拨通了绿子电话诉说着，故事结束，留下想象空间给读者。</p><p><br></p><p><img src=\"http://oss.guoang.xyz/30aae2c3e0a38cfd925727344fd566bb.webp\"></p><h2>摘抄书中喜欢的句子</h2><ul><li><strong>死并非生的对立面，而作为生的一部分永存。死迟早会将我们俘获在手。但反言之，在死俘获我们之前，我们并未被死俘获。生在此侧，死在彼侧。我在此侧，不在彼侧。</strong></li></ul><p>渡边在木月死后，明悟的一段对生死的感受，那年他才17岁。</p><ul><li><strong>对死后不足三十年的作家，原则上是不屑一顾的，那种书不足为信。不是我不相信现代文学。我只是不愿意在阅读未经过时间洗礼的书籍上面浪费时间。人生短暂。</strong></li></ul><p>渡边与永泽刚认识时，永泽发表自己对文学作品的态度，说的一段经典。这句话在真实世界也很有借鉴意义，但也不能绝对。</p><ul><li><strong>哪里会有人喜欢孤独！不过是不乱交朋友罢了。那样只能落得失望。</strong></li></ul><p>这段话是绿子刚认识渡边时，问他怎么老是一个人待着，一个人干这干那的，而渡边自嘲回答是喜欢孤独，绿子解读出了他的“喜欢孤独”。</p><ul><li><strong>绅士就是，所做的，不是自己想做之事，而是自己应做之事。</strong></li></ul><p>这段话是永泽自己的理解，是向渡边的解答他的提问。永泽就是这样一个对别人狠，对自己更狠的人，有时候你会觉得只这样的人才能成大事，有时候。</p><p><br></p>', 1589006507104, 1589006507104, 0, 5, 0, 0, 0, NULL);
INSERT INTO `article` VALUES ('e6a60610-91c0-11ea-b4b2-534983822470', '0a2afba0-91a2-11ea-bda1-53a75d166860', '4月23日湖南师范大学罗迅博士讲学预告', '罗迅，湖南师范大学，信息科学与工程学院，讲师，博士。2000年获得清华大学学士学位，2007年获得清华大学博士学位，同年进入湖南师范大学任教。2009年开始担任湖南师范大学ACM集训队教练。建队以来，获得ACM-ICPC区域赛金奖1项，银奖3项，铜奖11项；CCPC分站赛银奖1项，铜奖2项，进入全国总决赛1次；HNCPC金奖7项（其中冠军1次），银奖14项，铜奖7项。', NULL, '<h2><strong>专家简介：</strong></h2><p>&nbsp;&nbsp;&nbsp;罗迅，湖南师范大学，信息科学与工程学院，讲师，博士。2000年获得清华大学学士学位，2007年获得清华大学博士学位，同年进入湖南师范大学任教。2009年开始担任湖南师范大学ACM集训队教练。建队以来，获得ACM-ICPC区域赛金奖1项，银奖3项，铜奖11项；CCPC分站赛银奖1项，铜奖2项，进入全国总决赛1次；HNCPC金奖7项（其中冠军1次），银奖14项，铜奖7项。</p><p><strong>讲座时间：</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4月23日周四下午15:30到17:30</p><h2><strong>腾讯课堂：</strong></h2><p>链接：<span style=\"color: rgb(51, 51, 51);\">&nbsp;</span><a style=\"color: rgb(0, 0, 255);\" href=\"https://ke.qq.com/webcourse/index.html?cid=789933&amp;term_id=100888182&amp;lite=1&amp;from=800021724\" target=\"_blank\" rel=\"noopener noreferrer\">https://ke.qq.com/webcourse/index.html?cid=789933&amp;term_id=100888182&amp;lite=1&amp;from=800021724</a></p>', 1589006798961, 1589006798961, 0, 3, 0, 0, 0, NULL);
INSERT INTO `article` VALUES ('77d5dbb0-d5e3-11ed-97da-a3019c4a062f', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', 'asda奥迪', 'asdad', '新闻', '<p>大底大底</p>', 1680940817515, 1680940817515, 0, 2, 0, 0, 0, NULL);

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel`  (
  `carousel_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `carousel_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `carousel_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `carousel_createtime` bigint NULL DEFAULT NULL,
  `carousel_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES ('3defcd70-91b7-11ea-b4b2-534983822470', 'http://oss.guoang.xyz/1c56e0082178b3b0240aa5feef7bf5b0.jpg', 'http://www.guoang.xyz/changhangtong/#/oldstuffcontent/4a0ab290-91b3-11ea-b4b2-534983822470', 1589002650439, '【二手信息】蓝牙耳机');
INSERT INTO `carousel` VALUES ('52b77960-91b7-11ea-b4b2-534983822470', 'http://oss.guoang.xyz/1f9f99454d19d04a48b660bee872d404.jpg', 'http://www.guoang.xyz/changhangtong/#/oldstuffcontent/dca2ed20-91b3-11ea-b4b2-534983822470', 1589002685302, '【二手信息】羽毛球拍');
INSERT INTO `carousel` VALUES ('0a9d3610-91fd-11ea-8bd5-6984a2cebda2', 'http://oss.guoang.xyz/a68833b2f40fb53e7e00e77171708d8a.jpg', 'http://www.guoang.xyz/changhangtong/#/oldstuffcontent/dca2ed20-91b3-11ea-b4b2-534983822470', 1589032629105, '【二手信息】足球');
INSERT INTO `carousel` VALUES ('d05cc1e0-932e-11ea-b59c-0367d155e2d0', 'http://oss.guoang.xyz/a742e7ee1a63591705861f106b611604.jpg', 'http://www.guoang.xyz/changhangtong/#/activitycontent/32a57000-91c1-11ea-b4b2-534983822470', 1589163957374, '【校内活动】图书馆志愿者');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `comment_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `content_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `comment_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `comment_createtime` bigint NULL DEFAULT NULL,
  `comment_favour_num` int NULL DEFAULT NULL,
  `comment_state` int NULL DEFAULT NULL,
  `comment_istop` int NULL DEFAULT NULL,
  `ispublic` int NULL DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('e4da6870-5233-11ea-8739-8519ff0c1c57', '0b5a7060-4d45-11ea-af90-1ff1bd6c4005', 'ef2d60f0-4baf-11ea-ad08-2db5b0f053ed', '<ol><li>阿萨大大</li><li>啊大大大</li><li>阿达哒哒哒</li><li>阿达哒哒哒                  <img src=\"http://127.0.0.1:3000/uplodes/75f54773bea6ec3c12a361e3e8b38f9d\"></li></ol>', 1582019313655, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('a53aac70-523d-11ea-93cc-fdbc57a3abb4', '0b5a7060-4d45-11ea-af90-1ff1bd6c4005', 'ef2d60f0-4baf-11ea-ad08-2db5b0f053ed', '<p>哈哈哈哈<img src=\"http://127.0.0.1:3000/uplodes/97a24ab18cd8e4a9cf96f2f431a237ee\"></p>', 1582023501879, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('09ee3760-5241-11ea-9adb-6502ff385798', '0b5a7060-4d45-11ea-af90-1ff1bd6c4005', 'ef2d60f0-4baf-11ea-ad08-2db5b0f053ed', '<p>哈哈哈哈哈哈</p>', 1582024959318, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('ea8f27e0-52da-11ea-a725-c5f5b263ec86', '0b5a7060-4d45-11ea-af90-1ff1bd6c4005', 'ef2d60f0-4baf-11ea-ad08-2db5b0f053ed', '<p>哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈</p>', 1582091049181, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('d5ce6610-5846-11ea-8396-f196e3bde291', '65c65010-5843-11ea-8396-f196e3bde291', '50a224e0-5846-11ea-8396-f196e3bde291', '<p>哈哈哈哈哈</p><p><img src=\"http://127.0.0.1:3000/uplodes/5fdca8a194547f94726bcf10e14d1ef4\"></p>', 1582687155825, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('26eb2a50-5ac3-11ea-85fc-9d393dff764e', '2a4024e0-5856-11ea-9645-71502aa5b5bb', '570395c0-5842-11ea-8396-f196e3bde291', '<p>哈哈哈哈哈</p>', 1582960451829, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('9f47b200-5c4b-11ea-8568-310572df330f', '7c4ac520-5b8e-11ea-aad3-6f8edfac198f', '570395c0-5842-11ea-8396-f196e3bde291', '<p>哈哈哈哈</p>', 1583129016480, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('4c17e7c0-601b-11ea-97d2-33185b67ad31', '7c4ac520-5b8e-11ea-aad3-6f8edfac198f', '570395c0-5842-11ea-8396-f196e3bde291', '<p>杀了喀什的卡拉数量的哈佛</p>', 1583548065723, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('0bd3f550-604d-11ea-abd5-890bf2483d5d', '2d8a46d0-5d38-11ea-8568-310572df330f', '570395c0-5842-11ea-8396-f196e3bde291', '<p>哈哈哈哈哈</p>', 1583569432741, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('89228d00-60ed-11ea-b242-8b4ea86bb2e7', '65c65010-5843-11ea-8396-f196e3bde291', '570395c0-5842-11ea-8396-f196e3bde291', '<p>哈哈哈</p>', 1583638362443, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('899b1860-60ed-11ea-b242-8b4ea86bb2e7', '65c65010-5843-11ea-8396-f196e3bde291', '570395c0-5842-11ea-8396-f196e3bde291', '', 1583638363234, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('c3375340-60ed-11ea-b242-8b4ea86bb2e7', 'b744da80-60ed-11ea-b242-8b4ea86bb2e7', '570395c0-5842-11ea-8396-f196e3bde291', '<p>哈哈哈哈</p>', 1583638459884, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('220916e0-60f0-11ea-a042-cf63f42fc32a', 'b744da80-60ed-11ea-b242-8b4ea86bb2e7', '570395c0-5842-11ea-8396-f196e3bde291', '<p>哈哈哈</p>', 1583639477961, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('db9c90f0-60f0-11ea-a042-cf63f42fc32a', 'b744da80-60ed-11ea-b242-8b4ea86bb2e7', '570395c0-5842-11ea-8396-f196e3bde291', '<p>12211</p>', 1583639789308, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('0cbc18e0-60f1-11ea-a042-cf63f42fc32a', 'b744da80-60ed-11ea-b242-8b4ea86bb2e7', '570395c0-5842-11ea-8396-f196e3bde291', '<p>哈韩的哈的哈</p>', 1583639871723, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('fbd45380-6122-11ea-a042-cf63f42fc32a', '7c4ac520-5b8e-11ea-aad3-6f8edfac198f', '570395c0-5842-11ea-8396-f196e3bde291', '<p>阿达地点</p>', 1583661318197, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('9c7c6650-61d8-11ea-a0a1-bb2c8f812934', '7c4ac520-5b8e-11ea-aad3-6f8edfac198f', '570395c0-5842-11ea-8396-f196e3bde291', '<p>hhhh</p>', 1583739326636, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('2eee5760-61dd-11ea-a0a1-bb2c8f812934', '2a4024e0-5856-11ea-9645-71502aa5b5bb', '570395c0-5842-11ea-8396-f196e3bde291', '<p>噶大大大</p>', 1583741290318, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('3bcda120-61dd-11ea-a0a1-bb2c8f812934', '2b6a84f0-5b94-11ea-a46b-cbe26efd8e4f', '570395c0-5842-11ea-8396-f196e3bde291', '<p>阿达</p>', 1583741311915, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('e8c5c6b0-681c-11ea-b318-afe3df0494a9', '943db920-5a09-11ea-98fa-f7a3304a43c7', '570395c0-5842-11ea-8396-f196e3bde291', '<p>活动测试</p>', 1584428367382, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('2cbfb740-6822-11ea-b318-afe3df0494a9', '943db920-5a09-11ea-98fa-f7a3304a43c7', '570395c0-5842-11ea-8396-f196e3bde291', '', 1584430628913, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('8c677a70-6822-11ea-b318-afe3df0494a9', '943db920-5a09-11ea-98fa-f7a3304a43c7', '570395c0-5842-11ea-8396-f196e3bde291', '<p>哈哈哈</p>', 1584430789395, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('98675b70-68f8-11ea-a8b8-d301b78e9562', '2a4024e0-5856-11ea-9645-71502aa5b5bb', '570395c0-5842-11ea-8396-f196e3bde291', '<p>哈哈哈哈哈哈</p>', 1584522721826, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('ffb6f560-68f8-11ea-bb22-0d6616b5d098', '7c4ac520-5b8e-11ea-aad3-6f8edfac198f', '570395c0-5842-11ea-8396-f196e3bde291', '<p>啊大大大</p>', 1584522895154, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('b84e86d0-709a-11ea-9fe5-dd9d1fb2dad4', '6db2a8e0-6e47-11ea-9638-4de92af8af26', '570395c0-5842-11ea-8396-f196e3bde291', '<p>hhhhh</p>', 1585362011894, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('53ef9f30-70d1-11ea-8d8f-c371111050c6', 'b85915c0-6d87-11ea-827d-23e4ddad9fb3', '570395c0-5842-11ea-8396-f196e3bde291', '<p>adsssssssssssss</p>', 1585385465886, NULL, 0, 0, 1, 'guoang');
INSERT INTO `comment` VALUES ('e82eeb50-70d7-11ea-8e29-1986fe3e9d16', 'f02a6f50-6b50-11ea-afea-b322b44b18bc', '570395c0-5842-11ea-8396-f196e3bde291', '<p>撒啊啊啊啊啊啊啊啊啊啊啊啊</p>', 1585388291585, NULL, 0, 0, 1, 'guoang');
INSERT INTO `comment` VALUES ('656aa210-734b-11ea-a4dd-7140befad870', '943db920-5a09-11ea-98fa-f7a3304a43c7', '570395c0-5842-11ea-8396-f196e3bde291', '<p>hhhhhhhhhhhhhh </p>', 1585657796139, NULL, 0, 0, 1, 'guoang');
INSERT INTO `comment` VALUES ('b014b3f0-73f5-11ea-a86c-61a0af1a4ce5', '279b2410-6f35-11ea-8c99-176f159370fc', '570395c0-5842-11ea-8396-f196e3bde291', '<p>assssssssss</p>', 1585730935854, NULL, 0, 0, 1, 'guoang');
INSERT INTO `comment` VALUES ('2dfffa11-7b97-11ea-bed2-6772578f48eb', '7c4ac520-5b8e-11ea-aad3-6f8edfac198f', '87231090-7161-11ea-94ab-add3cfa01434', '<h1>评论审核中心测试</h1><blockquote>测试新潟县内潇洒啊撒旦艰苦撒旦就挨打不是大手笔大苏打大</blockquote><blockquote>啊大苏打撒旦撒dd</blockquote><p>s飒飒的撒大大大撒</p><p><img src=\"http://oss.guoang.xyz/94d05070d671f649b201a657e90192c2.jpg\"></p><p><br></p><p>测试信息撒低级哈加达回答后多久啊大噶技术的撒旦撒旦把实打实大大啊</p><p>撒大大</p><ol><li>飒飒打撒dd</li><li>asdsadasdasdaadad</li></ol><p>ad</p><p>阿三大苏打实打实的aa</p>', 1586569954225, NULL, 0, 0, 1, 'guoang');
INSERT INTO `comment` VALUES ('5680c090-8539-11ea-9804-d96c09cf498f', '2a4024e0-5856-11ea-9645-71502aa5b5bb', '570395c0-5842-11ea-8396-f196e3bde291', '<p>哈哈哈哈</p>', 1587629161100, NULL, 0, 0, 1, 'guoang');
INSERT INTO `comment` VALUES ('c8d9d600-853d-11ea-81ae-6fb1319a1ba1', '2a4024e0-5856-11ea-9645-71502aa5b5bb', '570395c0-5842-11ea-8396-f196e3bde291', '<p>hhhhh</p><p> <img src=\"http://oss.guoang.xyz/ec70c9074938563905a1a2acab0368ca.jpg\"></p>', 1587631070937, NULL, 0, 0, 1, 'guoang');
INSERT INTO `comment` VALUES ('6183f320-8540-11ea-81ae-6fb1319a1ba1', '2a4024e0-5856-11ea-9645-71502aa5b5bb', '570395c0-5842-11ea-8396-f196e3bde291', '<p>哈哈哈哈哈哈</p>', 1587632186061, NULL, 0, 0, -1, 'guoang');
INSERT INTO `comment` VALUES ('add28e80-8540-11ea-81ae-6fb1319a1ba1', '7ae3d360-5b94-11ea-a46b-cbe26efd8e4f', '570395c0-5842-11ea-8396-f196e3bde291', '<p>哈哈哈哈</p>', 1587632314084, NULL, 0, 0, 1, 'guoang');
INSERT INTO `comment` VALUES ('1a6db850-8544-11ea-81ae-6fb1319a1ba1', '2a4024e0-5856-11ea-9645-71502aa5b5bb', 'fc5ab440-8542-11ea-81ae-6fb1319a1ba1', '<p>hhhhh </p>', 1587633784785, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('934a1e80-8544-11ea-81ae-6fb1319a1ba1', '1e93d960-7490-11ea-8595-ad478ec34a48', '570395c0-5842-11ea-8396-f196e3bde291', '<p>adasdasd a</p>', 1587633987557, NULL, 0, 0, 1, 'guoang');
INSERT INTO `comment` VALUES ('f25d8060-91ba-11ea-b4b2-534983822470', 'b9702320-91ba-11ea-b4b2-534983822470', '570395c0-5842-11ea-8396-f196e3bde291', '<p>15块钱卖不卖</p>', 1589004241637, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('039d7a40-91bd-11ea-b4b2-534983822470', 'b9702320-91ba-11ea-b4b2-534983822470', '570395c0-5842-11ea-8396-f196e3bde291', '<p>书本的新旧程度怎么样</p>', 1589005129571, NULL, 0, 0, -1, 'admin');
INSERT INTO `comment` VALUES ('c6f5af60-92b4-11ea-b59c-0367d155e2d0', '42b94190-91a5-11ea-953f-dfe0b5c8db9e', '570395c0-5842-11ea-8396-f196e3bde291', '<p>这是一条违规的评论</p>', 1589111542997, NULL, 0, 0, 1, 'guoang');
INSERT INTO `comment` VALUES ('c6105871-d5aa-11ed-885a-4b482dd396ea', '42b94190-91a5-11ea-953f-dfe0b5c8db9e', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '<p>阿松大</p>', 1680916467446, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('f60dd420-d5e2-11ed-97da-a3019c4a062f', 'e6a60610-91c0-11ea-b4b2-534983822470', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '<p>阿松大</p>', 1680940599777, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('fbd3a471-d5e2-11ed-97da-a3019c4a062f', '0aad8200-91b6-11ea-b4b2-534983822470', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '<p>阿萨大大</p>', 1680940609463, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('b4b2a950-d5e8-11ed-97da-a3019c4a062f', '77d5dbb0-d5e3-11ed-97da-a3019c4a062f', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '<p>奥迪</p>', 1680943067108, NULL, 0, 0, 0, NULL);
INSERT INTO `comment` VALUES ('25d61460-d62e-11ed-a54f-f3081758ed94', '938bf4c0-91c1-11ea-b4b2-534983822470', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '<p>阿松大</p>', 1680972892197, NULL, 0, 0, 0, NULL);

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `company_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `company_scale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `company_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `company_createtime` bigint NULL DEFAULT NULL,
  `company_updatetime` bigint NULL DEFAULT NULL,
  `company_favour_num` int NULL DEFAULT NULL,
  `company_read_num` int NULL DEFAULT NULL,
  `company_state` int NULL DEFAULT NULL,
  `company_istop` int NULL DEFAULT NULL,
  `company_ispublic` int NULL DEFAULT NULL,
  `company_mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`company_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('43a19df0-a5aa-11ea-b59c-0367d155e2d0', '570395c0-5842-11ea-8396-f196e3bde291', '哈哈哈', NULL, NULL, 1591196099791, 1591196099791, 0, 0, 0, 0, 0, NULL);
INSERT INTO `company` VALUES ('55b1bde0-91c8-11ea-8697-f18fb1c10827', '041170c0-91c8-11ea-a343-5d12af3b45a7', '哈哈哈信息平台', '333人', '<p><span style=\"color: rgb(97, 104, 124);\">游卡以“创造和分享快乐”为使命，深耕科技、文创领域十余载，旗下业务涵盖网络游戏、电竞、桌游文创、网络小说、电子商务等多个方面。</span></p><p><br></p><p><span style=\"color: rgb(97, 104, 124);\">游卡在杭州、上海、北京、成都、深圳等地均设有办公业务，拥有员工超千人，始终坚持以“大IP”创造为基础、用户为核心、线上线下协同运营为策略，全方位触达多场景化的社交娱乐方式。</span></p>', 1589009991742, 1589009991742, 0, 6, 0, 0, 0, '邮箱54674@qq.com');
INSERT INTO `company` VALUES ('7f956c70-932a-11ea-b59c-0367d155e2d0', '85a1b110-9329-11ea-b59c-0367d155e2d0', '中国网络有限公司', '100人', '<p><span style=\"color: rgb(97, 104, 124);\">游卡以“创造和分享快乐”为使命，深耕科技、文创领域十余载，旗下业务涵盖网络游戏、电竞、桌游文创、网络小说、电子商务等多个方面。</span></p><p><br></p><p><span style=\"color: rgb(97, 104, 124);\">游卡在杭州、上海、北京、成都、深圳等地均设有办公业务，拥有员工超千人，始终坚持以“大IP”创造为基础、用户为核心、线上线下协同运营为策略，全方位触达多场景化的社交娱乐方式。</span></p>', 1589162103863, 1589162103863, 0, 1, 0, 0, 0, '邮箱 3647637446@qq.com');
INSERT INTO `company` VALUES ('cd527ca0-92c1-11ea-b59c-0367d155e2d0', '1cc9ebc0-92c1-11ea-b59c-0367d155e2d0', '南昌肖林信息技术有限公司', '1000人', '<p><span style=\"color: rgb(97, 104, 124);\">游卡以“创造和分享快乐”为使命，深耕科技、文创领域十余载，旗下业务涵盖网络游戏、电竞、桌游文创、网络小说、电子商务等多个方面。</span></p><p><br></p><p><span style=\"color: rgb(97, 104, 124);\">游卡在杭州、上海、北京、成都、深圳等地均设有办公业务，拥有员工超千人，始终坚持以“大IP”创造为基础、用户为核心、线上线下协同运营为策略，全方位触达多场景化的社交娱乐方式。</span></p>', 1589117137130, 1589117137130, 0, 3, 0, 0, 0, '简历发送至邮箱354654366@qq.com');
INSERT INTO `company` VALUES ('d5291620-91b1-11ea-b4b2-534983822470', '0a2afba0-91a2-11ea-bda1-53a75d166860', '南昌网络有限公司', '100人', '<p><span style=\"color: rgb(0, 0, 0);\">无锡红光标牌有限公司是一家集研发、生产、销售和服务于一体的专业标牌生产厂家。注册资金500万人民币。主要生产塑料基材、软塑透明树脂、金属、模内复合等标牌产品，洗衣机顶盖板总成，平衡板，以及塑印、彩印、顶盖板、吸音垫等产品。公司位于长江三角洲经济快速增长、风景秀丽的太湖之畔——无锡。 公司自1984年成立至今，已经过了3次跨越式的发展。2004年至今公司投入5000多万元资金建设新的生产基地，目前已竣工并投入生产，占地面积达40000m2，厂房面积近15000m2。公司2004年的年产值达4350多万元，并且每年以平均30%的速度快速增长。目前，本公司的产品已具备国际及国内多项质量认证证书，并为知名家用电器企业：小天鹅电器有限公司、三星电子有限公司、海尔集团、惠尔普等配套生产各类标牌。可以说客户是我们的老师，和他们合作使我们得到很多的学习机会来提高自身的技术水平和管理水平，是我们生产和发展的动力。 公司本着“千方百计生产出满足顾客期望和要求的产品”的宗旨，坚持“工厂出产的不仅仅是产品，更重要的是信誉和质量”的经营理念，不断吸收新技术、引进新设备，使公司的经济效益蒸蒸日上。相信公司将会永不停止探索和发展的脚步，和中国国内以及世界国际性大公司同步发展。</span></p><p><span style=\"color: rgb(0, 0, 0);\"><span class=\"ql-cursor\">﻿</span></span><img src=\"http://oss.guoang.xyz/981f08d284715ac81893460865b058b5.jpg\"></p>', 1589000327170, 1589000327170, 0, 5, 0, 0, 0, '邮箱384767366@qq.com');

-- ----------------------------
-- Table structure for fankui
-- ----------------------------
DROP TABLE IF EXISTS `fankui`;
CREATE TABLE `fankui`  (
  `fankui_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `fankui_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `fankui_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `fankui_createtime` bigint NULL DEFAULT NULL,
  `fankui_state` int NULL DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fankui
-- ----------------------------
INSERT INTO `fankui` VALUES ('798cfc00-92b5-11ea-b59c-0367d155e2d0', '阿萨法杀害饭卡上', '32748923@qq.com', 1589111842624, 2, 'guoang');
INSERT INTO `fankui` VALUES ('f28a33d0-92b9-11ea-b59c-0367d155e2d0', '意见内容', '23754432@qq.com', 1589113763597, 2, 'guoang');
INSERT INTO `fankui` VALUES ('361d7fd0-95df-11ea-b59c-0367d155e2d0', '希望平台对移动端多做点适配', '374665465@qq.com', 1589459621837, 1, 'admin');
INSERT INTO `fankui` VALUES ('04b4e590-d5e3-11ed-97da-a3019c4a062f', '阿松大', '阿松大', 1680940624361, 0, NULL);

-- ----------------------------
-- Table structure for help
-- ----------------------------
DROP TABLE IF EXISTS `help`;
CREATE TABLE `help`  (
  `help_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `help_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `help_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `help_lable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `help_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `help_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `createtime` bigint NULL DEFAULT NULL,
  `updatetime` bigint NULL DEFAULT NULL,
  `help_favour_num` int NULL DEFAULT NULL,
  `help_read_num` int NULL DEFAULT NULL,
  `help_state` int NULL DEFAULT NULL,
  `help_istop` int NULL DEFAULT NULL,
  `ispublic` int NULL DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`help_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of help
-- ----------------------------
INSERT INTO `help` VALUES ('0d5c74b0-92cf-11ea-b59c-0367d155e2d0', '1cc9ebc0-92c1-11ea-b59c-0367d155e2d0', '学校什么时候返校', '开学、,返校', '其他', '<p>学校什么时候返校，想回学校</p>', NULL, 1589122828027, 1589122828027, 0, 2, 0, 0, 1, 'admin');
INSERT INTO `help` VALUES ('23cbf250-92d1-11ea-b59c-0367d155e2d0', 'c0bdab90-92d0-11ea-b59c-0367d155e2d0', ' 擅长摄影做视频，写文稿的康康我', '', '娱乐', '<p>擅长摄影做视频，写文稿的康康我，一起建一个社团，仅限大一，之前发的有很多消息没回，不好意思，仅限大一</p>', NULL, 1589123724661, 1589123724661, 0, 0, 0, 0, -1, 'admin');
INSERT INTO `help` VALUES ('2d4583e0-91b5-11ea-b4b2-534983822470', '0a2afba0-91a2-11ea-bda1-53a75d166860', '谁有c语言试题', '学习,寻找资源,c语言', '学习', '<p>谁有c语言试题，最近要考试，需要c语言法系资料</p>', NULL, 1589001763486, 1589001763486, 0, 0, 0, 0, 1, 'admin');
INSERT INTO `help` VALUES ('2f3cad10-91c2-11ea-b4b2-534983822470', '570395c0-5842-11ea-8396-f196e3bde291', '借一个爱奇艺会员', '寻找资源,娱乐', '寻找资源', '<p>借一个爱奇艺会员</p><h2><span style=\"color: rgb(230, 0, 0);\">有偿</span></h2><h3>联系qq：789742894</h3>', NULL, 1589007350241, 1589007350241, 0, 0, 0, 0, 0, NULL);
INSERT INTO `help` VALUES ('42b94190-91a5-11ea-953f-dfe0b5c8db9e', '0a2afba0-91a2-11ea-bda1-53a75d166860', '昨天在三食堂遗失一本《c语言程序设计》', '丢东西,书', '失物认领', '<p>昨天在三食堂遗失一本《c语言程序设计》，</p><h1><br></h1><p>书本如图</p><p><img src=\"http://oss.guoang.xyz/94d381cb6d3c74ce78473eea2a24ddbb.jpg\"></p><h1>联系方式：</h1><p>电话：13374975575 </p><p>qq：478598743</p>', NULL, 1588994927529, 1588994927529, 0, 40, 0, 0, 0, NULL);
INSERT INTO `help` VALUES ('49f88ca0-92d0-11ea-b59c-0367d155e2d0', '1cc9ebc0-92c1-11ea-b59c-0367d155e2d0', '疫情期间的早餐时间是什么时候', '早餐,食堂', '其他', '<p>疫情期间的早餐时间是什么时候</p>', NULL, 1589123359210, 1589123359210, 0, 0, 0, 0, 0, NULL);
INSERT INTO `help` VALUES ('5e998140-92d1-11ea-b59c-0367d155e2d0', 'c0bdab90-92d0-11ea-b59c-0367d155e2d0', '学校会不会退住宿费', '', '其他', '<p>学校会不会退住宿费</p><p>别的学校都退了</p>', NULL, 1589123823316, 1589123823316, 0, 0, 0, 0, 0, NULL);
INSERT INTO `help` VALUES ('61d4ec70-d5e3-11ed-97da-a3019c4a062f', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', 'dididi大底', 'asdad', '失物认领', '<p>atwat打</p>', NULL, 1680940780599, 1680940780599, 0, 0, 0, 0, 0, NULL);
INSERT INTO `help` VALUES ('a4de5af0-92d0-11ea-b59c-0367d155e2d0', '1cc9ebc0-92c1-11ea-b59c-0367d155e2d0', '有人知道为什么练了题目没有进度显示吗？ ', '练习题', '学习', '<p>8.有人知道为什么练了题目没有进度显示吗？&nbsp;</p><p><img src=\"http://oss.guoang.xyz/4cd8f386ca37f1754897e48d7ded7ee5.jpg\"></p>', NULL, 1589123511711, 1589123511711, 0, 0, 0, 0, 0, NULL);
INSERT INTO `help` VALUES ('e1bce500-92cf-11ea-b59c-0367d155e2d0', '1cc9ebc0-92c1-11ea-b59c-0367d155e2d0', '求解，数学题', '学习,数学v', '学习', '<p><img src=\"http://oss.guoang.xyz/32e7102027f1db140860e55f7a696d52.jpg\"></p>', NULL, 1589123184336, 1589123184336, 0, 3, 0, 0, 0, NULL);
INSERT INTO `help` VALUES ('fe1a8d10-91c1-11ea-b4b2-534983822470', '570395c0-5842-11ea-8396-f196e3bde291', '寻找一本《c语言程序设计》', '学习,寻找资源,书', '寻找资源', '<p>寻找一本《c语言程序设计》</p><p>学校课本</p><p class=\"ql-align-center\"><img src=\"http://oss.guoang.xyz/165591b45b70747d87631064d75ff717.jpg\"></p>', NULL, 1589007267809, 1589007267809, 0, 1, 0, 0, 0, NULL);
INSERT INTO `help` VALUES ('ff9008d0-d5e5-11ed-97da-a3019c4a062f', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', 'asd', 'sda', '娱乐', '<p>sad</p>', NULL, 1680941904221, 1680941904221, 0, 1, 0, 0, 0, NULL);

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `job_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `company_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `job_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `job_salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `job_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `job_lable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `job_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `job_createtime` bigint NULL DEFAULT NULL,
  `job_updatetime` bigint NULL DEFAULT NULL,
  `job_favour_num` int NULL DEFAULT NULL,
  `job_read_num` int NULL DEFAULT NULL,
  `job_state` int NULL DEFAULT NULL,
  `job_istop` int NULL DEFAULT NULL,
  `ispublic` int NULL DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('a5469ab0-91b4-11ea-b4b2-534983822470', '0a2afba0-91a2-11ea-bda1-53a75d166860', 'd5291620-91b1-11ea-b4b2-534983822470', 'Java开发经理', '10k', '5', '计算机类', '<p>岗位职责：</p><p>1、负责项目团队建设，包括人员培训、绩效考核等；</p><p>2、参与项目需求分析、系统设计；</p><p>3、&nbsp;参与系统核心模块的程序编码、设计及管理工作；</p><p>4、负责代码Review、测试以及相关文档的编写；</p><p>5、负责指导开发工程师解决开发过程中遇到的技术问题；</p><p>6、完成上级交代的其他工作和任务。</p><p>7、对项目的品质负责，保证功能在线上平稳运行</p><p>岗位要求：</p><p>1、全日制本科及以上学历，计算机相关专业,5年以上Java开发经验，有1年以上4人以上团队的管理经验；</p><p>2、JAVA基础扎实，熟悉IO、多线程、集合等基础框架，熟悉javaweb开发；</p><p>3、熟练掌握常用设计模式，对面向接口编程、面向服务编程有一定的认识；</p><p>4、熟悉Spring、SpringMVC、SpringBoot、Mybatis、Redis、RabbitMQ等主流框架及原理，熟悉tomcat；</p><p>5、熟悉Linux下的常用命令，熟悉MySQL、Oracle；</p><p>6、熟悉IDEA等开发工具；</p><p>7、良好的团队协作能力和沟通能力以及极高的项目责任精神，性格成熟沉稳，能够接受工作压力和迎接挑战；</p><p>8、&nbsp;项目团队管理经验丰富，并能带领团队顺利的完成工作；&nbsp;</p><p>9、&nbsp;具备项目设计风险把控能力，能提前识别、解决或汇报风险；</p><p>10、有银行相关项目开发经验优先考虑。</p>', 1589001535323, 1589001535323, 0, 3, 0, 0, 0, NULL);
INSERT INTO `job` VALUES ('cd099700-91b4-11ea-b4b2-534983822470', '0a2afba0-91a2-11ea-bda1-53a75d166860', 'd5291620-91b1-11ea-b4b2-534983822470', 'Java开发经理', '10k', '5', '计算机类', '<p>岗位职责：</p><p>1、负责项目团队建设，包括人员培训、绩效考核等；</p><p>2、参与项目需求分析、系统设计；</p><p>3、&nbsp;参与系统核心模块的程序编码、设计及管理工作；</p><p>4、负责代码Review、测试以及相关文档的编写；</p><p>5、负责指导开发工程师解决开发过程中遇到的技术问题；</p><p>6、完成上级交代的其他工作和任务。</p><p>7、对项目的品质负责，保证功能在线上平稳运行</p><p>岗位要求：</p><p>1、全日制本科及以上学历，计算机相关专业,5年以上Java开发经验，有1年以上4人以上团队的管理经验；</p><p>2、JAVA基础扎实，熟悉IO、多线程、集合等基础框架，熟悉javaweb开发；</p><p>3、熟练掌握常用设计模式，对面向接口编程、面向服务编程有一定的认识；</p><p>4、熟悉Spring、SpringMVC、SpringBoot、Mybatis、Redis、RabbitMQ等主流框架及原理，熟悉tomcat；</p><p>5、熟悉Linux下的常用命令，熟悉MySQL、Oracle；</p><p>6、熟悉IDEA等开发工具；</p><p>7、良好的团队协作能力和沟通能力以及极高的项目责任精神，性格成熟沉稳，能够接受工作压力和迎接挑战；</p><p>8、&nbsp;项目团队管理经验丰富，并能带领团队顺利的完成工作；&nbsp;</p><p>9、&nbsp;具备项目设计风险把控能力，能提前识别、解决或汇报风险；</p><p>10、有银行相关项目开发经验优先考虑。</p>', 1589001602032, 1589001602032, 0, 0, 0, 0, 0, NULL);
INSERT INTO `job` VALUES ('ceac7190-91b4-11ea-b4b2-534983822470', '0a2afba0-91a2-11ea-bda1-53a75d166860', 'd5291620-91b1-11ea-b4b2-534983822470', 'Java开发经理', '10k', '5', '计算机类', '<p>岗位职责：</p><p>1、负责项目团队建设，包括人员培训、绩效考核等；</p><p>2、参与项目需求分析、系统设计；</p><p>3、&nbsp;参与系统核心模块的程序编码、设计及管理工作；</p><p>4、负责代码Review、测试以及相关文档的编写；</p><p>5、负责指导开发工程师解决开发过程中遇到的技术问题；</p><p>6、完成上级交代的其他工作和任务。</p><p>7、对项目的品质负责，保证功能在线上平稳运行</p><p>岗位要求：</p><p>1、全日制本科及以上学历，计算机相关专业,5年以上Java开发经验，有1年以上4人以上团队的管理经验；</p><p>2、JAVA基础扎实，熟悉IO、多线程、集合等基础框架，熟悉javaweb开发；</p><p>3、熟练掌握常用设计模式，对面向接口编程、面向服务编程有一定的认识；</p><p>4、熟悉Spring、SpringMVC、SpringBoot、Mybatis、Redis、RabbitMQ等主流框架及原理，熟悉tomcat；</p><p>5、熟悉Linux下的常用命令，熟悉MySQL、Oracle；</p><p>6、熟悉IDEA等开发工具；</p><p>7、良好的团队协作能力和沟通能力以及极高的项目责任精神，性格成熟沉稳，能够接受工作压力和迎接挑战；</p><p>8、&nbsp;项目团队管理经验丰富，并能带领团队顺利的完成工作；&nbsp;</p><p>9、&nbsp;具备项目设计风险把控能力，能提前识别、解决或汇报风险；</p><p>10、有银行相关项目开发经验优先考虑。</p>', 1589001604777, 1589001604777, 0, 0, 0, 0, 0, NULL);
INSERT INTO `job` VALUES ('d02492a0-91b4-11ea-b4b2-534983822470', '0a2afba0-91a2-11ea-bda1-53a75d166860', 'd5291620-91b1-11ea-b4b2-534983822470', 'Java开发经理', '10k', '5', '计算机类', '<p>岗位职责：</p><p>1、负责项目团队建设，包括人员培训、绩效考核等；</p><p>2、参与项目需求分析、系统设计；</p><p>3、&nbsp;参与系统核心模块的程序编码、设计及管理工作；</p><p>4、负责代码Review、测试以及相关文档的编写；</p><p>5、负责指导开发工程师解决开发过程中遇到的技术问题；</p><p>6、完成上级交代的其他工作和任务。</p><p>7、对项目的品质负责，保证功能在线上平稳运行</p><p>岗位要求：</p><p>1、全日制本科及以上学历，计算机相关专业,5年以上Java开发经验，有1年以上4人以上团队的管理经验；</p><p>2、JAVA基础扎实，熟悉IO、多线程、集合等基础框架，熟悉javaweb开发；</p><p>3、熟练掌握常用设计模式，对面向接口编程、面向服务编程有一定的认识；</p><p>4、熟悉Spring、SpringMVC、SpringBoot、Mybatis、Redis、RabbitMQ等主流框架及原理，熟悉tomcat；</p><p>5、熟悉Linux下的常用命令，熟悉MySQL、Oracle；</p><p>6、熟悉IDEA等开发工具；</p><p>7、良好的团队协作能力和沟通能力以及极高的项目责任精神，性格成熟沉稳，能够接受工作压力和迎接挑战；</p><p>8、&nbsp;项目团队管理经验丰富，并能带领团队顺利的完成工作；&nbsp;</p><p>9、&nbsp;具备项目设计风险把控能力，能提前识别、解决或汇报风险；</p><p>10、有银行相关项目开发经验优先考虑。</p>', 1589001607242, 1589001607242, 0, 0, 0, 0, 0, NULL);
INSERT INTO `job` VALUES ('d41295b0-91b4-11ea-b4b2-534983822470', '0a2afba0-91a2-11ea-bda1-53a75d166860', 'd5291620-91b1-11ea-b4b2-534983822470', 'Web前端开发工程师（红云智汇）', '10k', '5', '计算机类', '<p>岗位职责：</p><p>1、负责项目团队建设，包括人员培训、绩效考核等；</p><p>2、参与项目需求分析、系统设计；</p><p>3、&nbsp;参与系统核心模块的程序编码、设计及管理工作；</p><p>4、负责代码Review、测试以及相关文档的编写；</p><p>5、负责指导开发工程师解决开发过程中遇到的技术问题；</p><p>6、完成上级交代的其他工作和任务。</p><p>7、对项目的品质负责，保证功能在线上平稳运行</p><p>岗位要求：</p><p>1、全日制本科及以上学历，计算机相关专业,5年以上Java开发经验，有1年以上4人以上团队的管理经验；</p><p>2、JAVA基础扎实，熟悉IO、多线程、集合等基础框架，熟悉javaweb开发；</p><p>3、熟练掌握常用设计模式，对面向接口编程、面向服务编程有一定的认识；</p><p>4、熟悉Spring、SpringMVC、SpringBoot、Mybatis、Redis、RabbitMQ等主流框架及原理，熟悉tomcat；</p><p>5、熟悉Linux下的常用命令，熟悉MySQL、Oracle；</p><p>6、熟悉IDEA等开发工具；</p><p>7、良好的团队协作能力和沟通能力以及极高的项目责任精神，性格成熟沉稳，能够接受工作压力和迎接挑战；</p><p>8、&nbsp;项目团队管理经验丰富，并能带领团队顺利的完成工作；&nbsp;</p><p>9、&nbsp;具备项目设计风险把控能力，能提前识别、解决或汇报风险；</p><p>10、有银行相关项目开发经验优先考虑。</p>', 1589001613834, 1589001613834, 0, 0, 0, 0, 0, NULL);
INSERT INTO `job` VALUES ('dc7a8820-91b4-11ea-b4b2-534983822470', '0a2afba0-91a2-11ea-bda1-53a75d166860', 'd5291620-91b1-11ea-b4b2-534983822470', '后台开发工程师（红云智汇）', '10k', '5', '计算机类', '<p>岗位职责：</p><p>1、负责项目团队建设，包括人员培训、绩效考核等；</p><p>2、参与项目需求分析、系统设计；</p><p>3、&nbsp;参与系统核心模块的程序编码、设计及管理工作；</p><p>4、负责代码Review、测试以及相关文档的编写；</p><p>5、负责指导开发工程师解决开发过程中遇到的技术问题；</p><p>6、完成上级交代的其他工作和任务。</p><p>7、对项目的品质负责，保证功能在线上平稳运行</p><p>岗位要求：</p><p>1、全日制本科及以上学历，计算机相关专业,5年以上Java开发经验，有1年以上4人以上团队的管理经验；</p><p>2、JAVA基础扎实，熟悉IO、多线程、集合等基础框架，熟悉javaweb开发；</p><p>3、熟练掌握常用设计模式，对面向接口编程、面向服务编程有一定的认识；</p><p>4、熟悉Spring、SpringMVC、SpringBoot、Mybatis、Redis、RabbitMQ等主流框架及原理，熟悉tomcat；</p><p>5、熟悉Linux下的常用命令，熟悉MySQL、Oracle；</p><p>6、熟悉IDEA等开发工具；</p><p>7、良好的团队协作能力和沟通能力以及极高的项目责任精神，性格成熟沉稳，能够接受工作压力和迎接挑战；</p><p>8、&nbsp;项目团队管理经验丰富，并能带领团队顺利的完成工作；&nbsp;</p><p>9、&nbsp;具备项目设计风险把控能力，能提前识别、解决或汇报风险；</p><p>10、有银行相关项目开发经验优先考虑。</p>', 1589001627938, 1589001627938, 0, 0, 0, 0, 0, NULL);
INSERT INTO `job` VALUES ('e4ac4f60-91b4-11ea-b4b2-534983822470', '0a2afba0-91a2-11ea-bda1-53a75d166860', 'd5291620-91b1-11ea-b4b2-534983822470', '大数据开发工程师', '10k', '5', '计算机类', '<p>岗位职责：</p><p>1、负责项目团队建设，包括人员培训、绩效考核等；</p><p>2、参与项目需求分析、系统设计；</p><p>3、&nbsp;参与系统核心模块的程序编码、设计及管理工作；</p><p>4、负责代码Review、测试以及相关文档的编写；</p><p>5、负责指导开发工程师解决开发过程中遇到的技术问题；</p><p>6、完成上级交代的其他工作和任务。</p><p>7、对项目的品质负责，保证功能在线上平稳运行</p><p>岗位要求：</p><p>1、全日制本科及以上学历，计算机相关专业,5年以上Java开发经验，有1年以上4人以上团队的管理经验；</p><p>2、JAVA基础扎实，熟悉IO、多线程、集合等基础框架，熟悉javaweb开发；</p><p>3、熟练掌握常用设计模式，对面向接口编程、面向服务编程有一定的认识；</p><p>4、熟悉Spring、SpringMVC、SpringBoot、Mybatis、Redis、RabbitMQ等主流框架及原理，熟悉tomcat；</p><p>5、熟悉Linux下的常用命令，熟悉MySQL、Oracle；</p><p>6、熟悉IDEA等开发工具；</p><p>7、良好的团队协作能力和沟通能力以及极高的项目责任精神，性格成熟沉稳，能够接受工作压力和迎接挑战；</p><p>8、&nbsp;项目团队管理经验丰富，并能带领团队顺利的完成工作；&nbsp;</p><p>9、&nbsp;具备项目设计风险把控能力，能提前识别、解决或汇报风险；</p><p>10、有银行相关项目开发经验优先考虑。</p>', 1589001641686, 1589001641686, 0, 0, 0, 0, 0, NULL);
INSERT INTO `job` VALUES ('c9a657b0-91c8-11ea-8697-f18fb1c10827', '041170c0-91c8-11ea-a343-5d12af3b45a7', '55b1bde0-91c8-11ea-8697-f18fb1c10827', '室内设计师', '10k', '3', '设计类', '<p><span style=\"color: rgb(51, 51, 51);\">招 室内设计师 熟练3ds Max</span></p><p><span style=\"color: rgb(51, 51, 51);\">有责任有想法 也欢迎大学生</span></p><p><span style=\"color: rgb(51, 51, 51);\">发信息：234234</span></p><p>联系我时，请说是在58同城上看到的，谢谢！</p>', 1589010186283, 1589010186283, 0, 1, 0, 0, 0, NULL);
INSERT INTO `job` VALUES ('4265cce0-92c2-11ea-b59c-0367d155e2d0', '1cc9ebc0-92c1-11ea-b59c-0367d155e2d0', 'cd527ca0-92c1-11ea-b59c-0367d155e2d0', '小程序开发工程师 ', '14k-30k', '3', '计算机类', '<p><span style=\"color: rgb(97, 104, 124);\">2. 参与改进开发、构建、发布等小程序工程化体系</span></p><p><span style=\"color: rgb(97, 104, 124);\">3. 参与小程序性能优化、体验优化</span></p><p><span style=\"color: rgb(97, 104, 124);\">4. 参与推动UI规范制定和落地</span></p><p><span style=\"color: rgb(97, 104, 124);\">5. 参与新技术探索、推进系统架构的演化</span></p><p><span style=\"color: rgb(97, 104, 124);\">岗位要求</span></p><p><span style=\"color: rgb(97, 104, 124);\">1. 扎实的计算机以及网络基础</span></p><p><span style=\"color: rgb(97, 104, 124);\">2. 阅读英文技术文档和书籍无障碍</span></p><p><span style=\"color: rgb(97, 104, 124);\">3. HTML、CSS、JavaScript 基础扎实，了解 HTTP 协议以及浏览器原理</span></p><p><span style=\"color: rgb(97, 104, 124);\">4. 熟悉模块化、前端编译和构建工具，熟练运用主流的移动端JS库和开发框架，有基于vue或者react框架开发的产品，了解 jquery/vue/angular/react 等常用前端类库／框架的设计原理；</span></p><p><span style=\"color: rgb(97, 104, 124);\">5. 了解 Node.js、PHP、Java、Python 等后端语言中至少一种</span></p><p><span style=\"color: rgb(97, 104, 124);\">6. 有优质的技术组件产出或开源产品者优先</span></p><p><span style=\"color: rgb(97, 104, 124);\">7. 有中大型网站前端架构、H5应用的体验与性能优化、Hybrid模式应用开发、Native应用开发等经验可作为加分项</span></p>', 1589117333550, 1589117333550, 0, 0, 0, 0, 0, NULL);
INSERT INTO `job` VALUES ('574f58b0-92c2-11ea-b59c-0367d155e2d0', '1cc9ebc0-92c1-11ea-b59c-0367d155e2d0', 'cd527ca0-92c1-11ea-b59c-0367d155e2d0', '大数据开发工程师', '19k', '3', '计算机类', '<p><span style=\"color: rgb(97, 104, 124);\">2. 参与改进开发、构建、发布等小程序工程化体系</span></p><p><span style=\"color: rgb(97, 104, 124);\">3. 参与小程序性能优化、体验优化</span></p><p><span style=\"color: rgb(97, 104, 124);\">4. 参与推动UI规范制定和落地</span></p><p><span style=\"color: rgb(97, 104, 124);\">5. 参与新技术探索、推进系统架构的演化</span></p><p><span style=\"color: rgb(97, 104, 124);\">岗位要求</span></p><p><span style=\"color: rgb(97, 104, 124);\">1. 扎实的计算机以及网络基础</span></p><p><span style=\"color: rgb(97, 104, 124);\">2. 阅读英文技术文档和书籍无障碍</span></p><p><span style=\"color: rgb(97, 104, 124);\">3. HTML、CSS、JavaScript 基础扎实，了解 HTTP 协议以及浏览器原理</span></p><p><span style=\"color: rgb(97, 104, 124);\">4. 熟悉模块化、前端编译和构建工具，熟练运用主流的移动端JS库和开发框架，有基于vue或者react框架开发的产品，了解 jquery/vue/angular/react 等常用前端类库／框架的设计原理；</span></p><p><span style=\"color: rgb(97, 104, 124);\">5. 了解 Node.js、PHP、Java、Python 等后端语言中至少一种</span></p><p><span style=\"color: rgb(97, 104, 124);\">6. 有优质的技术组件产出或开源产品者优先</span></p><p><span style=\"color: rgb(97, 104, 124);\">7. 有中大型网站前端架构、H5应用的体验与性能优化、Hybrid模式应用开发、Native应用开发等经验可作为加分项</span></p>', 1589117368635, 1589117368635, 0, 1, 0, 0, 0, NULL);
INSERT INTO `job` VALUES ('65164350-92c2-11ea-b59c-0367d155e2d0', '1cc9ebc0-92c1-11ea-b59c-0367d155e2d0', 'cd527ca0-92c1-11ea-b59c-0367d155e2d0', '网络工程师', '30k', '3', '计算机类', '<p><span style=\"color: rgb(97, 104, 124);\">2. 参与改进开发、构建、发布等小程序工程化体系</span></p><p><span style=\"color: rgb(97, 104, 124);\">3. 参与小程序性能优化、体验优化</span></p><p><span style=\"color: rgb(97, 104, 124);\">4. 参与推动UI规范制定和落地</span></p><p><span style=\"color: rgb(97, 104, 124);\">5. 参与新技术探索、推进系统架构的演化</span></p><p><span style=\"color: rgb(97, 104, 124);\">岗位要求</span></p><p><span style=\"color: rgb(97, 104, 124);\">1. 扎实的计算机以及网络基础</span></p><p><span style=\"color: rgb(97, 104, 124);\">2. 阅读英文技术文档和书籍无障碍</span></p><p><span style=\"color: rgb(97, 104, 124);\">3. HTML、CSS、JavaScript 基础扎实，了解 HTTP 协议以及浏览器原理</span></p><p><span style=\"color: rgb(97, 104, 124);\">4. 熟悉模块化、前端编译和构建工具，熟练运用主流的移动端JS库和开发框架，有基于vue或者react框架开发的产品，了解 jquery/vue/angular/react 等常用前端类库／框架的设计原理；</span></p><p><span style=\"color: rgb(97, 104, 124);\">5. 了解 Node.js、PHP、Java、Python 等后端语言中至少一种</span></p><p><span style=\"color: rgb(97, 104, 124);\">6. 有优质的技术组件产出或开源产品者优先</span></p><p><span style=\"color: rgb(97, 104, 124);\">7. 有中大型网站前端架构、H5应用的体验与性能优化、Hybrid模式应用开发、Native应用开发等经验可作为加分项</span></p>', 1589117391749, 1589117391749, 0, 0, 0, 0, 0, NULL);
INSERT INTO `job` VALUES ('79a83940-92c2-11ea-b59c-0367d155e2d0', '1cc9ebc0-92c1-11ea-b59c-0367d155e2d0', 'cd527ca0-92c1-11ea-b59c-0367d155e2d0', '算法工程师', '40k', '3', '计算机类', '<p><span style=\"color: rgb(97, 104, 124);\">2. 参与改进开发、构建、发布等小程序工程化体系</span></p><p><span style=\"color: rgb(97, 104, 124);\">3. 参与小程序性能优化、体验优化</span></p><p><span style=\"color: rgb(97, 104, 124);\">4. 参与推动UI规范制定和落地</span></p><p><span style=\"color: rgb(97, 104, 124);\">5. 参与新技术探索、推进系统架构的演化</span></p><p><span style=\"color: rgb(97, 104, 124);\">岗位要求</span></p><p><span style=\"color: rgb(97, 104, 124);\">1. 扎实的计算机以及网络基础</span></p><p><span style=\"color: rgb(97, 104, 124);\">2. 阅读英文技术文档和书籍无障碍</span></p><p><span style=\"color: rgb(97, 104, 124);\">3. HTML、CSS、JavaScript 基础扎实，了解 HTTP 协议以及浏览器原理</span></p><p><span style=\"color: rgb(97, 104, 124);\">4. 熟悉模块化、前端编译和构建工具，熟练运用主流的移动端JS库和开发框架，有基于vue或者react框架开发的产品，了解 jquery/vue/angular/react 等常用前端类库／框架的设计原理；</span></p><p><span style=\"color: rgb(97, 104, 124);\">5. 了解 Node.js、PHP、Java、Python 等后端语言中至少一种</span></p><p><span style=\"color: rgb(97, 104, 124);\">6. 有优质的技术组件产出或开源产品者优先</span></p><p><span style=\"color: rgb(97, 104, 124);\">7. 有中大型网站前端架构、H5应用的体验与性能优化、Hybrid模式应用开发、Native应用开发等经验可作为加分项</span></p>', 1589117426260, 1589117426260, 0, 0, 0, 0, 0, NULL);

-- ----------------------------
-- Table structure for joins
-- ----------------------------
DROP TABLE IF EXISTS `joins`;
CREATE TABLE `joins`  (
  `join_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `content_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `jions_createtime` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`join_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of joins
-- ----------------------------
INSERT INTO `joins` VALUES ('765f1410-d53c-11ed-9269-d57a6e1f038f', 'activitycontent', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '', '', '938bf4c0-91c1-11ea-b4b2-534983822470', 1680869089104);
INSERT INTO `joins` VALUES ('c80d2441-93f0-11ea-b59c-0367d155e2d0', 'activitycontent', '1cc9ebc0-92c1-11ea-b59c-0367d155e2d0', '', '', '938bf4c0-91c1-11ea-b4b2-534983822470', 1589247265795);
INSERT INTO `joins` VALUES ('d8993351-d62b-11ed-a54f-f3081758ed94', 'activitycontent', NULL, '', '', '938bf4c0-91c1-11ea-b4b2-534983822470', 1680971903620);
INSERT INTO `joins` VALUES ('ed3d7701-d5a2-11ed-a583-0b1ed5fbc6ba', 'activitycontent', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '', '', NULL, 1680913097199);

-- ----------------------------
-- Table structure for jubao
-- ----------------------------
DROP TABLE IF EXISTS `jubao`;
CREATE TABLE `jubao`  (
  `jubao_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `jubao_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `jubao_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `jubao_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `jubao_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `jubao_createtime` bigint NULL DEFAULT NULL,
  `jubao_state` int NULL DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jubao
-- ----------------------------
INSERT INTO `jubao` VALUES ('c2564130-92b5-11ea-b59c-0367d155e2d0', '违规评论', 'qqqqqqqq', '[{\"url\":\"http://oss.guoang.xyz/9f662d356171a1ca6ebd8120e2cd5266.png\"}]', 'http://www.guoang.xyz/changhangtong/#/helpcontent/42b94190-91a5-11ea-953f-dfe0b5c8db9e', 1589111964739, 2, 'admin', '封禁30天，违规评论');
INSERT INTO `jubao` VALUES ('3d8462c0-92ba-11ea-b59c-0367d155e2d0', '规避评论，恶意评论', 'qqqqqqqq', '[{\"url\":\"http://oss.guoang.xyz/a28ab9e1a59c5575a4b693755f0ca318.png\"}]', 'http://www.guoang.xyz/changhangtong/#/helpcontent/42b94190-91a5-11ea-953f-dfe0b5c8db9e', 1589113889388, 1, 'guoang', '违规评论');
INSERT INTO `jubao` VALUES ('2b72f640-9725-11ea-b59c-0367d155e2d0', '', 'xiaolin', '[]', 'http://www.guoang.xyz/changhangtong/#/oldstuffcontent/b9702320-91ba-11ea-b4b2-534983822470', 1589599619876, 2, 'admin', NULL);
INSERT INTO `jubao` VALUES ('8741ec10-9725-11ea-b59c-0367d155e2d0', '不良评论辱骂他人', 'xiaolin', '[{\"url\":\"http://oss.guoang.xyz/afa3ea742a7a44ea0c9c262a0430a180.png\"}]', 'http://www.guoang.xyz/changhangtong/#/oldstuffcontent/b9702320-91ba-11ea-b4b2-534983822470', 1589599773905, 1, 'guoang', '不良评论辱骂他人封禁12天');
INSERT INTO `jubao` VALUES ('1a529310-d5cb-11ed-b719-41b4077f28b2', 'asdada ', 'test123', '[]', 'adsada', 1680930352705, 0, NULL, NULL);

-- ----------------------------
-- Table structure for lable
-- ----------------------------
DROP TABLE IF EXISTS `lable`;
CREATE TABLE `lable`  (
  `lable_id` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `lable_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `lable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `inputshow` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lable
-- ----------------------------
INSERT INTO `lable` VALUES ('1', '问答分类', '[\"娱乐\",\"失物认领\",\"学习\",\"寻找资源\",\"其他\"]', 0);
INSERT INTO `lable` VALUES ('2', '活动分类', '[\"体育\",\"志愿者\",\"学习\"]', 0);
INSERT INTO `lable` VALUES ('3', '二手分类', '[\"数码\",\"书本\",\"运动器材\"]', 0);
INSERT INTO `lable` VALUES ('4', '招聘分类', '[\"计算机类\",\"设计类\",\"兼职\"]', 0);
INSERT INTO `lable` VALUES ('5', '文章分类', '[\"新闻\",\"好文\",\"技术文章\",\"其他\"]', 0);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `notice_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `user_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `content_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `router` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `createtime` bigint NULL DEFAULT NULL,
  `state` int NULL DEFAULT NULL,
  `content_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('039d5330-91bd-11ea-b4b2-534983822470', '570395c0-5842-11ea-8396-f196e3bde291', 'acb43a80-91a7-11ea-953f-dfe0b5c8db9e', '评论了你', 'b9702320-91ba-11ea-b4b2-534983822470', 'oldstuffcontent', 1589005129571, 0, 'c语言程序设计', '哈哈哈哈');
INSERT INTO `notice` VALUES ('0d09f650-91bb-11ea-b4b2-534983822470', 'acb43a80-91a7-11ea-953f-dfe0b5c8db9e', '570395c0-5842-11ea-8396-f196e3bde291', '回复了你', 'b9702320-91ba-11ea-b4b2-534983822470', 'oldstuffcontent', 1589004286389, 0, 'c语言程序设计', '吴昆');
INSERT INTO `notice` VALUES ('10abaf00-d62e-11ed-a54f-f3081758ed94', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '570395c0-5842-11ea-8396-f196e3bde291', '回复了你', '42b94190-91a5-11ea-953f-dfe0b5c8db9e', 'helpcontent', 1680972856688, 0, '昨天在三食堂遗失一本《c语言程序设计》', '大底1231');
INSERT INTO `notice` VALUES ('151ee470-d62a-11ed-afde-81b7ebe63372', NULL, 'acb43a80-91a7-11ea-953f-dfe0b5c8db9e', '评论了你', '8f8d50e0-91b6-11ea-b4b2-534983822470', 'newscontent', 1680971146167, 0, '你好，2020', '大底1231');
INSERT INTO `notice` VALUES ('163364e0-d62e-11ed-a54f-f3081758ed94', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '回复了你', '42b94190-91a5-11ea-953f-dfe0b5c8db9e', 'helpcontent', 1680972865966, 0, '昨天在三食堂遗失一本《c语言程序设计》', '大底1231');
INSERT INTO `notice` VALUES ('1d216180-d62e-11ed-a54f-f3081758ed94', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '回复了你', '42b94190-91a5-11ea-953f-dfe0b5c8db9e', 'helpcontent', 1680972877592, 0, '昨天在三食堂遗失一本《c语言程序设计》', '大底1231');
INSERT INTO `notice` VALUES ('25d5ed50-d62e-11ed-a54f-f3081758ed94', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '570395c0-5842-11ea-8396-f196e3bde291', '评论了你', '938bf4c0-91c1-11ea-b4b2-534983822470', 'activitycontent', 1680972892197, 0, '防疫志愿服务', '大底1231');
INSERT INTO `notice` VALUES ('27df2ad0-d62e-11ed-a54f-f3081758ed94', '', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '你已经成功参与', '1119a140-91b2-11ea-b4b2-534983822470', 'activitycontent', 1680972895613, 0, '篮球', '系统通知');
INSERT INTO `notice` VALUES ('27df51e0-d62e-11ed-a54f-f3081758ed94', '', '0a2afba0-91a2-11ea-bda1-53a75d166860', '有一位用户参加了你发布的内容', '1119a140-91b2-11ea-b4b2-534983822470', 'activitycontent', 1680972895614, 0, '篮球', '系统通知');
INSERT INTO `notice` VALUES ('5575d6f0-d62a-11ed-9847-712532bc868c', NULL, '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '评论了你', 'ff9008d0-d5e5-11ed-97da-a3019c4a062f', 'helpcontent', 1680971254112, 0, 'asd', '大底1231');
INSERT INTO `notice` VALUES ('765eed01-d53c-11ed-9269-d57a6e1f038f', '', '570395c0-5842-11ea-8396-f196e3bde291', '有一位用户参加了你发布的内容', '938bf4c0-91c1-11ea-b4b2-534983822470', 'activitycontent', 1680869089105, 0, '防疫志愿服务', '系统通知');
INSERT INTO `notice` VALUES ('796fe1a0-92b6-11ea-b59c-0367d155e2d0', '', '570395c0-5842-11ea-8396-f196e3bde291', '你已经成功参与', 'b9702320-91ba-11ea-b4b2-534983822470', 'oldstuffcontent', 1589112271930, 1, 'c语言程序设计', '系统通知');
INSERT INTO `notice` VALUES ('797008b0-92b6-11ea-b59c-0367d155e2d0', '', 'acb43a80-91a7-11ea-953f-dfe0b5c8db9e', '有一位用户参加了你发布的内容', 'b9702320-91ba-11ea-b4b2-534983822470', 'oldstuffcontent', 1589112271931, 0, 'c语言程序设计', '系统通知');
INSERT INTO `notice` VALUES ('820e9d70-95d5-11ea-b59c-0367d155e2d0', NULL, '1cc9ebc0-92c1-11ea-b59c-0367d155e2d0', '发布新的活动通知', '938bf4c0-91c1-11ea-b4b2-534983822470', 'activitycontent', 1589455454279, 0, '防疫志愿服务', '杜欣');
INSERT INTO `notice` VALUES ('a8d63250-d624-11ed-9fb5-51b9b47aa499', NULL, '1cc9ebc0-92c1-11ea-b59c-0367d155e2d0', '评论了你', '0d5c74b0-92cf-11ea-b59c-0367d155e2d0', 'helpcontent', 1680968817014, 0, '学校什么时候返校', '大底1231');
INSERT INTO `notice` VALUES ('aeac6480-d5af-11ed-a70f-ab023bfd735a', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '570395c0-5842-11ea-8396-f196e3bde291', '回复了你', '42b94190-91a5-11ea-953f-dfe0b5c8db9e', 'helpcontent', 1680918575688, 0, '昨天在三食堂遗失一本《c语言程序设计》', '该用户还没没有设置昵称');
INSERT INTO `notice` VALUES ('b30c84d0-91bd-11ea-b4b2-534983822470', 'acb43a80-91a7-11ea-953f-dfe0b5c8db9e', 'acb43a80-91a7-11ea-953f-dfe0b5c8db9e', '回复了你', 'b9702320-91ba-11ea-b4b2-534983822470', 'oldstuffcontent', 1589005423901, 0, 'c语言程序设计', '吴昆');
INSERT INTO `notice` VALUES ('b4b28240-d5e8-11ed-97da-a3019c4a062f', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '评论了你', '77d5dbb0-d5e3-11ed-97da-a3019c4a062f', 'newscontent', 1680943067108, 0, 'asda', '大底');
INSERT INTO `notice` VALUES ('b6201530-95d5-11ea-b59c-0367d155e2d0', '1cc9ebc0-92c1-11ea-b59c-0367d155e2d0', 'acb43a80-91a7-11ea-953f-dfe0b5c8db9e', '回复了你', 'b9702320-91ba-11ea-b4b2-534983822470', 'oldstuffcontent', 1589455541635, 0, 'c语言程序设计', '郭昂');
INSERT INTO `notice` VALUES ('c38ac331-d5a3-11ed-a583-0b1ed5fbc6ba', '', '0a2afba0-91a2-11ea-bda1-53a75d166860', '有一位用户参加了你发布的内容', '1119a140-91b2-11ea-b4b2-534983822470', 'activitycontent', 1680913456739, 0, '篮球', '系统通知');
INSERT INTO `notice` VALUES ('c6105870-d5aa-11ed-885a-4b482dd396ea', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '0a2afba0-91a2-11ea-bda1-53a75d166860', '评论了你', '42b94190-91a5-11ea-953f-dfe0b5c8db9e', 'helpcontent', 1680916467447, 0, '昨天在三食堂遗失一本《c语言程序设计》', '该用户还没没有设置昵称');
INSERT INTO `notice` VALUES ('c66f4f10-92b9-11ea-b59c-0367d155e2d0', '', '570395c0-5842-11ea-8396-f196e3bde291', '你已经成功参与', 'b9702320-91ba-11ea-b4b2-534983822470', 'oldstuffcontent', 1589113689601, 1, 'c语言程序设计', '系统通知');
INSERT INTO `notice` VALUES ('c66f4f11-92b9-11ea-b59c-0367d155e2d0', '', 'acb43a80-91a7-11ea-953f-dfe0b5c8db9e', '有一位用户参加了你发布的内容', 'b9702320-91ba-11ea-b4b2-534983822470', 'oldstuffcontent', 1589113689601, 0, 'c语言程序设计', '系统通知');
INSERT INTO `notice` VALUES ('c6f58850-92b4-11ea-b59c-0367d155e2d0', '570395c0-5842-11ea-8396-f196e3bde291', '0a2afba0-91a2-11ea-bda1-53a75d166860', '评论了你', '42b94190-91a5-11ea-953f-dfe0b5c8db9e', 'helpcontent', 1589111542997, 0, '昨天在三食堂遗失一本《c语言程序设计》', '哈哈哈哈');
INSERT INTO `notice` VALUES ('c80cfd30-93f0-11ea-b59c-0367d155e2d0', '', '1cc9ebc0-92c1-11ea-b59c-0367d155e2d0', '你已经成功参与', '938bf4c0-91c1-11ea-b4b2-534983822470', 'activitycontent', 1589247265795, 0, '防疫志愿服务', '系统通知');
INSERT INTO `notice` VALUES ('c80d2440-93f0-11ea-b59c-0367d155e2d0', '', '570395c0-5842-11ea-8396-f196e3bde291', '有一位用户参加了你发布的内容', '938bf4c0-91c1-11ea-b4b2-534983822470', 'activitycontent', 1589247265796, 0, '防疫志愿服务', '系统通知');
INSERT INTO `notice` VALUES ('caf3f6f0-d62a-11ed-9189-e74c6e5f2719', NULL, '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '回复了你', '42b94190-91a5-11ea-953f-dfe0b5c8db9e', 'helpcontent', 1680971451232, 0, '昨天在三食堂遗失一本《c语言程序设计》', '大底1231');
INSERT INTO `notice` VALUES ('d3861560-d624-11ed-896c-87aa5377d269', NULL, '1cc9ebc0-92c1-11ea-b59c-0367d155e2d0', '评论了你', '0d5c74b0-92cf-11ea-b59c-0367d155e2d0', 'helpcontent', 1680968888630, 0, '学校什么时候返校', '大底1231');
INSERT INTO `notice` VALUES ('d4918dc0-d62b-11ed-a54f-f3081758ed94', NULL, '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '回复了你', '42b94190-91a5-11ea-953f-dfe0b5c8db9e', 'helpcontent', 1680971896860, 0, '昨天在三食堂遗失一本《c语言程序设计》', '大底1231');
INSERT INTO `notice` VALUES ('d8990c40-d62b-11ed-a54f-f3081758ed94', '', NULL, '你已经成功参与', '938bf4c0-91c1-11ea-b4b2-534983822470', 'activitycontent', 1680971903620, 0, '防疫志愿服务', '系统通知');
INSERT INTO `notice` VALUES ('d8993350-d62b-11ed-a54f-f3081758ed94', '', '570395c0-5842-11ea-8396-f196e3bde291', '有一位用户参加了你发布的内容', '938bf4c0-91c1-11ea-b4b2-534983822470', 'activitycontent', 1680971903621, 0, '防疫志愿服务', '系统通知');
INSERT INTO `notice` VALUES ('ec485f00-95d5-11ea-b59c-0367d155e2d0', 'c0bdab90-92d0-11ea-b59c-0367d155e2d0', '1cc9ebc0-92c1-11ea-b59c-0367d155e2d0', '回复了你', 'b9702320-91ba-11ea-b4b2-534983822470', 'oldstuffcontent', 1589455632496, 0, 'c语言程序设计', '于志文');
INSERT INTO `notice` VALUES ('ec598590-d624-11ed-896c-87aa5377d269', NULL, '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '回复了你', '42b94190-91a5-11ea-953f-dfe0b5c8db9e', 'helpcontent', 1680968930281, 0, '昨天在三食堂遗失一本《c语言程序设计》', '大底1231');
INSERT INTO `notice` VALUES ('ed3d7700-d5a2-11ed-a583-0b1ed5fbc6ba', '', '570395c0-5842-11ea-8396-f196e3bde291', '有一位用户参加了你发布的内容', NULL, 'activitycontent', 1680913097200, 0, NULL, '系统通知');
INSERT INTO `notice` VALUES ('f03d5570-d5e2-11ed-97da-a3019c4a062f', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '570395c0-5842-11ea-8396-f196e3bde291', '回复了你', '42b94190-91a5-11ea-953f-dfe0b5c8db9e', 'helpcontent', 1680940590023, 0, '昨天在三食堂遗失一本《c语言程序设计》', '大底');
INSERT INTO `notice` VALUES ('f25d5950-91ba-11ea-b4b2-534983822470', '570395c0-5842-11ea-8396-f196e3bde291', 'acb43a80-91a7-11ea-953f-dfe0b5c8db9e', '评论了你', 'b9702320-91ba-11ea-b4b2-534983822470', 'oldstuffcontent', 1589004241637, 1, 'c语言程序设计', '哈哈哈哈');
INSERT INTO `notice` VALUES ('f60dad10-d5e2-11ed-97da-a3019c4a062f', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '0a2afba0-91a2-11ea-bda1-53a75d166860', '评论了你', 'e6a60610-91c0-11ea-b4b2-534983822470', 'newscontent', 1680940599777, 0, '4月23日湖南师范大学罗迅博士讲学预告', '大底');
INSERT INTO `notice` VALUES ('f9bd2080-d5e2-11ed-97da-a3019c4a062f', '', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', '你已经成功参与', '0aad8200-91b6-11ea-b4b2-534983822470', 'activitycontent', 1680940605960, 1, '后山跑步', '系统通知');
INSERT INTO `notice` VALUES ('f9bd4790-d5e2-11ed-97da-a3019c4a062f', '', 'acb43a80-91a7-11ea-953f-dfe0b5c8db9e', '有一位用户参加了你发布的内容', '0aad8200-91b6-11ea-b4b2-534983822470', 'activitycontent', 1680940605961, 0, '后山跑步', '系统通知');
INSERT INTO `notice` VALUES ('fbd3a470-d5e2-11ed-97da-a3019c4a062f', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', 'acb43a80-91a7-11ea-953f-dfe0b5c8db9e', '评论了你', '0aad8200-91b6-11ea-b4b2-534983822470', 'activitycontent', 1680940609463, 0, '后山跑步', '大底');

-- ----------------------------
-- Table structure for oldstuff
-- ----------------------------
DROP TABLE IF EXISTS `oldstuff`;
CREATE TABLE `oldstuff`  (
  `oldstuff_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `oldstuff_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `oldstuff_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `oldstuff_price` int NULL DEFAULT NULL,
  `oldstuff_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `createtime` bigint NULL DEFAULT NULL,
  `oldstuff_lable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `updatetime` bigint NULL DEFAULT NULL,
  `oldstuff_favour_num` int NULL DEFAULT NULL,
  `oldstuff_read_num` int NULL DEFAULT NULL,
  `oldstuff_state` int NULL DEFAULT NULL,
  `oldstuff_istop` int NULL DEFAULT NULL,
  `ispublic` int NULL DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oldstuff
-- ----------------------------
INSERT INTO `oldstuff` VALUES ('4a0ab290-91b3-11ea-b4b2-534983822470', '0a2afba0-91a2-11ea-bda1-53a75d166860', 'http://oss.guoang.xyz/3c951182e61e95e84f83c1db0682cc1e.jpg', '蓝牙耳机', 134, '<p>i12蓝牙耳机触摸弹窗运动蓝牙耳机～全新包邮 i12无线蓝牙耳机 i12无线蓝牙运动耳机“带弹窗” TWS&nbsp;i12无线蓝牙耳机 i12无线蓝牙运动耳机“带弹窗” TWS-5.0 i12升级版无线蓝牙运动耳机“带弹窗功能”</p><p><br></p><p><br></p><p>真正无线连接（TWS）实现无线立体声，左右声道分离，HIFI音效。</p><p><br></p><p>左右耳均具有完整蓝牙功能，可单独使用，也可以成对使用。</p><p>这个是触控版的</p><p>1.左耳、右耳触摸位置、轻触1下接听电话，左边耳机连触2下音量减、右边耳机连触2下音量加，左耳连按3下下一曲，右边连按3下上一曲、长按3秒功能，长按5秒开关机，来电时两个耳机同时报号。</p><p>2.关机后再开机，耳机自动回连手机;</p><p>3.整机都是有语音提示的;</p><p>4.耳机为双通道通话左右耳都有声音;</p><p>产品参数：5.耳机音乐播放时间约2-3小时，通话时间约4小时，待机时间约6小时;</p><p>6.充电座电池容量300AH, 耳机电池容量35mAh;</p><p>7.充电时间70分钟;</p><p>8.充电盒充电电压5V;</p><p>9.该充电盒时间为1小时，充电盒容量300mAh，充电红灯闪充满常亮;</p><p>10.充电盒给耳机充电大约可充4次;</p><p>11.耳机充电时红灯常亮，充满灯光熄灭;</p><p>12.充电盒给耳机充电时蓝灯。</p><p><br></p><p>包装清单：无线蓝牙双耳➕双耳充电仓➕苹果充电线➕说明书➕彩盒&nbsp;&nbsp;一起发货</p><p>质量问题包退包换，全国售后质保服务！</p><ol><li>本交易仅支持邮寄</li></ol>', 1589000952761, '数码', 1589000952761, 0, 4, 0, 0, 1, 'guoang');
INSERT INTO `oldstuff` VALUES ('dca2ed20-91b3-11ea-b4b2-534983822470', '0a2afba0-91a2-11ea-bda1-53a75d166860', 'http://oss.guoang.xyz/e85d4c7aabce6e5933edf2964e701d82.jpg', '羽毛球拍', 120, '<p>多年球龄解答女士专用6u超轻入门初学耐打全碳素羽毛球拍孩童</p><p>1：首先，本人也是打了多年的羽毛球，路过的球友。 就算没有买也可咨询羽毛球的球技，和羽毛球拍的相关问题。我主要做服装生意。羽毛球是真多年爱好，打上瘾了，而上架的球拍每一款都是自己亲自打过，知道球拍的特性，会结合每个球友不同的球技推荐不同的球拍，球拍的选择是需要建立在球技打法的基础上，而非为了卖而卖。。。。</p><p>2：这款超轻的球拍重量是在6u（空拍72克左右）。属于超轻系列，比较适合入门却又想要好点球拍的女生，为什么说比较适合女生，而不是专门说男生？因为男生力量肌肉比较大，就算球技差但是更多的是发力技巧上的缺陷而不是力量上的不足，如果男生一开始拿超轻的球拍，后期进步了杀球会感觉不带劲，就需要换拍，而女生业余的力量稍显弱，同时，女生在入门的情况后场球可以熟练基本就能很好。 后期双打配合中，需要在前场封网。对于女生来说，轻质的都会比较合适。&nbsp;</p><p>3：球拍均为全碳素，包括手柄也是碳素材质，最高能承受28磅的磅数，但是球拍已经默认拉好耐打线，磅数在23-24磅（初学不能太高磅数否则发力不对很容易因为高磅数而伤手腕，），有需要换成YY或者李宁线的可以补差价。送手胶拍套和护腕，基本我比赛 怎么配置，就会怎么给安排。</p><p>4：打击感受，黑白色同款不同色属于偏头进攻一点，中杆会硬，，颜色花花的两个偏平衡，所以中杆也会弱一点。黑色白色120元，花色的100元，两个款式哦</p>', 1589001198706, '书本', 1589001198706, 0, 6, 0, 0, 0, NULL);
INSERT INTO `oldstuff` VALUES ('b9702320-91ba-11ea-b4b2-534983822470', 'acb43a80-91a7-11ea-953f-dfe0b5c8db9e', 'http://oss.guoang.xyz/15e7356acf039a3ae590c9b3bb12be01.jpg', 'c语言程序设计', 20, '<p>C语言程序设计清华大学出版社谭浩强第四版</p><p>教材单本11.9包邮</p><p>另有配套学习辅导单本14.9包邮</p><p>一套2本25包邮</p><p>正版包邮，正版包邮，正版包邮，重要的事情说三遍</p><p>书都是从高校回收的，绝对是正版的，可以放心使用，所有书都是经过筛选的，新旧程度为8成新左右，没有缺页，破损，不影响正常使用</p><p>注:新疆，内蒙，西藏，不包邮</p><p><img src=\"http://oss.guoang.xyz/2046147f1bb8ca1e58d64b11c73df635.jpg\"></p><p><img src=\"http://oss.guoang.xyz/d6accfc5e6fe8b504968014561549470.jpg\"></p>', 1589004146130, '书本', 1589004146130, 0, 37, 0, 0, 0, NULL);
INSERT INTO `oldstuff` VALUES ('4e4770e0-91be-11ea-b4b2-534983822470', '570395c0-5842-11ea-8396-f196e3bde291', 'http://oss.guoang.xyz/82030592d3487be629e5896108b01d56.jpg', 'MySQL必知必会', 20, '<p>MySQL必知必会</p><p>非纸质版的，无水印</p><p>内容截图在下面</p><p><br></p><p>需要的，可以直接拍发</p><p><br></p><p>另有</p><p>其他计算机类的需要可以私聊</p>', 1589005684334, '书本', 1589005684334, 0, 7, 0, 0, 0, NULL);
INSERT INTO `oldstuff` VALUES ('c4594560-91be-11ea-b4b2-534983822470', '570395c0-5842-11ea-8396-f196e3bde291', 'http://oss.guoang.xyz/d3727cebf8fa6d7bb25ce6429dc5395a.jpg', '足球', 50, '<p>世达2000正品手缝足球&nbsp;</p><p>全新正品世达star2000手缝足球 全新正品世达star2000手缝足球</p><p>型号SB225，剩几个库存现货，处理价80包邮（不议价）！全新正品，送球针球网兜。需要私聊。</p><p>所有图片均为原相机拍摄，没用任何美图软件，自己看细节！</p><p>足球缝线：手缝足球 材质：超级纤维 足球尺寸：5号球(正规11人制用)</p>', 1589005882422, '运动器材', 1589005882422, 0, 0, 0, 0, 0, NULL);
INSERT INTO `oldstuff` VALUES ('0854aed0-91bf-11ea-b4b2-534983822470', '570395c0-5842-11ea-8396-f196e3bde291', 'http://oss.guoang.xyz/f6257ce2b743b392fc20f226c301c436.jpg', '握力器', 10, '<p>专业手力 精钢握力器男 除新疆西藏等偏远地区全国包邮 全新金 属握力器 臂力惊人</p><p>&nbsp;100磅的20包邮</p><p>&nbsp;150磅的21包邮</p><p>200磅的22包邮</p><p>250 磅的23包邮</p><p>300磅的24包邮 三种款式随机发货&nbsp;</p><p>100磅+150磅+200磅 初级套组53</p><p>150磅+200磅+250磅中级套组55</p><p>200磅+250磅+300磅高级套组58</p>', 1589005996477, '运动器材', 1589005996477, 0, 0, 0, 0, 0, NULL);
INSERT INTO `oldstuff` VALUES ('303ccff0-932b-11ea-b59c-0367d155e2d0', '85a1b110-9329-11ea-b59c-0367d155e2d0', 'http://oss.guoang.xyz/29269b873a011af6964103ad73357906.jpg', 'iPad2018 32gwifi', 1300, '<p>iPad2018 32gwifi</p><p>基本没什么磕碰磨损，就一个小脚被小孩子弄到有一条裂痕最后一张图的气泡就是因为裂缝的原因。在屏幕显示外，基本没影响，现在用了钢化膜基本也都看不到，买来用的少所以便宜点出了</p><p>配件只有充电器和套子</p><p><img src=\"http://oss.guoang.xyz/96085254912030cb57c4e28b06101311.jpg\"></p>', 1589162400239, '数码', 1589162400239, 0, 0, 0, 0, 0, NULL);
INSERT INTO `oldstuff` VALUES ('c2da88c0-932b-11ea-b59c-0367d155e2d0', '85a1b110-9329-11ea-b59c-0367d155e2d0', 'http://oss.guoang.xyz/dc0c8ed99fb4b217f5e6f3e10e8ef736.jpg', '臂力棒臂力器男家用', 30, '<p>臂力棒臂力器男家用，</p><p>50公斤可调节，练臂肌胸肌训练健身器材握 力棒，几乎没用过，99新，不刀！！！最好自提，想买直接私信，自提地点：龙泉皇冠湖壹号自提，邮寄超重，非要邮寄的话运费到付，非偏远运费20，拍前联系改价，私拍关闭。卖个20来块钱的东西没空磨叽。</p><p><img src=\"http://oss.guoang.xyz/9bc2037bee422ff8a63ced7354d52a37.jpg\"></p>', 1589162646220, '运动器材', 1589162646220, 0, 0, 0, 0, 0, NULL);
INSERT INTO `oldstuff` VALUES ('13bc40d0-932c-11ea-b59c-0367d155e2d0', '85a1b110-9329-11ea-b59c-0367d155e2d0', 'http://oss.guoang.xyz/9751d8ed7c52a01d3cd7386fba74f116.jpg', '高数同济7版上册/下册', 40, '<p>高等数学高数同济第7ban线代第6ban概率论4ban高等教 育出版社</p><p>高数同济7版上册/下册&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1件&nbsp;&nbsp;15包邮</p><p>高数同济7版上下册&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2件19.9包邮</p><p>高数同济7版上下册+线代&nbsp;&nbsp;&nbsp;&nbsp;3件27.9包邮</p><p>高数上下册+概率+线代&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4件32.9元包邮</p><p>线代6版&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1件 11包邮</p><p>线代6版+辅导&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2件19.9包邮</p><p><br></p><p>大量现货，正品二手，8成新左右，择优发货！</p><p><br></p><p>有货！有货！有货！</p><p><br></p><p>正品二手包邮！需要可以直接拍！24小时内发货！</p>', 1589162781917, '书本', 1589162781917, 0, 0, 0, 0, 0, NULL);
INSERT INTO `oldstuff` VALUES ('913560a0-932c-11ea-b59c-0367d155e2d0', '85a1b110-9329-11ea-b59c-0367d155e2d0', 'http://oss.guoang.xyz/979a82938788c653af1d944a16ee9511.jpg', '镁光ddr3L 4g笔记本内存条', 75, '<p>镁光ddr3L 4g笔记本内存条&nbsp;</p><p>品牌：Maglite/镁光 内存频率：1333MHz 组合形式：单条 适用对象：笔记本 传输类型：DDR3 内存容量：4GB</p>', 1589162992426, '数码', 1589162992426, 0, 0, 0, 0, 0, NULL);
INSERT INTO `oldstuff` VALUES ('d663a4c0-932c-11ea-b59c-0367d155e2d0', '85a1b110-9329-11ea-b59c-0367d155e2d0', 'http://oss.guoang.xyz/dcfbfc19fa8e211eaabac9e4b7e1d078.jpg', '固态硬盘，铁甲战将240G', 75, '<p>固态硬盘，铁甲战将240G，120G</p><p>240G:168元</p><p>120G:78元</p><p>&nbsp;包邮，单个不包邮。</p>', 1589163108492, '数码', 1589163108492, 0, 0, 0, 0, 0, NULL);
INSERT INTO `oldstuff` VALUES ('b09cf830-932d-11ea-b59c-0367d155e2d0', '85a1b110-9329-11ea-b59c-0367d155e2d0', 'http://oss.guoang.xyz/9d04ab872c512f1bfd1cc2a63b7b8619.jpg', '理论力学（第七版）', 20, '<p>理论力学（第七版）Ⅰ，Ⅱ单本10元</p><p>理论力学（第八版）Ⅰ，Ⅱ单本20元</p><p>理论力学习题全解23元，哈工大出版社</p><p>感兴趣的话点“我想要”和我私聊吧～</p>', 1589163474611, '书本', 1589163474611, 0, 0, 0, 0, 0, NULL);
INSERT INTO `oldstuff` VALUES ('f38ff250-932d-11ea-b59c-0367d155e2d0', '85a1b110-9329-11ea-b59c-0367d155e2d0', 'http://oss.guoang.xyz/62da7775b0c84d7c24b57ae5415350a4.jpg', 'javascript高级程序设计第四版', 30, '<ol><li>联系时请说明是“昌航通”</li></ol><p>qq：32343442</p><p>可讲价</p>', 1589163586933, '书本', 1589163586933, 0, 0, 0, 0, 0, NULL);

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply`  (
  `reply_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `comment_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `reply_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `tousernickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `touserid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `createtime` bigint NULL DEFAULT NULL,
  `reply_state` int NULL DEFAULT NULL,
  `reply_istop` int NULL DEFAULT NULL,
  `ispublic` int NULL DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('be3b8e30-709a-11ea-9fe5-dd9d1fb2dad4', '570395c0-5842-11ea-8396-f196e3bde291', 'b84e86d0-709a-11ea-9fe5-dd9d1fb2dad4', '<p>hhhhh</p>', '哈哈哈哈', '570395c0-5842-11ea-8396-f196e3bde291', 1585362021907, 0, 0, 0, NULL);
INSERT INTO `reply` VALUES ('4caca580-7165-11ea-b5fe-0d149302d6e6', '87231090-7161-11ea-94ab-add3cfa01434', '8c677a70-6822-11ea-b318-afe3df0494a9', '<p>哈哈哈哈哈哈哈哈哈</p>', '哈哈哈哈', '570395c0-5842-11ea-8396-f196e3bde291', 1585449019224, 0, 0, 0, NULL);
INSERT INTO `reply` VALUES ('9da9ec10-723a-11ea-986d-a72e1738d1e0', '570395c0-5842-11ea-8396-f196e3bde291', 'e8c5c6b0-681c-11ea-b318-afe3df0494a9', '<p>哈哈哈哈VB</p>', '哈哈哈哈', '570395c0-5842-11ea-8396-f196e3bde291', 1585540637905, 0, 0, 0, NULL);
INSERT INTO `reply` VALUES ('108dde91-74bf-11ea-8595-ad478ec34a48', '570395c0-5842-11ea-8396-f196e3bde291', 'c3375340-60ed-11ea-b242-8b4ea86bb2e7', '<p>手机测试</p>', '哈哈哈哈', '570395c0-5842-11ea-8396-f196e3bde291', 1585817426553, 0, 0, 0, NULL);
INSERT INTO `reply` VALUES ('48d64941-74bf-11ea-8595-ad478ec34a48', '570395c0-5842-11ea-8396-f196e3bde291', 'b014b3f0-73f5-11ea-a86c-61a0af1a4ce5', '<p>昊昊昊</p>', '哈哈哈哈', '570395c0-5842-11ea-8396-f196e3bde291', 1585817520980, 0, 0, 0, NULL);
INSERT INTO `reply` VALUES ('cd4f8ff0-7bd7-11ea-a85b-43eaec03f5b0', '87231090-7161-11ea-94ab-add3cfa01434', '2dfffa11-7b97-11ea-bed2-6772578f48eb', '<p>水水水水水水水水水水水水水水水水水水水</p>', 'guoang', '87231090-7161-11ea-94ab-add3cfa01434', 1586597709295, 0, 0, 1, 'guoang');
INSERT INTO `reply` VALUES ('d0e97f90-7bd7-11ea-a85b-43eaec03f5b0', '87231090-7161-11ea-94ab-add3cfa01434', '2dfffa11-7b97-11ea-bed2-6772578f48eb', '<p>啊水水水水水水水水水水水水水水水水水水水水水水</p>', 'guoang', '87231090-7161-11ea-94ab-add3cfa01434', 1586597715337, 0, 0, 1, 'guoang');
INSERT INTO `reply` VALUES ('e2581570-7bd7-11ea-a85b-43eaec03f5b0', '87231090-7161-11ea-94ab-add3cfa01434', '2dfffa11-7b97-11ea-bed2-6772578f48eb', '<h1>阿三水水水水水水水水水水水水</h1><p><img src=\"http://oss.guoang.xyz/63fd71419e8fbca7a662b8521aa34679.jpg\"></p>', 'guoang', '87231090-7161-11ea-94ab-add3cfa01434', 1586597744583, 0, 0, 1, 'guoang');
INSERT INTO `reply` VALUES ('b592dc60-8ced-11ea-b614-a3ab0b6a0716', '570395c0-5842-11ea-8396-f196e3bde291', '26eb2a50-5ac3-11ea-85fc-9d393dff764e', '<p>adadad</p>', '哈哈哈哈', '570395c0-5842-11ea-8396-f196e3bde291', 1588476288166, 0, 0, 0, NULL);
INSERT INTO `reply` VALUES ('c128b971-910f-11ea-bbe1-2f74fe856f0b', '570395c0-5842-11ea-8396-f196e3bde291', '934a1e80-8544-11ea-81ae-6fb1319a1ba1', '<p>asdadadada </p>', '哈哈哈哈', '570395c0-5842-11ea-8396-f196e3bde291', 1588930715143, 0, 0, 0, NULL);
INSERT INTO `reply` VALUES ('0d0a4470-91bb-11ea-b4b2-534983822470', 'acb43a80-91a7-11ea-953f-dfe0b5c8db9e', 'f25d8060-91ba-11ea-b4b2-534983822470', '<p>可以</p>', '哈哈哈哈', '570395c0-5842-11ea-8396-f196e3bde291', 1589004286391, 0, 0, 1, 'guoang');
INSERT INTO `reply` VALUES ('b6203c40-95d5-11ea-b59c-0367d155e2d0', '1cc9ebc0-92c1-11ea-b59c-0367d155e2d0', 'f25d8060-91ba-11ea-b4b2-534983822470', '<p>还有没有其他软件开发书籍</p>', '吴昆', 'acb43a80-91a7-11ea-953f-dfe0b5c8db9e', 1589455541636, 0, 0, 0, NULL);
INSERT INTO `reply` VALUES ('ec488610-95d5-11ea-b59c-0367d155e2d0', 'c0bdab90-92d0-11ea-b59c-0367d155e2d0', 'f25d8060-91ba-11ea-b4b2-534983822470', '<p>我有</p>', '郭昂', '1cc9ebc0-92c1-11ea-b59c-0367d155e2d0', 1589455632497, 0, 0, 0, NULL);
INSERT INTO `reply` VALUES ('c976b4f1-d5aa-11ed-885a-4b482dd396ea', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', 'c6105871-d5aa-11ed-885a-4b482dd396ea', '<p>阿松大</p>', '该用户还没没有设置昵称', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', 1680916473151, 0, 0, 0, NULL);
INSERT INTO `reply` VALUES ('9f071cf1-d5af-11ed-a70f-ab023bfd735a', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', 'c6105871-d5aa-11ed-885a-4b482dd396ea', '<p>阿松大大大大</p>', '该用户还没没有设置昵称', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', 1680918549439, 0, 0, 0, NULL);
INSERT INTO `reply` VALUES ('aeac6481-d5af-11ed-a70f-ab023bfd735a', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', 'c6f5af60-92b4-11ea-b59c-0367d155e2d0', '<p>哒哒哒</p>', 'guaong', '570395c0-5842-11ea-8396-f196e3bde291', 1680918575688, 0, 0, 0, NULL);
INSERT INTO `reply` VALUES ('eaf37410-d5af-11ed-a70f-ab023bfd735a', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', 'c6105871-d5aa-11ed-885a-4b482dd396ea', '<p>我是你爹</p><p><br></p>', '该用户还没没有设置昵称', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', 1680918676817, 0, 0, 0, NULL);
INSERT INTO `reply` VALUES ('f03d5571-d5e2-11ed-97da-a3019c4a062f', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', 'c6f5af60-92b4-11ea-b59c-0367d155e2d0', '<p>阿松大</p>', 'guaong', '570395c0-5842-11ea-8396-f196e3bde291', 1680940590023, 0, 0, 0, NULL);
INSERT INTO `reply` VALUES ('ec59aca0-d624-11ed-896c-87aa5377d269', NULL, 'c6105871-d5aa-11ed-885a-4b482dd396ea', '<p>啊阿斯顿</p>', '大底1231', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', 1680968930282, 0, 0, 0, NULL);
INSERT INTO `reply` VALUES ('caf41e00-d62a-11ed-9189-e74c6e5f2719', NULL, 'c6105871-d5aa-11ed-885a-4b482dd396ea', '<p>阿松大</p>', '大底1231', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', 1680971451232, 0, 0, 0, NULL);
INSERT INTO `reply` VALUES ('d491b4d0-d62b-11ed-a54f-f3081758ed94', NULL, 'c6105871-d5aa-11ed-885a-4b482dd396ea', '<p>阿松大</p>', '大底1231', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', 1680971896861, 0, 0, 0, NULL);
INSERT INTO `reply` VALUES ('10abaf01-d62e-11ed-a54f-f3081758ed94', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', 'c6f5af60-92b4-11ea-b59c-0367d155e2d0', '<p>阿松大</p>', 'guaong', '570395c0-5842-11ea-8396-f196e3bde291', 1680972856688, 0, 0, 0, NULL);
INSERT INTO `reply` VALUES ('163364e1-d62e-11ed-a54f-f3081758ed94', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', 'c6f5af60-92b4-11ea-b59c-0367d155e2d0', '<p>阿松大</p>', '大底1231', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', 1680972865966, 0, 0, 0, NULL);
INSERT INTO `reply` VALUES ('1d216181-d62e-11ed-a54f-f3081758ed94', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', 'c6105871-d5aa-11ed-885a-4b482dd396ea', '<p>奥迪</p>', '大底1231', '6f23bac0-d53c-11ed-9269-d57a6e1f038f', 1680972877592, 0, 0, 0, NULL);

-- ----------------------------
-- Table structure for shensu
-- ----------------------------
DROP TABLE IF EXISTS `shensu`;
CREATE TABLE `shensu`  (
  `shensu_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `shensu_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `shensu_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `shensu_jubao_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `shensu_createtime` bigint NULL DEFAULT NULL,
  `shensu_state` int NULL DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shensu
-- ----------------------------
INSERT INTO `shensu` VALUES ('1be16180-92b6-11ea-b59c-0367d155e2d0', 'hubuhbusd', 'qqqqqqqq', 'c2564130-92b5-11ea-b59c-0367d155e2d0', 1589112114968, 0, NULL);
INSERT INTO `shensu` VALUES ('8902dce0-92ba-11ea-b59c-0367d155e2d0', '账号被盗', 'qqqqqqqq', '3d8462c0-92ba-11ea-b59c-0367d155e2d0', 1589114016046, 1, 'guoang');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `studentid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `studentcard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `realstate` int NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `qq` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `synopsis` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `companyname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `companyimg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `companystate` int NULL DEFAULT NULL,
  `user_state` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `user_createtime` bigint NULL DEFAULT NULL,
  `activationdate` bigint NULL DEFAULT NULL,
  `jubao_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `user_username`(`username` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('041170c0-91c8-11ea-a343-5d12af3b45a7', 'zhanghao3', 'b98be8a313e728555aed05091234fb57', '测试账号', NULL, NULL, NULL, 1, 'http://oss.guoang.xyz/morentouxiang.jpg', '3424242424', '4343434@qq.com', '', '13345446545', '哈哈哈信息平台', '[{\"url\":\"http://oss.guoang.xyz/932bf045f95f62bf1e058efa69fceac6.jpg\",\"uid\":1589009947643,\"status\":\"success\"}]', 3, '2', 1589009854796, NULL, NULL);
INSERT INTO `user` VALUES ('0a2afba0-91a2-11ea-bda1-53a75d166860', 'zhanghao1', 'b98be8a313e728555aed05091234fb57', '账号1', '黄飞鸿', '16045656', '[{\"url\":\"http://oss.guoang.xyz/16c9096049edd554222cd895e482f861.jpg\",\"uid\":1588993826851,\"status\":\"success\"},{\"url\":\"http://oss.guoang.xyz/0c6fced491a8f206f1bfb99ae417eb12.jpg\",\"uid\":1588993833680,\"status\":\"success\"}]', 3, 'http://oss.guoang.xyz/morentouxiang.jpg', '232846836', '38401928@qq.com', '测试账号专用个人简介，测试账号1，之后省略很多个字', '13356557876', '南昌网络有限公司', '[{\"url\":\"http://oss.guoang.xyz/80cf5aaeb62e325c82cc6b5d830a7c8c.jpg\",\"uid\":1588993927957,\"status\":\"success\"}]', 3, '2', 1588993544154, NULL, NULL);
INSERT INTO `user` VALUES ('1cc9ebc0-92c1-11ea-b59c-0367d155e2d0', 'xiaolin', '8b75649521371f41d7ea231ff966bb36', '郭昂', '肖林', '16046245', '[{\"url\":\"http://oss.guoang.xyz/7f6ae757ae8d952e86a6444cb43c6809.jpg\",\"uid\":1589117034267,\"status\":\"success\"},{\"url\":\"http://oss.guoang.xyz/90f9be5a8498c14d3fef9ecff2968dba.jpg\",\"uid\":1589117052380,\"status\":\"success\"}]', 3, 'http://oss.guoang.xyz/morentouxiang.jpg', '344125464', '454543434@qq.com', '人生的道路不会一帆风顺，事业的征途也充满崎岖艰险，只有奋斗，只有拼搏，才会到达成功的彼岸。', '13340110576', '南昌肖林信息技术有限公司', '[{\"url\":\"http://oss.guoang.xyz/d5bc7f0f8d5a3c104823bd2e4f8dda57.jpg\",\"uid\":1589117092206,\"status\":\"success\"}]', 3, '2', 1589116840956, 1590636654464, '8741ec10-9725-11ea-b59c-0367d155e2d0');
INSERT INTO `user` VALUES ('4603f1d0-8546-11ea-81ae-6fb1319a1ba1', 'aaaaaaa', 'ae4d7705edefee4ee30c17364375ae28', '该用户还没没有设置昵称', '黑乎乎', '154554', '[{\"url\":\"http://oss.guoang.xyz/f4491de7c439a2dba4ff0f767c075324.jpg\",\"uid\":1587634784079,\"status\":\"success\"},{\"url\":\"http://oss.guoang.xyz/f06a34ed3cdff4a20d343f8b5f4819f7.jpg\",\"uid\":1587634789727,\"status\":\"success\"}]', 3, 'http://oss.guoang.xyz/morentouxiang.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, '1', 1587634716909, 1588987669227, 'ff676320-8a94-11ea-a585-25eb9c53ff70');
INSERT INTO `user` VALUES ('4d9fc090-6fcf-11ea-a0c9-79e9ca01e701', 'jjjjjjjj', 'd8b7ea9c85c4b9f73a2ef1426129d745', '该用户还没没有设置昵称', NULL, NULL, NULL, 1, 'http://oss.guoang.xyz/d79749222be623b89a080eff1de2ddd5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, '1', 1585274645144, 1585188326000, NULL);
INSERT INTO `user` VALUES ('50a224e0-5846-11ea-8396-f196e3bde291', 'wwwwwwww', '169f1a3641ad637d53759f7210a65d71', '二号账号', NULL, NULL, NULL, 1, 'http://oss.guoang.xyz/d79749222be623b89a080eff1de2ddd5.jpg', '48779797', '46454545@gmail.com', '啊大大大大大大大大', NULL, NULL, NULL, 1, '1', 1585188326000, 1585188326000, NULL);
INSERT INTO `user` VALUES ('570395c0-5842-11ea-8396-f196e3bde291', 'qqqqqqqq', 'b7cef2688c1aef2887626e4b9590e86f', 'guaong', '哈哈哈', '123233', '[{\"url\":\"http://127.0.0.1:3000/uplodes/1c207eea8bdf99c8fd46f4fc47d8c315\",\"uid\":1583912687406,\"status\":\"success\"}]', 3, 'http://oss.guoang.xyz/ebcbcdb0fd5c0beef4862f31a4663135.jpg', '384019555', '122@56464.com', '如果你努力去发现美好，美好会发现你；如果你努力去尊重他人，你也会获得别人尊重；如果你努力去帮助他人，你也会得到他人的帮助。', '13340110576', '哈哈哈', '[{\"url\":\"http://127.0.0.1:3000/uplodes/e4b74d7f11ac6d8de221d2c225046f01\",\"uid\":1583914385566,\"status\":\"success\"}]', 3, '1', 1585188326000, 1589114087930, '');
INSERT INTO `user` VALUES ('6c733c10-73ce-11ea-a86c-61a0af1a4ce5', 'dasdaaa', 'c9d93aa4d3e0e2293e786ca1dc817340', '该用户还没没有设置昵称', NULL, NULL, NULL, 1, 'http://oss.guoang.xyz/morentouxiang.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, '1', 1585714072017, 1585188326000, NULL);
INSERT INTO `user` VALUES ('6f23bac0-d53c-11ed-9269-d57a6e1f038f', 'test123', '3934a28a11252d5bb4eff5d7ccb81bd5', '该信息还没展示我去你大爷', '她问他', '12312312', '[]', 3, 'http://localhost:8000/uplodes/f1225d93a9d64b33e35000281056eb7e', '', '', '', '', NULL, NULL, 1, '2', 1680869076972, NULL, NULL);
INSERT INTO `user` VALUES ('7b3b8f80-8545-11ea-81ae-6fb1319a1ba1', 'ggg124554', 'e3b7e2559aa1a92e0fe8def69287775e', '该用户还没没有设置昵称', 'hhhh121', '14445', '[{\"url\":\"http://oss.guoang.xyz/cf30ff0b18e42c570e9d4897914e0513.jpg\",\"uid\":1587634495768,\"status\":\"success\"},{\"url\":\"http://oss.guoang.xyz/f544c8306281c7d75a10e779f5224f7d.jpg\",\"uid\":1587634500862,\"status\":\"success\"}]', 0, 'http://oss.guoang.xyz/morentouxiang.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2', 1587634376696, 1585188326000, NULL);
INSERT INTO `user` VALUES ('81edb2f0-6e4c-11ea-a60c-8ba7d3e17ec9', 'qwertyuio', 'bab0d9b1e0a2781ee27ac9c11de27bab', '一二三四', NULL, NULL, NULL, 1, 'http://oss.guoang.xyz/d79749222be623b89a080eff1de2ddd5.jpg', '2456555', '1211222@qq.com', '啊u的话大大的哈哈大点哈说的啥或多或少', '5555555', NULL, NULL, 1, '1', 1580609126000, 1585188326000, NULL);
INSERT INTO `user` VALUES ('82c08370-5c5d-11ea-8568-310572df330f', 'mmmmmmmm', '89f8f2e512562136fb44b79273bfb853', '该用户还没没有设置昵称', NULL, NULL, NULL, 1, 'http://oss.guoang.xyz/d79749222be623b89a080eff1de2ddd5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, '1', 1577930726000, 1585188326000, NULL);
INSERT INTO `user` VALUES ('85a1b110-9329-11ea-b59c-0367d155e2d0', 'duxin1', '22eb7e5bb93e80f851331ec4e21a90a6', '杜欣', '杜欣', '16046236', '[{\"url\":\"http://oss.guoang.xyz/1c40eba8c6b9ad48866986e31c6a4d95.jpg\",\"uid\":1589161980184,\"status\":\"success\"},{\"url\":\"http://oss.guoang.xyz/d3779299d660e17718d07d3cd7ddd93b.jpg\",\"uid\":1589162000322,\"status\":\"success\"}]', 3, 'http://oss.guoang.xyz/morentouxiang.jpg', '3433556343', '47368476@qq.com', '已经错过的风景就不要再打听了，当你选定了一个方向，另一边的风景便与你无关了。', '13342445465', '中国网络有限公司', '[{\"url\":\"http://oss.guoang.xyz/ae92fea5dfbe62321661a998a874843a.jpg\",\"uid\":1589162033620,\"status\":\"success\"}]', 3, '2', 1589161684513, NULL, NULL);
INSERT INTO `user` VALUES ('87231090-7161-11ea-94ab-add3cfa01434', 'guoang', '388b122f7520b1ab77f559ebbc7ac222', 'guoang', NULL, NULL, NULL, 1, 'http://oss.guoang.xyz/d79749222be623b89a080eff1de2ddd5.jpg', 'guoang', 'guoang', 'guoangguoangguoangguoangguoangguoangguoangguoangguoangguoangguoangguoangguoangguoangguoangguoangguoangguoangguoangguoangguoangguoangguoang', 'guoang', '哈哈哈信息平台', '[]', 3, '1', 1585447399320, 1585188326000, NULL);
INSERT INTO `user` VALUES ('9855d210-811c-11ea-aa9c-45b74325fe32', 'llllllll', 'e1399306bf6f2e7dcd7f720e06d9c64f', '测试账号', '111111', '1111111', '[]', 3, 'http://oss.guoang.xyz/morentouxiang.jpg', '355454455', '1245454@qq.com', '测试奥利霍夫大街六号封建社会防守反击啊师傅u是否是否开始反击伤口恢复精神放松放松速回复就开始附件数据发送接口返回和我还', '13342554546', '111111', '[]', 3, '2', 1587177011505, 1585188326000, NULL);
INSERT INTO `user` VALUES ('9df47e10-6fd3-11ea-b4fb-9f04cd6d1c45', 'gggggggg', '29c369a8ed1c27687454088b6708ea67', '该用户还没没有设置昵称', NULL, NULL, NULL, 1, 'http://oss.guoang.xyz/d79749222be623b89a080eff1de2ddd5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, '1', 1585276526225, 1585188326000, NULL);
INSERT INTO `user` VALUES ('9fdebee0-a5aa-11ea-b59c-0367d155e2d0', 'wanglujing', '6c96acc2dc85322d50bde057dbb79538', '该用户还没没有设置昵称', NULL, NULL, NULL, 1, 'http://oss.guoang.xyz/morentouxiang.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2', 1591196254542, NULL, NULL);
INSERT INTO `user` VALUES ('a72b4270-d619-11ed-b6da-1b5a0119b951', 'test12345', '118ae4ac154c9125fdabbc3015fff50a', '测试', NULL, NULL, NULL, 1, 'http://oss.guoang.xyz/morentouxiang.jpg', '', '', '', '', NULL, NULL, 1, '2', 1680964089751, NULL, NULL);
INSERT INTO `user` VALUES ('acb43a80-91a7-11ea-953f-dfe0b5c8db9e', 'zhanghaio2', 'b98be8a313e728555aed05091234fb57', '吴昆', '吴昆', '16046224', '[{\"url\":\"http://oss.guoang.xyz/658fa2372bec0d10b494caa726c990cd.jpg\",\"uid\":1588996058898,\"status\":\"success\"},{\"url\":\"http://oss.guoang.xyz/acd125e7ab2461c02c02a47e302f2ad4.jpg\",\"uid\":1588996067817,\"status\":\"success\"}]', 3, 'http://oss.guoang.xyz/morentouxiang.jpg', '3242342424', '2424@qq.com', '', '13340578967', NULL, NULL, 1, '2', 1588995964328, NULL, NULL);
INSERT INTO `user` VALUES ('b538f440-73cd-11ea-a86c-61a0af1a4ce5', 'gggggggl', '29c369a8ed1c27687454088b6708ea67', '该用户还没没有设置昵称', NULL, NULL, NULL, 1, 'http://oss.guoang.xyz/morentouxiang.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, '1', 1585713764612, 1585188326000, NULL);
INSERT INTO `user` VALUES ('bb4ff790-67f5-11ea-919f-ffff75fee783', 'zzzzzzzz', 'b8208329c6e7ec2a34b8d0b9b18058a7', '该用户还没没有设置昵称', '哈哈哈哈', '160462', '[{\"url\":\"http://127.0.0.1:3000/uplodes/da7995ae9e2d359b353f554a7a11bd88\",\"uid\":1584412586297,\"status\":\"success\"},{\"url\":\"http://127.0.0.1:3000/uplodes/9e11d072e21368f007d4be856b03f557\",\"uid\":1584412590978,\"status\":\"success\"}]', 3, 'http://127.0.0.1:3000/uplodes/7e54e5dcebac50ed92e216a0481c83f2', '', '', '', '', 'XXXXX有限公司', '[{\"url\":\"http://127.0.0.1:3000/uplodes/caf30e878eab7151af747746b0fa5359\",\"uid\":1585446618103,\"status\":\"success\"}]', 3, '1', 1580609126000, 1585188326000, NULL);
INSERT INTO `user` VALUES ('c0bdab90-92d0-11ea-b59c-0367d155e2d0', 'yuzhiwen', '81837d7508bd9eef5a6ec9ea4a8957d1', '于志文', NULL, NULL, NULL, 1, 'http://oss.guoang.xyz/morentouxiang.jpg', '23442445643', '3475783647@qq.com', '累的时候抱抱自己，哭的时候哄哄自己，身边不可能无时无刻，有一个人陪着你宠着你，要学会自己...', '13348577768', NULL, NULL, 1, '2', 1589123558473, NULL, NULL);
INSERT INTO `user` VALUES ('f42de4c0-d68b-11ed-9ca0-47e40271b093', 'test1234', 'f008e3a74bd4362ea6811a377fef4333', '该用户还没没有设置昵称', NULL, NULL, NULL, 1, 'http://localhost:8000/uplodes/avatar.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2', 1681013181580, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
