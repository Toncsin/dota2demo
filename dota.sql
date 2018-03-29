SET NAMES UTF8;
DROP DATABASE IF EXISTS dota_shop;
CREATE DATABASE dota_shop CHARSET=UTF8;
USE dota_shop;
CREATE TABLE dota_shop_clothes(
  cid      SMALLINT      PRIMARY KEY AUTO_INCREMENT,
  desct    VARCHAR(256)       NOT NULL DEFAULT '',
  price    DECIMAL(10,2)       NOT NULL DEFAULT 999999,
  pic      VARCHAR(256)  NOT NULL DEFAULT '',
  ctime    DATETIME NOT NULL DEFAULT 0
);
CREATE TABLE dota_shop_daily(
  did      SMALLINT      PRIMARY KEY AUTO_INCREMENT,
  desct    VARCHAR(256)       NOT NULL DEFAULT '',
  price    DECIMAL(10,2)        NOT NULL DEFAULT 999999,
  pic      VARCHAR(256)  NOT NULL DEFAULT '',
  ctime    DATETIME NOT NULL DEFAULT 0
);
CREATE TABLE dota_shop_plush(
  pid      SMALLINT      PRIMARY KEY AUTO_INCREMENT,
  desct    VARCHAR(256)        NOT NULL DEFAULT '',
  price    DECIMAL(10,2)        NOT NULL DEFAULT 999999,
  pic      VARCHAR(256)  NOT NULL DEFAULT '',
  ctime    DATETIME NOT NULL DEFAULT 0
);
CREATE TABLE dota_shop_masterpieces(
  mid      SMALLINT      PRIMARY KEY AUTO_INCREMENT,
  desct    VARCHAR(256)        NOT NULL DEFAULT '',
  price    DECIMAL(10,2)        NOT NULL DEFAULT 999999,
  pic      VARCHAR(256)  NOT NULL DEFAULT '',
  ctime    DATETIME NOT NULL DEFAULT 0
);
CREATE TABLE dota_shop_special(
  sid      SMALLINT      PRIMARY KEY AUTO_INCREMENT,
  desct    VARCHAR(256)        NOT NULL DEFAULT '',
  price    DECIMAL(10,2)       NOT NULL DEFAULT 999999,
  pic      VARCHAR(256)  NOT NULL DEFAULT '',
  ctime    DATETIME NOT NULL DEFAULT 0
);
CREATE TABLE dota_shop_tshirts(
  tid      SMALLINT      PRIMARY KEY AUTO_INCREMENT,
  desct    VARCHAR(256)        NOT NULL DEFAULT '',
  price    DECIMAL(10,2)        NOT NULL DEFAULT 999999,
  pic      VARCHAR(256)  NOT NULL DEFAULT '',
  ctime    DATETIME  NOT NULL DEFAULT 0
);
CREATE TABLE dota_shop_user(
 uid       SMALLINT        PRIMARY KEY AUTO_INCREMENT,
 uname     VARCHAR(32)     NOT NULL DEFAULT '',
 upwd      VARCHAR(12)     NOT NULL DEFAULT '',
 username  VARCHAR(32)     NOT NULL DEFAULT '',
 idnumber  VARCHAR(18)     NOT NULL DEFAULT '',
 email     VARCHAR(18)     NOT NULL DEFAULT '',
 ctime    DATETIME  NOT NULL DEFAULT 0
);
CREATE TABLE dota_shop_product(
  prid      SMALLINT      PRIMARY KEY AUTO_INCREMENT,
  desct    VARCHAR(256)       NOT NULL DEFAULT '',
  price    DECIMAL(10,2)       NOT NULL DEFAULT 999999,
  pic      VARCHAR(256)  NOT NULL DEFAULT '',
  ctime    DATETIME NOT NULL DEFAULT 0
);
CREATE TABLE dota_shop_pic(
 iid       SMALLINT       PRIMARY KEY AUTO_INCREMENT,
 prid      SMALLINT       NOT NULL  DEFAULT 0,
 desct     VARCHAR(256)   NOT NULL DEFAULT '',
 subhead   VARCHAR(256)   NOT NULL DEFAULT '',
 small     VARCHAR(256)   NOT NULL DEFAULT '',
 mid       VARCHAR(256)   NOT NULL DEFAULT '',
 big       VARCHAR(256)   NOT NULL DEFAULT '',
 bg        VARCHAR(256)   NOT NULL DEFAULT '',
 price    DECIMAL(10,2)       NOT NULL DEFAULT 999999
);
####################################
CREATE TABLE dota_shop_cart(
	iid		SMALLINT PRIMARY KEY AUTO_INCREMENT,
	pid		SMALLINT,
	user_id		SMALLINT,
	count		SMALLINT,
	is_checked      TINYINT
)
                            ##########商品数据##########
  INSERT INTO dota_shop_pic VALUES(
 null,1,"DOTA2 - 痛苦女王 粘土人手办","GOODSMILE制作，可摆多种超萌姿势，内含Ti7纯正宝瓶和多种配件","product/1-small1.jpg","product/1-mid1.jpg","product/1-big1.jpg","product/1-bg.jpg",298.00);
  INSERT INTO dota_shop_pic VALUES(
 null,1,"DOTA2 - 痛苦女王 粘土人手办","GOODSMILE制作，可摆多种超萌姿势，内含Ti7纯正宝瓶和多种配件","product/1-small2.jpg","product/1-mid2.jpg","product/1-big2.jpg","product/1-bg.jpg",298.00);
  INSERT INTO dota_shop_pic VALUES(
 null,1,"DOTA2 - 痛苦女王 粘土人手办","GOODSMILE制作，可摆多种超萌姿势，内含Ti7纯正宝瓶和多种配件","product/1-small3.jpg","product/1-mid3.jpg","product/1-big3.jpg","product/1-bg.jpg",298.00);
  INSERT INTO dota_shop_pic VALUES(
 null,1,"DOTA2 - 痛苦女王 粘土人手办","GOODSMILE制作，可摆多种超萌姿势，内含Ti7纯正宝瓶和多种配件","product/1-small4.jpg","product/1-mid4.jpg","product/1-big4.jpg","product/1-bg.jpg",298.00);
  INSERT INTO dota_shop_pic VALUES(
 null,2,"DOTA2 - 莉娜 Figam手办","GOODSMILE制作，内含Ti7纯正宝瓶和多种配件，以及额外的至宝款式","product/2-small1.jpg","product/2-mid1.jpg","product/2-big1.jpg","product/2-bg.jpg",488.00);
  INSERT INTO dota_shop_pic VALUES(
 null,2,"DOTA2 - 莉娜 Figam手办","GOODSMILE制作，内含Ti7纯正宝瓶和多种配件，以及额外的至宝款式","product/2-small2.jpg","product/2-mid2.jpg","product/2-big2.jpg","product/2-bg.jpg",488.00);
  INSERT INTO dota_shop_pic VALUES(
 null,2,"DOTA2 - 莉娜 Figam手办","GOODSMILE制作，内含Ti7纯正宝瓶和多种配件，以及额外的至宝款式","product/2-small3.jpg","product/2-mid3.jpg","product/2-big3.jpg","product/2-bg.jpg",488.00);
  INSERT INTO dota_shop_pic VALUES(
 null,2,"DOTA2 - 莉娜 Figam手办","GOODSMILE制作，内含Ti7纯正宝瓶和多种配件，以及额外的至宝款式","product/2-small4.jpg","product/2-mid4.jpg","product/2-big4.jpg","product/2-bg.jpg",488.00);
  INSERT INTO dota_shop_pic VALUES(
 null,3,"DOTA2 - 龙骑士 粘土人手办","GOODSMILE制作，可摆多种超萌姿势，内含绝版Ti7纯正宝瓶和多种配件","product/3-small1.jpg","product/3-mid1.jpg","product/3-big1.jpg","product/3-bg.jpg",298.00);
  INSERT INTO dota_shop_pic VALUES(
 null,3,"DOTA2 - 龙骑士 粘土人手办","GOODSMILE制作，可摆多种超萌姿势，内含绝版Ti7纯正宝瓶和多种配件","product/3-small2.jpg","product/3-mid2.jpg","product/3-big2.jpg","product/3-bg.jpg",298.00);
  INSERT INTO dota_shop_pic VALUES(
 null,3,"DOTA2 - 龙骑士 粘土人手办","GOODSMILE制作，可摆多种超萌姿势，内含绝版Ti7纯正宝瓶和多种配件","product/3-small3.jpg","product/3-mid3.jpg","product/3-big3.jpg","product/3-bg.jpg",298.00);
  INSERT INTO dota_shop_pic VALUES(
 null,3,"DOTA2 - 龙骑士 粘土人手办","GOODSMILE制作，可摆多种超萌姿势，内含绝版Ti7纯正宝瓶和多种配件","product/3-small4.jpg","product/3-mid4.jpg","product/3-big4.jpg","product/3-bg.jpg",298.00);
  INSERT INTO dota_shop_pic VALUES(
 null,4,"DOTA2 - 风行者 Figma手办","GOODSMILE制作，内含Ti7纯正宝瓶和多种配件，并有一定几率开出纯金珍藏","product/4-small1.jpg","product/4-mid1.jpg","product/4-big1.jpg","product/4-bg.jpg",488.00);
  INSERT INTO dota_shop_pic VALUES(
 null,4,"DOTA2 - 风行者 Figma手办","GOODSMILE制作，内含Ti7纯正宝瓶和多种配件，并有一定几率开出纯金珍藏","product/4-small2.jpg","product/4-mid2.jpg","product/4-big2.jpg","product/4-bg.jpg",488.00);
  INSERT INTO dota_shop_pic VALUES(
 null,4,"DOTA2 - 风行者 Figma手办","GOODSMILE制作，内含Ti7纯正宝瓶和多种配件，并有一定几率开出纯金珍藏","product/4-small3.jpg","product/4-mid3.jpg","product/4-big3.jpg","product/4-bg.jpg",488.00);
  INSERT INTO dota_shop_pic VALUES(
 null,5,"DOTA2 - 敌法师 Figma手办","GOODSMILE制作，内含Ti6纯正宝瓶和多种配件，并有一定几率开出纯金珍藏","product/5-small1.jpg","product/5-mid1.jpg","product/5-big1.jpg","product/5-bg.jpg",488.00);
  INSERT INTO dota_shop_pic VALUES(
 null,5,"DOTA2 - 敌法师 Figma手办","GOODSMILE制作，内含Ti6纯正宝瓶和多种配件，并有一定几率开出纯金珍藏","product/5-small2.jpg","product/5-mid2.jpg","product/5-big2.jpg","product/5-bg.jpg",488.00);
  INSERT INTO dota_shop_pic VALUES(
 null,5,"DOTA2 - 敌法师 Figma手办","GOODSMILE制作，内含Ti6纯正宝瓶和多种配件，并有一定几率开出纯金珍藏","product/5-small3.jpg","product/5-mid3.jpg","product/5-big3.jpg","product/5-bg.jpg",488.00);
  INSERT INTO dota_shop_pic VALUES(
 null,6,"DOTA2 - 米拉娜 粘土人手办","GOODSMILE制作，可摆多种超萌姿势，内含绝版Ti7纯正宝瓶和多种配件","product/6-small1.jpg","product/6-mid1.jpg","product/6-big1.jpg","product/6-bg.jpg",298.00);
  INSERT INTO dota_shop_pic VALUES(
 null,6,"DOTA2 - 米拉娜 粘土人手办","GOODSMILE制作，可摆多种超萌姿势，内含绝版Ti7纯正宝瓶和多种配件","product/6-small2.jpg","product/6-mid2.jpg","product/6-big2.jpg","product/6-bg.jpg",298.00);
  INSERT INTO dota_shop_pic VALUES(
 null,6,"DOTA2 - 米拉娜 粘土人手办","GOODSMILE制作，可摆多种超萌姿势，内含绝版Ti7纯正宝瓶和多种配件","product/6-small3.jpg","product/6-mid3.jpg","product/6-big3.jpg","product/6-bg.jpg",298.00);
  INSERT INTO dota_shop_pic VALUES(
 null,6,"DOTA2 - 米拉娜 粘土人手办","GOODSMILE制作，可摆多种超萌姿势，内含绝版Ti7纯正宝瓶和多种配件","product/6-small4.jpg","product/6-mid4.jpg","product/6-big4.jpg","product/6-bg.jpg",298.00);
  INSERT INTO dota_shop_pic VALUES(
 null,7,"DOTA2 - 超萌扭蛋手办","在小娜迦的歌声里睡着啦！超萌扭蛋手办共计11款，盲盒设计附带游戏内虚拟 - 专属聊天表情包。","product/7-small1.jpg","product/7-mid1.jpg","product/7-big1.jpg","product/7-bg.jpg",69.00);
  INSERT INTO dota_shop_pic VALUES(
 null,7,"DOTA2 - 超萌扭蛋手办","在小娜迦的歌声里睡着啦！超萌扭蛋手办共计11款，盲盒设计附带游戏内虚拟 - 专属聊天表情包。","product/7-small2.jpg","product/7-mid2.jpg","product/7-big2.jpg","product/7-bg.jpg",69.00);
  INSERT INTO dota_shop_pic VALUES(
 null,7,"DOTA2 - 超萌扭蛋手办","在小娜迦的歌声里睡着啦！超萌扭蛋手办共计11款，盲盒设计附带游戏内虚拟 - 专属聊天表情包。","product/7-small3.jpg","product/7-mid3.jpg","product/7-big3.jpg","product/7-bg.jpg",69.00);
  INSERT INTO dota_shop_pic VALUES(
 null,7,"DOTA2 - 超萌扭蛋手办","在小娜迦的歌声里睡着啦！超萌扭蛋手办共计11款，盲盒设计附带游戏内虚拟 - 专属聊天表情包。","product/7-small4.jpg","product/7-mid4.jpg","product/7-big4.jpg","product/7-bg.jpg",69.00);
  INSERT INTO dota_shop_pic VALUES(
 null,8,"DOTA2 - TI7 高级卫衣","TI7周边 轻松舒适的运动风格 开黑运动两不误！","product/8-small1.jpg","product/8-mid1.jpg","product/8-big1.jpg","product/8-bg.jpg",328.00);
  INSERT INTO dota_shop_pic VALUES(
 null,8,"DOTA2 - TI7 高级卫衣","TI7周边 轻松舒适的运动风格 开黑运动两不误！","product/8-small2.jpg","product/8-mid2.jpg","product/8-big2.jpg","product/8-bg.jpg",328.00);
  INSERT INTO dota_shop_pic VALUES(
 null,9,"DOTA2 - TI7 高级冲锋衣 【欧美码】","2017国际邀请赛新款 质量上乘的冲锋衣可以适应各种环境 拥有良好的保温和排汗功能 【尺码偏大, 建议选小一码】","product/9-small1.jpg","product/9-mid1.jpg","product/9-big1.jpg","product/9-bg.jpg",698.00);
  INSERT INTO dota_shop_pic VALUES(
 null,9,"DOTA2 - TI7 高级冲锋衣 【欧美码】","2017国际邀请赛新款 质量上乘的冲锋衣可以适应各种环境 拥有良好的保温和排汗功能 【尺码偏大, 建议选小一码】","product/9-small2.jpg","product/9-mid2.jpg","product/9-big2.jpg","product/9-bg.jpg",698.00);
  INSERT INTO dota_shop_pic VALUES(
 null,9,"DOTA2 - TI7 高级冲锋衣 【欧美码】","2017国际邀请赛新款 质量上乘的冲锋衣可以适应各种环境 拥有良好的保温和排汗功能 【尺码偏大, 建议选小一码】","product/9-small3.jpg","product/9-mid3.jpg","product/9-big3.jpg","product/9-bg.jpg",698.00);
  INSERT INTO dota_shop_pic VALUES(
 null,9,"DOTA2 - TI7 高级冲锋衣 【欧美码】","2017国际邀请赛新款 质量上乘的冲锋衣可以适应各种环境 拥有良好的保温和排汗功能 【尺码偏大, 建议选小一码】","product/9-small4.jpg","product/9-mid4.jpg","product/9-big4.jpg","product/9-bg.jpg",698.00);
  INSERT INTO dota_shop_pic VALUES(
 null,10,"DOTA2 - TI7 主题选手服","2017国际邀请赛新款 官方正版 CNDOTA的荣耀我来守护!","product/10-small1.jpg","product/10-mid1.jpg","product/10-big1.jpg","product/10-bg.jpg",398.00);
  INSERT INTO dota_shop_pic VALUES(
 null,10,"DOTA2 - TI7 主题选手服","2017国际邀请赛新款 官方正版 CNDOTA的荣耀我来守护!","product/10-small2.jpg","product/10-mid2.jpg","product/10-big2.jpg","product/10-bg.jpg",398.00);
  INSERT INTO dota_shop_pic VALUES(
 null,10,"DOTA2 - TI7 主题选手服","2017国际邀请赛新款 官方正版 CNDOTA的荣耀我来守护!","product/10-small3.jpg","product/10-mid3.jpg","product/10-big3.jpg","product/10-bg.jpg",398.00);
  INSERT INTO dota_shop_pic VALUES(
 null,11,"DOTA2 - TI7 主题领带","2017国际邀请赛新款 官方正版 分开打钱 有事TP","product/11-small1.jpg","product/11-mid1.jpg","product/11-big1.jpg","product/11-bg.jpg",129.00);
  INSERT INTO dota_shop_pic VALUES(
 null,11,"DOTA2 - TI7 主题领带","2017国际邀请赛新款 官方正版 分开打钱 有事TP","product/11-small2.jpg","product/11-mid2.jpg","product/11-big2.jpg","product/11-bg.jpg",129.00);
  INSERT INTO dota_shop_pic VALUES(
 null,12,"DOTA2 - 炼金术士帽子","经典有趣 绑定虚拟物品","product/12-small1.jpg","product/12-mid1.jpg","product/12-big1.jpg","product/12-bg.jpg",329.00);
  INSERT INTO dota_shop_pic VALUES(
 null,12,"DOTA2 - 炼金术士帽子","经典有趣 绑定虚拟物品","product/12-small2.jpg","product/12-mid2.jpg","product/12-big2.jpg","product/12-bg.jpg",329.00);
  INSERT INTO dota_shop_pic VALUES(
 null,12,"DOTA2 - 炼金术士帽子","经典有趣 绑定虚拟物品","product/12-small3.jpg","product/12-mid3.jpg","product/12-big3.jpg","product/12-bg.jpg",329.00);
  INSERT INTO dota_shop_pic VALUES(
 null,12,"DOTA2 - 炼金术士帽子","经典有趣 绑定虚拟物品","product/12-small4.jpg","product/12-mid4.jpg","product/12-big4.jpg","product/12-bg.jpg",329.00);
  INSERT INTO dota_shop_pic VALUES(
 null,12,"DOTA2 - 炼金术士帽子","经典有趣 绑定虚拟物品","product/12-small1.jpg","product/12-mid1.jpg","product/12-big1.jpg","product/12-bg.jpg",329.00);
  INSERT INTO dota_shop_pic VALUES(
 null,13,"DOTA2 - TI7 主题足球衫","2017国际邀请赛新款 官方正版 面料舒适 极具纪念价值","product/13-small1.jpg","product/13-mid1.jpg","product/13-big1.jpg","product/13-bg.jpg",238.00);
  INSERT INTO dota_shop_pic VALUES(
 null,13,"DOTA2 - TI7 主题足球衫","2017国际邀请赛新款 官方正版 面料舒适 极具纪念价值","product/13-small2.jpg","product/13-mid2.jpg","product/13-big2.jpg","product/13-bg.jpg",238.00);
  INSERT INTO dota_shop_pic VALUES(
 null,13,"DOTA2 - TI7 主题足球衫","2017国际邀请赛新款 官方正版 面料舒适 极具纪念价值","product/13-small3.jpg","product/13-mid3.jpg","product/13-big3.jpg","product/13-bg.jpg",238.00);
  INSERT INTO dota_shop_pic VALUES(
 null,14,"DOTA2 - 银耳钉","TI6周边 官方正版 美国进口 特别纪念","product/14-small1.jpg","product/14-mid1.jpg","product/14-big1.jpg","product/14-bg.jpg",168.00);
  INSERT INTO dota_shop_pic VALUES(
 null,14,"DOTA2 - 银耳钉","TI6周边 官方正版 美国进口 特别纪念","product/14-small2.jpg","product/14-mid2.jpg","product/14-big2.jpg","product/14-bg.jpg",168.00);
  INSERT INTO dota_shop_pic VALUES(
 null,14,"DOTA2 - 银耳钉","TI6周边 官方正版 美国进口 特别纪念","product/14-small3.jpg","product/14-mid3.jpg","product/14-big3.jpg","product/14-bg.jpg",168.00);
  INSERT INTO dota_shop_pic VALUES(
 null,15,"DOTA2 - 英雄睡裤","TI6周边 官方正版 美国进口 舒适可爱","product/15-small1.jpg","product/15-mid1.jpg","product/15-big1.jpg","product/15-bg.jpg",328.00);
  INSERT INTO dota_shop_pic VALUES(
 null,15,"DOTA2 - 英雄睡裤","TI6周边 官方正版 美国进口 舒适可爱","product/15-small2.jpg","product/15-mid2.jpg","product/15-big2.jpg","product/15-bg.jpg",328.00);
  INSERT INTO dota_shop_pic VALUES(
 null,15,"DOTA2 - 英雄睡裤","TI6周边 官方正版 美国进口 舒适可爱","product/15-small3.jpg","product/15-mid3.jpg","product/15-big3.jpg","product/15-bg.jpg",328.00);
  INSERT INTO dota_shop_pic VALUES(
 null,16,"DOTA2 - TI7 前来收割 T恤","赏金猎人很高兴和你做生意！来自玩家社区投票高分的创意设计，面料舒适个性十足","product/16-small1.jpg","product/16-mid1.jpg","product/16-big1.jpg","product/16-bg.jpg",139.00);
  INSERT INTO dota_shop_pic VALUES(
 null,17,"DOTA2 - TI7 装甲就位 T恤","准备就绪，火力全开！来自玩家社区投票高分的创意设计，面料舒适个性十足","product/17-small1.jpg","product/17-mid1.jpg","product/17-big1.jpg","product/17-bg.jpg",139.00);
  INSERT INTO dota_shop_pic VALUES(
 null,18,"DOTA2 - TI7 幻影刺客纹身 T恤","我的暗杀名单上有五个名字！来自玩家社区投票高分的创意设计，面料舒适个性十足","product/18-small1.jpg","product/18-mid1.jpg","product/18-big1.jpg","product/18-bg.jpg",139.00);
  INSERT INTO dota_shop_pic VALUES(
 null,19,"DOTA2 - DAC 创意T恤","多款来自玩家社区投票高分的创意设计，面料舒适个性十足","product/19-small1.jpg","product/19-mid1.jpg","product/19-big1.jpg","product/19-bg.jpg",139.00);
  INSERT INTO dota_shop_pic VALUES(
 null,19,"DOTA2 - DAC 创意T恤","多款来自玩家社区投票高分的创意设计，面料舒适个性十足","product/19-small2.jpg","product/19-mid2.jpg","product/19-big2.jpg","product/19-bg.jpg",139.00);
  INSERT INTO dota_shop_pic VALUES(
 null,19,"DOTA2 - DAC 创意T恤","多款来自玩家社区投票高分的创意设计，面料舒适个性十足","product/19-small3.jpg","product/19-mid3.jpg","product/19-big3.jpg","product/19-bg.jpg",139.00);
  INSERT INTO dota_shop_pic VALUES(
 null,19,"DOTA2 - DAC 创意T恤","多款来自玩家社区投票高分的创意设计，面料舒适个性十足","product/19-small4.jpg","product/19-mid4.jpg","product/19-big4.jpg","product/19-bg.jpg",139.00);
  INSERT INTO dota_shop_pic VALUES(
 null,20,"DOTA2 - 熊战士毛绒玩偶","DOTA2正版周边 经典款毛绒 配属超值虚","product/20-small1.jpg","product/20-mid1.jpg","product/20-big1.jpg","product/20-bg.jpg",280.00);
  INSERT INTO dota_shop_pic VALUES(
 null,20,"DOTA2 - 熊战士毛绒玩偶","DOTA2正版周边 经典款毛绒 配属超值虚","product/20-small2.jpg","product/20-mid2.jpg","product/20-big2.jpg","product/20-bg.jpg",280.00);
  INSERT INTO dota_shop_pic VALUES(
 null,20,"DOTA2 - 熊战士毛绒玩偶","DOTA2正版周边 经典款毛绒 配属超值虚","product/20-small3.jpg","product/20-mid3.jpg","product/20-big3.jpg","product/20-bg.jpg",280.00);
  INSERT INTO dota_shop_pic VALUES(
 null,21,"DOTA2 - TI7迷你毛绒","2017国际邀请赛新款 TI7周边 官方正版 大陆首发 【盲盒设计，随机发货】","product/21-small1.jpg","product/21-mid1.jpg","product/21-big1.jpg","product/21-bg.jpg",99.00);
  INSERT INTO dota_shop_pic VALUES(
 null,21,"DOTA2 - TI7迷你毛绒","2017国际邀请赛新款 TI7周边 官方正版 大陆首发 【盲盒设计，随机发货】","product/21-small2.jpg","product/21-mid2.jpg","product/21-big2.jpg","product/21-bg.jpg",99.00);
  INSERT INTO dota_shop_pic VALUES(
 null,21,"DOTA2 - TI7迷你毛绒","2017国际邀请赛新款 TI7周边 官方正版 大陆首发 【盲盒设计，随机发货】","product/21-small3.jpg","product/21-mid3.jpg","product/21-big3.jpg","product/21-bg.jpg",99.00);
  INSERT INTO dota_shop_pic VALUES(
 null,21,"DOTA2 - TI7迷你毛绒","2017国际邀请赛新款 TI7周边 官方正版 大陆首发 【盲盒设计，随机发货】","product/21-small4.jpg","product/21-mid4.jpg","product/21-big4.jpg","product/21-bg.jpg",99.00);
  INSERT INTO dota_shop_pic VALUES(
 null,22,"DOTA2 - TI7 裂魂人毛绒玩偶","2017国际邀请赛新款 TI7周边 官方正版 超萌玩偶","product/22-small1.jpg","product/22-mid1.jpg","product/22-big1.jpg","product/22-bg.jpg",298.00);
  INSERT INTO dota_shop_pic VALUES(
 null,22,"DOTA2 - TI7 裂魂人毛绒玩偶","2017国际邀请赛新款 TI7周边 官方正版 超萌玩偶","product/22-small2.jpg","product/22-mid2.jpg","product/22-big2.jpg","product/22-bg.jpg",298.00);
  INSERT INTO dota_shop_pic VALUES(
 null,22,"DOTA2 - TI7 裂魂人毛绒玩偶","2017国际邀请赛新款 TI7周边 官方正版 超萌玩偶","product/22-small3.jpg","product/22-mid3.jpg","product/22-big3.jpg","product/22-bg.jpg",298.00);
  INSERT INTO dota_shop_pic VALUES(
 null,22,"DOTA2 - TI7 裂魂人毛绒玩偶","2017国际邀请赛新款 TI7周边 官方正版 超萌玩偶","product/22-small4.jpg","product/22-mid4.jpg","product/22-big4.jpg","product/22-bg.jpg",298.00);
  INSERT INTO dota_shop_pic VALUES(
 null,23,"DOTA2 - Ti4 迷你毛绒","美国原版进口 超萌可爱 附带超值虚拟珍藏","product/23-small1.jpg","product/23-mid1.jpg","product/23-big1.jpg","product/23-bg.jpg",90.00);
  INSERT INTO dota_shop_pic VALUES(
 null,23,"DOTA2 - Ti4 迷你毛绒","美国原版进口 超萌可爱 附带超值虚拟珍藏","product/23-small2.jpg","product/23-mid2.jpg","product/23-big2.jpg","product/23-bg.jpg",90.00);
  INSERT INTO dota_shop_pic VALUES(
 null,23,"DOTA2 - Ti4 迷你毛绒","美国原版进口 超萌可爱 附带超值虚拟珍藏","product/23-small3.jpg","product/23-mid3.jpg","product/23-big3.jpg","product/23-bg.jpg",90.00);
  INSERT INTO dota_shop_pic VALUES(
 null,24,"DOTA2 - Ti5 迷你毛绒","美国原版进口 超萌可爱 附带超值虚拟珍藏","product/24-small1.jpg","product/24-mid1.jpg","product/24-big1.jpg","product/24-bg.jpg",90.00);
  INSERT INTO dota_shop_pic VALUES(
 null,24,"DOTA2 - Ti5 迷你毛绒","美国原版进口 超萌可爱 附带超值虚拟珍藏","product/24-small2.jpg","product/24-mid2.jpg","product/24-big2.jpg","product/24-bg.jpg",90.00);
  INSERT INTO dota_shop_pic VALUES(
 null,24,"DOTA2 - Ti5 迷你毛绒","美国原版进口 超萌可爱 附带超值虚拟珍藏","product/24-small3.jpg","product/24-mid3.jpg","product/24-big3.jpg","product/24-bg.jpg",90.00);
  INSERT INTO dota_shop_pic VALUES(
 null,24,"DOTA2 - Ti5 迷你毛绒","美国原版进口 超萌可爱 附带超值虚拟珍藏","product/24-small4.jpg","product/24-mid4.jpg","product/24-big4.jpg","product/24-bg.jpg",90.00);
  INSERT INTO dota_shop_pic VALUES(
 null,25,"DOTA2 - TI7主题扑克牌","2017国际邀请赛新款 TI7周边 官方正版 大陆首发","product/25-small1.jpg","product/25-mid1.jpg","product/25-big1.jpg","product/25-bg.jpg",49.00);
  INSERT INTO dota_shop_pic VALUES(
 null,25,"DOTA2 - TI7主题扑克牌","2017国际邀请赛新款 TI7周边 官方正版 大陆首发","product/25-small2.jpg","product/25-mid2.jpg","product/25-big2.jpg","product/25-bg.jpg",49.00);
  INSERT INTO dota_shop_pic VALUES(
 null,25,"DOTA2 - TI7主题扑克牌","2017国际邀请赛新款 TI7周边 官方正版 大陆首发","product/25-small3.jpg","product/25-mid3.jpg","product/25-big3.jpg","product/25-bg.jpg",49.00);
  INSERT INTO dota_shop_pic VALUES(
 null,25,"DOTA2 - TI7主题扑克牌","2017国际邀请赛新款 TI7周边 官方正版 大陆首发","product/25-small4.jpg","product/25-mid4.jpg","product/25-big4.jpg","product/25-bg.jpg",49.00);
  INSERT INTO dota_shop_pic VALUES(
 null,26,"DOTA2 - 英雄至宝 金属徽章 NO.2","完美大师赛全新新品，中国专属的带至宝款式的5枚金属徽章，极具纪念价值","product/26-small1.jpg","product/26-mid1.jpg","product/26-big1.jpg","product/26-bg.jpg",199.00);
  INSERT INTO dota_shop_pic VALUES(
 null,26,"DOTA2 - 英雄至宝 金属徽章 NO.2","完美大师赛全新新品，中国专属的带至宝款式的5枚金属徽章，极具纪念价值","product/26-small2.jpg","product/26-mid2.jpg","product/26-big2.jpg","product/26-bg.jpg",199.00);
  INSERT INTO dota_shop_pic VALUES(
 null,26,"DOTA2 - 英雄至宝 金属徽章 NO.2","完美大师赛全新新品，中国专属的带至宝款式的5枚金属徽章，极具纪念价值","product/26-small3.jpg","product/26-mid3.jpg","product/26-big3.jpg","product/26-bg.jpg",199.00);
  INSERT INTO dota_shop_pic VALUES(
 null,26,"DOTA2 - 英雄至宝 金属徽章 NO.2","完美大师赛全新新品，中国专属的带至宝款式的5枚金属徽章，极具纪念价值","product/26-small4.jpg","product/26-mid4.jpg","product/26-big4.jpg","product/26-bg.jpg",199.00);
  INSERT INTO dota_shop_pic VALUES(
 null,27,"DOTA2 - 英雄至宝 金属徽章 NO.1","2017年亚洲邀请赛专供，中国专属的带至宝款式的5枚金属徽章，极具纪念价值","product/27-small1.jpg","product/27-mid1.jpg","product/27-big1.jpg","product/27-bg.jpg",199.00);
  INSERT INTO dota_shop_pic VALUES(
 null,27,"DOTA2 - 英雄至宝 金属徽章 NO.1","2017年亚洲邀请赛专供，中国专属的带至宝款式的5枚金属徽章，极具纪念价值","product/27-small2.jpg","product/27-mid2.jpg","product/27-big2.jpg","product/27-bg.jpg",199.00);
  INSERT INTO dota_shop_pic VALUES(
 null,27,"DOTA2 - 英雄至宝 金属徽章 NO.1","2017年亚洲邀请赛专供，中国专属的带至宝款式的5枚金属徽章，极具纪念价值","product/27-small3.jpg","product/27-mid3.jpg","product/27-big3.jpg","product/27-bg.jpg",199.00);
  INSERT INTO dota_shop_pic VALUES(
 null,27,"DOTA2 - 英雄至宝 金属徽章 NO.1","2017年亚洲邀请赛专供，中国专属的带至宝款式的5枚金属徽章，极具纪念价值","product/27-small4.jpg","product/27-mid4.jpg","product/27-big4.jpg","product/27-bg.jpg",199.00);
  INSERT INTO dota_shop_pic VALUES(
 null,28,"DOTA2 - 全英雄选择 手机壳","完美大师赛专属新品，高质量iPhone手机壳，超萌形象有趣互动，绝活一手掌握","product/28-small1.jpg","product/28-mid1.jpg","product/28-big1.jpg","product/28-bg.jpg",199.00);
  INSERT INTO dota_shop_pic VALUES(
 null,28,"DOTA2 - 全英雄选择 手机壳","完美大师赛专属新品，高质量iPhone手机壳，超萌形象有趣互动，绝活一手掌握","product/28-small2.jpg","product/28-mid2.jpg","product/28-big2.jpg","product/28-bg.jpg",88.00);
  INSERT INTO dota_shop_pic VALUES(
 null,28,"DOTA2 - 全英雄选择 手机壳","完美大师赛专属新品，高质量iPhone手机壳，超萌形象有趣互动，绝活一手掌握","product/28-small3.jpg","product/28-mid3.jpg","product/28-big3.jpg","product/28-bg.jpg",88.00);
  INSERT INTO dota_shop_pic VALUES(
 null,28,"DOTA2 - 全英雄选择 手机壳","完美大师赛专属新品，高质量iPhone手机壳，超萌形象有趣互动，绝活一手掌握","product/28-small4.jpg","product/28-mid4.jpg","product/28-big4.jpg","product/28-bg.jpg",88.00);
  INSERT INTO dota_shop_pic VALUES(
 null,29,"DOTA2 - TI7 主题背包","2017国际邀请赛新款 官方正版 背负信仰 面朝阳光","product/29-small1.jpg","product/29-mid1.jpg","product/29-big1.jpg","product/29-bg.jpg",428.00);
  INSERT INTO dota_shop_pic VALUES(
 null,29,"DOTA2 - TI7 主题背包","2017国际邀请赛新款 官方正版 背负信仰 面朝阳光","product/29-small2.jpg","product/29-mid2.jpg","product/29-big2.jpg","product/29-bg.jpg",428.00);
  INSERT INTO dota_shop_pic VALUES(
 null,29,"DOTA2 - TI7 主题背包","2017国际邀请赛新款 官方正版 背负信仰 面朝阳光","product/29-small3.jpg","product/29-mid3.jpg","product/29-big3.jpg","product/29-bg.jpg",428.00);
  INSERT INTO dota_shop_pic VALUES(
 null,29,"DOTA2 - TI7 主题背包","2017国际邀请赛新款 官方正版 背负信仰 面朝阳光","product/29-small4.jpg","product/29-mid4.jpg","product/29-big4.jpg","product/29-bg.jpg",428.00);
  INSERT INTO dota_shop_pic VALUES(
 null,30,"DOTA2 - 大圣腰枕","官方正版周边，玩家工坊投票热选周边，Valve授权正版制作","product/30-small1.jpg","product/30-mid1.jpg","product/30-big1.jpg","product/30-bg.jpg",129.00);
  INSERT INTO dota_shop_pic VALUES(
 null,30,"DOTA2 - 大圣腰枕","官方正版周边，玩家工坊投票热选周边，Valve授权正版制作","product/30-small2.jpg","product/30-mid2.jpg","product/30-big2.jpg","product/30-bg.jpg",129.00);
  INSERT INTO dota_shop_pic VALUES(
 null,31,"DOTA2 - TI7 大地之灵抱枕","2017国际邀请赛新款 官方正版 披荆斩棘 永无止境","product/31-small1.jpg","product/31-mid1.jpg","product/31-big1.jpg","product/31-bg.jpg",168.00);
  INSERT INTO dota_shop_pic VALUES(
 null,31,"DOTA2 - TI7 大地之灵抱枕","2017国际邀请赛新款 官方正版 披荆斩棘 永无止境","product/31-small2.jpg","product/31-mid2.jpg","product/31-big2.jpg","product/31-bg.jpg",168.00);
  INSERT INTO dota_shop_pic VALUES(
 null,31,"DOTA2 - TI7 大地之灵抱枕","2017国际邀请赛新款 官方正版 披荆斩棘 永无止境","product/31-small3.jpg","product/31-mid3.jpg","product/31-big3.jpg","product/31-bg.jpg",168.00);
  INSERT INTO dota_shop_pic VALUES(
 null,31,"DOTA2 - TI7 大地之灵抱枕","2017国际邀请赛新款 官方正版 披荆斩棘 永无止境","product/31-small4.jpg","product/31-mid4.jpg","product/31-big4.jpg","product/31-bg.jpg",168.00);
  INSERT INTO dota_shop_pic VALUES(
 null,32,"DOTA2 - TI7 剑圣抱枕","2017国际邀请赛新款 官方正版 遮面之岛的馈赠","product/32-small1.jpg","product/32-mid1.jpg","product/32-big1.jpg","product/32-bg.jpg",168.00);
  INSERT INTO dota_shop_pic VALUES(
 null,33,"DOTA2卡通胸针—No.2套 三雄之军","DOTA2正版 TI5绝版商品 经典胸针","product/33-small1.jpg","product/33-mid1.jpg","product/33-big1.jpg","product/33-bg.jpg",330.00);
  INSERT INTO dota_shop_pic VALUES(
 null,33,"DOTA2卡通胸针—No.2套 三雄之军","DOTA2正版 TI5绝版商品 经典胸针","product/33-small2.jpg","product/33-mid2.jpg","product/33-big2.jpg","product/33-bg.jpg",330.00);
  INSERT INTO dota_shop_pic VALUES(
 null,33,"DOTA2卡通胸针—No.2套 三雄之军","DOTA2正版 TI5绝版商品 经典胸针","product/33-small3.jpg","product/33-mid3.jpg","product/33-big3.jpg","product/33-bg.jpg",330.00);
  INSERT INTO dota_shop_pic VALUES(
 null,33,"DOTA2卡通胸针—No.2套 三雄之军","DOTA2正版 TI5绝版商品 经典胸针","product/33-small4.jpg","product/33-mid4.jpg","product/33-big4.jpg","product/33-bg.jpg",330.00);
  INSERT INTO dota_shop_pic VALUES(
 null,34,"DOTA2卡通胸针—No.1 迷你英雄","DOTA2正版 TI5绝版商品 经典胸针 带虚拟","product/34-small1.jpg","product/34-mid1.jpg","product/34-big1.jpg","product/34-bg.jpg",330.00);
  INSERT INTO dota_shop_pic VALUES(
 null,34,"DOTA2卡通胸针—No.1 迷你英雄","DOTA2正版 TI5绝版商品 经典胸针 带虚拟","product/34-small2.jpg","product/34-mid2.jpg","product/34-big2.jpg","product/34-bg.jpg",330.00);
  INSERT INTO dota_shop_pic VALUES(
 null,34,"DOTA2卡通胸针—No.1 迷你英雄","DOTA2正版 TI5绝版商品 经典胸针 带虚拟","product/34-small3.jpg","product/34-mid3.jpg","product/34-big3.jpg","product/34-bg.jpg",330.00);
  INSERT INTO dota_shop_pic VALUES(
 null,34,"DOTA2卡通胸针—No.1 迷你英雄","DOTA2正版 TI5绝版商品 经典胸针 带虚拟","product/34-small4.jpg","product/34-mid4.jpg","product/34-big4.jpg","product/34-bg.jpg",330.00);
  INSERT INTO dota_shop_pic VALUES(
 null,35,"DOTA2 - 天辉迷彩 鼠标垫","2017国际邀请赛新款 TI7周边 官方正版 大陆首发","product/35-small1.jpg","product/35-mid1.jpg","product/35-big1.jpg","product/35-bg.jpg",99.00);
  INSERT INTO dota_shop_pic VALUES(
 null,36,"DOTA2 - 苍雄之力 鼠标垫","2017国际邀请赛新款 TI7周边 官方正版 大陆首发","product/36-small1.jpg","product/36-mid1.jpg","product/36-big1.jpg","product/36-bg.jpg",99.00);
  INSERT INTO dota_shop_pic VALUES(
 null,37,"DOTA2 - 潮汐猎人马克杯","我还能喝下一杯水！2017国际邀请赛超萌新款，质量出众","product/37-small1.jpg","product/37-mid1.jpg","product/37-big1.jpg","product/37-bg.jpg",198.00);
  INSERT INTO dota_shop_pic VALUES(
 null,37,"DOTA2 - 潮汐猎人马克杯","我还能喝下一杯水！2017国际邀请赛超萌新款，质量出众","product/37-small2.jpg","product/37-mid2.jpg","product/37-big2.jpg","product/37-bg.jpg",198.00);
  INSERT INTO dota_shop_pic VALUES(
 null,37,"DOTA2 - 潮汐猎人马克杯","我还能喝下一杯水！2017国际邀请赛超萌新款，质量出众","product/37-small3.jpg","product/37-mid3.jpg","product/37-big3.jpg","product/37-bg.jpg",198.00);
  INSERT INTO dota_shop_pic VALUES(
 null,37,"DOTA2 - 潮汐猎人马克杯","我还能喝下一杯水！2017国际邀请赛超萌新款，质量出众","product/37-small4.jpg","product/37-mid4.jpg","product/37-big4.jpg","product/37-bg.jpg",198.00);
  INSERT INTO dota_shop_pic VALUES(
 null,38,"DOTA2 - TI7 灰烬之灵抱枕","2017国际邀请赛新款 官方正版 披荆斩棘 永无止境","product/38-small1.jpg","product/38-mid1.jpg","product/38-big1.jpg","product/38-bg.jpg",168.00);
  INSERT INTO dota_shop_pic VALUES(
 null,38,"DOTA2 - TI7 灰烬之灵抱枕","2017国际邀请赛新款 官方正版 披荆斩棘 永无止境","product/38-small2.jpg","product/38-mid2.jpg","product/38-big2.jpg","product/38-bg.jpg",168.00);
  INSERT INTO dota_shop_pic VALUES(
 null,38,"DOTA2 - TI7 灰烬之灵抱枕","2017国际邀请赛新款 官方正版 披荆斩棘 永无止境","product/38-small3.jpg","product/38-mid3.jpg","product/38-big3.jpg","product/38-bg.jpg",168.00);
  INSERT INTO dota_shop_pic VALUES(
 null,38,"DOTA2 - TI7 灰烬之灵抱枕","2017国际邀请赛新款 官方正版 披荆斩棘 永无止境","product/38-small4.jpg","product/38-mid4.jpg","product/38-big4.jpg","product/38-bg.jpg",168.00);
  INSERT INTO dota_shop_pic VALUES(
 null,39,"DOTA2 - TI7 风暴之灵抱枕","2017国际邀请赛新款 官方正版 披荆斩棘 永无止境","product/39-small1.jpg","product/39-mid1.jpg","product/39-big1.jpg","product/39-bg.jpg",168.00);
  INSERT INTO dota_shop_pic VALUES(
 null,39,"DOTA2 - TI7 风暴之灵抱枕","2017国际邀请赛新款 官方正版 披荆斩棘 永无止境","product/39-small2.jpg","product/39-mid2.jpg","product/39-big2.jpg","product/39-bg.jpg",168.00);
  INSERT INTO dota_shop_pic VALUES(
 null,39,"DOTA2 - TI7 风暴之灵抱枕","2017国际邀请赛新款 官方正版 披荆斩棘 永无止境","product/39-small3.jpg","product/39-mid3.jpg","product/39-big3.jpg","product/39-bg.jpg",168.00);
  INSERT INTO dota_shop_pic VALUES(
 null,39,"DOTA2 - TI7 风暴之灵抱枕","2017国际邀请赛新款 官方正版 披荆斩棘 永无止境","product/39-small4.jpg","product/39-mid4.jpg","product/39-big4.jpg","product/39-bg.jpg",168.00);
  INSERT INTO dota_shop_pic VALUES(
 null,40,"DOTA2 - 潮汐抱枕","Ti系列精品周边，全刺绣工艺，柔软可爱的毛绒","product/40-small1.jpg","product/40-mid1.jpg","product/40-big1.jpg","product/40-bg.jpg",200.00);
  INSERT INTO dota_shop_pic VALUES(
 null,40,"DOTA2 - 潮汐抱枕","Ti系列精品周边，全刺绣工艺，柔软可爱的毛绒","product/40-small2.jpg","product/40-mid2.jpg","product/40-big2.jpg","product/40-bg.jpg",200.00);
  INSERT INTO dota_shop_pic VALUES(
 null,40,"DOTA2 - 潮汐抱枕","Ti系列精品周边，全刺绣工艺，柔软可爱的毛绒","product/40-small3.jpg","product/40-mid3.jpg","product/40-big3.jpg","product/40-bg.jpg",200.00);
  INSERT INTO dota_shop_pic VALUES(
 null,41,"DOTA2 - 赛睿限定版寒冰系列耳机","ChinaJoy线下爆款，DOTA2主题的高端寒冰系列耳机再度来临，中国区绝版限量售完即止","product/41-small1.jpg","product/41-mid1.jpg","product/41-big1.jpg","product/41-bg.jpg",999.00);
  INSERT INTO dota_shop_pic VALUES(
 null,41,"DOTA2 - 赛睿限定版寒冰系列耳机","ChinaJoy线下爆款，DOTA2主题的高端寒冰系列耳机再度来临，中国区绝版限量售完即止","product/41-small2.jpg","product/41-mid2.jpg","product/41-big2.jpg","product/41-bg.jpg",999.00);
  INSERT INTO dota_shop_pic VALUES(
 null,41,"DOTA2 - 赛睿限定版寒冰系列耳机","ChinaJoy线下爆款，DOTA2主题的高端寒冰系列耳机再度来临，中国区绝版限量售完即止","product/41-small3.jpg","product/41-mid3.jpg","product/41-big3.jpg","product/41-bg.jpg",999.00);
  INSERT INTO dota_shop_pic VALUES(
 null,41,"DOTA2 - 赛睿限定版寒冰系列耳机","ChinaJoy线下爆款，DOTA2主题的高端寒冰系列耳机再度来临，中国区绝版限量售完即止","product/41-small4.jpg","product/41-mid4.jpg","product/41-big4.jpg","product/41-bg.jpg",999.00);
  INSERT INTO dota_shop_pic VALUES(
 null,42,"DOTA2 - 圣诞神话珍藏","大师赛线下同款，内含丰富周边礼品，并有机会获得超值额外掉落耳机，非质量问题不得退换","product/42-small1.jpg","product/42-mid1.jpg","product/42-big1.jpg","product/42-bg.jpg",799.00);

