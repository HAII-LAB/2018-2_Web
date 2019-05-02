package my.model;

import java.util.Date;

public class Purchase {
	private int purchaseId;
	private String userId;
	private String content;
	private int payment;
	private Date purchaseDate;
	public Purchase() {
	}
	public Purchase(String userId, String content, int payment, Date purchaseDate) {
		super();
		this.userId = userId;
		this.content = content;
		this.payment = payment;
		this.purchaseDate = purchaseDate;
	}
	public int getPurchaseId() {
		return purchaseId;
	}

	public void setPurchaseId(int purchaseId) {
		this.purchaseId = purchaseId;
	}

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
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
	public Date getPurchaseDate() {
		return purchaseDate;
	}
	public void setPurchaseDate(Date purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	
}
