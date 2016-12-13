--------------------------------------------------------
--  ÆÄÀÏÀÌ »ý¼ºµÊ - Åä¿äÀÏ-12¿ù-10-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table SHOW_AREA
--------------------------------------------------------
DROP TABLE SHOW_MEMBER;
DROP TABLE SHOW_GROUP;
DROP TABLE SHOW_MENU;
DROP TABLE SHOW_SIDEMENU;
DROP TABLE SHOW_ORDER;
DROP TABLE SHOW_MENU_CHECK;
DROP TABLE SHOW_QNA;
DROP TABLE SHOW_NOTICE;
DROP TABLE SHOW_REVIEW;
DROP TABLE SHOW_AREA;
DROP TABLE SHOW_FAQ;
DROP TABLE SHOW_WITHDRAW;
drop sequence show_member_seq;
drop sequence show_group_seq;
drop sequence show_menu_seq;
drop sequence show_side_seq;
drop sequence show_order_seq;
drop sequence show_qna_seq;
drop sequence show_notice_seq;
drop sequence show_review_seq;
drop sequence show_area_seq;
drop sequence show_faq_seq;
drop sequence show_withdraw_seq;
create sequence show_member_seq   start with 1   increment by 1   nocycle   nocache;
create sequence show_group_seq   start with 1   increment by 1   nocycle   nocache;
create sequence show_menu_seq   start with 1   increment by 1   nocycle   nocache;
create sequence show_side_seq   start with 1   increment by 1   nocycle   nocache;
create sequence show_review_seq   start with 1   increment by 1   nocycle   nocache;
create sequence show_notice_seq   start with 1   increment by 1   nocycle   nocache;
create sequence show_order_seq   start with 1   increment by 1   nocycle   nocache;
create sequence show_faq_seq   start with 1   increment by 1   nocycle   nocache;
create sequence show_qna_seq   start with 1   increment by 1   nocycle   nocache;
create sequence show_area_seq   start with 1   increment by 1   nocycle   nocache;
create sequence show_withdraw_seq   start with 1   increment by 1   nocycle   nocache;
  CREATE TABLE "SHOW_AREA" 
   (	"AREA_NO" NUMBER, 
	"AREA_UNIV" VARCHAR2(50), 
	"AREA" VARCHAR2(50)
   );
--------------------------------------------------------
--  DDL for Table SHOW_FAQ
--------------------------------------------------------

  CREATE TABLE "SHOW_FAQ" 
   (	"FAQ_NO" NUMBER, 
	"FAQ_CATEGORY" VARCHAR2(30), 
	"FAQ_TITLE" VARCHAR2(50), 
	"FAQ_TEXT" VARCHAR2(4000)
   );
--------------------------------------------------------
--  DDL for Table SHOW_GROUP
--------------------------------------------------------

  CREATE TABLE "SHOW_GROUP" 
   (	"GROUP_NO" NUMBER, 
	"MEMBER_NO" NUMBER, 
	"GROUP_NAME" VARCHAR2(50), 
	"GROUP_ADDRESS" VARCHAR2(30), 
	"GROUP_CATEGORY" VARCHAR2(30), 
	"GROUP_PHONE" VARCHAR2(20), 
	"GROUP_CH" VARCHAR2(10) DEFAULT 'F', 
	"GROUP_START" TIMESTAMP (6), 
	"GROUP_END" TIMESTAMP (6), 
	"GROUP_FILES" VARCHAR2(100), 
	"GROUP_DELETE_CH" VARCHAR2(20) DEFAULT 'F', 
	"GROUP_REGDATE" DATE DEFAULT SYSDATE
   );
--------------------------------------------------------
--  DDL for Table SHOW_MEMBER
--------------------------------------------------------

  CREATE TABLE "SHOW_MEMBER" 
   (	"MEMBER_NO" NUMBER, 
	"MEMBER_EMAIL" VARCHAR2(100), 
	"MEMBER_NAME" VARCHAR2(15), 
	"MEMBER_NICKNAME" VARCHAR2(30), 
	"MEMBER_PASS" VARCHAR2(30), 
	"MEMBER_PHONE" VARCHAR2(20), 
	"MEMBER_BIRTH" DATE, 
	"MEMBER_ALLCHECK" VARCHAR2(100), 
	"MEMBER_SMSCK" VARCHAR2(100), 
	"MEMBER_EMAILCK" VARCHAR2(100), 
	"MEMBER_POSITION" VARCHAR2(100), 
	"MEMBER_WITHDRAW" VARCHAR2(20) DEFAULT 'F', 
	"MEMBER_STOP" VARCHAR2(20) DEFAULT 'F', 
	"MEMBER_REFUND_COU" NUMBER DEFAULT 0, 
	"MEMBER_REFUND_LAST" DATE, 
	"MEMBER_STOP_REGDATE" DATE
   );
--------------------------------------------------------
--  DDL for Table SHOW_MENU
--------------------------------------------------------

  CREATE TABLE "SHOW_MENU" 
   (	"MENU_NO" NUMBER, 
	"MEMBER_NO" NUMBER, 
	"GROUP_NO" NUMBER, 
	"MENU_NAME" VARCHAR2(50), 
	"MENU_PRICE" NUMBER, 
	"MENU_CATEGORY" VARCHAR2(50)
   );
--------------------------------------------------------
--  DDL for Table SHOW_MENU_CHECK
--------------------------------------------------------

  CREATE TABLE "SHOW_MENU_CHECK" 
   (	"MEMBER_NO" NUMBER, 
	"GROUP_NO" NUMBER, 
	"MENU_NO" NUMBER, 
	"ORDER_NO" NUMBER, 
	"MENU_NAME" VARCHAR2(100), 
	"MENU_COUNT" NUMBER, 
	"MENU_PRICE" NUMBER
   );
--------------------------------------------------------
--  DDL for Table SHOW_NOTICE
--------------------------------------------------------

  CREATE TABLE "SHOW_NOTICE" 
   (	"NOTICE_NO" NUMBER, 
	"NOTICE_TITLE" VARCHAR2(250), 
	"NOTICE_TEXT" VARCHAR2(4000), 
	"NOTICE_REGDATE" TIMESTAMP (6) DEFAULT sysdate, 
	"NOTICE_CH" VARCHAR2(10)
   );
