#创建珠宝数据库
DROP DATABASE IF EXISTS jewelry;
SET NAMES UTF8;
CREATE DATABASE jewelry CHARSET=UTF8;
USE jewelry;

#1创建珠宝总系列表
CREATE TABLE jewelry_family(
	fid INT PRIMARY KEY AUTO_INCREMENT,
	fname VARCHAR(32),  #彩宝 钻石 婚礼
	fdetails VARCHAR(2048), #系列介绍
	fhref VARCHAR(256), #链接地址
	fimg VARCHAR(256)
);
INSERT INTO jewelry_family VALUES(NULL,"彩宝系列","将天然彩宝这一源于大自然的珍稀瑰宝呈献给全球女性，用色彩绽放每个女性所蕴含的独特之美","/family?fid=1","caibao.png");
INSERT INTO jewelry_family VALUES(NULL,"钻石系列","永恒经典、美轮美奂。璀璨瑰丽的ENNO钻石系列产品，浓缩了ENNO对精湛切割、抛光和镶嵌技术的专注及卓越追求","/family?fid=2","zuanshi.jpg");
INSERT INTO jewelry_family VALUES(NULL,"婚礼系列","经典、独具匠心，率先引入钻饰与彩色宝石的精美绝伦的搭配，为求婚、订婚、结婚、纪念日及感恩时刻增添更多回忆，让彼此爱意相守","/family?fid=3","hunli.jpg");

#2创建珠宝分系列表
CREATE TABLE jewelry_class(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	fid INT,
	cname VARCHAR(32),  
	cdetails VARCHAR(2048), #系列介绍
	chref VARCHAR(2048),  #链接地址
	cimg VARCHAR(256)
);
INSERT INTO jewelry_class VALUES(NULL,1,"Classic/经典彩宝","将天然彩宝这一源于大自然的珍稀瑰宝呈献给全球女性，用色彩绽放每个女性所蕴含的独特之美。ENZO Classic经典彩宝系列，收集珍罕且无法复制的纯天然大颗粒宝石，以精湛的工艺结合经典设计，创造出独一无二的珠宝，让更多女性感受属于它们的专属魅力。","/class?cid=1","type1.png");
INSERT INTO jewelry_class VALUES(NULL,1,"Diana/戴安娜","完美再现戴安娜王妃经典订婚戒指，多颗钻石环绕大颗彩色宝石，华贵气息熠熠生辉，深深触动内心的炽热，令佩戴者演绎经典、感受传奇的梦想成为现实。","/class?cid=2","type2.png");
INSERT INTO jewelry_class VALUES(NULL,1,"Tiara/加冕","起源于欧洲的加冕礼，象征着无上的荣耀与权威，戴上王冠，即为世人所礼赞。以真爱的名义许下承诺，当摩登婚礼邂逅古老而又经典的仪式，让天然宝石的神秘能量许愿爱情永恒，以Tiara系列为爱加冕。，撰写独一无二的神圣誓言。","/class?cid=3","type3.png");
INSERT INTO jewelry_class VALUES(NULL,1,"Ocean/经典海洋","海洋系列，以不同大小、形态的海星作为设计蓝图，别具特色。手工精湛的珠宝工艺师，以18K白金铸造出生动的海星形态，再以人手精工镶上钻石，这些闪闪生辉的钻石就如撒落在海面上的阳光，闪烁着耀眼的光芒；珍贵的优质天然彩色宝石，就如海底那些色彩斑斓的珊瑚礁，让这个海洋增添了不少活力及艳丽的色彩般。","/class?cid=4","type4.png");