##################################################


##############################
                            ##########用户表############
INSERT INTO dota_shop_user VALUES(
 null,"pancheng",123,"潘成",430302199507291091,"132@qq.com",now());
INSERT INTO dota_shop_user VALUES(
null,"tangshiyun",321,"唐诗韵",430302199507291092,"321@qq.com",now());
INSERT INTO dota_shop_user VALUES(
null,"yanglijie",258,"杨理杰",430302199507291093,"258@qq.com",now());
INSERT INTO dota_shop_user VALUES(
null,"liuxianfa",852,"刘贤发",430302199507291094,"852@qq.com",now());
							##########游戏手办############
INSERT INTO dota_shop_masterpieces VALUES(
NULL,"DOTA2-痛苦女王粘土人手办 ",298.00,"../img/img_shop/masterpieces/1.jpg",now());
INSERT INTO dota_shop_masterpieces VALUES(
NULL,"DOTA2-莉娜Figam手办",488.00,"../img/img_shop/masterpieces/2.jpg",now());
INSERT INTO dota_shop_masterpieces VALUES(
NULL,"DOTA2-龙骑士粘土人手办",298.00,"../img/img_shop/masterpieces/3.jpg",now());
INSERT INTO dota_shop_masterpieces VALUES(
NULL,"DOTA2-风行者Figma手办 ",488.00,"../img/img_shop/masterpieces/4.jpg",now());
INSERT INTO dota_shop_masterpieces VALUES(
NULL,"DOTA2-敌法师Figma手办 ",488.00,"../img/img_shop/masterpieces/5.jpg",now());
INSERT INTO dota_shop_masterpieces VALUES(
NULL,"DOTA2-米拉娜粘土人手办",298.00,"../img/img_shop/masterpieces/6.jpg",now());
INSERT INTO dota_shop_masterpieces VALUES(
NULL,"DOTA2-超萌扭蛋手办 ",69.00,"../img/img_shop/masterpieces/7.jpg",now());

