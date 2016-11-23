package kr.co.show.sign.domain;

public class MemberVO {
	private int member_no;
	private String member_email;
	private String member_name;
	private String member_nickName;
	private String member_pass;
	private String member_phone;
	private String member_birth;
	private String member_allcheck = "F";
	private String member_smsck = "F";
	private String member_emailck = "F";
	private String member_position = "10";
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_nickName() {
		return member_nickName;
	}
	public void setMember_nickName(String member_nickName) {
		this.member_nickName = member_nickName;
	}
	public String getMember_pass() {
		return member_pass;
	}
	public void setMember_pass(String member_pass) {
		this.member_pass = member_pass;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public String getMember_birth() {
		return member_birth;
	}
	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}
	public String getMember_allcheck() {
		return member_allcheck;
	}
	public void setMember_allcheck(String member_allcheck) {
		this.member_allcheck = member_allcheck;
	}
	public String getMember_smsck() {
		return member_smsck;
	}
	public void setMember_smsck(String member_smsck) {
		this.member_smsck = member_smsck;
	}
	public String getMember_emailck() {
		return member_emailck;
	}
	public void setMember_emailck(String member_emailck) {
		this.member_emailck = member_emailck;
	}
	public String getMember_position() {
		return member_position;
	}
	public void setMember_position(String member_position) {
		this.member_position = member_position;
	}
	@Override
	public String toString() {
		return "MemberVO [member_no=" + member_no + ", member_email=" + member_email + ", member_name=" + member_name
				+ ", member_nickName=" + member_nickName + ", member_pass=" + member_pass + ", member_phone="
				+ member_phone + ", member_birth=" + member_birth + ", member_allcheck=" + member_allcheck
				+ ", member_smsck=" + member_smsck + ", member_emailck=" + member_emailck + ", member_position="
				+ member_position + "]";
	}
	
	
}
