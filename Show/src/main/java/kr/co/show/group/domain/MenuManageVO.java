package kr.co.show.group.domain;

public class MenuManageVO {
	private int menu_no;
	private int member_no;
	private int group_no;
	private String menu_name;
	private int menu_price;
	private String menu_category;
	
	public int getMenu_no() {
		return menu_no;
	}
	
	public void setMenu_no(int menu_no) {
		this.menu_no = menu_no;
	}
	
	public int getMember_no() {
		return member_no;
	}
	
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	
	public int getGroup_no() {
		return group_no;
	}
	
	public void setGroup_no(int group_no) {
		this.group_no = group_no;
	}
	
	public String getMenu_name() {
		return menu_name;
	}
	
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	
	public int getMenu_price() {
		return menu_price;
	}
	
	public void setMenu_price(int menu_price) {
		this.menu_price = menu_price;
	}
	
	public String getMenu_category() {
		return menu_category;
	}
	
	public void setMenu_category(String menu_category) {
		this.menu_category = menu_category;
	}

}
