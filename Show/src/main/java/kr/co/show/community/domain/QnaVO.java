package kr.co.show.community.domain;

public class QnaVO {
	private int qna_no;
	private String qna_name;
	private String qna_ch;
	private String qna_title;
	private String qna_text;
	private String qna_category;
	private String qna_email;

	public QnaVO() {
		// TODO Auto-generated constructor stub
	}
	
	public String getQna_email() {
		return qna_email;
	}
	
	
	public void setQna_email(String qna_email) {
		this.qna_email = qna_email;
	}
	

	public int getQna_no() {
		return qna_no;
	}
	public void setQna_no(int qna_no) {
		this.qna_no = qna_no;
	}
	public String getQna_name() {
		return qna_name;
	}
	public void setQna_name(String qna_name) {
		this.qna_name = qna_name;
	}
	public String getQna_ch() {
		return qna_ch;
	}
	public void setQna_ch(String qna_ch) {
		this.qna_ch = qna_ch;
	}
	public String getQna_title() {
		return qna_title;
	}
	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}
	public String getQna_text() {
		return qna_text;
	}
	public void setQna_text(String qna_text) {
		this.qna_text = qna_text;
	}
	public String getQna_category() {
		return qna_category;
	}
	public void setQna_category(String qna_category) {
		this.qna_category = qna_category;
	}
	
}
