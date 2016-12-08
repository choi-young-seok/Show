package kr.co.show.group.domain;

import java.util.List;

public class OrderMenuVO {
	private int order_no;
	private int member_no;
	private int group_no;
	
	private String order_name;
	private String order_phone;
	private String order_time;
	private String reservation_time;
	private int order_price;
	private int order_count;
	private int order_ask;
	private int order_ask2;
	private int order_ch;
	private String owner_ch;
	private String order_refund;
	
	//-----------------여기서부터 menu_check-------------------
	
	private String menu_name;
	private int menu_count;
	private int menu_price;
	
	List<MenuCheckVO> mcvo;

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

	public int getGroup_no() {
		return group_no;
	}

	public void setGroup_no(int group_no) {
		this.group_no = group_no;
	}

	public String getOrder_name() {
		return order_name;
	}

	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}

	public String getOrder_phone() {
		return order_phone;
	}

	public void setOrder_phone(String order_phone) {
		this.order_phone = order_phone;
	}

	public String getOrder_time() {
		return order_time;
	}

	public void setOrder_time(String order_time) {
		this.order_time = order_time;
	}

	public String getReservation_time() {
		return reservation_time;
	}

	public void setReservation_time(String reservation_time) {
		this.reservation_time = reservation_time;
	}

	public int getOrder_price() {
		return order_price;
	}

	public void setOrder_price(int order_price) {
		this.order_price = order_price;
	}

	public int getOrder_count() {
		return order_count;
	}

	public void setOrder_count(int order_count) {
		this.order_count = order_count;
	}

	public int getOrder_ask() {
		return order_ask;
	}

	public void setOrder_ask(int order_ask) {
		this.order_ask = order_ask;
	}

	public int getOrder_ask2() {
		return order_ask2;
	}

	public void setOrder_ask2(int order_ask2) {
		this.order_ask2 = order_ask2;
	}

	public int getOrder_ch() {
		return order_ch;
	}

	public void setOrder_ch(int order_ch) {
		this.order_ch = order_ch;
	}

	public String getOwner_ch() {
		return owner_ch;
	}

	public void setOwner_ch(String owner_ch) {
		this.owner_ch = owner_ch;
	}

	public String getOrder_refund() {
		return order_refund;
	}

	public void setOrder_refund(String order_refund) {
		this.order_refund = order_refund;
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

	public List<MenuCheckVO> getMcvo() {
		return mcvo;
	}

	public void setMcvo(List<MenuCheckVO> mcvo) {
		this.mcvo = mcvo;
	}

	
}
