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
values (member_seq.nextval, 'aa@naver.com', '��浿', '�Ѹ�', 'asdf123','010-1234-1234', sysdate, 'T', 'T', 'T', '10');

select member_email
	from show_member
	where member_name = '��浿' and member_phone = '010-1234-1234';

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

select * from show_group; //�޴� ���̺� ����
select * from show_order; //�ֹ�
select * from show_menu; //�޴�����

insert into show_order (order_no, member_no, group_no, order_name, order_phone, reservation_time, order_price, order_count, order_ask, order_ask2, order_ch)
values (show_order_seq.nextval, 5, 2, '��ö', '010-1234-1243', to_date('17:00', 'HH24:MI'), 1500, 2, '������ �Ƹ޸�ī��', '��������', 'T');
insert into show_order (order_no, member_no, group_no, order_name, order_phone, reservation_time, order_price, order_count, order_ask, order_ask2, order_ch)
values (show_order_seq.nextval, 5, 2, '��ö', '010-1234-1243', to_date('16:00', 'HH24:MI'), 8000, 3, '�δ��', '��������', 'T');
insert into show_order (order_no, member_no, group_no, order_name, order_phone, reservation_time, order_price, order_count, order_ask, order_ask2, order_ch)
values (show_order_seq.nextval, 5, 2, '��ö', '010-1234-1243', to_date('15:00', 'HH24:MI'), 20000, 5, '������', '��������', 'T');
insert into show_order (order_no, member_no, group_no, order_name, order_phone, reservation_time, order_price, order_count, order_ask, order_ask2, order_ch)
values (show_order_seq.nextval, 5, 2, '��ö', '010-1234-1243', to_date('14:00', 'HH24:MI'), 13000, 1, '������', '��������', 'T');
insert into show_order (order_no, member_no, group_no, order_name, order_phone, reservation_time, order_price, order_count, order_ask, order_ask2, order_ch)
values (show_order_seq.nextval, 5, 2, '��ö', '010-1234-1243', to_date('13:00', 'HH24:MI'), 19000, 2, '��䰣��ġŲ', '��������', 'T');


insert into show_menu_check (order_no, member_no, group_no, menu_no, menu_name, menu_count, menu_price)
values (show_menu_check_seq.nextval, 5, 1, '�Ƹ޸�ī��', 2, 1500);
insert into show_menu_check (order_no, member_no, group_no, menu_no, menu_name, menu_count, menu_price)
values (show_menu_check_seq.nextval, 5, 1, '�Ƹ޸�ī��', 2, 1500);
insert into show_menu_check (order_no, member_no, group_no, menu_no, menu_name, menu_count, menu_price)
values (show_menu_check_seq.nextval, 5, 1, '�Ƹ޸�ī��', 2, 1500);
insert into show_menu_check (order_no, member_no, group_no, menu_no, menu_name, menu_count, menu_price)
values (show_menu_check_seq.nextval, 5, 1, '�Ƹ޸�ī��', 2, 1500);
insert into show_menu_check (order_no, member_no, group_no, menu_no, menu_name, menu_count, menu_price)
values (show_menu_check_seq.nextval, 5, 1, '�Ƹ޸�ī��', 2, 1500);

select group_name
from show_group
where member_no = #{member_no}