#################################################################

							##########主题服饰############
INSERT INTO dota_shop_clothes VALUES(
NULL,"DOTA2-TI7高级卫衣",328.00,"../img/img_shop/clothes/8.jpg",now());
INSERT INTO dota_shop_clothes VALUES(
NULL,"DOTA2-TI7高级冲锋衣【欧美码】",698.00,"../img/img_shop/clothes/9.jpg",now());
INSERT INTO dota_shop_clothes VALUES(
NULL,"DOTA2-TI7主题选手服",398.00,"../img/img_shop/clothes/10.jpg",now());
INSERT INTO dota_shop_clothes VALUES(
NULL,"DOTA2-TI7主题领带",129.00,"../img/img_shop/clothes/11.jpg",now());
INSERT INTO dota_shop_clothes VALUES(
NULL,"DOTA2-炼金术师帽子",329.00,"../img/img_shop/clothes/12.jpg",now());
INSERT INTO dota_shop_clothes VALUES(
NULL,"DOTA2-TI7主题足球衫",238.00,"../img/img_shop/clothes/13.jpg",now());
INSERT INTO dota_shop_clothes VALUES(
NULL,"DOTA2-银耳钉",168.00,"../img/img_shop/clothes/14.jpg",now());
INSERT INTO dota_shop_clothes VALUES(
NULL,"DOTA2-英雄睡裤",328.00,"../img/img_shop/clothes/15.jpg",now());

