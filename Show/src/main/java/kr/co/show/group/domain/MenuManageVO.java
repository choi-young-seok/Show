package kr.co.show.group.domain;

public class MenuManageVO {
	private int menu_no;
	private int member_no;
	private int group_no;
	private String menu_name;
	private int menu_price;
	private String menu_category;
	private int sidemenu_no;
	private String sidemenu_name;
	private int sidemenu_pay;
	private String sidemenu_category;
	
	
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

	public int getSidemenu_no() {
		return sidemenu_no;
	}

	public void setSidemenu_no(int sidemenu_no) {
		this.sidemenu_no = sidemenu_no;
	}

	public String getSidemenu_name() {
		return sidemenu_name;
	}

	public void setSidemenu_name(String sidemenu_name) {
		this.sidemenu_name = sidemenu_name;
	}

	public int getSidemenu_pay() {
		return sidemenu_pay;
	}

	public void setSidemenu_pay(int sidemenu_pay) {
		this.sidemenu_pay = sidemenu_pay;
	}

	public String getSidemenu_category() {
		return sidemenu_category;
	}

	public void setSidemenu_category(String sidemenu_category) {
		this.sidemenu_category = sidemenu_category;
	}

	@Override
	public String toString() {
		return "MenuManageVO [menu_no=" + menu_no + ", member_no=" + member_no + ", group_no=" + group_no
				+ ", menu_name=" + menu_name + ", menu_price=" + menu_price + ", menu_category=" + menu_category
				+ ", sidemenu_no=" + sidemenu_no + ", sidemenu_name=" + sidemenu_name + ", sidemenu_pay=" + sidemenu_pay
				+ ", sidemenu_category=" + sidemenu_category + "]";
	}

}