--------------------------------------------------------
--  DDL for Table SHOW_ORDER
--------------------------------------------------------

  CREATE TABLE "SHOW_ORDER" 
   (	"ORDER_NO" NUMBER, 
	"MEMBER_NO" NUMBER, 
	"GROUP_NO" NUMBER, 
	"ORDER_NAME" VARCHAR2(50), 
	"ORDER_PHONE" VARCHAR2(30), 
	"ORDER_TIME" TIMESTAMP (6) DEFAULT SYSDATE, 
	"RESERVATION_TIME" TIMESTAMP (6), 
	"ORDER_PRICE" NUMBER, 
	"ORDER_COUNT" NUMBER, 
	"ORDER_ASK" VARCHAR2(4000), 
	"ORDER_ASK2" VARCHAR2(4000), 
	"ORDER_CH" VARCHAR2(10), 
	"OWNER_CH" VARCHAR2(10) DEFAULT '½ÅÃ»Áß', 
	"ORDER_REFUND" VARCHAR2(10) DEFAULT 'F'
   );
--------------------------------------------------------
--  DDL for Table SHOW_QNA
--------------------------------------------------------

  CREATE TABLE "SHOW_QNA" 
   (	"QNA_NO" NUMBER, 
	"QNA_NAME" VARCHAR2(50), 
	"QNA_EMAIL" VARCHAR2(50), 
	"QNA_CH" VARCHAR2(50) DEFAULT 'Ã³¸®Áß', 
	"QNA_TITLE" VARCHAR2(50), 
	"QNA_TEXT" VARCHAR2(4000), 
	"QNA_CATEGORY" VARCHAR2(30)
   );
--------------------------------------------------------
--  DDL for Table SHOW_REVIEW
--------------------------------------------------------

  CREATE TABLE "SHOW_REVIEW" 
   (	"REVIEW_NO" NUMBER, 
	"MEMBER_NO" NUMBER, 
	"GROUP_NO" NUMBER, 
	"NICKNAME" VARCHAR2(20), 
	"REVIEW_REGDATE" TIMESTAMP (6) DEFAULT sysdate, 
	"REVIEW_TEXT" VARCHAR2(4000), 
	"REVIEW_SCORE" NUMBER
   );
--------------------------------------------------------
--  DDL for Table SHOW_SIDEMENU
--------------------------------------------------------

  CREATE TABLE "SHOW_SIDEMENU" 
   (	"SIDEMENU_NO" NUMBER, 
	"MENU_NO" NUMBER, 
	"MEMBER_NO" NUMBER, 
	"GROUP_NO" NUMBER, 
	"SIDEMENU_NAME" VARCHAR2(30), 
	"SIDEMENU_PAY" NUMBER, 
	"SIDEMENU_CATEGORY" VARCHAR2(50)
   );
--------------------------------------------------------
--  DDL for Table SHOW_WITHDRAW
--------------------------------------------------------

  CREATE TABLE "SHOW_WITHDRAW" 
   (	"WITHDRAW_NO" NUMBER, 
	"MEMBER_NO" NUMBER, 
	"WITHDRAW_REGDATE" DATE DEFAULT sysdate, 
	"STOP_REGDATE" DATE
   );
 
 
Insert into SHOW_FAQ (FAQ_NO,FAQ_CATEGORY,FAQ_TITLE,FAQ_TEXT) values (1,'È¸¿ø°¡ÀÔ','È¸¿ø°¡ÀÔÀÌ ¾ÈµË´Ï´Ù.','¹®ÀÇÇÏ±â¸¦ ÅëÇØ ¼ºÇÔ°ú ÇÚµåÆù¹øÈ£¸¦ º¸³»ÁÖ¼¼¿ä.');
Insert into SHOW_FAQ (FAQ_NO,FAQ_CATEGORY,FAQ_TITLE,FAQ_TEXT) values (2,'È¸¿ø°¡ÀÔ','ºñ¹Ð¹øÈ£¸¦ ±î¸Ô¾ú¾î¿ä.','ºñ¹Ð¹øÈ£ Ã£±â¸¦ ÅëÇØ Ã£¾ÆÁÖ¼¼¿ä.');
Insert into SHOW_FAQ (FAQ_NO,FAQ_CATEGORY,FAQ_TITLE,FAQ_TEXT) values (3,'¹Ù·Î°áÁ¦','°áÁ¦ ¿À·ù°¡ ³µ¾î¿ä.','¹®ÀÇÇÏ±â¸¦ ÅëÇØ Ä«µå¹øÈ£¿Í »óÈ²À» Àû¾î¼­ º¸³»ÁÖ¼¼¿ä.');
Insert into SHOW_FAQ (FAQ_NO,FAQ_CATEGORY,FAQ_TITLE,FAQ_TEXT) values (4,'¸®ºä°ü¸®','¸®ºä°¡ ¾È´Þ·Á¿ä.','¹®ÀÇÇÏ±â¸¦ ÅëÇØ ¹®ÀÇÇØÁÖ¼¼¿ä.');
Insert into SHOW_FAQ (FAQ_NO,FAQ_CATEGORY,FAQ_TITLE,FAQ_TEXT) values (5,'ÀÌ¿ë¹®ÀÇ','¾î¶»°Ô »ç¿ëÇÏ´Â °ÍÀÎ°¡¿ä??','¼­ºñ½º¼Ò°³¸¦ ºÁÁÖ½Ã±æ ¹Ù¶ø´Ï´Ù.');
Insert into SHOW_FAQ (FAQ_NO,FAQ_CATEGORY,FAQ_TITLE,FAQ_TEXT) values (6,'ÀÌ¿ë¹®ÀÇ','¸ÅÀå °Ë»öÀº ¾î¶»°Ô ÇÏ³ª¿ä??','¸ÞÀÎÈ­¸é °Ë»ö ¹Ù¸¦ ÅëÇØ¼­ °¡´ÉÇÕ´Ï´Ù.');
Insert into SHOW_FAQ (FAQ_NO,FAQ_CATEGORY,FAQ_TITLE,FAQ_TEXT) values (7,'±¤°í¹®ÀÇ','±¤°í¹®ÀÇ¸¦ ¾îµð¼­ ÇÏ³ª¿ä??','ÁØºñÁß¿¡ ÀÖ½À´Ï´Ù.');
Insert into SHOW_FAQ (FAQ_NO,FAQ_CATEGORY,FAQ_TITLE,FAQ_TEXT) values (8,'ºÒÆí¹®ÀÇ','°¡°Ô¿¡¼­ ºÒÄ£ÀýÇÕ´Ï´Ù.','ÇØ´ç °¡°Ô ÀÌ¸§°ú À§Ä¡ ±×¸®°í »óÈ²À» Àû¾î¼­ ¹®ÀÇÇØÁÖ¼¼¿ä.');
Insert into SHOW_FAQ (FAQ_NO,FAQ_CATEGORY,FAQ_TITLE,FAQ_TEXT) values (9,'±âÅ¸','°¡°Ô ½ÅÃ»Àº ¾î¶»°Ô ÇÏ³ª¿ä??','ÁØºñÁßÀÔ´Ï´Ù.');
 
