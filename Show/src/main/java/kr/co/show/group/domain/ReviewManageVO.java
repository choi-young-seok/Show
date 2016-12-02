package kr.co.show.group.domain;

public class ReviewManageVO {
	private int review_no;
	private int member_no;
	private int group_no;
	private String nickname;
	private String review_regdate;
	private String review_text;
	private int review_score;
	
	public int getReview_no() {
		return review_no;
	}
	
	public void setReview_no(int review_no) {
		this.review_no = review_no;
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
	
	public String getNickname() {
		return nickname;
	}
	
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	public String getReview_regdate() {
		return review_regdate;
	}

	public void setReview_regdate(String review_regdate) {
		this.review_regdate = review_regdate;
	}

	public String getReview_text() {
		return review_text;
	}
	
	public void setReview_text(String review_text) {
		this.review_text = review_text;
	}
	
	public int getReview_score() {
		return review_score;
	}
	
	public void setReview_score(int review_score) {
		this.review_score = review_score;
	}
	
}
