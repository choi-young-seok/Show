select * from SHOW_QNA;

select * from SHOW_NOTICE;

select * from show_qna where qna_category ='오류문의' and qna_ch is not null;


		select count(*) from show_qna where qna_category = '오류문의' where    
		
			select * from show_qna  
			select * from show_qna where qna_category = '회원정보문의'   
			select * from show_qna where qna_category = '오류문의'   
			select * from show_qna where qna_category = '오류문의'   
			select * from show_qna where qna_category = '오류문의'   
			select * from show_qna where qna_category = '오류문의'   
			select * from show_qna where qna_category = '오류문의'   
			select * from show_qna where qna_category = '오류문의'   
			
			
			select *
		from show_order
		where member_no = 1 and (owner_ch ='신청중' or owner_ch='대기'); 
		
		
		select *
		from show_group
		where group_no in (select group_no
							from show_order
							where member_no = 1
							and (owner_ch ='신청중' or owner_ch='대기'))
							
							
							
							select *
		from show_menu_check
		where group_no in(select group_no
							from show_order
							where member_no = 1
							and (owner_ch ='신청중' or owner_ch='대기'))	
			and order_no in (select order_no
							from show_order
							where member_no = 1
							and (owner_ch ='신청중' or owner_ch='대기'))