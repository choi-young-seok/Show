select * from SHOW_QNA;

select * from SHOW_NOTICE;

select * from show_qna where qna_category ='��������' and qna_ch is not null;


		select count(*) from show_qna where qna_category = '��������' where    
		
			select * from show_qna  
			select * from show_qna where qna_category = 'ȸ����������'   
			select * from show_qna where qna_category = '��������'   
			select * from show_qna where qna_category = '��������'   
			select * from show_qna where qna_category = '��������'   
			select * from show_qna where qna_category = '��������'   
			select * from show_qna where qna_category = '��������'   
			select * from show_qna where qna_category = '��������'   
			
			
			select *
		from show_order
		where member_no = 1 and (owner_ch ='��û��' or owner_ch='���'); 
		
		
		select *
		from show_group
		where group_no in (select group_no
							from show_order
							where member_no = 1
							and (owner_ch ='��û��' or owner_ch='���'))
							
							
							
							select *
		from show_menu_check
		where group_no in(select group_no
							from show_order
							where member_no = 1
							and (owner_ch ='��û��' or owner_ch='���'))	
			and order_no in (select order_no
							from show_order
							where member_no = 1
							and (owner_ch ='��û��' or owner_ch='���'))