#################################################################

							##########创意T恤############
INSERT INTO dota_shop_tshirts VALUES(
NULL,"DOTA2-TI7前来收割 T恤",139.00,"../img/img_shop/tshirts/16.jpg",now());
INSERT INTO dota_shop_tshirts VALUES(
NULL,"DOTA2-TI7装甲就位 T恤",139.00,"../img/img_shop/tshirts/17.jpg",now());
INSERT INTO dota_shop_tshirts VALUES(
NULL,"DOTA2-TI7幻影刺客纹身 T恤",139.00,"../img/img_shop/tshirts/18.jpg",now());
INSERT INTO dota_shop_tshirts VALUES(
NULL,"DOTA2-DAC 创意T恤",139.00,"../img/img_shop/tshirts/19.jpg",now());

#################################################################

							##########毛绒玩具############
INSERT INTO dota_shop_plush VALUES(
NULL,"DOTA2-熊战士毛绒玩偶",280.00,"../img/img_shop/plush/20.jpg",now());
INSERT INTO dota_shop_plush VALUES(
NULL,"DOTA2-TI7迷你毛绒",99.00,"../img/img_shop/plush/21.jpg",now());
INSERT INTO dota_shop_plush VALUES(
NULL,"DOTA2-TI7裂魂人毛绒玩偶",298.00,"../img/img_shop/plush/22.jpg",now());
INSERT INTO dota_shop_plush VALUES(
NULL,"DOTA2-TI4迷你毛绒",90.00,"../img/img_shop/plush/23.jpg",now());
INSERT INTO dota_shop_plush VALUES(
NULL,"DOTA2-TI5迷你毛绒",90.00,"../img/img_shop/plush/24.jpg",now());

