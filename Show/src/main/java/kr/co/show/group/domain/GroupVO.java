package kr.co.show.group.domain;

import java.util.Arrays;

public class GroupVO {

	private int group_no;
	private int member_no;
	private String member_name;
	private String group_name;
	private String group_address;
	private String group_category;
	private String group_phone;
	private String group_ch;
	private String group_start;
	private String group_end;
	private String[] group_files;
	private String group_delete_ch;
	private String group_regdate;

	public GroupVO() {
	}

	public int getGroup_no() {
		return group_no;
	}

	public void setGroup_no(int group_no) {
		this.group_no = group_no;
	}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
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

	public String getGroup_phone() {
		return group_phone;
	}

	public void setGroup_phone(String group_phone) {
		this.group_phone = group_phone;
	}

	public String getGroup_ch() {
		return group_ch;
	}

	public void setGroup_ch(String group_ch) {
		this.group_ch = group_ch;
	}

	public String getGroup_start() {
		return group_start;
	}

	public void setGroup_start(String group_start) {
		this.group_start = group_start;
	}

	public String getGroup_end() {
		return group_end;
	}

	public void setGroup_end(String group_end) {
		this.group_end = group_end;
	}

	public String[] getGroup_files() {
		return group_files;
	}

	public void setGroup_files(String[] group_files) {
		this.group_files = group_files;
	}

	public String getGroup_delete_ch() {
		return group_delete_ch;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public void setGroup_delete_ch(String group_delete_ch) {
		this.group_delete_ch = group_delete_ch;
	}

	public String getGroup_regdate() {
		return group_regdate;
	}

	public void setGroup_regdate(String group_regdate) {
		this.group_regdate = group_regdate;
	}

	@Override
	public String toString() {
		return "GroupVO [group_no=" + group_no + ", member_no=" + member_no + ", member_name=" + member_name
				+ ", group_name=" + group_name + ", group_address=" + group_address + ", group_category="
				+ group_category + ", group_phone=" + group_phone + ", group_ch=" + group_ch + ", group_start="
				+ group_start + ", group_end=" + group_end + ", group_files=" + Arrays.toString(group_files)
				+ ", group_delete_ch=" + group_delete_ch + ", group_regdate=" + group_regdate + "]";
	}

}