Insert into SHOW_GROUP (GROUP_NO,MEMBER_NO,GROUP_NAME,GROUP_ADDRESS,GROUP_CATEGORY,GROUP_PHONE,GROUP_CH,GROUP_START,GROUP_END,GROUP_FILES,GROUP_DELETE_CH,GROUP_REGDATE) values (27,1,'±æµ¿Ä¿ÇÇ','°¡»êµðÁöÅÐ','Ä¿ÇÇ¼ó','01012345678','F',to_timestamp('16/12/01 08:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/12/01 21:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'logo.png','F',to_date('16/12/07','RR/MM/DD'));
Insert into SHOW_GROUP (GROUP_NO,MEMBER_NO,GROUP_NAME,GROUP_ADDRESS,GROUP_CATEGORY,GROUP_PHONE,GROUP_CH,GROUP_START,GROUP_END,GROUP_FILES,GROUP_DELETE_CH,GROUP_REGDATE) values (30,1,'½ºÅ¸¹÷½º1','°¡»êµðÁöÅÐ','Ä¿ÇÇ¼ó','01098765432','T',to_timestamp('16/12/01 07:30:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/12/01 20:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'top_bg.jpg','F',to_date('16/12/07','RR/MM/DD'));
Insert into SHOW_GROUP (GROUP_NO,MEMBER_NO,GROUP_NAME,GROUP_ADDRESS,GROUP_CATEGORY,GROUP_PHONE,GROUP_CH,GROUP_START,GROUP_END,GROUP_FILES,GROUP_DELETE_CH,GROUP_REGDATE) values (2,1,'½ºÅ¸¹÷½º2','¼­¿ïÆ¯º°½Ã','Ä«Æä','010-1234-5678','T',to_timestamp('16/11/01 14:11:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/11/01 19:11:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'/onshow/cover_image/1_cover.jpg','T',to_date('16/12/07','RR/MM/DD'));
Insert into SHOW_GROUP (GROUP_NO,MEMBER_NO,GROUP_NAME,GROUP_ADDRESS,GROUP_CATEGORY,GROUP_PHONE,GROUP_CH,GROUP_START,GROUP_END,GROUP_FILES,GROUP_DELETE_CH,GROUP_REGDATE) values (19,1,'ÄíÅ©´Ù½º','°¡»êµðÁöÅÐ´ÜÁö','À½½ÄÁ¡','010-1234-5678','F',to_timestamp('16/11/01 09:01:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/11/01 21:01:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'logo.png','F',to_date('16/12/07','RR/MM/DD'));
 
Insert into SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST,MEMBER_STOP_REGDATE) values (1,'aa@naver.com','°í±æµ¿','µÑ¸®','a1234','011-ddd-123',to_date('16/11/22','RR/MM/DD'),'T','T','T','20','F','F',2,to_date('16/12/10','RR/MM/DD'),null);
Insert into SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST,MEMBER_STOP_REGDATE) values (2,'bb@naver.com','¶ÇÄ¡','µµ³Ê','asdf123','010-1512-6222',to_date('16/11/22','RR/MM/DD'),'T','T','T','10','T','F',0,null,null);
Insert into SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST,MEMBER_STOP_REGDATE) values (3,'cc@naver.com','·çÇÇ','¸ùÅ°','asdf123','010-1234-1234',to_date('16/11/22','RR/MM/DD'),'T','T','T','10','F','F',0,null,null);
Insert into SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST,MEMBER_STOP_REGDATE) values (99,'admin@naver.com','±âÈ£Ã¢','°ü¸®ÀÚ','qwer1234','010-1234-5678',to_date('90/01/01','RR/MM/DD'),'T','T','T','30','F','F',0,null,null);
Insert into SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST,MEMBER_STOP_REGDATE) values (6,'rcn115@naver.com','ÃÖ¿ë¼®','ÄÈÄÈ','asdf123','010-1234-1234',to_date('16/11/28','RR/MM/DD'),'T','T','T','10','F','F',0,null,null);
Insert into SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST,MEMBER_STOP_REGDATE) values (7,'lgh3680@naver.com','ÀÌ±æÇÐ','Á¶Àå´Ô','onshow899835','010-1234-1234',to_date('16/11/28','RR/MM/DD'),'T','T','T','10','F','F',0,null,null);
Insert into SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST,MEMBER_STOP_REGDATE) values (13,'awaybook@naver.com','±è¼Ò¿µ','oyok','we1234','010-1234-1234',to_date('01/02/15','RR/MM/DD'),'T','T','T','10','F','F',0,null,null);
Insert into SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST,MEMBER_STOP_REGDATE) values (4,'ee@naver.com','»ì¼±»ý','ÃË¼ö','asdf123@','010-9098-3456',to_date('93/08/25','RR/MM/DD'),'T','T','T','10','F','F',0,null,null);
Insert into SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST,MEMBER_STOP_REGDATE) values (5,'rocjf1682@naver.com','À±Ã¶','¾Æµ¹','asdf123','010-1234-1234',to_date('16/11/28','RR/MM/DD'),'T','T','T','10','F','F',0,null,null);
Insert into SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST,MEMBER_STOP_REGDATE) values (47,'gildong@gmail.com','±æµ¿','±æµ¿ÀÌ','asdf1','010-1234-1234',to_date('90/01/01','RR/MM/DD'),'T','F','F','10','F','F',0,null,null);
 
