package my.model;

import java.util.Date;

public class Product {
   private int productId;
   private String productname;
   private int productprice;
   private String productImage;
   private String productInfo;
   private Date registertime;
   private String productType;
   private int accessCount;
   
   public Product() {
   }
   public Product(int productId, String productname, int productprice, String productImage, String productInfo, Date registertime, String productType, int accessCount) {
      super();
      this.productId = productId;
      this.productname = productname;
      this.productprice = productprice;
      this.productImage = productImage;
      this.productInfo = productInfo;
      this.registertime = registertime;
      this.productType = productType;
      this.accessCount = accessCount;
   }
   public Product(int productId, String productname, int productprice, String productImage, String productInfo, Date registertime, String productType) {
         super();
         this.productId = productId;
         this.productname = productname;
         this.productprice = productprice;
         this.productImage = productImage;
         this.productInfo = productInfo;
         this.registertime = registertime;
         this.productType = productType;
      }
   public Product(String productname, int productprice, String productImage, String productInfo, Date registertime, String productType) {
         super();
         this.productname = productname;
         this.productprice = productprice;
         this.productImage = productImage;
         this.productInfo = productInfo;
         this.registertime = registertime;
         this.productType = productType;
      }
   
   public int getAccessCount() {
   return accessCount;
}
public void setAccessCount(int accessCount) {
   this.accessCount = accessCount;
}
public Date getRegistertime() {
      return registertime;
   }
   public void setRegistertime(Date registertime) {
      this.registertime = registertime;
   }
   public String getProductInfo() {
      return productInfo;
   }
   public void setProductInfo(String productInfo) {
      this.productInfo = productInfo;
   }
   public String getProductImage() {
      return productImage;
   }
   public void setProductImage(String productImage) {
      this.productImage = productImage;
   }
   public int getProductId() {
      return productId;
   }
   public void setProductId(int productId) {
      this.productId = productId;
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
   public String getProductType() {
      return productType;
   }
   public void setProductType(String productType) {
      this.productType = productType;
   }
}