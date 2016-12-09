package kr.co.show.community.domain;

public class MyPageVO {
	
	private int order_no;
	private int  member_no;
	
	private String menu_name;
	private int menu_count;
	private int menu_price;
	
	private String group_name;
	private String group_phone;
	
	private String owner_ch;

	public int getOrder_no() {
		return order_no;
	}

	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public String getMenu_name() {
		return menu_name;
	}

	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}

	public int getMenu_count() {
		return menu_count;
	}

	public void setMenu_count(int menu_count) {
		this.menu_count = menu_count;
	}

	public int getMenu_price() {
		return menu_price;
	}

	public void setMenu_price(int menu_price) {
		this.menu_price = menu_price;
	}

	public String getGroup_name() {
		return group_name;
	}

	public void setGroup_name(String group_name) {
		this.group_name = group_name;
	}

	public String getGroup_phone() {
		return group_phone;
	}

	public void setGroup_phone(String group_phone) {
		this.group_phone = group_phone;
	}

	public String getOwner_ch() {
		return owner_ch;
	}

	public void setOwner_ch(String owner_ch) {
		this.owner_ch = owner_ch;
	}



	@Override
	public String toString() {
		return "MyPageVO [order_no=" + order_no + ", member_no=" + member_no + ", menu_name=" + menu_name
				+ ", menu_count=" + menu_count + ", menu_price=" + menu_price + ", group_name=" + group_name
				+ ", group_phone=" + group_phone + ", owner_ch=" + owner_ch + "]";
	}


	
	
}