Insert into SHOW_MENU (MENU_NO,MEMBER_NO,GROUP_NO,MENU_NAME,MENU_PRICE,MENU_CATEGORY) values (3,1,2,'È­ÀÌÆ®¸ðÄ«',3000,'Ä¿ÇÇ');
Insert into SHOW_MENU (MENU_NO,MEMBER_NO,GROUP_NO,MENU_NAME,MENU_PRICE,MENU_CATEGORY) values (5,1,2,'Ä«ÇªÄ¡³ë',3500,'Ä¿ÇÇ´å');
Insert into SHOW_MENU (MENU_NO,MEMBER_NO,GROUP_NO,MENU_NAME,MENU_PRICE,MENU_CATEGORY) values (4,1,2,'Ä«Æä¸ðÄ«',2800,'Ä¿ÇÇ');
Insert into SHOW_MENU (MENU_NO,MEMBER_NO,GROUP_NO,MENU_NAME,MENU_PRICE,MENU_CATEGORY) values (6,1,2,'¾Æ¸Þ¸®Ä«³ë',2700,'Ä¿ÇÇ´å');
Insert into SHOW_MENU (MENU_NO,MEMBER_NO,GROUP_NO,MENU_NAME,MENU_PRICE,MENU_CATEGORY) values (1,1,2,'Ä«Æä¶ó¶¼',2000,'Ä¿ÇÇ');
Insert into SHOW_MENU (MENU_NO,MEMBER_NO,GROUP_NO,MENU_NAME,MENU_PRICE,MENU_CATEGORY) values (2,1,2,'¿¡¼ÒÇÁ·¹¼Ò',1500,'Ä¿ÇÇ');
 
