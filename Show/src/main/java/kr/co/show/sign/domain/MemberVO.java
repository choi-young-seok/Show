package kr.co.show.sign.domain;

public class MemberVO {
	private int id;
	private String email;
	private String name;
	private String nickName;
	private String password;
	private String phone;
	private String birthday;
	private String allCheck = "F";
	private String emailCheck = "F";
	private String smsCheck = "F";
	private int position = 10;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public int getPosition() {
		return position;
	}
	public void setPosition(int position) {
		this.position = position;
	}
	public String getAllCheck() {
		return allCheck;
	}
	public void setAllCheck(String allCheck) {
		this.allCheck = allCheck;
	}
	public String getEmailCheck() {
		return emailCheck;
	}
	public void setEmailCheck(String emailCheck) {
		this.emailCheck = emailCheck;
	}
	public String getSmsCheck() {
		return smsCheck;
	}
	public void setSmsCheck(String smsCheck) {
		this.smsCheck = smsCheck;
	}
	
}
