alter table show_member add (member_withdraw varchar2(20) default 'F')
alter table show_member add (member_stop varchar2(20) default 'F')

alter table show_member add (member_refund_cou number default 0)

alter table show_member add (member_refund_last date)
alter table show_member add (MEMBER_STOP_REGDATE date)

insert into SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST,MEMBER_STOP_REGDATE) values (6,'rcn115@naver.com','최용석','컹컹','asdf123','010-1234-1234',to_date('16/11/28','RR/MM/DD'),'T','T','T','10','F','F',0,null,null);
insert into SHOW_MEMBER (MEMBER_NO,MEMBER_EMAIL,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_PASS,MEMBER_PHONE,MEMBER_BIRTH,MEMBER_ALLCHECK,MEMBER_SMSCK,MEMBER_EMAILCK,MEMBER_POSITION,MEMBER_WITHDRAW,MEMBER_STOP,MEMBER_REFUND_COU,MEMBER_REFUND_LAST,MEMBER_STOP_REGDATE) values (show_member_seq.nextval,'test@naver.com','이하은','코꾸녕','asdf123','010-1234-1234',to_date('16/11/28','RR/MM/DD'),'T','T','T','10','F','F',0,null,null);


		insert into show_group 
		(group_no,member_no,group_name,group_address,group_category,group_phone,
			group_start,group_end,group_files)
		values 
		(show_group_seq.nextval,6,'상호명테스트','광주광역시금호동','음식점','01033385525',
			to_timestamp('0900','hh24:mi'),to_timestamp('2300','hh24:mi'),'/2016/12/12/s_d899f509-65da-465c-b173-91979508c15d_KakaoTalk_20161208_201927542.png')
	
			select * from show_group;