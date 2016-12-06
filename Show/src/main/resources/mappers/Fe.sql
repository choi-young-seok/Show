member

drop table member;
create table member(
id number primary key,
email varchar2(100) not null,
name varchar2(15) not null,
nickname varchar2(15) not null,
password varchar2(30) not null,
phone varchar2(15) not null,
birthday varchar2(10) not null,
allcheck VARCHAR2(10) check(allcheck in('T','F')),
emailck VARCHAR2(10) check(emailck in('T','F')),
smsck VARCHAR2(10) check(smsck in('T','F')),
position VARCHAR2(10) check(position in('10','20','30'))
);
drop sequence member_seq;
create sequence member_seq
start with 1
increment by 1
nocycle
nocache;

insert into member
values (member_seq.nextval, 'aa@naver.com', '고길동', '둘리', 'asdf123','010-1234-1234', sysdate, 'T', 'T', 'T', '10');

select member_email
	from show_member
	where member_name = '고길동' and member_phone = '010-1234-1234';

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

select * from show_group; //메뉴 테이블에 띄울거
select * from show_order; //주문
select * from show_menu; //메뉴보기

insert into show_order (order_no, member_no, group_no, order_name, order_phone, reservation_time, order_price, order_count, order_ask, order_ask2, order_ch)
values (show_order_seq.nextval, 5, 2, '윤철', '010-1234-1243', to_date('17:00', 'HH24:MI'), 1500, 2, '차가운 아메리카노', '힘내세요', 'T');
insert into show_order (order_no, member_no, group_no, order_name, order_phone, reservation_time, order_price, order_count, order_ask, order_ask2, order_ch)
values (show_order_seq.nextval, 5, 2, '윤철', '010-1234-1243', to_date('16:00', 'HH24:MI'), 8000, 3, '부대찌개', '힘내세요', 'T');
insert into show_order (order_no, member_no, group_no, order_name, order_phone, reservation_time, order_price, order_count, order_ask, order_ask2, order_ch)
values (show_order_seq.nextval, 5, 2, '윤철', '010-1234-1243', to_date('15:00', 'HH24:MI'), 20000, 5, '감자탕', '힘내세요', 'T');
insert into show_order (order_no, member_no, group_no, order_name, order_phone, reservation_time, order_price, order_count, order_ask, order_ask2, order_ch)
values (show_order_seq.nextval, 5, 2, '윤철', '010-1234-1243', to_date('14:00', 'HH24:MI'), 13000, 1, '탕수육', '힘내세요', 'T');
insert into show_order (order_no, member_no, group_no, order_name, order_phone, reservation_time, order_price, order_count, order_ask, order_ask2, order_ch)
values (show_order_seq.nextval, 5, 2, '윤철', '010-1234-1243', to_date('13:00', 'HH24:MI'), 19000, 2, '양념간장치킨', '힘내세요', 'T');


insert into show_menu_check (order_no, member_no, group_no, menu_no, menu_name, menu_count, menu_price)
values (show_menu_check_seq.nextval, 5, 1, '아메리카노', 2, 1500);
insert into show_menu_check (order_no, member_no, group_no, menu_no, menu_name, menu_count, menu_price)
values (show_menu_check_seq.nextval, 5, 1, '아메리카노', 2, 1500);
insert into show_menu_check (order_no, member_no, group_no, menu_no, menu_name, menu_count, menu_price)
values (show_menu_check_seq.nextval, 5, 1, '아메리카노', 2, 1500);
insert into show_menu_check (order_no, member_no, group_no, menu_no, menu_name, menu_count, menu_price)
values (show_menu_check_seq.nextval, 5, 1, '아메리카노', 2, 1500);
insert into show_menu_check (order_no, member_no, group_no, menu_no, menu_name, menu_count, menu_price)
values (show_menu_check_seq.nextval, 5, 1, '아메리카노', 2, 1500);

select group_name
from show_group
where member_no = #{member_no}


// 메뉴 조작
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