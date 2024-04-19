-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.30 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 news 的数据库结构
CREATE DATABASE IF NOT EXISTS `news` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `news`;

-- 导出  表 news.category 结构
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  news.category 的数据：~4 rows (大约)
INSERT INTO `category` (`category_id`, `name`) VALUES
	(1, '时政'),
	(2, '科技'),
	(3, '新闻'),
	(16, '理论');

-- 导出  表 news.comment 结构
CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `news_id` int DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `user_id` (`user_id`),
  KEY `news_id` (`news_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  news.comment 的数据：~8 rows (大约)
INSERT INTO `comment` (`comment_id`, `user_id`, `news_id`, `content`, `created_at`) VALUES
	(13, 19, 23, '着力推进政治监督具体化、精准化、常态化，着力整治形式主义、官僚主义突出问题', NULL),
	(14, 19, 23, '系统回答了我们党为什么要自我革命、为什么能自我革命、怎样推进自我革命等重大问题', NULL),
	(15, 19, 23, '形成了一系列重要理论成果', NULL),
	(16, 19, 24, '严重违反中央八项规定精神的违规吃喝事件', NULL),
	(17, 19, 24, '应处罚', NULL),
	(18, 19, 30, '是晓龙处理器吗', NULL),
	(19, 19, 30, '支持卫星通话吗', NULL),
	(20, 19, 37, '文学大师!!!!', NULL);

-- 导出  表 news.news 结构
CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text,
  `category_id` int DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  news.news 的数据：~15 rows (大约)
INSERT INTO `news` (`news_id`, `title`, `content`, `category_id`, `image_url`, `created_at`, `updated_at`) VALUES
	(23, '习近平在二十届中央纪委三次全会上发表重要讲话强调 深入推进党的自我革命 坚决打赢反腐败斗争攻坚战持久战', '<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	中共中央政治局常委李强、赵乐际、王沪宁、蔡奇、丁薛祥出席会议。中共中央政治局常委、中央纪律检查委员会书记李希主持会议。\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	习近平指出，2023年是全面贯彻党的二十大精神的开局之年。党中央坚定不移推进党的自我革命，在全党深入开展学习贯彻新时代中国特色社会主义思想主题教育，坚持不懈用党的创新理论凝心铸魂，着力推进政治监督具体化、精准化、常态化，着力整治形式主义、官僚主义突出问题，坚决清除党员、干部队伍中的害群之马，从严从实加强对党员、干部的管理监督，推动全面从严治党向纵深发展，推动党的二十大决策部署不折不扣贯彻落实，有力引领保障新征程开局起步。\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	习近平强调，我们党作为世界上最大的马克思主义执政党，如何成功跳出治乱兴衰历史周期率、确保党永远不变质不变色不变味？这是摆在全党同志面前的一个战略性问题。党的十八大以来，在推进全面从严治党的伟大实践中，我们不断进行实践探索和理论思考，在毛泽东同志当年给出“让人民来监督政府”的第一个答案基础上，给出了第二个答案，那就是不断推进党的自我革命。在新时代十年全面从严治党的实践和理论探索中，我们不断深化对党的自我革命的认识，积累了丰富实践经验，形成了一系列重要理论成果，系统回答了我们党为什么要自我革命、为什么能自我革命、怎样推进自我革命等重大问题。\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	<br />\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	<br />\n</p>', 1, '\\web\\pictures\\609f71e0be15459b9027ee906917489b.jpg', NULL, '2024-01-09 10:32:25'),
	(24, '市委书记花2亿建旅游项目，希望“领导有好印象”', '<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	2022年12月，青海省发生了一起严重违反中央八项规定精神的违规吃喝事件。当时，党的二十大刚闭幕一个多月，青海省举办党政主要领导干部学习贯彻党的二十大精神培训班，这期间，有6名干部竟然在省委党校学员宿舍聚餐饮酒，并导致一人酒后死亡，造成极其恶劣的影响。\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	这场酒局发生在2022年12月11日晚上。房间的主人是时任青海省政府秘书长师存武，这次聚餐是由他提议发起的。参与的人有时任省农业农村厅党组书记、厅长李青川，省文化和旅游厅党组书记、厅长王学文，海北藏族自治州委书记多杰，省国有资产监督管理委员会党委书记、主任洪涛，省交通控股集团有限公司党委书记、董事长陶永利。约这个局，主要是为了祝贺多杰和洪涛两人被确定为拟提拔考察人选。\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	在党校学习期间严禁在任何场所饮酒，是有明文规定的，这6名干部却心存侥幸、明知故犯。师存武利用职权，要求省政府机关食堂专门做了好几道菜，安排司机用公务车送到党校；酒则是李青川让司机送来的，几个人从晚8点喝到晚11点多，拿来的8瓶白酒最终喝空了7瓶。\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	“在一个错误的时间，一个错误的地点，参加了一场不应该参加的一场酒局，总是心存着一种侥幸的心理，觉得大家不知道，这个事情过去了。”王学文说。\n</p>', 1, '\\web\\pictures\\a6ce95ccba7f4046a88273eb8c6b101e.jpg', NULL, NULL),
	(25, '日本能登地区地震已致180人遇难 仍有上百人下落不明', '<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	据此前报道，1月1日下午，能登地区发生7.6级地震，目前震中的救援活动仍在持续进行。\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	日本共同社还报道称，地震发生一周以来，受灾地区多地积雪，影响近2.9万名疏散人员的救援和支援工作。\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	<a target="_blank" href="https://www.chinanews.com.cn/">中新网</a>1月9日电 据日本东京广播公司(TBS)报道，日本石川县9日公布的最新统计数据显示，能登地区地震已造成180人遇难，下落不明人数调整为120人。\n</p>', 3, '\\web\\pictures\\2a742cfadaf44847bf1d4494f07e1003.jpg', NULL, NULL),
	(26, '美防长隐瞒住院引争议 白宫回应：拜登不打算解雇他', '<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	据此前报道，美国国防部长奥斯汀因手术后出现并发症，于1月1日住进重症监护室(ICU)。而五角大楼直到奥斯汀住院三天后的1月4日，才通知白宫奥斯汀住院的消息，随后美国国家安全顾问沙利文将这一消息告知了美国总统拜登。\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	路透社指出，这一情况在美国政坛引发愤怒，因为奥斯汀的角色意味着他应该在国家安全紧急情况下随时待命。现年70岁的奥斯汀在美军指挥系统中的地位仅次于拜登，其职责要求他能够随时应对任何国家安全危机。\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	报道称，近段时间以来，包括美国前总统特朗普在内的部分共和党人呼吁解除奥斯汀的职务。特朗普在社交媒体上发文称：“(奥斯汀)他已经失踪一周了，没有人知道他在哪里，或者可能在哪里。”\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	对此，五角大楼官员1月8日称，奥斯汀已经离开重症监护室，尽管他仍然感到不适，但情况良好。官员们还称，奥斯汀目前被安置在医院里一处较为私密的地方，尚未确定出院日期。\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	白宫官员还表示，拜登并不寻求罢免奥斯汀。美国白宫国家安全委员会战略沟通协调员约翰·柯比指出：“除了让奥斯汀继续留任，并发挥他一直所展示的领导作用之外，没有其它任何计划。”\n</p>', 3, '\\web\\pictures\\5b31feabcc3b48f48a93c26f6ed11ef3.jpg', NULL, NULL),
	(27, '习近平总书记在二十届中央纪委三次全会上的重要讲话金句', '<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	中共中央总书记、国家主席、中央军委主席习近平8日上午在中国共产党第二十届中央纪律检查委员会第三次全体会议上发表重要讲话，一起来看金句。\n</p>\n<div>\n	<br />\n</div>\n<p align="center" style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	<a></a>\n</p>', 1, '\\web\\pictures\\10621362355018029896.jpg', NULL, NULL),
	(28, '永远在路上——以习近平同志为核心的党中央引领全面从严治党向纵深推进', '<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	治国必先治党，党兴才能国强。\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	进入新时代，以习近平同志为核心的党中央以前所未有的勇气和定力推进全面从严治党，开辟了百年大党自我革命的新境界，探索出依靠党的自我革命跳出历史周期率的成功路径。\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	踏上新征程，推进强国建设、民族复兴伟业，习近平总书记向全党发出号召——\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	“要站在事关党长期执政、国家长治久安、人民幸福安康的高度，把全面从严治党作为党的长期战略、永恒课题，始终坚持问题导向，保持战略定力，发扬彻底的自我革命精神，永远吹冲锋号，把严的基调、严的措施、严的氛围长期坚持下去，把党的伟大自我革命进行到底。”\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	<strong>制胜之道——“我们只有勇于自我革命才能赢得历史主动”</strong>\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	2023年年终岁尾，北京中南海怀仁堂。\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	中共中央政治局一连两天召开学习贯彻习近平新时代中国特色社会主义思想主题教育专题民主生活会，总结成绩，查摆不足，进行党性分析，开展批评和自我批评。\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	“勇于自我革命是我们党最鲜明的品格和最大优势。中央政治局的同志要始终按照马克思主义政治家的标准严格要求自己，在洁身自好、廉洁自律上为全党树标杆、作表率”。习近平总书记在会上的重要讲话，体现以上率下持续推进党的自我革命\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	<br />\n</p>', 1, '\\web\\pictures\\d05e628af35048adbbd7cfbd66af149e.jpg', NULL, NULL),
	(29, '习言道｜历史属于奋进者', '<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	新年新气象，奋斗正当时。习近平总书记十分重视弘扬奋斗精神，多次作出重要论述，强调幸福都是奋斗出来的。\n</p>\n<div>\n	<br />\n</div>', 1, '\\web\\pictures\\7140883c433d45b992e5afe7ddf15d99 (1).jpg', NULL, NULL),
	(30, 'OPPO发布首个端侧应用70亿参数大语言模型手机Find X7', '<span style="color:#333333;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;font-size:20px;background-color:#FFFFFF;">1月8日，OPPO发布Find X7，以全新一代同心寰宇设计，全新超光影三主摄实现的哈苏全焦段大师影像，OPPO自研潮汐架构所释放的超强性能，以及超明亮超护眼的新一代钻石屏，为消费者提供高水平的旗舰体验。在配色上，OPPO Find X7推出4种全新配色：烟云紫、海阔天空、大漠银月、星空黑。</span>', 2, '\\web\\pictures\\287110280.jpg', NULL, NULL),
	(31, '核定财产原值 买卖虚拟货币要交税', '<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n		虚拟货币交易再次受到关注。1月8日，北京商报记者注意到，国家税务总局上海市税务局日前在公众号发表《个人所得税经营所得和分类所得常见误区》一文，其中指出个人通过网络买卖虚拟货币需要缴纳个人所得税，由此引发业内热议。\n	</p>\n	<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n		尽管虚拟货币相关交易在境内被严厉叫停，但从北京商报记者过往的实际调查来看，仍有大量个人用户参与其中。在分析人士看来，在过往的监管动作中，境内监管部门虽然否认了虚拟货币的法币属性，但并没有否认虚拟货币的财产或商品属性，按照我国现有税法，对炒币所得具备税款征收的正当性和合法性。\n	</p>\n	<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n		<span style="color:#333333;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;font-size:20px;background-color:#FFFFFF;">不过，《批复》自2008年10月由国家税务总局办公厅实施抄送分发，彼时“虚拟货币”多指互联网平台中购买虚拟商品、虚拟服务的媒介物，例如各网络游戏平台的游戏币等。随着2009年初比特币问世，这类公用型虚拟货币数量不断增加，“虚拟货币”概念也更为宽泛。</span>\n	</p>\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	<br />\n</p>', 2, '\\web\\pictures\\d3cee71b-c0a1-46d0-aec2-a180d5134d02_zsite.jpg', NULL, NULL),
	(32, '腾讯游戏发布寒假限玩通知，未成年人假期限玩16小时', '<span style="font-size:18px;">每经AI快讯，据腾讯游戏公众号，9日，腾讯游戏发布“2024年寒假暨春节假期未成年人游戏限玩日历”。未成年玩家们可以在日历标注日期的晚上8-9点之间登录游戏，整个寒假能打游戏的时间最多16小时。（每日经济新闻）</span><br />\n<br />\n<span style="font-size:18px;"></span>', 1, '\\web\\pictures\\1704767284029kx3.jpg', NULL, '2024-01-09 10:44:18'),
	(33, '掌趣科技携手英伟达 拓展AI游戏创作平台技术生态', '<span style="font-size:18px;"> 中证网讯（王珞）第57届国际消费类电子产品展览会（CES 2024）召开之际，北京时间1月9日凌晨，英伟达（NVIDIA）在线上举行了NVIDIA CES 2024特别演讲，着重展示其先进AI技术在各领域的创新应用，同时公布英伟达与掌趣科技在AI技术与应用方面开展合作，英伟达将向“AI游戏创作平台”提供DLSS、Audio2Face等AI技术支持。未来双方将在AI游戏开发工具、AIGC、AI应用场景等领域继续保持交流与合作。</span><br />\n<br />\n<span style="font-size:18px;"> 掌趣科技持续推动移动游戏研发与发行业务，同时积极布局AI技术，努力加速AI与游戏的融合。“AI游戏创作平台”是掌趣科技与悠米互娱探索AI技术在游戏领域应用的重要举措，旨在运用AI技术降低开放世界游戏的开发门槛，实现个人及小团队也可以开发大规模的开放世界游戏，并通过该平台分享创意成果，实现AI+UGC。</span><br />\n<br />\n<span style="font-size:18px;"> 作为一家全栈计算公司，自1993年成立以来，NVIDIA一直是加速计算领域的先驱。英伟达发明的GPU，极大推动了游戏市场的发展，重新定义了计算机图形技术，开创了现代AI 的新时代，正在推动跨市场的工业数字化。在AI领域，英伟达的研究成果正在改变包括游戏、医疗健康和交通运输等各行各业，并对社会产生了深远的影响。</span><br />\n<span style="font-size:18px;"></span>', 2, '\\web\\pictures\\GetPic.png', NULL, NULL),
	(34, '东西问｜高野山真言宗前官静慈圆：空海入唐为日本带回了什么？', '<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	一千二百多年前，日本僧人空海赴唐学法，回国后开山立派，成为日本真言宗开山鼻祖。除佛法外，空海亦是唐代文化在日本的传播者，是中日友好的桥梁。空海入唐给日本带回了什么？近日，日本高野山真言宗前官静慈圆接受<a target="_blank" href="https://www.chinanews.com/">中新社</a>“东西问”专访，结合自己的研究与实践对此做出解读。\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	<strong>现将访谈实录摘要如下：</strong>\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	<strong><a target="_blank" href="https://www.chinanews.com/">中新社</a>记者：日本僧人弘法大师空海曾于公元804年随日本遣唐使团队赴唐。空海赴唐的原因是什么？</strong>\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	<strong>静慈圆：</strong>1961年，我就读于日本高野山大学，至今我一直都在研究弘法大师——空海。空海在31岁时赴唐，33岁时返回日本。如果想要了解空海，最重要的一件事便是要知道他曾在中国学习。\n</p>', 16, '\\web\\pictures\\3af2741f3d71485ebd8b28a6b0190e06.jpg', NULL, NULL),
	(35, '东西问｜谭金花：铁路华工为中美民间交流搭建了怎样的桥梁？', '<h1 class="content_left_title" style="font-size:39px;color:#333333;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;">\n	<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n		1月1日，中国国家主席习近平与美国总统拜登互致贺信，祝贺两国建交45周年。就在去年11月，中美元首会晤举世瞩目，在政治外交、人文交流、全球治理等领域达成20多项共识和成果。会晤举办地旧金山，再次见证了中美两国人民百年交往历史。\n	</p>\n	<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n		19世纪60年代，先后有约1.2万名中国劳工参加美国横贯大陆铁路(俗称“太平洋铁路”)建设，并在旧金山建起了西半球历史最悠久的唐人街。在所有铁路劳工中，华工占比约85%，其中70%以上来自广东江门五邑地区。铁路华工为中美民间交流搭建了怎样的桥梁？近日，斯坦福大学“铁路华工项目”特别贡献奖获得者、五邑大学广东侨乡文化研究院暨建筑系教授谭金花接受<a target="_blank" href="https://www.chinanews.com/">中新社</a>“东西问”专访，作出深度解读。\n	</p>\n	<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n		<strong>现将访谈实录摘要如下：</strong>\n	</p>\n	<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n		<strong><a target="_blank" href="https://www.chinanews.com/">中新社</a>记者：江门五邑铁路华工留下哪些中美两国人民交往的珍贵历史？</strong>\n	</p>\n	<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n		<strong>谭金花：</strong>1848年，美国西部发现金矿的消息传到五邑地区，大量五邑人到美国淘金谋生。19世纪50年代，在美国的中国人就参与了沙加缅度和圣荷西铁路工程。1863年至1869年美国修建横贯大陆铁路时期，华工陆续加入美国铁路建筑大潮。一些当了工头的华工又回家乡五邑，带更多同乡赴美参加铁路建设。因此，在美华工的人数不断增多。\n	</p>\n	<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n		<br />\n	</p>\n</h1>', 16, '\\web\\pictures\\358cd5ec4f6242548e3e9a025cb2c26f.jpg', NULL, NULL),
	(36, '东西问｜郑永年：为何说中国为世界提供了“另一种制度选择”？', '<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	实际上，全球化对中国也产生了同样的影响，但我们的制度有自身优势。改革开放以来，中国从一个一穷二白的国家发展成世界第二大经济体，中国用40年促成8亿多人口脱贫，迄今为止中等收入群体已超过4亿人。全球化对我们的收入差距产生了一定影响，但我们通过制度优势、精准扶贫，保证了基本的社会公平。\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	中国是少数几个在20世纪80年代以后同时实现三个可持续发展的国家之一：可持续的经济发展、可持续的社会稳定、可持续的政治制度支撑和领导。中国同时实现了这三方面的进步，并将此扩展到国际层面，所以少数西方国家对华产生“恐惧感”。公平地说，西方的经济、科技还在发展，但由社会分配不公所引起的问题到今天仍未解决。\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	<br />\n</p>', 1, '\\web\\pictures\\641f6767eeae445295d6af99d91fff4f.jpg', NULL, NULL),
	(37, '东西问·两岸“名”迹｜在福建漳州“遇见”林语堂', '<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	林语堂大学毕业后即到清华大学任教，婚后携夫人赴美国、德国留学，主要研读比较语言文学，先后获得美国哈佛大学硕士学位及德国莱比锡大学博士学位。1923年，他学成归国，任北京大学教授兼北京师范大学讲师。\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	1924年，《语丝》创刊，林语堂与鲁迅、周作人等同为此杂志主要撰稿人，在这一时期写了很多进步文章。1932年始，他创办《论语》《人间世》《宇宙风》等刊物，提倡“幽默”“闲适”的小品文，被誉为“幽默大师”。1936年，林语堂举家赴美，专事写作。他用英文写了《生活的艺术》《京华烟云》等书，向西方读者介绍中国人的性情、哲学。\n</p>\n<p style="color:#333333;font-size:20px;font-family:Arial, Tahoma, Verdana, 微软雅黑, STHeiTi, sans-serif, Helvetica, SimSun, 微软雅黑;background-color:#FFFFFF;">\n	林语堂一生写了60多本书、上千篇文章，世界上出版的各种不同版本林语堂著作700多种，其中中文版和外文版各300多种。他的著作被翻译成英文、日文、法文、德文、葡萄牙文、西班牙文等20多种文字，读者遍布全球各地。\n</p>', 16, '\\web\\pictures\\4cfef3032f0f420d948c24997c7f4027.jpg', NULL, NULL);

-- 导出  表 news.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int NOT NULL DEFAULT '0',
  `created_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  news.user 的数据：~4 rows (大约)
INSERT INTO `user` (`user_id`, `username`, `password`, `role`, `created_at`) VALUES
	(16, 'admin', 'admin', 0, NULL),
	(17, 'admin', 'admin', 1, NULL),
	(18, 'admin', 'admin', 2, NULL),
	(19, 'user1', 'user1', 0, '2024-01-09 12:28:52.502');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
