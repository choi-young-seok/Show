member
select * from show_member;

drop table show_member;
create table show_member( 
   	member_no number primary key, 
	member_email varchar2(100) not null, 
	member_name varchar2(15) not null, 
	member_nickname varchar2(30) not null, 
	member_pass varchar2(30) not null, 
	member_phone varchar2(20) not null, 
	member_birth DATE, 
	member_allcheck VARCHAR2(100), 
	member_smsck VARCHAR2(100), 
	member_emailck VARCHAR2(100), 
	member_position VARCHAR2(10),
	member_withdraw varchar2(20) default 'F',
	member_stop varchar2(20) default 'F',
	member_refund_cou number default 0,
	member_refund_last date,
	member_stop_regdate date
);



drop sequence member_seq;
create sequence member_seq
start with 1
increment by 1
nocycle
nocache;

insert into show_member
values (member_seq.nextval, 'aa@naver.com', '°í±æµ¿', 'µÑ¸®', 'asdf123','010-1234-1234', sysdate, 'T', 'T', 'T', '30', 'F', 'F', 0, sysdate, sysdate);

select member_email
	from show_member
	where member_name = '°í±æµ¿' and member_phone = '010-1234-1234';

select * from show_member;


select *
from show_withdraw;

select member_withdraw
	from show_member
	where member_email = 'bb@naver.com';
	
select member_no
from show_member
where member_email = 'bb@naver.com' and member_pass = 'asdf123';

select *
from show_menu_check;

select * from show_group; //¸Þ´º Å×ÀÌºí¿¡ ¶ç¿ï°Å
select * from show_order; //ÁÖ¹®
select * from show_menu; //¸Þ´ºº¸±â

insert into show_order (order_no, member_no, group_no, order_name, order_phone, reservation_time, order_price, order_count, order_ask, order_ask2, order_ch)
values (show_order_seq.nextval, 5, 2, 'À±Ã¶', '010-1234-1243', to_date('17:00', 'HH24:MI'), 1500, 2, 'Â÷°¡¿î ¾Æ¸Þ¸®Ä«³ë', 'Èû³»¼¼¿ä', 'T');
insert into show_order (order_no, member_no, group_no, order_name, order_phone, reservation_time, order_price, order_count, order_ask, order_ask2, order_ch)
values (show_order_seq.nextval, 5, 2, 'À±Ã¶', '010-1234-1243', to_date('16:00', 'HH24:MI'), 8000, 3, 'ºÎ´ëÂî°³', 'Èû³»¼¼¿ä', 'T');
insert into show_order (order_no, member_no, group_no, order_name, order_phone, reservation_time, order_price, order_count, order_ask, order_ask2, order_ch)
values (show_order_seq.nextval, 5, 2, 'À±Ã¶', '010-1234-1243', to_date('15:00', 'HH24:MI'), 20000, 5, '°¨ÀÚÅÁ', 'Èû³»¼¼¿ä', 'T');
insert into show_order (order_no, member_no, group_no, order_name, order_phone, reservation_time, order_price, order_count, order_ask, order_ask2, order_ch)
values (show_order_seq.nextval, 5, 2, 'À±Ã¶', '010-1234-1243', to_date('14:00', 'HH24:MI'), 13000, 1, 'ÅÁ¼öÀ°', 'Èû³»¼¼¿ä', 'T');
insert into show_order (order_no, member_no, group_no, order_name, order_phone, reservation_time, order_price, order_count, order_ask, order_ask2, order_ch)
values (show_order_seq.nextval, 5, 2, 'À±Ã¶', '010-1234-1243', to_date('13:00', 'HH24:MI'), 19000, 2, '¾ç³ä°£ÀåÄ¡Å²', 'Èû³»¼¼¿ä', 'T');


insert into show_menu_check (order_no, member_no, group_no, menu_no, menu_name, menu_count, menu_price)
values (6, 1, 2, 1, 'Ä«Æä¶ó¶¼', 2, 2000);
insert into show_menu_check (order_no, member_no, group_no, menu_no, menu_name, menu_count, menu_price)
values (6, 1, 2, 1, 'Ä«Æä¶ó¶¼', 3, 2000);
insert into show_menu_check (order_no, member_no, group_no, menu_no, menu_name, menu_count, menu_price)
values (7, 1, 2, 1, 'Ä«Æä¶ó¶¼', 7, 2000);
insert into show_menu_check (order_no, member_no, group_no, menu_no, menu_name, menu_count, menu_price)
values (7, 1, 2, 1, 'Ä«Æä¶ó¶¼', 1, 2000);
insert into show_menu_check (order_no, member_no, group_no, menu_no, menu_name, menu_count, menu_price)
values (8, 1, 2, 1, 'Ä«Æä¶ó¶¼', 4, 2000);

select group_name
from show_group
where member_no = #{member_no}


// ¸Þ´º Á¶ÀÛ
drop table show_menu_check;
create table show_menu_check(
	member_no number not null,
	group_no number not null,
	menu_no number not null,
	order_no number not null,
	menu_name varchar2(50),
	menu_count number,
	menu_price number
);

select *
from show_order;

select *
from show_menu;


select *
from show_order
where group_no = 2 and member_no = 5;

select *
from show_menu_check; (order = 7, 8, 9, 10, 6) (member = 1) (group = 2)

insert into show_menu_check (order_no, member_no, group_no, menu_no, menu_name, menu_count, menu_price)
values (show_menu_check_seq.nextval, 5, 1, '¾Æ¸Þ¸®Ä«³ë', 2, 1500);


select *
		from show_menu_check
		where group_no = 2 and member_no = 1 and order_no = 6;
		
select *
from show_order
where member_no = 1 and (owner_ch ='½ÅÃ»Áß' or owner_ch='´ë±â' )and order_refund='F';