SET NAMES UTF8;
DROP DATABASE IF EXISTS hugh;
CREATE DATABASE hugh CHARSET=UTF8;
USE hugh;

#创建登录注册表格
CREATE TABLE hugh_login(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(24),
  upwd VARCHAR(32)
);
#插入数据
INSERT INTO hugh_login VALUES(null,'tom',md5(123456));
INSERT INTO hugh_login VALUES(null,'roy',md5(123456));
INSERT INTO hugh_login VALUES(null,'joe',md5(123456));
INSERT INTO hugh_login VALUES(null,'keven',md5(123456));

#头信息
CREATE TABLE hugh_heade(
  hid INT PRIMARY KEY AUTO_INCREMENT,
  heade-msg VARCHAR(24),
  heade-num VARCHAR(32),
)
INSERT INTO hugh_heade VALUES(null,'精品课程','');
INSERT INTO hugh_heade VALUES(null,'学习中心','');
INSERT INTO hugh_heade VALUES(null,'咨询','');
INSERT INTO hugh_heade VALUES(null,'关注微信','');
INSERT INTO hugh_heade VALUES(null,'24小时咨询热线:','028-66000189');
INSERT INTO hugh_heade VALUES(null,'统一投诉电话(仅处理投诉问题):','400-028-1009');
INSERT INTO hugh_heade VALUES(null,'距高考还有','天');
CREATE TABLE hugh_tk(
  hid INT PRIMARY KEY AUTO_INCREMENT,
  heade_msg VARCHAR(24)
);
INSERT INTO hugh_tk VALUES(null,'小学课程');
INSERT INTO hugh_tk VALUES(null,'初中课程');
INSERT INTO hugh_tk VALUES(null,'高中课程');
INSERT INTO hugh_tk VALUES(null,'高考集训');
INSERT INTO hugh_tk VALUES(null,'中考集训');
INSERT INTO hugh_tk VALUES(null,'艺考文化集训');
INSERT INTO hugh_tk VALUES(null,'高考复读');
INSERT INTO hugh_tk VALUES(null,'初升高衔接');
CREATE TABLE hugh_sznl(
  hid INT PRIMARY KEY AUTO_INCREMENT,
  heade_msg VARCHAR(24),
  img_url VARCHAR(125)
);
CREATE TABLE hugh_class(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  heade_msg VARCHAR(24),
  img_url VARCHAR(125)
);
INSERT INTO hugh_class VALUES(null,"小学课程","http://127.0.0.1:3000/img/460.jpg");
INSERT INTO hugh_class VALUES(null,"初中课程","http://127.0.0.1:3000/img/454.jpg");
INSERT INTO hugh_class VALUES(null,"高中课程","http://127.0.0.1:3000/img/452.jpg");
INSERT INTO hugh_class VALUES(null,"高考集训","http://127.0.0.1:3000/img/450.jpg");
INSERT INTO hugh_class VALUES(null,"中考集训","http://127.0.0.1:3000/img/456.jpg");
INSERT INTO hugh_class VALUES(null,"艺考文化集训","http://127.0.0.1:3000/img/458.jpg");


INSERT INTO hugh_sznl VALUES(null,"VIP1对1私人定制","http://127.0.0.1:3000/img/468.jpg");
INSERT INTO hugh_sznl VALUES(null,"2~6人精品小班","http://127.0.0.1:3000/img/466.jpg");
INSERT INTO hugh_sznl VALUES(null,"10余人特色大班","http://127.0.0.1:3000/img/464.jpg");
INSERT INTO hugh_sznl VALUES(null,"常规周末班","http://127.0.0.1:3000/img/462.jpg");
INSERT INTO hugh_sznl VALUES(null,"晚辅班","http://127.0.0.1:3000/img/474.jpg");
INSERT INTO hugh_sznl VALUES(null,"封闭式全托班","http://127.0.0.1:3000/img/470.jpg");
CREATE TABLE hugh_ban(
  bid INT PRIMARY KEY AUTO_INCREMENT,
  ban-msg VARCHAR(32),
)
INSERT INTO hugh_ban VALUES(null,"请选择补习年级");
INSERT INTO hugh_ban VALUES(null,"高三");
INSERT INTO hugh_ban VALUES(null,"高二");
INSERT INTO hugh_ban VALUES(null,"高一");
CREATE TABLE hugh_lunbo(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(125)
)
INSERT INTO hugh_lunbo VALUES(null,"http://127.0.0.1:3000/img/8.jpg");
INSERT INTO hugh_lunbo VALUES(null,"http://127.0.0.1:3000/img/3 (1).jpg");
INSERT INTO hugh_lunbo VALUES(null,"http://127.0.0.1:3000/img/2 (1).jpg");
INSERT INTO hugh_lunbo VALUES(null,"http://127.0.0.1:3000/img/444.jpg");
