INSERT INTO jewelry_class VALUES(NULL,2,"Ribbon丝带系列","浪漫而又传统的欧洲婚礼仪式绑手礼，将新人的手紧紧系在一起，即使是盛大英国皇室婚礼，也不会遗忘这一庄严而不失浪漫的仪式。两只手牵起了，就不再松开，两颗心走近了，就永不分离","/class?cid=5","type5.png");
INSERT INTO jewelry_class VALUES(NULL,2,"Moment纪念系列","多元化的元素邂逅五彩绚烂的宝石，随心所欲的搭配创作出令人眼前一亮的独特风格。Moment纪念系列，用潮流、创意的彩宝设计打造令佩戴者独树一帜的个性风潮，时尚不设限，人生不设限，你的风格由你做主。","/class?cid=6","type6.png");
INSERT INTO jewelry_class VALUES(NULL,2,"Destiny天意系列","从求婚的惊喜，到订婚的浪漫；从步入结婚殿堂的神圣，到相守多年的周年纪念，爱情自有天意。ENNO Destiny天意系列钻戒精选上等钻石，精湛工艺展现炫目火彩，闪耀你的整个人生。","/class?cid=7","type7.png");
INSERT INTO jewelry_class VALUES(NULL,2,"Showy炫耀系列","用精湛的工艺，将每颗彩色宝石完美切割，再采用群钻围拱中心的简约设计，缔造出Showy炫耀系列的经典造型，多角度绽放的璀璨光芒彰显潮流魅力，自由变幻下尽绽深情款款爱意，把彩色宝石的光泽与钻石的闪耀一同带给与众不同的你。","/class?cid=8","type8.png");

INSERT INTO jewelry_class VALUES(NULL,3,"Snow雪花系列","据说在下初雪天许愿，所有的爱情都可以长久。设计大师以此为灵感，推出雪花系列款珠宝，以自然界中的雪花元素为原型, 打造出永不融化的宝石雪花，寓意着佩戴者的爱情可以天长地久到白头。","/class?cid=9","type9.png");
INSERT INTO jewelry_class VALUES(NULL,3,"Omar设计师系列","大师级珠宝设计师Omar Torres将欧美的元素与亚洲特点相结合而做的设计，色彩协调搭配，多彩风格相映成趣，工艺精湛而技术要求难度极高，令宝石的色彩在不同角度都能被充分的展示。","/class?cid=10","type10.png");
INSERT INTO jewelry_class VALUES(NULL,3,"Galaxy银河眸系列","银河之眸系列钻石都是超越普通4C切工工艺，以3EX优质切工，其独特切工和“银河星云漩涡”镶口设计，让钻石绽放宇宙银河般的星光，犹如一双双爱人之间深情的双眸，流转款款深情，点亮暗淡的夜空。从求婚的惊喜，到订婚的浪漫；从步入结婚殿堂的神圣，到相守多年的周年纪念，爱的光辉闪耀着整个人生。作为爱情恒久传承的象征，钻石让生活中的每一刻幸福都更加独特。","/class?cid=11","type11.png");
INSERT INTO jewelry_class VALUES(NULL,3,"CANDY糖果盒系列","诱人的糖果，闪耀着斑斓色彩的宝石，女性对于美好的事物总是无法抗拒。Candy糖果盒系列，让糖果与珠宝甜蜜邂逅，活泼明亮色彩感带来轻松愉快的美好心情，宛如沉醉在幸福爱情中的每一天，甜美诱人。","/class?cid=12","type12.png");

#3创建珠宝种类表
CREATE TABLE jewelry_type(
	tid INT PRIMARY KEY AUTO_INCREMENT,
	tname VARCHAR(32) #戒指 吊坠 耳饰 手链
);
INSERT INTO jewelry_type VALUES(NULL,"戒指");
INSERT INTO jewelry_type VALUES(NULL,"吊坠");
INSERT INTO jewelry_type VALUES(NULL,"耳饰");
INSERT INTO jewelry_type VALUES(NULL,"手链");

