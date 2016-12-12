alter table show_member add (member_withdraw varchar2(20) default 'F')
alter table show_member add (member_stop varchar2(20) default 'F')

alter table show_member add (member_refund_cou number default 0)

alter table show_member add (member_refund_last date)
alter table show_member add (MEMBER_STOP_REGDATE date)

insert into SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST,MEMBER_STOP_REGDATE) values (6,'rcn115@naver.com','ÃÖ¿ë¼®','ÄÈÄÈ','asdf123','010-1234-1234',to_date('16/11/28','RR/MM/DD'),'T','T','T','10','F','F',0,null,null);
insert into SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST,MEMBER_STOP_REGDATE) values (show_member_seq.nextval,'test@naver.com','ÀÌÇÏÀº','ÄÚ²Ù³ç','asdf123','010-1234-1234',to_date('16/11/28','RR/MM/DD'),'T','T','T','10','F','F',0,null,null);