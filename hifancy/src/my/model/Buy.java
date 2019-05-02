package my.model;

public class Buy {
	private int buyId;
	private String name;
	private String email;
	private String content;
	private int payment;
	private String address;
	private String memo;
	public Buy() {
	}
	public Buy(String name, String email, String content, int payment, String address, String memo) {
		super();
		this.name = name;
		this.email = email;
		this.content = content;
		this.payment = payment;
		this.address = address;
		this.memo = memo;
	}
	public int getBuyId() {
		return buyId;
	}
	public void setBuyId(int buyId) {
		this.buyId = buyId;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
}