#4创建珠宝表
CREATE TABLE jewelry_product(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	cid INT,#外键关联珠宝分系列表
	tid INT,#外键关联珠宝种类表
	fid INT,#外键关联珠宝总系列表
	pname VARCHAR(32),#产品名称
	img VARCHAR(128), #产品图片地址
	details VARCHAR(256),#产品详情 (即材料的组成,如:贵金属成18K镶钻+天然石)
	href VARCHAR(256), #链接地址
	price DECIMAL(10,2) #产品价格
);
INSERT INTO jewelry_product VALUES(NULL,1,1,1,"18K金伦敦蓝托帕石戒指","type1_jiezhi.jpg","18K金伦敦蓝托帕石戒指","/product?pid=1",10000.00);
INSERT INTO jewelry_product VALUES(NULL,1,2,1,"18K金伦敦蓝托帕石项链","type1_xianglian.jpg","18K金伦敦蓝托帕石项链","/product?pid=2",12000.00);
INSERT INTO jewelry_product VALUES(NULL,1,3,1,"18K金伦敦蓝托帕石吊坠","type1_diaozhui.jpg","18K金伦敦蓝托帕石吊坠","/product?pid=3",20000.00);
INSERT INTO jewelry_product VALUES(NULL,1,4,1,"18K金伦敦蓝托帕石耳环","type1_erhuan.jpg","18K金伦敦蓝托帕石耳环","/product?pid=4",22000.00);

INSERT INTO jewelry_product VALUES(NULL,2,1,1,"18K白金镶嵌红碧玺戒指","type2_jiezhi.jpg","18K白金镶嵌红碧玺戒指","/product?pid=5",30000.00);
INSERT INTO jewelry_product VALUES(NULL,2,2,1,"18K白金镶嵌红碧玺项链","type2_xianglian.jpg","18K白金镶嵌红碧玺项链","/product?pid=6",32000.00);
INSERT INTO jewelry_product VALUES(NULL,2,3,1,"18K白金镶嵌红碧玺吊坠","type2_diaozhui.jpg","18K白金镶嵌红碧玺吊坠","/product?pid=7",40000.00);
INSERT INTO jewelry_product VALUES(NULL,2,4,1,"18K白金镶嵌红碧玺耳环","type2_erhuan.jpg","18K白金镶嵌红碧玺耳环","/product?pid=8",42000.00);

INSERT INTO jewelry_product VALUES(NULL,3,1,1,"18K玫瑰金镶摩根石戒指","type3_jiezhi.jpg","18K玫瑰金镶摩根石戒指","/product?pid=9",50000.00);
INSERT INTO jewelry_product VALUES(NULL,3,2,1,"18K玫瑰金镶摩根石项链","type3_xianglian.jpg","18K玫瑰金镶摩根石项链","/product?pid=10",52000.00);
INSERT INTO jewelry_product VALUES(NULL,3,3,1,"18K玫瑰金镶摩根石吊坠","type3_diaozhui.jpg","18K玫瑰金镶摩根石吊坠","/product?pid=11",60000.00);
INSERT INTO jewelry_product VALUES(NULL,3,4,1,"18K玫瑰金镶摩根石耳环","type3_erhuan.jpg","18K玫瑰金镶摩根石耳环","/product?pid=12",62000.00);

INSERT INTO jewelry_product VALUES(NULL,4,1,1,"18K玫瑰金镶粉紅蓝宝石戒指","type4_jiezhi.jpg","18K玫瑰金镶粉紅蓝宝石戒指","/product?pid=13",70000.00);
INSERT INTO jewelry_product VALUES(NULL,4,2,1,"18K玫瑰金镶粉紅蓝宝石项链","type4_xianglian.jpg","18K玫瑰金镶粉紅蓝宝石项链","/product?pid=14",72000.00);
INSERT INTO jewelry_product VALUES(NULL,4,3,1,"18K玫瑰金镶粉紅蓝宝石吊坠","type4_diaozhui.jpg","18K玫瑰金镶粉紅蓝宝石吊坠","/product?pid=15",80000.00);
INSERT INTO jewelry_product VALUES(NULL,4,4,1,"18K玫瑰金镶粉紅蓝宝石耳环","type4_erhuan.jpg","18K玫瑰金镶粉紅蓝宝石耳环","/product?pid=16",82000.00);

