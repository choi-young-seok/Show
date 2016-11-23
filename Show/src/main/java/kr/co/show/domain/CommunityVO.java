package kr.co.show.domain;

public class CommunityVO {
	private int faq_no;
	private String qna_name;
	private String qna_emil;
	private String qna_ch;
	private String qna_title;
	private String qna_text;
	private String qna_category;
	
	public CommunityVO() {
		// TODO Auto-generated constructor stub
	}
	public CommunityVO(int faq_no, String qna_name, String qna_emil, String qna_ch, String qna_title, String qna_text,
			String qna_category) {
		super();
		this.faq_no = faq_no;
		this.qna_name = qna_name;
		this.qna_emil = qna_emil;
		this.qna_ch = qna_ch;
		this.qna_title = qna_title;
		this.qna_text = qna_text;
		this.qna_category = qna_category;
	}
	public int getFaq_no() {
		return faq_no;
	}
	public void setFaq_no(int faq_no) {
		this.faq_no = faq_no;
	}
	public String getQna_name() {
		return qna_name;
	}
	public void setQna_name(String qna_name) {
		this.qna_name = qna_name;
	}
	public String getQna_emil() {
		return qna_emil;
	}
	public void setQna_emil(String qna_emil) {
		this.qna_emil = qna_emil;
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
