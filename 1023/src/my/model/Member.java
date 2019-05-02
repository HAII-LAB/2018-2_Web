package my.model;

import java.util.Date;

public class Member {
	private int memberId;
	private String userId;
	private String password;
	private String name;
	private Date birthdate;
	public Member() {
	}
	public Member(String userId, String password, String name, Date birthdate) {
		super();
		this.userId = userId;
		this.password = password;
		this.name = name;
		this.birthdate = birthdate;
	}
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}
	
}