INSERT INTO jewelry_product VALUES(NULL,5,1,2,"18K金镶钻石戒指","type5_jiezhi.jpg","18K金镶钻石戒指","/product?pid=17",70000.00);
INSERT INTO jewelry_product VALUES(NULL,5,2,2,"18K金镶钻石项链","type5_xianglian.jpg","18K金镶钻石项链","/product?pid=18",72000.00);
INSERT INTO jewelry_product VALUES(NULL,5,3,2,"18K金镶钻石吊坠","type5_diaozhui.jpg","18K金镶钻石吊坠","/product?pid=19",80000.00);
INSERT INTO jewelry_product VALUES(NULL,5,4,2,"18K金镶钻石耳环","type5_erhuan.jpg","18K金镶钻石耳环","/product?pid=20",82000.00);

INSERT INTO jewelry_product VALUES(NULL,6,1,2,"18K玫瑰金镶紫晶戒指","type6_jiezhi.jpg","18K玫瑰金镶紫晶戒指","/product?pid=21",70000.00);
INSERT INTO jewelry_product VALUES(NULL,6,2,2,"18K玫瑰金镶紫晶项链","type6_xianglian.jpg","18K玫瑰金镶紫晶项链","/product?pid=22",72000.00);
INSERT INTO jewelry_product VALUES(NULL,6,3,2,"18K玫瑰金镶紫晶吊坠","type6_diaozhui.jpg","18K玫瑰金镶紫晶吊坠","/product?pid=23",80000.00);
INSERT INTO jewelry_product VALUES(NULL,6,4,2,"18K玫瑰金镶紫晶耳环","type6_erhuan.jpg","18K玫瑰金镶紫晶耳环","/product?pid=24",82000.00);

INSERT INTO jewelry_product VALUES(NULL,7,1,2,"18K白金镶钻石戒指","type7_jiezhi.jpg","18K白金镶钻石戒指","/product?pid=25",70000.00);
INSERT INTO jewelry_product VALUES(NULL,7,2,2,"18K白金镶钻石项链","type7_xianglian.jpg","18K白金镶钻石项链","/product?pid=26",72000.00);
INSERT INTO jewelry_product VALUES(NULL,7,3,2,"18K白金镶钻石吊坠","type7_diaozhui.jpg","18K白金镶钻石吊坠","/product?pid=27",80000.00);
INSERT INTO jewelry_product VALUES(NULL,7,4,2,"18K白金镶钻石耳环","type7_erhuan.jpg","18K白金镶钻石耳环","/product?pid=28",82000.00);

INSERT INTO jewelry_product VALUES(NULL,8,1,2,"18K白金戒指","type8_jiezhi.jpg","18K白金戒指","/product?pid=29",30000.00);
INSERT INTO jewelry_product VALUES(NULL,8,2,2,"18K白金项链","type8_xianglian.jpg","18K白金项链","/product?pid=30",32000.00);
INSERT INTO jewelry_product VALUES(NULL,8,3,2,"18K白金吊坠","type8_diaozhui.jpg","18K白金吊坠","/product?pid=31",40000.00);
INSERT INTO jewelry_product VALUES(NULL,8,4,2,"18K白金耳环","type8_erhuan.jpg","18K白金耳环","/product?pid=32",42000.00);

