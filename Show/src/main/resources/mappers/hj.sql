create table show_member(--지움
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


create table show_group(--지움
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



create table SHOW_MENU(--지움
MENU_NO number primary key,
MEMBER_NO number references  SHOW_MEMBER(MEMBER_NO),
GROUP_NO NUMBER references  SHOW_GROUP(GROUP_NO),
MENU_NAME VARCHAR2(50),
MENU_PRICE NUMBER,
MENU_CATEGORY varchar2(50)
);

create sequence  show_menu_seq   start with 1   increment by 1   nocycle   nocache;


create table  SHOW_SIDEMENU( --지움
SIDEMENU_NO number primary key,
MENU_NO NUMBER references  SHOW_MENU(MENU_NO),
MEMBER_NO NUMBER references  SHOW_MEMBER(MEMBER_NO),
GROUP_NO NUMBER references  SHOW_GROUP(GROUP_NO),
SIDEMENU_NAME varchar2(30),
SIDEMENU_PAY NUMBER,
SIDEMENU_CATEGORY VARCHAR2(50)
);

create sequence  show_side_seq   start with 1   increment by 1   nocycle   nocache;


create table  show_riview(--지움
RIVIEW_NO NUMBER primary key,
MEMBER_NO NUMBER references  SHOW_MEMBER(MEMBER_NO),
GROUP_NO number references  SHOW_GROUP(GROUP_NO),
NICKNAME VARCHAR2(20),
REVIEW_REGDATE TIMESTAMP,
REVIEW_TEXT VARCHAR2(4000),
REVIEW_SCORE number
);

create sequence  show_riview_seq   start with 1   increment by 1   nocycle   nocache;


create table  show_order(--지움
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
OWNER_CH VARCHAR2(10) check( OWNER_CH in('신청중','대기','완료')),
ORDER_REFUND VARCHAR2(10)  check(ORDER_REFUND in('T','F'))
);

create sequence  show_order_seq   start with 1   increment by 1   nocycle   nocache;


create table  show_menu_check(--지움
MEMBER_NO NUMBER REFERENCES  SHOW_MEMBER(MEMBER_NO),
GROUP_NO NUMBER references  SHOW_GROUP(GROUP_NO),
MENU_NO NUMBER REFERENCES  SHOW_MENU(MENU_NO),
ORDER_NO NUMBER references  SHOW_ORDER(ORDER_NO),
MENU_NAME VARCHAR2(100),
MENU_COUNT NUMBER,
MENU_PRICE NUMBER
);


create table  SHOW_notice(--지움
NOTICE_NO NUMBER primary key,
NOTICE_TITLE VARCHAR2(50),
NOTICE_TEXT VARCHAR2(4000),
NOTICE_REGDATE timestamp,
NOTICE_CH VARCHAR2(10) check(NOTICE_CH in('공지','이벤트'))
);

create sequence  show_notice_seq   start with 1   increment by 1   nocycle   nocache;


create table  show_faq(--지움
FAQ_NO NUMBER primary key,
FAQ_CATEGORY VARCHAR2(30),
FAQ_TITLE VARCHAR(50),
FAQ_TEXT VARCHAR2(4000)
);

create sequence  show_faq_seq   start with 1   increment by 1   nocycle   nocache;


create table  show_qna(--지움
QNA_NO NUMBER primary KEY,
QNA_NAME VARCHAR2(5),
QNA_EMAIL VARCHAR2(50),
QNA_CH VARCHAR2(50),
QNA_TITLE VARCHAR2(50),
QNA_TEXT VARCHAR2(4000),
QNA_CATEGORY VARCHAR2(30)
);

create sequence  shoq_qna_seq   start with 1   increment by 1   nocycle   nocache;


create table  shoq_area(--지움
AREA_NO NUMBER primary key,
AREA_UNIV VARCHAR2(50),
AREA VARCHAR2(50)
);

create sequence  show_area_seq   start with 1   increment by 1   nocycle   nocache;


create table  show_withdraw(--지움
withdraw_no number primary key,
member_no number references  show_member(member_no),
withdraw_regdate date
);

create sequence  show_withdraw_seq   start with 1   increment by 1   nocycle   nocache;


alter table SHOW_GROUP modify (group_ch default 'F');

alter table SHOW_ORDER modify (OWNER_CH default '신청중');

alter table show_ORDER modify (ORDER_REFUND default 'F');

alter table show_member modify (member_withdraw default 'F');

alter table show_member modify (member_phone varchar2(50));

alter table show_member add (MEMBER_WITHDRAW varchar2(30)  check(member_withdraw in('T','F')));

insert into show_member (member_no, member_email, member_name, member_nickname, member_pass, member_phone, member_birth, member_position)
values (show_member_seq.nextval, 'asdf@naver.com', '홍길동', '길동', 'a123', '010-1234-5678', sysdate, '20');

update show_member set member_withdraw='F';

alter table show_group rename column group_catagory to group_category;

alter table show_group rename column CITY_NAME to GROUP_ADDRESS;

alter table show_group modify (group_phone varchar2(50));



select * from show_group;
select * from show_member;

ALTER TABLE 'SHOW_NOTICE' ADD CHECK ( NOTICE_CH in('공지','이벤트')) ENABLE;
 
Insert into  SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST) values (1,'aa@naver.com','고길동','둘리','a1234','011-ddd-123',to_date('16/11/22','RR/MM/DD'),'T','T','T','20','F','F',0,null);
Insert into  SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST) values (2,'bb@naver.com','또치','도너','asdf123','010-1512-6222',to_date('16/11/22','RR/MM/DD'),'T','T','T','10','T','F',0,null);
Insert into  SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST) values (3,'cc@naver.com','루피','몽키','asdf123','010-1234-1234',to_date('16/11/22','RR/MM/DD'),'T','T','T','10','F','F',0,null);
Insert into  SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST) values (6,'rcn115@naver.com','최용석','컹컹','asdf123','010-1234-1234',to_date('16/11/28','RR/MM/DD'),'T','T','T','10','F','F',0,null);
Insert into  SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST) values (7,'lgh3680@naver.com','이길학','조장님','onshow899835','010-1234-1234',to_date('16/11/28','RR/MM/DD'),'T','T','T','10','F','F',0,null);
Insert into  SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST) values (13,'awaybook@naver.com','김소영','oyok','we1234','010-1234-1234',to_date('01/02/15','RR/MM/DD'),'T','T','T','10','F','F',0,null);
Insert into  SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST) values (4,'ee@naver.com','살선생','촉수','asdf123@','010-9098-3456',to_date('93/08/25','RR/MM/DD'),'T','T','T','10','F','F',0,null);
Insert into  SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST) values (5,'rocjf1682@naver.com','윤철','아돌','onshow870026','010-1234-1234',to_date('16/11/28','RR/MM/DD'),'T','T','T','10','F','F',0,null);

