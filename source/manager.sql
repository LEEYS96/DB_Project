DROP TABLE movie;
CREATE TABLE  movie(
	mname CHAR(30) NOT NULL,
	dir CHAR(15),
	period NUMBER,
	m_date NUMBER,
	act CHAR(15),
	grade NUMBER ,
	m_type CHAR(10),
	gpa NUMBER,
	genre CHAR(10),
	PRIMARY KEY(mname)
);
INSERT INTO movie VALUES('뷰티인사이드','백종열',14,170601,'한효주',12,'2D',2,'로맨스');
INSERT INTO movie VALUES('변호인','양우석',28,170601,'송강호',15,'2D',5,'드라마');
INSERT INTO movie VALUES('베테랑','류승완',28,170601,'유아인',15,'2D',4,'액션');
INSERT INTO movie VALUES('신비한동물사전','데이빗',21,170601,'에디',12,'3D',3,'판타지');
INSERT INTO movie VALUES('고스트버스터즈','폴페이그',21,170602,'유령',15,'3D',4,'SF');
INSERT INTO movie VALUES('아이언맨','셰인블랙',28,170602,'로봇',15,'3D',5,'SF');
INSERT INTO movie VALUES('라라랜드','다미엔',21,170602,'엠마스톤',15,'2D',4,'로맨스');
INSERT INTO movie VALUES('모아나','존머스커',21,170602,'인디언',0,'2D',3,'드라마');
INSERT INTO movie VALUES('겨울왕국','크리스벅',28,170603,'올라프',0,'3D',4,'SF');
INSERT INTO movie VALUES('메이즈러너','웨스볼',28,170603,'미로',15,'3D',2,'SF');
INSERT INTO movie VALUES('미녀와야수','빌콘돈',21,170603,'미녀',15,'3D',4,'판타지');
INSERT INTO movie VALUES('인턴','낸시',21,170603,'인턴',15,'2D',4,'드라마');




DROP TABLE theater ;
CREATE TABLE  theater(
	site_num NUMBER NOT NULL,
	site CHAR(20),
	tname CHAR(30),
	PRIMARY KEY(site_num)
);
INSERT INTO theater VALUES(1,'서울','변호인');
INSERT INTO theater VALUES(2,'서울','베테랑');
INSERT INTO theater VALUES(3,'인천','변호인');
INSERT INTO theater VALUES(4,'성남','변호인');
INSERT INTO theater VALUES(5,'인천','베테랑');
INSERT INTO theater VALUES(6,'성남','신비한동물사전');
INSERT INTO theater VALUES(7,'인천','뷰티인사이드');
INSERT INTO theater VALUES(8,'서울','모아나');
INSERT INTO theater VALUES(9,'인천','겨울왕국');
INSERT INTO theater VALUES(10,'성남','인턴');
INSERT INTO theater VALUES(11,'성남','메이즈러너');
INSERT INTO theater VALUES(12,'서울','인턴');
DROP TABLE cinema;

CREATE TABLE cinema(
	num NUMBER NOT NULL,
	csite CHAR(20),
	cnum NUMBER,
	ctype VARCHAR(10),
	total_sit NUMBER,
	sweet NUMBER,
	normal NUMBER,
	PRIMARY KEY(num)
);

INSERT INTO cinema VALUES(1,'서울',1,'2D',45,10,35);
INSERT INTO cinema VALUES(2,'서울',2,'2D',45,10,35);
INSERT INTO cinema VALUES(3,'인천',1,'2D',45,10,35);
INSERT INTO cinema VALUES(4,'성남',1,'2D',45,10,35);
INSERT INTO cinema VALUES(5,'성남',2,'3D',45,10,35);
INSERT INTO cinema VALUES(6,'서울',3,'2D',45,10,35);
INSERT INTO cinema VALUES(7,'인천',2,'3D',45,10,35);
INSERT INTO cinema VALUES(8,'인천',3,'2D',45,10,35);
INSERT INTO cinema VALUES(9,'서울',4,'2D',45,10,35);
INSERT INTO cinema VALUES(10,'성남',3,'2D',45,10,35);
INSERT INTO cinema VALUES(11,'성남',4,'3D',45,10,35);
INSERT INTO cinema VALUES(12,'인천',4,'3D',45,10,35);
DROP TABLE condition;

CREATE TABLE condition(
	conname VARCHAR(30),
	consale NUMBER,
	conleft NUMBER,
	conratio REAL,
	PRIMARY KEY(conname)
);
INSERT INTO condition VALUES('변호인',3,42,6.6);
INSERT INTO condition VALUES('뷰티인사이드',1,44,2.2);
INSERT INTO condition VALUES('베테랑',2,43,4.4);
INSERT INTO condition VALUES('신비한동물사전',1,44,2.2);
INSERT INTO condition VALUES('모아나',1,44,2.2);
INSERT INTO condition VALUES('인턴',2,43,4.4);
INSERT INTO condition VALUES('겨울왕국',1,44,2.2);
INSERT INTO condition VALUES('메이즈러너',1,44,2.2);
INSERT INTO condition VALUES('아이언맨',0,45,0.0);
INSERT INTO condition VALUES('고스트버스터즈',0,45,0.0);
INSERT INTO condition VALUES('라라랜드',0,45,0.0);
INSERT INTO condition VALUES('미녀와야수',0,45,0.0);
DROP TABLE totaluserinfo;

