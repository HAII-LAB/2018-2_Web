package my.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import my.model.Product;
import my.util.JdbcUtil;
public class ProductDao {
   public void insert(Connection conn, Product product) 
         throws SQLException {
      PreparedStatement pstmt=null; 
      try {
         pstmt = conn.prepareStatement
         ("insert into product (productname, productprice, productImage, productInfo, registertime, productType, accessCount)"
               + " values(?,?,?,?,?,?,?)");
         pstmt.setString(1, product.getProductname());
         pstmt.setInt(2, product.getProductprice());
         pstmt.setString(3, product.getProductImage());
         pstmt.setString(4, product.getProductInfo());
         pstmt.setTimestamp(5,new Timestamp(product.getRegistertime().getTime()));
         pstmt.setString(6, product.getProductType());
         pstmt.setInt(7, product.getAccessCount());
         pstmt.executeUpdate(); 
      } catch (SQLException e){
         e.printStackTrace();
      } finally {
         //JdbcUtil.close(conn);
         JdbcUtil.close(pstmt);
      }
   }
   public Product selectById(Connection conn, int productId) 
         throws SQLException {
      PreparedStatement pstmt=null; 
      ResultSet rs = null;
      Product product = null; 
      try {
         pstmt = conn.prepareStatement
         ("select * from product where productId = ?");
         pstmt.setInt(1, productId);
         rs = pstmt.executeQuery();
         if (rs.next()){
            product = new Product(); 
            product.setProductId(rs.getInt(1));
            product.setProductname(rs.getString(2));
            product.setProductprice(rs.getInt(3));;
            product.setProductImage(rs.getString(4));
            product.setProductInfo(rs.getString(5));
            product.setRegistertime(rs.getTimestamp(6));
            product.setProductType(rs.getString(7));
         }
      } catch (SQLException e){
         e.printStackTrace();
      } finally {
         //JdbcUtil.close(conn);
         JdbcUtil.close(pstmt);
         JdbcUtil.close(rs);
      }
      return product;
   }
   
   public void update(Connection conn, Product product) 
         throws SQLException {
      PreparedStatement pstmt=null; 
      try {
         pstmt = conn.prepareStatement
         ("update product set productname=?,productprice=?,productImage=?,productInfo=?,registertime=?,productType=?"
               + " where productId=?");
         pstmt.setString(1, product.getProductname());
         pstmt.setInt(2, product.getProductprice());
         pstmt.setString(3, product.getProductImage());
         pstmt.setString(4, product.getProductInfo());
         pstmt.setTimestamp(5, new Timestamp(product.getRegistertime().getTime()));
         pstmt.setString(6, product.getProductType());
         pstmt.setInt(7, product.getProductId());
         pstmt.executeUpdate(); 
      } catch (SQLException e){
         e.printStackTrace();
      } finally {
         //JdbcUtil.close(conn);
         JdbcUtil.close(pstmt);
      }
   }
   public void updateAccessCount(Connection conn, int productId) 
         throws SQLException {
      PreparedStatement pstmt=null; 
      try {
         pstmt = conn.prepareStatement
         ("update product set accessCount=accessCount+1 where productId=?");
         pstmt.setInt(1, productId);
         pstmt.executeUpdate(); 
      } catch (SQLException e){
         e.printStackTrace();
      } finally {
         //JdbcUtil.close(conn);
         JdbcUtil.close(pstmt);
      }
   }
   public void deleteById(Connection conn, int productId) 
         throws SQLException {
      PreparedStatement pstmt=null;       
      try {
         pstmt = conn.prepareStatement
         ("delete from product where productId = ?");
         pstmt.setInt(1, productId);
         pstmt.executeUpdate();         
      } catch (SQLException e){
         e.printStackTrace();
      } finally {
         //JdbcUtil.close(conn);
         JdbcUtil.close(pstmt);
      }
   }
   
   public int selectCount(Connection conn) throws SQLException {
      Statement stmt = null; 
      ResultSet rs = null; 
      try {
         stmt = conn.createStatement();
         rs = stmt.executeQuery("select count(*) from product");
         rs.next();
         return rs.getInt(1);
      } finally {
         //JdbcUtil.close(conn);
         JdbcUtil.close(rs);
      }
   }
   public List<Product> selectList(Connection conn, String search) 
         throws SQLException {
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      List<Product> productList = null;
      String sql="select * from product";
      if(search!=null && !search.equals("")) {
         sql+=" where productname like '%"+search.trim()+"%'";
      }
      try {
         pstmt = conn.prepareStatement(sql);
         rs  = pstmt.executeQuery(); 
         productList = new ArrayList<Product>();
         while (rs.next()){
            Product product = new Product();
            product.setProductId(rs.getInt(1));
            product.setProductname(rs.getString(2));
            product.setProductprice(rs.getInt(3));
            product.setProductImage(rs.getString(4));
            product.setProductInfo(rs.getString(5));
            product.setRegistertime(rs.getTimestamp(6));
            product.setProductType(rs.getString(7));
            productList.add(product);
         }
      } finally {
         //JdbcUtil.close(conn);
         JdbcUtil.close(rs);
         JdbcUtil.close(pstmt);
      }
      return productList;
   }
    public List<Product> selectListCondition(Connection conn, String productType, String cond, String direct) 
            throws SQLException {
         PreparedStatement pstmt = null;
         ResultSet rs = null;
         List<Product> productList = null;
         String sql="select * from product";
         if(productType!=null && !productType.equals("")) {
             sql+=" where productType= '"+productType.trim()+"'";
          }
         if(cond!=null && !cond.equals("")) {
            sql+=" order by "+cond.trim()+" "+direct.trim();
         }
         try {
            pstmt = conn.prepareStatement(sql);
            rs  = pstmt.executeQuery(); 
            productList = new ArrayList<Product>();
            while (rs.next()){
               Product product = new Product();
               product.setProductId(rs.getInt(1));
               product.setProductname(rs.getString(2));
               product.setProductprice(rs.getInt(3));
               product.setProductImage(rs.getString(4));
               product.setProductInfo(rs.getString(5));
               product.setRegistertime(rs.getTimestamp(6));
               product.setProductType(rs.getString(7));
               product.setAccessCount(rs.getInt(8));
               productList.add(product);
            }
         } finally {
            //JdbcUtil.close(conn);
            JdbcUtil.close(rs);
            JdbcUtil.close(pstmt);
         }
         return productList;
      }
   public List<Product> selectListType(Connection conn, String productType) 
         throws SQLException {
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      List<Product> productList = null;
      String sql="select * from product";
      if(productType!=null && !productType.equals("")) {
         sql+=" where productType= '"+productType.trim()+"'";
      }
      try {
         pstmt = conn.prepareStatement(sql);
         rs  = pstmt.executeQuery(); 
         productList = new ArrayList<Product>();
         while (rs.next()){
            Product product = new Product();
            product.setProductId(rs.getInt(1));
            product.setProductname(rs.getString(2));
            product.setProductprice(rs.getInt(3));
            product.setProductImage(rs.getString(4));
            product.setProductInfo(rs.getString(5));
            product.setRegistertime(rs.getTimestamp(6));
            product.setProductType(rs.getString(7));
            productList.add(product);
         }
      } finally {
         //JdbcUtil.close(conn);
         JdbcUtil.close(rs);
         JdbcUtil.close(pstmt);
      }
      return productList;
   }
}


