#################################################################

							##########生活用品############
INSERT INTO dota_shop_daily VALUES(
NULL,"DOTA2-TI7主题扑克牌",49.00,"../img/img_shop/daily/25.jpg",now());
INSERT INTO dota_shop_daily VALUES(
NULL,"DOTA2-英雄至宝 金属徽章 NO.2",199.00,"../img/img_shop/daily/26.jpg",now());
INSERT INTO dota_shop_daily VALUES(
NULL,"DOTA2-英雄至宝 金属徽章 NO.1",199.00,"../img/img_shop/daily/27.jpg",now());
INSERT INTO dota_shop_daily VALUES(
NULL,"DOTA2-全英雄选择 手机壳",88.00,"../img/img_shop/daily/28.jpg",now());
INSERT INTO dota_shop_daily VALUES(
NULL,"DOTA2-TI7 主题背包",428.00,"../img/img_shop/daily/29.jpg",now());
INSERT INTO dota_shop_daily VALUES(
NULL,"DOTA2-大圣腰枕",129.00,"../img/img_shop/daily/30.jpg",now());
INSERT INTO dota_shop_daily VALUES(
NULL,"DOTA2-TI7大地之灵抱枕",168.00,"../img/img_shop/daily/31.jpg",now());
INSERT INTO dota_shop_daily VALUES(
NULL,"DOTA2-TI7剑圣抱枕",168.00,"../img/img_shop/daily/32.jpg",now());
INSERT INTO dota_shop_daily VALUES(
NULL,"DOTA2卡通胸针N0.2 三雄之军",330.00,"../img/img_shop/daily/33.jpg",now());
INSERT INTO dota_shop_daily VALUES(
NULL,"DOTA2卡通胸针N0.1 迷你英雄",330.00,"../img/img_shop/daily/34.jpg",now());
INSERT INTO dota_shop_daily VALUES(
NULL,"DOTA2-天辉迷彩 鼠标垫",99.00,"../img/img_shop/daily/35.jpg",now());
INSERT INTO dota_shop_daily VALUES(
NULL,"DOTA2-苍雄之力 鼠标垫",99.00,"../img/img_shop/daily/36.jpg",now());
INSERT INTO dota_shop_daily VALUES(
NULL,"DOTA2-潮汐猎人马克杯",198.00,"../img/img_shop/daily/37.jpg",now());
INSERT INTO dota_shop_daily VALUES(
NULL,"DOTA2-TI7 灰烬之灵抱枕",168.00,"../img/img_shop/daily/38.jpg",now());
INSERT INTO dota_shop_daily VALUES(
NULL,"DOTA2-TI7 风暴之灵抱枕",168.00,"../img/img_shop/daily/39.jpg",now());
INSERT INTO dota_shop_daily VALUES(
NULL,"DOTA2-潮汐抱枕",200.00,"../img/img_shop/daily/40.jpg",now());