INSERT INTO jewelry_product VALUES(NULL,9,1,3,"18K白金镶嵌钻石戒指","type9_jiezhi.jpg","18K白金镶嵌钻石戒指","/product?pid=33",30000.00);
INSERT INTO jewelry_product VALUES(NULL,9,2,3,"18K金镶嵌祖母绿项链","type9_xianglian.jpg","18K金镶嵌祖母绿项链","/product?pid=34",32000.00);
INSERT INTO jewelry_product VALUES(NULL,9,3,3,"18K白金镶嵌钻石吊坠","type9_diaozhui.jpg","18K白金镶嵌钻石吊坠","/product?pid=35",40000.00);
INSERT INTO jewelry_product VALUES(NULL,9,4,3,"18K金镶嵌蓝宝石耳环","type9_erhuan.jpg","18K金镶嵌蓝宝石耳环","/product?pid=36",42000.00);

INSERT INTO jewelry_product VALUES(NULL,10,1,3,"18K白色蓝宝石戒指","type10_jiezhi.jpg","18K白色蓝宝石戒指","/product?pid=37",40000.00);
INSERT INTO jewelry_product VALUES(NULL,10,2,3,"18K白色红宝石项链","type10_xianglian.jpg","18K白色红宝石项链","/product?pid=38",42000.00);
INSERT INTO jewelry_product VALUES(NULL,10,3,3,"18K白色蓝宝石吊坠","type10_diaozhui.jpg","18K白色蓝宝石吊坠","/product?pid=39",50000.00);
INSERT INTO jewelry_product VALUES(NULL,10,4,3,"18K白色蓝宝石耳环","type10_erhuan.jpg","18K白色蓝宝石耳环","/product?pid=40",52000.00);

INSERT INTO jewelry_product VALUES(NULL,11,1,3,"18K金镶钻石戒指","type11_jiezhi.jpg","18K金镶钻石戒指","/product?pid=41",30000.00);
INSERT INTO jewelry_product VALUES(NULL,11,2,3,"18K金镶钻石项链","type11_xianglian.jpg","18K金镶钻石项链","/product?pid=42",42000.00);
INSERT INTO jewelry_product VALUES(NULL,11,3,3,"18K金镶钻石吊坠","type11_diaozhui.jpg","18K金镶钻石吊坠","/product?pid=43",40000.00);
INSERT INTO jewelry_product VALUES(NULL,11,4,3,"18K金镶钻石耳环","type11_erhuan.jpg","18K金镶钻石耳环","/product?pid=44",32000.00);

INSERT INTO jewelry_product VALUES(NULL,12,1,3,"18K黄金镶黄晶钻石戒指","type12_jiezhi.jpg","18K黄金镶黄晶钻石戒指","/product?pid=45",30000.00);
INSERT INTO jewelry_product VALUES(NULL,12,2,3,"18K玫瑰金镶圆形紫晶项链","type12_xianglian.jpg","18K玫瑰金镶圆形紫晶项链","/product?pid=46",42000.00);
INSERT INTO jewelry_product VALUES(NULL,12,3,3,"18K金镶托帕石钻石吊坠","type12_diaozhui.jpg","18K金镶托帕石钻石吊坠","/product?pid=47",40000.00);
INSERT INTO jewelry_product VALUES(NULL,12,4,3,"18K金镶绿晶Akoya珍珠耳钉","type12_erhuan.jpg","18K金镶绿晶Akoya珍珠耳钉","/product?pid=48",32000.00);

#5创建轮播图表
CREATE TABLE jewelry_index_carousel(
	lid INT PRIMARY KEY AUTO_INCREMENT,
	img VARCHAR(128),
	title VARCHAR(64),
	href  VARCHAR(256)
);
INSERT INTO jewelry_index_carousel VALUES(NULL,"banner1.jpg","轮播广告商品1","/product?pid=1");
INSERT INTO jewelry_index_carousel VALUES(NULL,"banner2.jpg","轮播广告商品2","/product?pid=2");
INSERT INTO jewelry_index_carousel VALUES(NULL,"banner3.jpg","轮播广告商品3","/product?pid=3");
INSERT INTO jewelry_index_carousel VALUES(NULL,"banner4.jpg","轮播广告商品4","/product?pid=4");