package kr.co.show.group.domain;

import java.sql.Date;

public class OrderVO {
	private int order_no;
	private int member_no;
	private int group_no;
	
	private String order_name;
	private String order_phone;
	
	private Date order_time;
	private Date reservation_time;
	
	private String order_price;
	private String order_count;
	
	private String order_ask;
	private String order_ask2;
	
	private String order_ch;
	private String owner_ch;
	
	private String order_refund;

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

	public Date getOrder_time() {
		return order_time;
	}

	public void setOrder_time(Date order_time) {
		this.order_time = order_time;
	}

	public Date getReservation_time() {
		return reservation_time;
	}

	public void setReservation_time(Date reservation_time) {
		this.reservation_time = reservation_time;
	}

	public String getOrder_price() {
		return order_price;
	}

	public void setOrder_price(String order_price) {
		this.order_price = order_price;
	}

	public String getOrder_count() {
		return order_count;
	}

	public void setOrder_count(String order_count) {
		this.order_count = order_count;
	}

	public String getOrder_ask() {
		return order_ask;
	}

	public void setOrder_ask(String order_ask) {
		this.order_ask = order_ask;
	}

	public String getOrder_ask2() {
		return order_ask2;
	}

	public void setOrder_ask2(String order_ask2) {
		this.order_ask2 = order_ask2;
	}

	public String getOrder_ch() {
		return order_ch;
	}

	public void setOrder_ch(String order_ch) {
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
}