ALTER TABLE 'SHOW_MEMBER' ADD CHECK (member_allcheck in('T','F')) ENABLE;

--

ALTER TABLE 'show_member' ADD CHECK (member_allcheck in('T','F')) ENABLE;
 
ALTER TABLE 'show_member' ADD CHECK (member_smsck in('T','F')) ENABLE;
 
ALTER TABLE 'show_member' ADD CHECK (member_emailck in('T','F')) ENABLE;

 alter table show_member add (MEMBER_STOP varchar2(20)  check(MEMBER_STOP in('T','F')));
alter table show_member modify (MEMBER_STOP default 'F');

alter table show_member add (MEMBER_REFUND_COU number);
alter table show_member add (MEMBER_REFUND_LAST DATE);


Insert into  SHOW_FAQ (FAQ_NO,FAQ_CATEGORY,FAQ_TITLE,FAQ_TEXT) values (1,'회원가입','회원가입이 안됩니다.','문의하기를 통해 성함과 핸드폰번호를 보내주세요.');
Insert into  SHOW_FAQ (FAQ_NO,FAQ_CATEGORY,FAQ_TITLE,FAQ_TEXT) values (2,'회원가입','비밀번호를 까먹었어요.','비밀번호 찾기를 통해 찾아주세요.');
Insert into  SHOW_FAQ (FAQ_NO,FAQ_CATEGORY,FAQ_TITLE,FAQ_TEXT) values (3,'바로결제','결제 오류가 났어요.','문의하기를 통해 카드번호와 상황을 적어서 보내주세요.');
Insert into  SHOW_FAQ (FAQ_NO,FAQ_CATEGORY,FAQ_TITLE,FAQ_TEXT) values (4,'리뷰관리','리뷰가 안달려요.','문의하기를 통해 문의해주세요.');
Insert into  SHOW_FAQ (FAQ_NO,FAQ_CATEGORY,FAQ_TITLE,FAQ_TEXT) values (5,'이용문의','어떻게 사용하는 것인가요??','서비스소개를 봐주시길 바랍니다.');
Insert into  SHOW_FAQ (FAQ_NO,FAQ_CATEGORY,FAQ_TITLE,FAQ_TEXT) values (6,'이용문의','매장 검색은 어떻게 하나요??','메인화면 검색 바를 통해서 가능합니다.');
Insert into  SHOW_FAQ (FAQ_NO,FAQ_CATEGORY,FAQ_TITLE,FAQ_TEXT) values (7,'광고문의','광고문의를 어디서 하나요??','준비중에 있습니다.');
Insert into  SHOW_FAQ (FAQ_NO,FAQ_CATEGORY,FAQ_TITLE,FAQ_TEXT) values (8,'불편문의','가게에서 불친절합니다.','해당 가게 이름과 위치 그리고 상황을 적어서 문의해주세요.');
Insert into  SHOW_FAQ (FAQ_NO,FAQ_CATEGORY,FAQ_TITLE,FAQ_TEXT) values (9,'기타','가게 신청은 어떻게 하나요??','준비중입니다.');
