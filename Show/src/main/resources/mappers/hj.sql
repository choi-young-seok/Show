create table show_member( 
member_no number primary key,
member_email varchar2(100),
member_name varchar2(15) not null,
member_nickname varchar2(30) not null,
member_pass varchar2(30) not null,
member_phone VARCHAR2(50) not null,
member_birth DATE not null,
member_allcheck VARCHAR2(100) check(member_allcheck in('T','F')) ,
member_smsck VARCHAR2(100) check(member_smsck in('T','F')),
member_emailck VARCHAR2(100) check(member_emailck in('T','F')),
member_position VARCHAR2(100) check(member_position in('10','20','30'))
);
create sequence show_member_seq   start with 1   increment by 1   nocycle   nocache;


create table show_group( 
GROUP_NO NUMBER primary key,
MEMBER_NO number references show_member(member_no),
GROUP_NAME varchar2(50),
GROUP_ADDRESS varchar2(30),
GROUP_CATAGORY varchar2(30),
GROUP_PHONE VARCHAR2(50),
GROUP_CH VARCHAR2(10) check(GROUP_CH in('T','F')),
GROUP_START DATE,
GROUP_END DATE,
GROUP_FILES VARCHAR2(100)
);
create sequence show_group_seq   start with 1   increment by 1   nocycle   nocache;



create table SHOW_MENU( 
MENU_NO number primary key,
MEMBER_NO number references  SHOW_MEMBER(MEMBER_NO),
GROUP_NO NUMBER references  SHOW_GROUP(GROUP_NO),
MENU_NAME VARCHAR2(50),
MENU_PRICE NUMBER,
MENU_CATEGORY varchar2(50)
);

create sequence  show_menu_seq   start with 1   increment by 1   nocycle   nocache;


create table  SHOW_SIDEMENU(  
SIDEMENU_NO number primary key,
MENU_NO NUMBER references  SHOW_MENU(MENU_NO),
MEMBER_NO NUMBER references  SHOW_MEMBER(MEMBER_NO),
GROUP_NO NUMBER references  SHOW_GROUP(GROUP_NO),
SIDEMENU_NAME varchar2(30),
SIDEMENU_PAY NUMBER,
SIDEMENU_CATEGORY VARCHAR2(50)
);

create sequence  show_side_seq   start with 1   increment by 1   nocycle   nocache;


create table  show_riview( 
RIVIEW_NO NUMBER primary key,
MEMBER_NO NUMBER references  SHOW_MEMBER(MEMBER_NO),
GROUP_NO number references  SHOW_GROUP(GROUP_NO),
NICKNAME VARCHAR2(20),
REVIEW_REGDATE TIMESTAMP,
REVIEW_TEXT VARCHAR2(4000),
REVIEW_SCORE number
);

create sequence  show_riview_seq   start with 1   increment by 1   nocycle   nocache;


create table  show_order( 
ORDER_NO NUMBER primary key,
MEMBER_NO NUMBER REFERENCES  SHOW_MEMBER(MEMBER_NO),
GROUP_NO NUMBER references  SHOW_GROUP(GROUP_NO),
ORDER_NAME VARCHAR2(50),
ORDER_PHONE VARCHAR2(30),
RESERVATION_TIME TIMESTAMP,
ORDER_PRICE NUMBER,
ORDER_COUNT NUMBER,
ORDER_ASK VARCHAR2(4000),
ORDER_ASK2 VARCHAR2(4000),
ORDER_CH VARCHAR2(10) check( ORDER_CH in('T','F')),
OWNER_CH VARCHAR2(10) check( OWNER_CH in('��û��','���','�Ϸ�')),
ORDER_REFUND VARCHAR2(10)  check(ORDER_REFUND in('T','F'))
);

create sequence  show_order_seq   start with 1   increment by 1   nocycle   nocache;


create table  show_menu_check( 
MEMBER_NO NUMBER REFERENCES  SHOW_MEMBER(MEMBER_NO),
GROUP_NO NUMBER references  SHOW_GROUP(GROUP_NO),
MENU_NO NUMBER REFERENCES  SHOW_MENU(MENU_NO),
ORDER_NO NUMBER references  SHOW_ORDER(ORDER_NO),
MENU_NAME VARCHAR2(100),
MENU_COUNT NUMBER,
MENU_PRICE NUMBER
);