CREATE TABLE totaluserinfo(
	superID VARCHAR(10) NOT NULL,
  	name VARCHAR(15),
  	movie VARCHAR(30),
   	branch VARCHAR(20),
	PRIMARY KEY(superID)
);
INSERT INTO totaluserinfo VALUES('dujun','윤두준','인턴','서울');
INSERT INTO totaluserinfo VALUES('joy','박수영','변호인','서울');
INSERT INTO totaluserinfo VALUES('hana','신보라','베테랑','서울');
INSERT INTO totaluserinfo VALUES('jae','박제형','모아나','서울');
INSERT INTO totaluserinfo VALUES('mimi','정미미','변호인','인천');
INSERT INTO totaluserinfo VALUES('gk','이기광','베테랑','인천');
INSERT INTO totaluserinfo VALUES('wendy','손승완','뷰티인사이드','인천');
INSERT INTO totaluserinfo VALUES('yoseob','양요섭','겨울왕국','인천');
INSERT INTO totaluserinfo VALUES('taeyeon','김태연','변호인','성남');
INSERT INTO totaluserinfo VALUES('cw','지창욱','인턴','성남');
INSERT INTO totaluserinfo VALUES('eunwoo','차은우','신비한동물사전','성남');
INSERT INTO totaluserinfo VALUES('stone','임나영','메이즈러너','성남');
DROP TABLE usermanage;

CREATE TABLE usermanage(
	um_id VARCHAR(10) NOT NULL,
	um_name VARCHAR(30),
	um_count NUMBER,
	um_grade VARCHAR(10),
	PRIMARY KEY(um_id)
);
INSERT INTO usermanage VALUES('dujun','윤두준',14,'vip');
INSERT INTO usermanage VALUES('joy','박수영',1,'silver');
INSERT INTO usermanage VALUES('hana','신보라',2,'silver');
INSERT INTO usermanage VALUES('jae','박제형',4,'silver');
INSERT INTO usermanage VALUES('mimi','정미미',1,'silver');
INSERT INTO usermanage VALUES('gk','이기광',1,'silver');
INSERT INTO usermanage VALUES('wendy','손승완',11,'vip');
INSERT INTO usermanage VALUES('yoseob','양요섭',1,'silver');
INSERT INTO usermanage VALUES('taeyeon','김태연',1,'silver');
INSERT INTO usermanage VALUES('cw','지창욱',1,'silver');
INSERT INTO usermanage VALUES('eunwoo','차은우',1,'silver');
INSERT INTO usermanage VALUES('stone','임나영',9,'gold');
DROP TABLE record;

CREATE TABLE record(
	last CHAR(30) NOT NULL,
	redir CHAR(15),
	reperiod NUMBER,
	redate NUMBER,
	react CHAR(15),
	regrade NUMBER ,
	regpa NUMBER,
	reenddate NUMBER,
	regenre CHAR(10),
	PRIMARY KEY(last)
);

INSERT INTO record VALUES('아가씨','박찬욱',14,170301,'김태리',12,4,170315,'드라마');
INSERT INTO record VALUES('500일의썸머','마크웹',14,170201,'한효주',12,2,170215,'로맨스');
INSERT INTO record VALUES('조작된도시','박광현',21,170403,'지창욱',15,3,170424,'액션');
INSERT INTO record VALUES('겟아웃','조던펠레',28,170401,'미국인',15,4,170429,'공포');
INSERT INTO record VALUES('보스베이비','톰',21,170101,'아기',0,3,170122,'코미디');
INSERT INTO record VALUES('트랜스포머','마이클',21,170301,'메간폭스',12,2,170322,'액션');
INSERT INTO record VALUES('눈길','이나정',28,170401,'김새론',15,5,170429,'드라마');
INSERT INTO record VALUES('귀향','조정래',28,170301,'강하나',15,5,170329,'드라마');
INSERT INTO record VALUES('부산행','연상호',14,161001,'공유',15,3,161015,'스릴러');
INSERT INTO record VALUES('아빠는딸','김형협',21,170202,'아빠딸',12,2,170223,'코미디');
INSERT INTO record VALUES('가오갤2','제임스건',14,170315,'외계인',12,3,170329,'SF');
INSERT INTO record VALUES('로건','맨골드',28,170101,'울버린',19,5,170129,'SF');


