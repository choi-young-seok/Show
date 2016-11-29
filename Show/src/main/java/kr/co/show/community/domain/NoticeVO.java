package kr.co.show.community.domain;

import java.sql.Date;

public class NoticeVO {
	private int notice_no;
	private String notice_title;
	private String notice_text;
	private String notice_ch;
	private Date notice_regdate;
	
	public int getNotice_no() {
		return notice_no;
	}
	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_text() {
		return notice_text;
	}
	public void setNotice_text(String notice_text) {
		this.notice_text = notice_text;
	}
	public String getNotice_ch() {
		return notice_ch;
	}
	public void setNotice_ch(String notice_ch) {
		this.notice_ch = notice_ch;
	}
	public Date getNotice_regdate() {
		return notice_regdate;
	}
	public void setNotice_regdate(Date notice_regdate) {
		this.notice_regdate = notice_regdate;
	}
	
}
