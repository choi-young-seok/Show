member

drop table member;
create table member(
id number primary key,
email varchar2(100) not null,
name varchar2(15) not null,
nickname varchar2(15) not null,
password varchar2(30) not null,
phone varchar2(15) not null,
birthday date not null,
allcheck VARCHAR2(10) check(allcheck in('T','F')),
emailck VARCHAR2(10) check(emailck in('T','F')) default 'F',
smsck VARCHAR2(10) check(smsck in('T','F')) default 'F',
position VARCHAR2(10) check(position in('10','20','30'))
);
drop sequence member_seq;
create sequence member_seq
start with 1
increment by 1
nocycle
nocache;

insert into show_member
values (show_member_seq.nextval, 'aa@naver.com', '고길동', '둘리', 'asdf123','010-1234-1234', sysdate, 'T', 'T', 'T', '10');
insert into show_member
values (show_member_seq.nextval, 'bb@naver.com', '또치', '도너', 'asdf123','010-1234-1234', sysdate, 'T', 'T', 'T', '10');
insert into show_member
values (show_member_seq.nextval, 'cc@naver.com', '루피', '몽키', 'asdf123','010-1234-1234', sysdate, 'T', 'T', 'T', '10');


insert into member (id, email, name, nickName, password, phone, birthday, allCheck, position)
values (member_seq.nextval, '이메일', '이름', '별명', '비밀번호', '폰', '2011-12-23', 'T', 20);

select *
from show_member;

