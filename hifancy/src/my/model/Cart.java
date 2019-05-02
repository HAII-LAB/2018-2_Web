package my.model;

public class Cart {
	private int cartId;
	private String userId;
	private int productId;
	private int amount;
	private String color;
	private int payment;
	private String cart_productImage;
	private String productname;
	private int productprice;
	public Cart() {
	}
	public Cart(String userId, int productId, int amount, String color, int payment, String cart_productImage, String productname, int productprice) {
		super();
		this.userId = userId;
		this.productId = productId;
		this.amount = amount;
		this.color = color;
		this.payment = payment;
		this.cart_productImage = cart_productImage;
		this.productname = productname;
		this.productprice = productprice;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public int getProductprice() {
		return productprice;
	}
	public void setProductprice(int productprice) {
		this.productprice = productprice;
	}
	public String getCart_productImage() {
		return cart_productImage;
	}
	public void setCart_productImage(String cart_productImage) {
		this.cart_productImage = cart_productImage;
	}
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
}
