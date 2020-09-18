DROP TABLE membership;
CREATE TABLE membership(
ID VARCHAR(10) NOT NULL,
name VARCHAR(15),
PW VARCHAR(10),
birth CHAR(10),
phone CHAR(12),
sex CHAR(4),
PRIMARY KEY(ID)
);
INSERT INTO membership VALUES('joy','박수영','jo2','960903','01009035555','F');
INSERT INTO membership VALUES('hana','신보라','111','930430','01004309999','F');
INSERT INTO membership VALUES('jae','박제형','day6','920915','01009156666','M');
INSERT INTO membership VALUES('dujun','윤두준','light','890704','01007045555','M');
INSERT INTO membership VALUES('mimi','정미미','777','930101','01001017777','F');
INSERT INTO membership VALUES('gk','이기광','kk','900330','01003305555','M');
INSERT INTO membership VALUES('wendy','손승완','ssw','940221','01002213333','F');
INSERT INTO membership VALUES('yoseob','양요섭','yys','900105','01001055555','M');
INSERT INTO membership VALUES('taeyeon','김태연','kty','890329','01003298888','F');
INSERT INTO membership VALUES('cw','지창욱','king','870705','01007051212','M');
INSERT INTO membership VALUES('eunwoo','차은우','astro','970330','01007306666','M');
INSERT INTO membership VALUES('stone','임나영','pristin','951218','01012181010','F');
drop table timetable;
CREATE TABLE timetable(
timenumber NUMBER,
movie_title CHAR(30) NOT NULL,
t_branch CHAR(20),
moviedate NUMBER,
movietime NUMBER,
timesale char(10),
PRIMARY KEY(timenumber)
);
INSERT INTO timetable VALUES(0,'변호인','서울',170601,09,'조조');
INSERT INTO timetable VALUES(1,'베테랑','서울',170601,12,'일반');
INSERT INTO timetable VALUES(2,'모아나','서울',170601,13,'일반');
INSERT INTO timetable VALUES(3,'인턴','서울',170601,22,'심야');
INSERT INTO timetable VALUES(4,'변호인','인천',170601,10,'조조');
INSERT INTO timetable VALUES(5,'베테랑','인천',170601,16,'일반');
INSERT INTO timetable VALUES(6,'뷰티인사이드','인천',170601,17,'일반');
INSERT INTO timetable VALUES(7,'겨울왕국','인천',170601,18,'일반');
INSERT INTO timetable VALUES(8,'변호인','성남',170601,11,'일반');
INSERT INTO timetable VALUES(9,'인턴','성남',170601,14,'일반');
INSERT INTO timetable VALUES(10,'신비한동물사전','성남',170601,20,'일반');
INSERT INTO timetable VALUES(11,'메이즈러너','성남',170601,23,'심야');
drop table reservationDetail;
CREATE TABLE reservationDetail(
rnum NUMBER ,
r_ID VARCHAR(10) NOT NULL,
movietitle CHAR(30),
branch CHAR(20),
movie_date NUMBER,
movie_time NUMBER,
seat_  NUMBER,
PRIMARY KEY(rnum)
);
INSERT INTO reservationDetail VALUES(1,'joy','변호인','서울',170601,09,5);
INSERT INTO reservationDetail VALUES(2,'hana','베테랑','서울',170601,12,9);
INSERT INTO reservationDetail VALUES(3,'jae','모아나','서울',170601,13,13);
INSERT INTO reservationDetail VALUES(4,'dujun','인턴','서울',170601,14,22);
INSERT INTO reservationDetail VALUES(5,'mimi','변호인','인천',170601,10,22);
INSERT INTO reservationDetail VALUES(6,'gk','베테랑','인천',170601,16,23);
INSERT INTO reservationDetail VALUES(7,'wendy','뷰티인사이드','인천',170601,17,24);
INSERT INTO reservationDetail VALUES(8,'yoseob','겨울왕국','인천',170601,18,27);
INSERT INTO reservationDetail VALUES(9,'taeyeon','변호인','성남',170601,11,29);
INSERT INTO reservationDetail VALUES(10,'cw','인턴','성남',170601,14,31);
INSERT INTO reservationDetail VALUES(11,'eunwoo','신비한동물사전','성남',170601,20,33);
INSERT INTO reservationDetail VALUES(12,'stone','메이즈러너','성남',170601,23,37);
drop table reservation;
CREATE TABLE reservation(
RR_ID VARCHAR(10) NOT NULL,
dateofpurchase NUMBER,
numberofTheater NUMBER,
ticket_price NUMBER,
PRIMARY KEY(RR_ID)
);
INSERT INTO reservation VALUES('joy',170530,1,9000);
INSERT INTO reservation VALUES('hana',170530,2,12000);
INSERT INTO reservation VALUES('jae',170531,3,9000);
INSERT INTO reservation VALUES('dujun',170531,4,9000);
INSERT INTO reservation VALUES('mimi',170531,1,6000);
INSERT INTO reservation VALUES('gk',170531,1,9000);
INSERT INTO reservation VALUES('wendy',170601,3,9000);
INSERT INTO reservation VALUES('yoseob',170601,4,9000);
INSERT INTO reservation VALUES('taeyeon',170601,1,9000);
INSERT INTO reservation VALUES('cw',170601,3,9000);
INSERT INTO reservation VALUES('eunwoo',170601,2,9000);
INSERT INTO reservation VALUES('stone',170601,4,7000);
drop table price;
CREATE TABLE price(
P_ID VARCHAR(10) NOT NULL,
P_price NUMBER,
PRIMARY KEY(P_ID)
);
INSERT INTO price VALUES('joy',9000);
INSERT INTO price VALUES('hana',12000);
INSERT INTO price VALUES('jae',9000);
INSERT INTO price VALUES('dujun',9000);
INSERT INTO price VALUES('mimi',6000);
INSERT INTO price VALUES('gk',9000);
INSERT INTO price VALUES('wendy',9000);
INSERT INTO price VALUES('yoseob',9000);
INSERT INTO price VALUES('taeyeon',9000);
INSERT INTO price VALUES('cw',9000);
INSERT INTO price VALUES('eunwoo',9000);
INSERT INTO price VALUES('stone',7000);
drop table preference;
CREATE TABLE preference(
P_ID VARCHAR(10) NOT NULL,
P_genre CHAR(10),
genreCount NUMBER,
PRIMARY KEY(P_ID)
);
INSERT INTO preference VALUES('joy','판타지',2);
INSERT INTO preference VALUES('hana','로맨스',1);
INSERT INTO preference VALUES('jae','SF',6);
INSERT INTO preference VALUES('dujun','액션',2);
INSERT INTO preference VALUES('mimi','코미디',3);
INSERT INTO preference VALUES('gk','공포',1);
INSERT INTO preference VALUES('wendy','드라마',2);
INSERT INTO preference VALUES('yoseob','SF',1);
INSERT INTO preference VALUES('taeyeon','공포',1);
INSERT INTO preference VALUES('cw','액션',1);
INSERT INTO preference VALUES('eunwoo','로맨스',4);
INSERT INTO preference VALUES('stone','드라마',1);
drop table favoriteTheater;
CREATE TABLE favoriteTheater(
F_ID VARCHAR(10) NOT NULL,
F_branch CHAR(20),
branchCount NUMBER,
PRIMARY KEY(F_ID)
);
INSERT INTO favoriteTheater VALUES('joy','성남',2);
INSERT INTO favoriteTheater VALUES('hana','인천',1);
INSERT INTO favoriteTheater VALUES('jae','서울',5);
INSERT INTO favoriteTheater VALUES('dujun','성남',2);
INSERT INTO favoriteTheater VALUES('mimi','서울',3);
INSERT INTO favoriteTheater VALUES('gk','인천',1);
INSERT INTO favoriteTheater VALUES('wendy','서울',2);
INSERT INTO favoriteTheater VALUES('yoseob','인천',1);
INSERT INTO favoriteTheater VALUES('taeyeon','성남',1);
INSERT INTO favoriteTheater VALUES('cw','인천',1);
INSERT INTO favoriteTheater VALUES('eunwoo','성남',3);
INSERT INTO favoriteTheater VALUES('stone','성남',1);