create table  SHOW_notice( 
NOTICE_NO NUMBER primary key,
NOTICE_TITLE VARCHAR2(50),
NOTICE_TEXT VARCHAR2(4000),
NOTICE_REGDATE timestamp,
NOTICE_CH VARCHAR2(10) check(NOTICE_CH in('����','�̺�Ʈ'))
);

create sequence  show_notice_seq   start with 1   increment by 1   nocycle   nocache;


create table  show_faq( 
FAQ_NO NUMBER primary key,
FAQ_CATEGORY VARCHAR2(30),
FAQ_TITLE VARCHAR(50),
FAQ_TEXT VARCHAR2(4000)
);

create sequence  show_faq_seq   start with 1   increment by 1   nocycle   nocache;


create table  show_qna( 
QNA_NO NUMBER primary KEY,
QNA_NAME VARCHAR2(5),
QNA_EMAIL VARCHAR2(50),
QNA_CH VARCHAR2(50),
QNA_TITLE VARCHAR2(50),
QNA_TEXT VARCHAR2(4000),
QNA_CATEGORY VARCHAR2(30)
);

create sequence  shoq_qna_seq   start with 1   increment by 1   nocycle   nocache;


create table  shoq_area( 
AREA_NO NUMBER primary key,
AREA_UNIV VARCHAR2(50),
AREA VARCHAR2(50)
);

create sequence  show_area_seq   start with 1   increment by 1   nocycle   nocache;


create table  show_withdraw( 
withdraw_no number primary key,
member_no number references  show_member(member_no),
withdraw_regdate date
);

create sequence  show_withdraw_seq   start with 1   increment by 1   nocycle   nocache;


alter table SHOW_GROUP modify (group_ch default 'F');

alter table SHOW_ORDER modify (OWNER_CH default '��û��');

alter table show_ORDER modify (ORDER_REFUND default 'F');

alter table show_member modify (member_withdraw default 'F');

alter table show_member modify (member_phone varchar2(50));

alter table show_member add (MEMBER_WITHDRAW varchar2(30)  check(member_withdraw in('T','F')));
alter table show_group add (GROUP_DELETE_CH varchar2(30)  check(GROUP_DELETE_CH in('T','F')));
insert into show_member (member_no, member_email, member_name, member_nickname, member_pass, member_phone, member_birth, member_position)
values (show_member_seq.nextval, 'asdf@naver.com', 'ȫ�浿', '�浿', 'a123', '010-1234-5678', sysdate, '20');

update show_member set member_withdraw='F';

alter table show_group rename column group_catagory to group_category;

alter table show_group rename column CITY_NAME to GROUP_ADDRESS;

alter table show_group modify (group_phone varchar2(50));




ALTER TABLE 'SHOW_NOTICE' ADD CHECK ( NOTICE_CH in('����','�̺�Ʈ')) ENABLE;
 
Insert into  SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST) values (1,'aa@naver.com','��浿','�Ѹ�','a1234','011-ddd-123',to_date('16/11/22','RR/MM/DD'),'T','T','T','20','F','F',0,null);
Insert into  SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST) values (2,'bb@naver.com','��ġ','����','asdf123','010-1512-6222',to_date('16/11/22','RR/MM/DD'),'T','T','T','10','T','F',0,null);
Insert into  SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST) values (3,'cc@naver.com','����','��Ű','asdf123','010-1234-1234',to_date('16/11/22','RR/MM/DD'),'T','T','T','10','F','F',0,null);
Insert into  SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST) values (6,'rcn115@naver.com','�ֿ뼮','����','asdf123','010-1234-1234',to_date('16/11/28','RR/MM/DD'),'T','T','T','10','F','F',0,null);
Insert into  SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST) values (7,'lgh3680@naver.com','�̱���','�����','onshow899835','010-1234-1234',to_date('16/11/28','RR/MM/DD'),'T','T','T','10','F','F',0,null);
Insert into  SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST) values (13,'awaybook@naver.com','��ҿ�','oyok','we1234','010-1234-1234',to_date('01/02/15','RR/MM/DD'),'T','T','T','10','F','F',0,null);
Insert into  SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST) values (4,'ee@naver.com','�켱��','�˼�','asdf123@','010-9098-3456',to_date('93/08/25','RR/MM/DD'),'T','T','T','10','F','F',0,null);
Insert into  SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST) values (5,'rocjf1682@naver.com','��ö','�Ƶ�','onshow870026','010-1234-1234',to_date('16/11/28','RR/MM/DD'),'T','T','T','10','F','F',0,null);

