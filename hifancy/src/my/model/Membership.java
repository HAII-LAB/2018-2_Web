package my.model;

import java.util.Date;

public class Membership {
	private int membershipId;
	private String userId;
	private String password;
	private String name;
	private String email;
	private Date birthdate;
	
	public Membership() {
	}
	public Membership(String userId, String password, String name, String email, Date birthdate) {
		super();
		this.userId = userId;
		this.password = password;
		this.name = name;
		this.email = email;
		this.birthdate = birthdate;
	}
	public int getMembershipId() {
		return membershipId;
	}
	public void setMembershipId(int membershipId) {
		this.membershipId = membershipId;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}
	
}
