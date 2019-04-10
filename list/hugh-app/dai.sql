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
  ban_msg VARCHAR(32),
)
INSERT INTO hugh_ban VALUES(null,"高三");
INSERT INTO hugh_ban VALUES(null,"高二");
INSERT INTO hugh_ban VALUES(null,"高一");
INSERT INTO hugh_ban VALUES(null,"初三");
INSERT INTO hugh_ban VALUES(null,"初二");
INSERT INTO hugh_ban VALUES(null,"初一");
INSERT INTO hugh_ban VALUES(null,"六年级");
INSERT INTO hugh_ban VALUES(null,"五年级");
INSERT INTO hugh_ban VALUES(null,"四年级");
INSERT INTO hugh_ban VALUES(null,"三年级");
INSERT INTO hugh_ban VALUES(null,"二年级");
INSERT INTO hugh_ban VALUES(null,"一年级");
INSERT INTO hugh_ban VALUES(null,"VIP1对1私人订制");
INSERT INTO hugh_ban VALUES(null,"2~6人精品小班");
INSERT INTO hugh_ban VALUES(null,"10余人特色大班");
INSERT INTO hugh_ban VALUES(null,"常规周末班");
INSERT INTO hugh_ban VALUES(null,"晚辅班");
INSERT INTO hugh_ban VALUES(null,"封闭式全托班");
CREATE TABLE hugh_lunbo(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(125)
)
INSERT INTO hugh_lunbo VALUES(null,"http://127.0.0.1:3000/img/8.jpg");
INSERT INTO hugh_lunbo VALUES(null,"http://127.0.0.1:3000/img/3 (1).jpg");
INSERT INTO hugh_lunbo VALUES(null,"http://127.0.0.1:3000/img/2 (1).jpg");
INSERT INTO hugh_lunbo VALUES(null,"http://127.0.0.1:3000/img/444.jpg");
CREATE TABLE hugh_guanzhu(
  gid INT PRIMARY KEY AUTO_INCREMENT,
  guanzhu_msg VARCHAR(156);
);
INSERT INTO hugh_guanzhu VALUES(null,"全托班是什么意思");
INSERT INTO hugh_guanzhu VALUES(null,"学费贵吗");
INSERT INTO hugh_guanzhu VALUES(null,"入学要测试吗");
INSERT INTO hugh_guanzhu VALUES(null,"戴氏管理如何");
INSERT INTO hugh_guanzhu VALUES(null,"收费怎么收");
INSERT INTO hugh_guanzhu VALUES(null,"校区地址在哪里");
INSERT INTO hugh_guanzhu VALUES(null,"一个班多少人");
INSERT INTO hugh_guanzhu VALUES(null,"可以提供住宿吗");
INSERT INTO hugh_guanzhu VALUES(null,"伙食怎么解决");
INSERT INTO hugh_guanzhu VALUES(null,"老师是哪里的");
INSERT INTO hugh_guanzhu VALUES(null,"成都戴氏教育精品中心以“艰苦磨砺、勤思创新、执着追求”作为企业文化核心，将“以人为本、实施创新教育、创建终身教育大课堂、精心打造一个国际性教育品牌，建成一个完善的戴氏全球服务网”为目标，逐步走向教育服务多元化，形成了“戴氏教育”这一著名教育品牌...");
INSERT INTO hugh_guanzhu VALUES(null,"▪ 高考一诊后怎么办？戴氏高考班助...");
INSERT INTO hugh_guanzhu VALUES(null,"▪ 戴氏寒假班，同样的时间，更高的...");
INSERT INTO hugh_guanzhu VALUES(null,"▪ 戴氏精品堂‘艺考密码’10分钟算...");
INSERT INTO hugh_guanzhu VALUES(null,"▪ 单招考试考什么？如何选专业和学...");
INSERT INTO hugh_guanzhu VALUES(null,"▪ 什么是单招，单招与高考统招有什...");
INSERT INTO hugh_guanzhu VALUES(null,"▪ 高职单招培训文化+面试+志愿填报...");
INSERT INTO hugh_guanzhu VALUES(null,"▪ 四川省2018年53所在川单独招生高...");
CREATE TABLE hugh_jstd(
  jid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(64),
  jname VARCHAR(24),
  msg VARCHAR(64),
)
INSERT INTO hugh_jstd VALUES(null,"http://127.0.0.1:3000/img/104.png","不懂老师","具备深厚的教学功底，尤其擅长古诗文阅读与写作版块的教学。爱学生...");
INSERT INTO hugh_jstd VALUES(null,"http://127.0.0.1:3000/img/102.png","不懂老师","具备深厚的教学功底，尤其擅长古诗文阅读与写作版块的教学。爱学生...");
INSERT INTO hugh_jstd VALUES(null,"http://127.0.0.1:3000/img/100.png","不懂老师","具备深厚的教学功底，尤其擅长古诗文阅读与写作版块的教学。爱学生...");
INSERT INTO hugh_jstd VALUES(null,"http://127.0.0.1:3000/img/98.png","不懂老师","具备深厚的教学功底，尤其擅长古诗文阅读与写作版块的教学。爱学生...");
INSERT INTO hugh_jstd VALUES(null,"http://127.0.0.1:3000/img/100.png","不懂老师","具备深厚的教学功底，尤其擅长古诗文阅读与写作版块的教学。爱学生...");
INSERT INTO hugh_jstd VALUES(null,"http://127.0.0.1:3000/img/98.png","不懂老师","具备深厚的教学功底，尤其擅长古诗文阅读与写作版块的教学。爱学生...");
INSERT INTO hugh_jstd VALUES(null,"http://127.0.0.1:3000/img/102.png","不懂老师","具备深厚的教学功底，尤其擅长古诗文阅读与写作版块的教学。爱学生...");
INSERT INTO hugh_jstd VALUES(null,"http://127.0.0.1:3000/img/104.png","不懂老师","具备深厚的教学功底，尤其擅长古诗文阅读与写作版块的教学。爱学生...");
INSERT INTO hugh_jstd VALUES(null,"http://127.0.0.1:3000/img/102.png","不懂老师","具备深厚的教学功底，尤其擅长古诗文阅读与写作版块的教学。爱学生...");
INSERT INTO hugh_jstd VALUES(null,"http://127.0.0.1:3000/img/98.png","不懂老师","具备深厚的教学功底，尤其擅长古诗文阅读与写作版块的教学。爱学生...");
INSERT INTO hugh_jstd VALUES(null,"http://127.0.0.1:3000/img/100.png","不懂老师","具备深厚的教学功底，尤其擅长古诗文阅读与写作版块的教学。爱学生...");
INSERT INTO hugh_jstd VALUES(null,"http://127.0.0.1:3000/img/104.png","不懂老师","具备深厚的教学功底，尤其擅长古诗文阅读与写作版块的教学。爱学生...");
CREATE TABLE hugh_xzhy(
  xid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(64)
);
INSERT INTO hugh_xzhy VALUES(null,"http://127.0.0.1:3000/img/44.jpg");
INSERT INTO hugh_xzhy VALUES(null,"http://127.0.0.1:3000/img/46.jpg");
INSERT INTO hugh_xzhy VALUES(null,"http://127.0.0.1:3000/img/48.jpg");
INSERT INTO hugh_xzhy VALUES(null,"http://127.0.0.1:3000/img/50.jpg");
INSERT INTO hugh_xzhy VALUES(null,"http://127.0.0.1:3000/img/112.jpg");
INSERT INTO hugh_xzhy VALUES(null,"http://127.0.0.1:3000/img/114.jpg");
INSERT INTO hugh_xzhy VALUES(null,"http://127.0.0.1:3000/img/116.jpg");
INSERT INTO hugh_xzhy VALUES(null,"http://127.0.0.1:3000/img/118.jpg");
INSERT INTO hugh_xzhy VALUES(null,"http://127.0.0.1:3000/img/132.jpg");
INSERT INTO hugh_xzhy VALUES(null,"http://127.0.0.1:3000/img/134.jpg");
INSERT INTO hugh_xzhy VALUES(null,"http://127.0.0.1:3000/img/136.jpg");
INSERT INTO hugh_xzhy VALUES(null,"http://127.0.0.1:3000/img/138.jpg");
CREATE TABLE hugh_teache(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(128),
  tname VARCHAR(24),
  tys VARCHAR(64),
  msg VARCHAR(128),
  tln VARCHAR(64)
)
INSERT INTO hugh_teache VALUES(null,"http://127.0.0.1:3000/yuwen/222.png","不懂老师","优势教育·精品中心·优秀老师","具备深厚的文学功底，尤其擅长古诗文阅读与写作版块的教学。爱岗敬业，热爱学生，关心学生成长。工作耐心细致，刻苦钻研，熟悉中、高考考点、难点、易错点。善于创设情境，激发学生的学习兴趣。","讲求“知识与技能并重”，注重“过手训练”，提高学习成绩，树立信心！");
INSERT INTO hugh_teache VALUES(null,"http://127.0.0.1:3000/yuwen/402.png","不懂老师","优势教育·精品中心·优秀老师","具备深厚的文学功底，尤其擅长古诗文阅读与写作版块的教学。爱岗敬业，热爱学生，关心学生成长。工作耐心细致，刻苦钻研，熟悉中、高考考点、难点、易错点。善于创设情境，激发学生的学习兴趣。","讲求“知识与技能并重”，注重“过手训练”，提高学习成绩，树立信心！");
INSERT INTO hugh_teache VALUES(null,"http://127.0.0.1:3000/yuwen/274.png","不懂老师","优势教育·精品中心·优秀老师","具备深厚的文学功底，尤其擅长古诗文阅读与写作版块的教学。爱岗敬业，热爱学生，关心学生成长。工作耐心细致，刻苦钻研，熟悉中、高考考点、难点、易错点。善于创设情境，激发学生的学习兴趣。","讲求“知识与技能并重”，注重“过手训练”，提高学习成绩，树立信心！");
INSERT INTO hugh_teache VALUES(null,"http://127.0.0.1:3000/yuwen/278.png","不懂老师","优势教育·精品中心·优秀老师","具备深厚的文学功底，尤其擅长古诗文阅读与写作版块的教学。爱岗敬业，热爱学生，关心学生成长。工作耐心细致，刻苦钻研，熟悉中、高考考点、难点、易错点。善于创设情境，激发学生的学习兴趣。","讲求“知识与技能并重”，注重“过手训练”，提高学习成绩，树立信心！");
INSERT INTO hugh_teache VALUES(null,"http://127.0.0.1:3000/yuwen/282.png","不懂老师","优势教育·精品中心·优秀老师","具备深厚的文学功底，尤其擅长古诗文阅读与写作版块的教学。爱岗敬业，热爱学生，关心学生成长。工作耐心细致，刻苦钻研，熟悉中、高考考点、难点、易错点。善于创设情境，激发学生的学习兴趣。","讲求“知识与技能并重”，注重“过手训练”，提高学习成绩，树立信心！");
INSERT INTO hugh_teache VALUES(null,"http://127.0.0.1:3000/yuwen/396.png","不懂老师","优势教育·精品中心·优秀老师","具备深厚的文学功底，尤其擅长古诗文阅读与写作版块的教学。爱岗敬业，热爱学生，关心学生成长。工作耐心细致，刻苦钻研，熟悉中、高考考点、难点、易错点。善于创设情境，激发学生的学习兴趣。","讲求“知识与技能并重”，注重“过手训练”，提高学习成绩，树立信心！");
INSERT INTO hugh_teache VALUES(null,"http://127.0.0.1:3000/yuwen/398.png","不懂老师","优势教育·精品中心·优秀老师","具备深厚的文学功底，尤其擅长古诗文阅读与写作版块的教学。爱岗敬业，热爱学生，关心学生成长。工作耐心细致，刻苦钻研，熟悉中、高考考点、难点、易错点。善于创设情境，激发学生的学习兴趣。","讲求“知识与技能并重”，注重“过手训练”，提高学习成绩，树立信心！");
INSERT INTO hugh_teache VALUES(null,"http://127.0.0.1:3000/yuwen/400.png","不懂老师","优势教育·精品中心·优秀老师","具备深厚的文学功底，尤其擅长古诗文阅读与写作版块的教学。爱岗敬业，热爱学生，关心学生成长。工作耐心细致，刻苦钻研，熟悉中、高考考点、难点、易错点。善于创设情境，激发学生的学习兴趣。","讲求“知识与技能并重”，注重“过手训练”，提高学习成绩，树立信心！");
INSERT INTO hugh_teache VALUES(null,"http://127.0.0.1:3000/yuwen/412.png","不懂老师","优势教育·精品中心·优秀老师","具备深厚的文学功底，尤其擅长古诗文阅读与写作版块的教学。爱岗敬业，热爱学生，关心学生成长。工作耐心细致，刻苦钻研，熟悉中、高考考点、难点、易错点。善于创设情境，激发学生的学习兴趣。","讲求“知识与技能并重”，注重“过手训练”，提高学习成绩，树立信心！");