ALTER TABLE 'SHOW_MEMBER' ADD CHECK (member_allcheck in('T','F')) ENABLE;


ALTER TABLE 'show_member' ADD CHECK (member_allcheck in('T','F')) ENABLE;
 
ALTER TABLE 'show_member' ADD CHECK (member_smsck in('T','F')) ENABLE;
 
ALTER TABLE 'show_member' ADD CHECK (member_emailck in('T','F')) ENABLE;
ALTER TABLE 'show_group' ADD CHECK (group_delete_ch in('T','F')) ENABLE;

 alter table show_member add (MEMBER_STOP varchar2(20)  check(MEMBER_STOP in('T','F')));
alter table show_member modify (MEMBER_STOP default 'F');

alter table show_member add (MEMBER_REFUND_COU number);
alter table show_member add (MEMBER_REFUND_LAST DATE);

Insert into  SHOW_GROUP (GROUP_NO,MEMBER_NO,GROUP_NAME,GROUP_ADDRESS,GROUP_CATEGORY,GROUP_PHONE,GROUP_CH,GROUP_START,GROUP_END,GROUP_FILES,GROUP_DELETE_CH) values (23,1,'q','q','q','q',null,to_timestamp('16/11/01 03:03:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/11/01 19:19:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'logo.png','F');
Insert into  SHOW_GROUP (GROUP_NO,MEMBER_NO,GROUP_NAME,GROUP_ADDRESS,GROUP_CATEGORY,GROUP_PHONE,GROUP_CH,GROUP_START,GROUP_END,GROUP_FILES,GROUP_DELETE_CH) values (1,1,'��Ÿ����','����Ư����','ī��','010-1234-5678','T',to_timestamp('16/11/01 14:11:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/11/01 19:11:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'/onshow/cover_image/1_cover.jpg','F');
Insert into  SHOW_GROUP (GROUP_NO,MEMBER_NO,GROUP_NAME,GROUP_ADDRESS,GROUP_CATEGORY,GROUP_PHONE,GROUP_CH,GROUP_START,GROUP_END,GROUP_FILES,GROUP_DELETE_CH) values (2,1,'��Ÿ����','����Ư����','ī��','010-1234-5678','T',to_timestamp('16/11/01 14:11:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/11/01 19:11:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'/onshow/cover_image/1_cover.jpg','T');
Insert into  SHOW_GROUP (GROUP_NO,MEMBER_NO,GROUP_NAME,GROUP_ADDRESS,GROUP_CATEGORY,GROUP_PHONE,GROUP_CH,GROUP_START,GROUP_END,GROUP_FILES,GROUP_DELETE_CH) values (8,1,'��Ÿ����','����Ư����','ī��','010-1234-5678','T',to_timestamp('16/11/01 14:11:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/11/01 19:11:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'/onshow/cover_image/1_cover.jpg','T');
Insert into  SHOW_GROUP (GROUP_NO,MEMBER_NO,GROUP_NAME,GROUP_ADDRESS,GROUP_CATEGORY,GROUP_PHONE,GROUP_CH,GROUP_START,GROUP_END,GROUP_FILES,GROUP_DELETE_CH) values (9,1,'��Ÿ����','����Ư����','ī��','010-1234-5678','T',to_timestamp('16/11/01 14:11:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/11/01 19:11:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'/onshow/cover_image/1_cover.jpg','F');
Insert into  SHOW_GROUP (GROUP_NO,MEMBER_NO,GROUP_NAME,GROUP_ADDRESS,GROUP_CATEGORY,GROUP_PHONE,GROUP_CH,GROUP_START,GROUP_END,GROUP_FILES,GROUP_DELETE_CH) values (10,1,'��Ÿ����','����Ư����','ī��','010-1234-5678','T',to_timestamp('16/11/01 14:11:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/11/01 19:11:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'/onshow/cover_image/1_cover.jpg','F');
Insert into  SHOW_GROUP (GROUP_NO,MEMBER_NO,GROUP_NAME,GROUP_ADDRESS,GROUP_CATEGORY,GROUP_PHONE,GROUP_CH,GROUP_START,GROUP_END,GROUP_FILES,GROUP_DELETE_CH) values (11,1,'����','����','�н�','010-1234-5678','T',to_timestamp('16/11/25 09:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/11/25 20:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'AAAAA','F');
Insert into  SHOW_GROUP (GROUP_NO,MEMBER_NO,GROUP_NAME,GROUP_ADDRESS,GROUP_CATEGORY,GROUP_PHONE,GROUP_CH,GROUP_START,GROUP_END,GROUP_FILES,GROUP_DELETE_CH) values (19,1,'��ũ�ٽ�','��������д���','������','010-1234-5678',null,to_timestamp('16/11/01 09:01:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/11/01 21:01:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'logo.png','F');
Insert into  SHOW_GROUP (GROUP_NO,MEMBER_NO,GROUP_NAME,GROUP_ADDRESS,GROUP_CATEGORY,GROUP_PHONE,GROUP_CH,GROUP_START,GROUP_END,GROUP_FILES,GROUP_DELETE_CH) values (22,1,'����','��������д���','������','010-1357-2468',null,to_timestamp('16/11/01 10:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/11/01 21:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'give.png','F');
Insert into  SHOW_GROUP (GROUP_NO,MEMBER_NO,GROUP_NAME,GROUP_ADDRESS,GROUP_CATEGORY,GROUP_PHONE,GROUP_CH,GROUP_START,GROUP_END,GROUP_FILES,GROUP_DELETE_CH) values (25,1,'f','f','f','f','F',to_timestamp('16/11/01 02:03:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/11/01 19:20:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'top_bg.jpg','F');
Insert into  SHOW_GROUP (GROUP_NO,MEMBER_NO,GROUP_NAME,GROUP_ADDRESS,GROUP_CATEGORY,GROUP_PHONE,GROUP_CH,GROUP_START,GROUP_END,GROUP_FILES,GROUP_DELETE_CH) values (17,1,'a','a','a','a',null,to_timestamp('16/11/01 02:02:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/11/01 19:18:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'logo.png','F');
Insert into  SHOW_GROUP (GROUP_NO,MEMBER_NO,GROUP_NAME,GROUP_ADDRESS,GROUP_CATEGORY,GROUP_PHONE,GROUP_CH,GROUP_START,GROUP_END,GROUP_FILES,GROUP_DELETE_CH) values (26,1,'r','r','r','r','F',to_timestamp('16/11/01 02:03:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/11/01 18:19:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'logo.png','F');
Insert into  SHOW_GROUP (GROUP_NO,MEMBER_NO,GROUP_NAME,GROUP_ADDRESS,GROUP_CATEGORY,GROUP_PHONE,GROUP_CH,GROUP_START,GROUP_END,GROUP_FILES,GROUP_DELETE_CH) values (18,1,'��ũ�ٽ�','��������д���','������','010-1234-5678',null,to_timestamp('16/11/01 09:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/11/01 21:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'top_bg.jpg','F');
Insert into  SHOW_GROUP (GROUP_NO,MEMBER_NO,GROUP_NAME,GROUP_ADDRESS,GROUP_CATEGORY,GROUP_PHONE,GROUP_CH,GROUP_START,GROUP_END,GROUP_FILES,GROUP_DELETE_CH) values (20,1,'��ũ�ٽ�','��������д���','������','010-1234-5678',null,to_timestamp('16/11/01 09:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/11/01 21:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'logo.png','F');
Insert into  SHOW_GROUP (GROUP_NO,MEMBER_NO,GROUP_NAME,GROUP_ADDRESS,GROUP_CATEGORY,GROUP_PHONE,GROUP_CH,GROUP_START,GROUP_END,GROUP_FILES,GROUP_DELETE_CH) values (21,1,'�䱸��Ʈ','��������д���','������','010-9876-5432',null,to_timestamp('16/11/01 09:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/11/01 20:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'top_bg.jpg','F');
Insert into  SHOW_GROUP (GROUP_NO,MEMBER_NO,GROUP_NAME,GROUP_ADDRESS,GROUP_CATEGORY,GROUP_PHONE,GROUP_CH,GROUP_START,GROUP_END,GROUP_FILES,GROUP_DELETE_CH) values (24,1,'w','w','w','w',null,to_timestamp('16/11/01 02:03:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('16/11/01 19:19:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'logo.png','F');