Insert into SHOW_MENU_CHECK (MEMBER_NO,GROUP_NO,MENU_NO,ORDER_NO,MENU_NAME,MENU_COUNT,MENU_PRICE) values (1,2,1,9,'Ä«Æä¶ó¶¼',3,2000);
Insert into SHOW_MENU_CHECK (MEMBER_NO,GROUP_NO,MENU_NO,ORDER_NO,MENU_NAME,MENU_COUNT,MENU_PRICE) values (1,2,6,10,'¾Æ¸Þ¸®Ä«³ë',3,2700);
Insert into SHOW_MENU_CHECK (MEMBER_NO,GROUP_NO,MENU_NO,ORDER_NO,MENU_NAME,MENU_COUNT,MENU_PRICE) values (1,2,1,9,'Ä«Æä¶ó¶¼',2,2000);
Insert into SHOW_MENU_CHECK (MEMBER_NO,GROUP_NO,MENU_NO,ORDER_NO,MENU_NAME,MENU_COUNT,MENU_PRICE) values (2,2,5,5,'Ä«ÇªÄ¡³ë',2,3500);
Insert into SHOW_MENU_CHECK (MEMBER_NO,GROUP_NO,MENU_NO,ORDER_NO,MENU_NAME,MENU_COUNT,MENU_PRICE) values (1,2,1,6,'Ä«Æä¶ó¶¼',2,2000);
Insert into SHOW_MENU_CHECK (MEMBER_NO,GROUP_NO,MENU_NO,ORDER_NO,MENU_NAME,MENU_COUNT,MENU_PRICE) values (1,2,6,6,'¾Æ¸Þ¸®Ä«³ë',3,2700);
Insert into SHOW_MENU_CHECK (MEMBER_NO,GROUP_NO,MENU_NO,ORDER_NO,MENU_NAME,MENU_COUNT,MENU_PRICE) values (1,2,3,7,'È­ÀÌÆ®¸ðÄ«',7,3000);
Insert into SHOW_MENU_CHECK (MEMBER_NO,GROUP_NO,MENU_NO,ORDER_NO,MENU_NAME,MENU_COUNT,MENU_PRICE) values (1,2,2,7,'¿¡¼ÒÇÁ·¹¼Ò',1,1500);
Insert into SHOW_MENU_CHECK (MEMBER_NO,GROUP_NO,MENU_NO,ORDER_NO,MENU_NAME,MENU_COUNT,MENU_PRICE) values (1,2,5,8,'Ä«ÇªÄ¡³ë',4,3500);
 
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (6,'1','1',null,'ÀÌº¥Æ®');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (8,'33','33',to_timestamp('16/12/01 14:30:45.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (22,'¶ö','¶ö',to_timestamp('16/12/02 16:03:53.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (25,'¤±¤¤¤·¤©','¤·¤¤¤©¤·¤©¤¤¤±',to_timestamp('16/12/02 16:08:46.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (30,'¤·¤©','¤·¤·¤·¤·',to_timestamp('16/12/02 16:12:30.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (33,'¤±¤¤¤·¤©','¤±1122222222',to_timestamp('16/12/02 16:16:03.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (34,'¤±¤±¤±','¤¤¤·',to_timestamp('16/12/02 16:16:20.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (36,'¤±¤·¤·','¤±1123123123123',to_timestamp('16/12/02 16:17:10.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (38,'¤±¤¤¤·','¤©¤·¤·¤·¤·',to_timestamp('16/12/02 16:19:25.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (42,'¤±¤±¤±','¤±¤¤¤·¤·¤·',to_timestamp('16/12/02 16:30:12.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (1,'¿ÀÇÂ ÀÌº¥Æ®ÁßÀÔ´Ï´Ù.','¿ÀÇÂ ÀÌº¥Æ®·Î ÇöÀç ÀÌ¿ë°´Áß ÃßÃ·À» ÅëÇØ ¹«·áÀÌ¿ë±Ç 100ÀåÀ» µå¸³´Ï´Ù~',to_timestamp('16/08/24 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'ÀÌº¥Æ®');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (2,'Áö±Ý ÇöÀç ¼­¿ïÁö¿ª °Ë»öÀÌ Á¦ÇÑµË´Ï´Ù.','³»ºÎ¼­ºñ½º ¹®Á¦·Î ÀÎÇØ ÇöÀç ¼­¿ïÁö¿ª °Ë»öÀÌ Á¦ÇÑµË´Ï´Ù.\nÀÌ¿ëÀÇ ºÒÆíÀ» µå·Á¼­ ÁË¼ÛÇÕ´Ï´Ù.',to_timestamp('16/08/31 15:32:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (3,'°øÁö»çÇ× TEST','°øÁö»çÇ× TESTÀÔ´Ï´Ù.',to_timestamp('16/09/02 12:32:57.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (4,'ÀÌº¥Æ® TESTÀÔ´Ï´Ù.','ÀÌº¥Æ® TESTÀÔ´Ï´Ù.',to_timestamp('16/09/02 12:33:09.000000000','RR/MM/DD HH24:MI:SSXFF'),'ÀÌº¥Æ®');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (13,'12','12',to_timestamp('16/12/01 19:59:58.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (23,'111','111',to_timestamp('16/12/02 16:07:24.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (24,'¤±¤¤¤·¤©','¤±¤¤¤©¤·¤¤¤¤',to_timestamp('16/12/02 16:08:20.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (26,'¤·¤±¤±','¤±¤¤¤¤¤¤¤¤¤¤¤·',to_timestamp('16/12/02 16:09:18.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (27,'¤±¤¤¤·¤©','¤¤¤·¤±¤©¤·¤·¤·',to_timestamp('16/12/02 16:10:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (28,'¤±¤¤','¤·¤·¤·¤·',to_timestamp('16/12/02 16:11:11.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (29,'11111','11111111',to_timestamp('16/12/02 16:12:02.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (51,'123','123',to_timestamp('16/12/07 16:04:20.000000000','RR/MM/DD HH24:MI:SSXFF'),'ÀÌº¥Æ®');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (59,'¿©±â¼­ ÇØº¸±î','durltj goh',to_timestamp('16/12/07 18:26:41.000000000','RR/MM/DD HH24:MI:SSXFF'),'ÀÌº¥Æ®');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (52,'123','123',to_timestamp('16/12/07 16:26:46.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (14,'¾È³ç','¾È³ç',to_timestamp('16/12/02 15:42:30.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (15,'ÀÌ¾ß','ÀÌ¾ß',to_timestamp('16/12/02 15:51:09.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (16,'¤·¤¤¤©','¤¤¤·¤©',to_timestamp('16/12/02 15:51:51.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (17,'123','123',to_timestamp('16/12/02 15:54:29.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (18,'000','000',to_timestamp('16/12/02 15:55:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (19,'123','123',to_timestamp('16/12/02 15:55:49.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (20,'¶°¶ó','¶°¶ó',to_timestamp('16/12/02 15:59:43.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (21,'diq','diq',to_timestamp('16/12/02 16:02:43.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (32,'¤±¤¤¤·','¤±¤±¤±¤±¤±¤±',to_timestamp('16/12/02 16:14:10.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (37,'¤·¤·¤·','¤±2',to_timestamp('16/12/02 16:17:43.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (40,'123','123123123123123',to_timestamp('16/12/02 16:29:01.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (41,'¤±¤·¤©','¤±¤·¤©3333',to_timestamp('16/12/02 16:29:42.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (43,'¤·¤·¤·¤·','¤±¤±¤±¤±',to_timestamp('16/12/02 16:33:38.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (49,'kkcc','kk',to_timestamp('16/12/02 18:04:17.000000000','RR/MM/DD HH24:MI:SSXFF'),'ÀÌº¥Æ®');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (5,'1','1',null,'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (7,'¾å','¾å',null,'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (9,'66','66',to_timestamp('16/12/01 14:32:40.000000000','RR/MM/DD HH24:MI:SSXFF'),'°øÁö');
Insert into SHOW_NOTICE (NOTICE_NO,NOTICE_TITLE,NOTICE_TEXT,NOTICE_REGDATE,NOTICE_CH) values (58,'Á¦¸ñÀ» ¤¾¾Ö','¤©¤©¤©',to_timestamp('16/12/07 18:26:12.000000000','RR/MM/DD HH24:MI:SSXFF'),'ÀÌº¥Æ®');
 
Insert into SHOW_ORDER (ORDER_NO,MEMBER_NO,GROUP_NO,ORDER_NAME,ORDER_PHONE,ORDER_TIME,RESERVATION_TIME,ORDER_PRICE,ORDER_COUNT,ORDER_ASK,ORDER_ASK2,ORDER_CH,OWNER_CH,ORDER_REFUND) values (11,5,2,'À±Ã¶','010-1234-1243',to_timestamp('16/12/09 12:13:46.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/12/01 13:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),19000,2,'¾ç³ä°£ÀåÄ¡Å²','Èû³»¼¼¿ä','T','½ÅÃ»Áß','F');
Insert into SHOW_ORDER (ORDER_NO,MEMBER_NO,GROUP_NO,ORDER_NAME,ORDER_PHONE,ORDER_TIME,RESERVATION_TIME,ORDER_PRICE,ORDER_COUNT,ORDER_ASK,ORDER_ASK2,ORDER_CH,OWNER_CH,ORDER_REFUND) values (7,1,2,'À±Ã¶','010-1234-1243',to_timestamp('16/12/05 10:21:34.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/12/01 16:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),8000,3,'ºÎ´ëÂî°³','Èû³»¼¼¿ä','T','½ÅÃ»Áß','T');
Insert into SHOW_ORDER (ORDER_NO,MEMBER_NO,GROUP_NO,ORDER_NAME,ORDER_PHONE,ORDER_TIME,RESERVATION_TIME,ORDER_PRICE,ORDER_COUNT,ORDER_ASK,ORDER_ASK2,ORDER_CH,OWNER_CH,ORDER_REFUND) values (8,1,2,'À±Ã¶','010-1234-1243',to_timestamp('16/12/05 10:21:35.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/12/01 15:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),20000,5,'°¨ÀÚÅÁ','Èû³»¼¼¿ä','T','¿Ï·á','F');
Insert into SHOW_ORDER (ORDER_NO,MEMBER_NO,GROUP_NO,ORDER_NAME,ORDER_PHONE,ORDER_TIME,RESERVATION_TIME,ORDER_PRICE,ORDER_COUNT,ORDER_ASK,ORDER_ASK2,ORDER_CH,OWNER_CH,ORDER_REFUND) values (9,1,2,'À±Ã¶','010-1234-1243',to_timestamp('16/12/05 10:21:37.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/12/01 14:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),13000,1,'ÅÁ¼öÀ°','Èû³»¼¼¿ä','T','´ë±â','F');
Insert into SHOW_ORDER (ORDER_NO,MEMBER_NO,GROUP_NO,ORDER_NAME,ORDER_PHONE,ORDER_TIME,RESERVATION_TIME,ORDER_PRICE,ORDER_COUNT,ORDER_ASK,ORDER_ASK2,ORDER_CH,OWNER_CH,ORDER_REFUND) values (10,1,2,'À±Ã¶','010-1234-1243',to_timestamp('16/12/05 10:21:38.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/12/01 13:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),19000,2,'¾ç³ä°£ÀåÄ¡Å²','Èû³»¼¼¿ä','T','´ë±â','F');
Insert into SHOW_ORDER (ORDER_NO,MEMBER_NO,GROUP_NO,ORDER_NAME,ORDER_PHONE,ORDER_TIME,RESERVATION_TIME,ORDER_PRICE,ORDER_COUNT,ORDER_ASK,ORDER_ASK2,ORDER_CH,OWNER_CH,ORDER_REFUND) values (5,2,2,'µÑ¸®','010-2353-8735',null,null,null,null,'¶ß°Ì°Ô','¹è°íÆÄ¿ä','T','½ÅÃ»Áß','F');
Insert into SHOW_ORDER (ORDER_NO,MEMBER_NO,GROUP_NO,ORDER_NAME,ORDER_PHONE,ORDER_TIME,RESERVATION_TIME,ORDER_PRICE,ORDER_COUNT,ORDER_ASK,ORDER_ASK2,ORDER_CH,OWNER_CH,ORDER_REFUND) values (12,1,2,'À±Ã¶','010-1234-1234',to_timestamp('16/12/09 05:55:29.839000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/12/09 05:55:32.070000000','RR/MM/DD HH24:MI:SSXFF'),5000,4,'¸ô¶ó','µÇ¶ó!','T','½ÅÃ»Áß','F');
Insert into SHOW_ORDER (ORDER_NO,MEMBER_NO,GROUP_NO,ORDER_NAME,ORDER_PHONE,ORDER_TIME,RESERVATION_TIME,ORDER_PRICE,ORDER_COUNT,ORDER_ASK,ORDER_ASK2,ORDER_CH,OWNER_CH,ORDER_REFUND) values (6,1,2,'À±Ã¶','010-1234-1243',to_timestamp('16/12/05 10:18:54.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/12/01 17:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),1500,2,'Â÷°¡¿î ¾Æ¸Þ¸®Ä«³ë','Èû³»¼¼¿ä','T','¿Ï·á','F');
 
Insert into SHOW_QNA (QNA_NO,QNA_NAME,QNA_EMAIL,QNA_CH,QNA_TITLE,QNA_TEXT,QNA_CATEGORY) values (18,null,'awaybook@naver.com','Ã³¸®Áß','45','45','¸®ºä¹®ÀÇ');
Insert into SHOW_QNA (QNA_NO,QNA_NAME,QNA_EMAIL,QNA_CH,QNA_TITLE,QNA_TEXT,QNA_CATEGORY) values (20,null,'awaybook@naver.com','Ã³¸®Áß','78','78','Á¦ÈÞ¹®ÀÇ');
Insert into SHOW_QNA (QNA_NO,QNA_NAME,QNA_EMAIL,QNA_CH,QNA_TITLE,QNA_TEXT,QNA_CATEGORY) values (11,'±è¼Ò¿µ','awaybook@naver.com','Ã³¸®Áß','¾Æ','¾Æ¾Æ¾Æ¤¿¾Æ¾Æ¾Ó¾Æ¾Æ¤¿','¿À·ù¹®ÀÇ');
Insert into SHOW_QNA (QNA_NO,QNA_NAME,QNA_EMAIL,QNA_CH,QNA_TITLE,QNA_TEXT,QNA_CATEGORY) values (23,null,'awaybook@naver.com','Ã³¸®Áß','Ä«Å×°í¸®','Ä«Å×°í¸®','¿À·ù¹®ÀÇ');
Insert into SHOW_QNA (QNA_NO,QNA_NAME,QNA_EMAIL,QNA_CH,QNA_TITLE,QNA_TEXT,QNA_CATEGORY) values (24,null,'awaybook@naver.com','Ã³¸®Áß','Ä«Å×','°í¸®','ÀÌº¥Æ®');
Insert into SHOW_QNA (QNA_NO,QNA_NAME,QNA_EMAIL,QNA_CH,QNA_TITLE,QNA_TEXT,QNA_CATEGORY) values (13,'¤Å','aa@naver.com','Ã³¸®Áß','¤Å','¤Å','¿À·ù¹®ÀÇ');
Insert into SHOW_QNA (QNA_NO,QNA_NAME,QNA_EMAIL,QNA_CH,QNA_TITLE,QNA_TEXT,QNA_CATEGORY) values (30,'±è¼Ò¿µ','awaybook@naver.com','Ã³¸®Áß','12','12','¿À·ù¹®ÀÇ');
Insert into SHOW_QNA (QNA_NO,QNA_NAME,QNA_EMAIL,QNA_CH,QNA_TITLE,QNA_TEXT,QNA_CATEGORY) values (25,null,'awaybook@naver.com','Ã³¸®Áß','Ä«Ä«Ä«Ä«¤¿¯—','Å×Å×¤Ä¤¼Å×¤Ä¶š','±âÅ¸');
Insert into SHOW_QNA (QNA_NO,QNA_NAME,QNA_EMAIL,QNA_CH,QNA_TITLE,QNA_TEXT,QNA_CATEGORY) values (21,null,'awaybook@naver.com','Ã³¸®Áß','89','89','±âÅ¸');
Insert into SHOW_QNA (QNA_NO,QNA_NAME,QNA_EMAIL,QNA_CH,QNA_TITLE,QNA_TEXT,QNA_CATEGORY) values (22,null,'awaybook@naver.com','Ã³¸®Áß','89','89','ÀÌº¥Æ®');
Insert into SHOW_QNA (QNA_NO,QNA_NAME,QNA_EMAIL,QNA_CH,QNA_TITLE,QNA_TEXT,QNA_CATEGORY) values (26,null,'awaybook@gmail.com','Ã³¸®Áß','57','57','±âÅ¸');
Insert into SHOW_QNA (QNA_NO,QNA_NAME,QNA_EMAIL,QNA_CH,QNA_TITLE,QNA_TEXT,QNA_CATEGORY) values (28,'±è¼Ò¿µ','awaybook@naver.com','Ã³¸®Áß','dkfk','dkfk','¿À·ù¹®ÀÇ');
Insert into SHOW_QNA (QNA_NO,QNA_NAME,QNA_EMAIL,QNA_CH,QNA_TITLE,QNA_TEXT,QNA_CATEGORY) values (12,'¼î','aa@naver.com','Ã³¸®Áß','¼î','¼î','¿À·ù¹®ÀÇ');
Insert into SHOW_QNA (QNA_NO,QNA_NAME,QNA_EMAIL,QNA_CH,QNA_TITLE,QNA_TEXT,QNA_CATEGORY) values (40,'±è¼Ò¿µ','awaybook@naver.com','Ã³¸®Áß','wer','wer','È¸¿øÁ¤º¸¹®ÀÇ');
 
Insert into SHOW_REVIEW (REVIEW_NO,MEMBER_NO,GROUP_NO,NICKNAME,REVIEW_REGDATE,REVIEW_TEXT,REVIEW_SCORE) values (1,2,2,'¾ßÈ£',to_timestamp('16/12/08 08:20:00.022000000','RR/MM/DD HH24:MI:SSXFF'),'¸À¾ø¾î',5);
Insert into SHOW_REVIEW (REVIEW_NO,MEMBER_NO,GROUP_NO,NICKNAME,REVIEW_REGDATE,REVIEW_TEXT,REVIEW_SCORE) values (2,2,2,'¾ßÈ£',to_timestamp('16/12/08 08:21:26.807000000','RR/MM/DD HH24:MI:SSXFF'),'¾Æ¤¿',2);
Insert into SHOW_REVIEW (REVIEW_NO,MEMBER_NO,GROUP_NO,NICKNAME,REVIEW_REGDATE,REVIEW_TEXT,REVIEW_SCORE) values (3,2,27,'¾ßÈ£',to_timestamp('16/12/08 08:21:30.080000000','RR/MM/DD HH24:MI:SSXFF'),'¿ì¿Í',3);
Insert into SHOW_REVIEW (REVIEW_NO,MEMBER_NO,GROUP_NO,NICKNAME,REVIEW_REGDATE,REVIEW_TEXT,REVIEW_SCORE) values (4,2,30,'¾ßÈ£',to_timestamp('16/12/08 08:21:30.883000000','RR/MM/DD HH24:MI:SSXFF'),'¸ÓÁö',5);
Insert into SHOW_REVIEW (REVIEW_NO,MEMBER_NO,GROUP_NO,NICKNAME,REVIEW_REGDATE,REVIEW_TEXT,REVIEW_SCORE) values (5,2,19,'¾ßÈ£',to_timestamp('16/12/08 08:21:31.850000000','RR/MM/DD HH24:MI:SSXFF'),'¸Ö±î',7);
Insert into SHOW_REVIEW (REVIEW_NO,MEMBER_NO,GROUP_NO,NICKNAME,REVIEW_REGDATE,REVIEW_TEXT,REVIEW_SCORE) values (6,2,27,'¾ßÈ£',to_timestamp('16/12/08 08:21:32.629000000','RR/MM/DD HH24:MI:SSXFF'),'¸Õ¸À',8);
Insert into SHOW_REVIEW (REVIEW_NO,MEMBER_NO,GROUP_NO,NICKNAME,REVIEW_REGDATE,REVIEW_TEXT,REVIEW_SCORE) values (7,2,30,'¾ßÈ£',to_timestamp('16/12/08 08:21:33.417000000','RR/MM/DD HH24:MI:SSXFF'),'¿¢',2);
Insert into SHOW_REVIEW (REVIEW_NO,MEMBER_NO,GROUP_NO,NICKNAME,REVIEW_REGDATE,REVIEW_TEXT,REVIEW_SCORE) values (8,2,2,'¾ßÈ£',to_timestamp('16/12/08 08:21:34.090000000','RR/MM/DD HH24:MI:SSXFF'),'wow',2);
 
Insert into SHOW_SIDEMENU (SIDEMENU_NO,MENU_NO,MEMBER_NO,GROUP_NO,SIDEMENU_NAME,SIDEMENU_PAY,SIDEMENU_CATEGORY) values (1,6,1,2,'¾ÆÀÌ½º¾Æ¸Þ¸®Ä«³ë',3000,'¾Æ¸Þ¸®Ä«³ë');
Insert into SHOW_SIDEMENU (SIDEMENU_NO,MENU_NO,MEMBER_NO,GROUP_NO,SIDEMENU_NAME,SIDEMENU_PAY,SIDEMENU_CATEGORY) values (2,6,1,2,'ÇÖ¾Æ¸Þ¸®Ä«³ë',2800,'¾Æ¸Þ¸®Ä«³ë');
 
Insert into SHOW_WITHDRAW (WITHDRAW_NO,MEMBER_NO,WITHDRAW_REGDATE,STOP_REGDATE) values (3,2,to_date('16/12/02','RR/MM/DD'),null);
Insert into SHOW_WITHDRAW (WITHDRAW_NO,MEMBER_NO,WITHDRAW_REGDATE,STOP_REGDATE) values (4,2,to_date('16/12/02','RR/MM/DD'),null);
Insert into SHOW_WITHDRAW (WITHDRAW_NO,MEMBER_NO,WITHDRAW_REGDATE,STOP_REGDATE) values (5,2,to_date('16/12/02','RR/MM/DD'),null);
Insert into SHOW_WITHDRAW (WITHDRAW_NO,MEMBER_NO,WITHDRAW_REGDATE,STOP_REGDATE) values (6,2,to_date('16/12/02','RR/MM/DD'),null);
Insert into SHOW_WITHDRAW (WITHDRAW_NO,MEMBER_NO,WITHDRAW_REGDATE,STOP_REGDATE) values (8,2,to_date('16/12/02','RR/MM/DD'),null);
Insert into SHOW_WITHDRAW (WITHDRAW_NO,MEMBER_NO,WITHDRAW_REGDATE,STOP_REGDATE) values (9,2,to_date('16/12/02','RR/MM/DD'),null);
Insert into SHOW_WITHDRAW (WITHDRAW_NO,MEMBER_NO,WITHDRAW_REGDATE,STOP_REGDATE) values (7,2,to_date('16/12/02','RR/MM/DD'),null);
Insert into SHOW_WITHDRAW (WITHDRAW_NO,MEMBER_NO,WITHDRAW_REGDATE,STOP_REGDATE) values (2,2,to_date('16/12/02','RR/MM/DD'),null);
--------------------------------------------------------
--  DDL for Index SYS_C0012722
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012722" ON "SHOW_AREA" ("AREA_NO");
--------------------------------------------------------
--  DDL for Index SYS_C0012721
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012721" ON "SHOW_FAQ" ("FAQ_NO");
--------------------------------------------------------
--  DDL for Index SYS_C0012552
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012552" ON "SHOW_GROUP" ("GROUP_NO");
--------------------------------------------------------
--  DDL for Index SYS_C0012550
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012550" ON "SHOW_MEMBER" ("MEMBER_NO");
--------------------------------------------------------
--  DDL for Index SHOW_MEMBER_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOW_MEMBER_UK1" ON "SHOW_MEMBER" ("MEMBER_EMAIL");
--------------------------------------------------------
--  DDL for Index SYS_C0012695
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012695" ON "SHOW_MENU" ("MENU_NO");
--------------------------------------------------------
--  DDL for Index SYS_C0012720
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012720" ON "SHOW_NOTICE" ("NOTICE_NO");
--------------------------------------------------------
--  DDL for Index SYS_C0012895
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012895" ON "SHOW_ORDER" ("ORDER_NO");
--------------------------------------------------------
--  DDL for Index SYS_C0012538
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012538" ON "SHOW_QNA" ("QNA_NO");
--------------------------------------------------------
--  DDL for Index SYS_C0012706
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012706" ON "SHOW_REVIEW" ("REVIEW_NO");
--------------------------------------------------------
--  DDL for Index SYS_C0012702
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012702" ON "SHOW_SIDEMENU" ("SIDEMENU_NO");
--------------------------------------------------------
--  DDL for Index SYS_C0012725
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012725" ON "SHOW_WITHDRAW" ("WITHDRAW_NO");
--------------------------------------------------------
--  Constraints for Table SHOW_AREA
--------------------------------------------------------

  ALTER TABLE "SHOW_AREA" ADD PRIMARY KEY ("AREA_NO") ;
--------------------------------------------------------
--  Constraints for Table SHOW_FAQ
--------------------------------------------------------

  ALTER TABLE "SHOW_FAQ" ADD PRIMARY KEY ("FAQ_NO") ;
--------------------------------------------------------
--  Constraints for Table SHOW_GROUP
--------------------------------------------------------

  ALTER TABLE "SHOW_GROUP" ADD CONSTRAINT "SHOW_GROUP_CHK1" CHECK (GROUP_DELETE_CH in('T','F')) ;
 
  ALTER TABLE "SHOW_GROUP" ADD CHECK ( GROUP_CH in('T','F')) ;
 
  ALTER TABLE "SHOW_GROUP" ADD PRIMARY KEY ("GROUP_NO") ;
 
  ALTER TABLE "SHOW_GROUP" MODIFY ("MEMBER_NO" NOT NULL );
 
  ALTER TABLE "SHOW_GROUP" MODIFY ("GROUP_NAME" NOT NULL );
 
  ALTER TABLE "SHOW_GROUP" MODIFY ("GROUP_ADDRESS" NOT NULL );
 
  ALTER TABLE "SHOW_GROUP" MODIFY ("GROUP_START" NOT NULL );
 
  ALTER TABLE "SHOW_GROUP" MODIFY ("GROUP_END" NOT NULL );
--------------------------------------------------------
--  Constraints for Table SHOW_MEMBER
--------------------------------------------------------

  ALTER TABLE "SHOW_MEMBER" ADD CONSTRAINT "SHOW_MEMBER_CHK1" CHECK (MEMBER_WITHDRAW in('T','F')) ;
 
  ALTER TABLE "SHOW_MEMBER" ADD CONSTRAINT "SHOW_MEMBER_CHK2" CHECK (member_stop in('T','F')) ;
 
  ALTER TABLE "SHOW_MEMBER" ADD CONSTRAINT "SHOW_MEMBER_UK1" UNIQUE ("MEMBER_EMAIL") ;
 
  ALTER TABLE "SHOW_MEMBER" MODIFY ("MEMBER_NAME" NOT NULL );
 
  ALTER TABLE "SHOW_MEMBER" MODIFY ("MEMBER_PASS" NOT NULL );
 
  ALTER TABLE "SHOW_MEMBER" MODIFY ("MEMBER_PHONE" NOT NULL );
 
  ALTER TABLE "SHOW_MEMBER" MODIFY ("MEMBER_BIRTH" NOT NULL );
 
  ALTER TABLE "SHOW_MEMBER" ADD CHECK (member_allcheck in('T','F')) ;
 
  ALTER TABLE "SHOW_MEMBER" ADD CHECK (member_smsck in('T','F')) ;
 
  ALTER TABLE "SHOW_MEMBER" ADD CHECK (member_emailck in('T','F')) ;
 
  ALTER TABLE "SHOW_MEMBER" ADD CHECK (member_position in('10','20','30')) ;
 
  ALTER TABLE "SHOW_MEMBER" ADD PRIMARY KEY ("MEMBER_NO") ;
--------------------------------------------------------
--  Constraints for Table SHOW_MENU
--------------------------------------------------------

  ALTER TABLE "SHOW_MENU" ADD PRIMARY KEY ("MENU_NO") ;
--------------------------------------------------------
--  Constraints for Table SHOW_NOTICE
--------------------------------------------------------

  ALTER TABLE "SHOW_NOTICE" ADD CHECK ( NOTICE_CH in('°øÁö','ÀÌº¥Æ®')) ;
 
  ALTER TABLE "SHOW_NOTICE" ADD PRIMARY KEY ("NOTICE_NO") ;
--------------------------------------------------------
--  Constraints for Table SHOW_ORDER
--------------------------------------------------------

  ALTER TABLE "SHOW_ORDER" ADD CHECK ( ORDER_CH in('T','F')) ;
 
  ALTER TABLE "SHOW_ORDER" ADD CHECK ( OWNER_CH in('½ÅÃ»Áß','´ë±â','¿Ï·á')) ;
 
  ALTER TABLE "SHOW_ORDER" ADD CHECK (ORDER_REFUND in('T','F')) ;
 
  ALTER TABLE "SHOW_ORDER" ADD PRIMARY KEY ("ORDER_NO") ;
--------------------------------------------------------
--  Constraints for Table SHOW_QNA
--------------------------------------------------------

  ALTER TABLE "SHOW_QNA" ADD PRIMARY KEY ("QNA_NO") ;
 
  ALTER TABLE "SHOW_QNA" MODIFY ("QNA_EMAIL" NOT NULL );
--------------------------------------------------------
--  Constraints for Table SHOW_REVIEW
--------------------------------------------------------

  ALTER TABLE "SHOW_REVIEW" ADD PRIMARY KEY ("REVIEW_NO") ;
--------------------------------------------------------
--  Constraints for Table SHOW_SIDEMENU
--------------------------------------------------------

  ALTER TABLE "SHOW_SIDEMENU" ADD PRIMARY KEY ("SIDEMENU_NO") ;
--------------------------------------------------------
--  Constraints for Table SHOW_WITHDRAW
--------------------------------------------------------

  ALTER TABLE "SHOW_WITHDRAW" ADD PRIMARY KEY ("WITHDRAW_NO") ;
