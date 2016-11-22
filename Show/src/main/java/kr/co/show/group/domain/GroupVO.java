package kr.co.show.group.domain;

import java.util.Date;

public class GroupVO {
	
	private String group_phone;
	private String group_name;
	private String group_address;
	private String group_category;
	private Date group_start;
	private Date group_end;
	
	public GroupVO() {
	}

	public String getGroup_phone() {
		return group_phone;
	}

	public void setGroup_phone(String group_phone) {
		this.group_phone = group_phone;
	}

	public String getGroup_name() {
		return group_name;
	}

	public void setGroup_name(String group_name) {
		this.group_name = group_name;
	}

	public String getGroup_address() {
		return group_address;
	}

	public void setGroup_address(String group_address) {
		this.group_address = group_address;
	}

	public String getGroup_category() {
		return group_category;
	}

	public void setGroup_category(String group_category) {
		this.group_category = group_category;
	}

	public Date getGroup_start() {
		return group_start;
	}

	public void setGroup_start(Date group_start) {
		this.group_start = group_start;
	}

	public Date getGroup_end() {
		return group_end;
	}

	public void setGroup_end(Date group_end) {
		this.group_end = group_end;
	}
	
}