#################################################################

							##########特别限量############
INSERT INTO dota_shop_special VALUES(
NULL,"DOTA2-赛睿限定版寒冰系列耳机",999.00,"../img/img_shop/special/41.jpg",now());
INSERT INTO dota_shop_special VALUES(
NULL,"DOTA2-圣诞神话珍藏",799.00,"../img/img_shop/special/42.jpg",now());
INSERT INTO dota_shop_special VALUES(
NULL,"DOTA2-圣诞稀有珍藏",299.00,"../img/img_shop/special/43.jpg",now());
#################################################################




INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-痛苦女王粘土人手办 ",298.00,"../img/img_shop/masterpieces/1.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-莉娜Figam手办",488.00,"../img/img_shop/masterpieces/2.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-龙骑士粘土人手办",298.00,"../img/img_shop/masterpieces/3.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-风行者Figma手办 ",488.00,"../img/img_shop/masterpieces/4.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-敌法师Figma手办 ",488.00,"../img/img_shop/masterpieces/5.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-米拉娜粘土人手办",298.00,"../img/img_shop/masterpieces/6.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-超萌扭蛋手办 ",69.00,"../img/img_shop/masterpieces/7.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-TI7高级卫衣",328.00,"../img/img_shop/clothes/8.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-TI7高级卫衣【欧美码】",698.00,"../img/img_shop/clothes/9.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-TI7主题选手服",398.00,"../img/img_shop/clothes/10.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-TI7主题领带",129.00,"../img/img_shop/clothes/11.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-炼金术师帽子",329.00,"../img/img_shop/clothes/12.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-TI7主题足球衫",238.00,"../img/img_shop/clothes/13.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-银耳钉",168.00,"../img/img_shop/clothes/14.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-英雄睡裤",328.00,"../img/img_shop/clothes/15.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-TI7前来收割 T恤",139.00,"../img/img_shop/tshirts/16.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-TI7装甲就位 T恤",139.00,"../img/img_shop/tshirts/17.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-TI7幻影刺客纹身 T恤",139.00,"../img/img_shop/tshirts/18.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-DAC 创意T恤",139.00,"../img/img_shop/tshirts/19.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-熊战士毛绒玩偶",280.00,"../img/img_shop/plush/20.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-TI7迷你毛绒",99.00,"../img/img_shop/plush/21.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-TI7裂魂人毛绒玩偶",298.00,"../img/img_shop/plush/22.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-TI4迷你毛绒",90.00,"../img/img_shop/plush/23.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-TI5迷你毛绒",90.00,"../img/img_shop/plush/24.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-TI7主题扑克牌",49.00,"../img/img_shop/daily/25.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-英雄至宝 金属徽章 NO.2",199.00,"../img/img_shop/daily/26.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-英雄至宝 金属徽章 NO.1",199.00,"../img/img_shop/daily/27.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-全英雄选择 手机壳",88.00,"../img/img_shop/daily/28.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-TI7 主题背包",428.00,"../img/img_shop/daily/29.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-大圣腰枕",129.00,"../img/img_shop/daily/30.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-TI7大地之灵抱枕",168.00,"../img/img_shop/daily/31.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-TI7剑圣抱枕",168.00,"../img/img_shop/daily/32.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2卡通胸针N0.2 三雄之军",330.00,"../img/img_shop/daily/33.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2卡通胸针N0.1 迷你英雄",330.00,"../img/img_shop/daily/34.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-天辉迷彩 鼠标垫",99.00,"../img/img_shop/daily/35.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-苍雄之力 鼠标垫",99.00,"../img/img_shop/daily/36.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-潮汐猎人马克杯",198.00,"../img/img_shop/daily/37.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-TI7 灰烬之灵抱枕",168.00,"../img/img_shop/daily/38.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-TI7 风暴之灵抱枕",168.00,"../img/img_shop/daily/39.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-潮汐抱枕",200.00,"../img/img_shop/daily/40.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-赛睿限定版寒冰系列耳机",999.00,"../img/img_shop/special/41.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-圣诞神话珍藏",799.00,"../img/img_shop/special/42.jpg",now());
INSERT INTO dota_shop_product VALUES(
NULL,"DOTA2-圣诞稀有珍藏",299.00,"../img/img_shop/special/43.jpg",now());

UPDATE  dota_shop_product      SET   desct = REPLACE(desct, ' ', '');
UPDATE  dota_shop_clothes      SET   desct = REPLACE(desct, ' ', '');
UPDATE  dota_shop_tshirts      SET   desct = REPLACE(desct, ' ', '');
UPDATE  dota_shop_daily        SET   desct = REPLACE(desct, ' ', '');
UPDATE  dota_shop_plush        SET   desct = REPLACE(desct, ' ', '');
UPDATE  dota_shop_special      SET   desct = REPLACE(desct, ' ', '');
UPDATE  dota_shop_pic          SET   desct = REPLACE(desct, ' ', '');
UPDATE  dota_shop_masterpieces SET   desct = REPLACE(desct, ' ', '');