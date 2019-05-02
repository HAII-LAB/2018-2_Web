package my.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import my.model.Cart;
import my.util.JdbcUtil;
public class CartDao {
	public void insert(Connection conn, Cart cart) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into cart (userId, productId, amount, color, payment, cart_productImage, productname, productprice)"+" values(?,?,?,?,?,?,?,?)");
			pstmt.setString(1, cart.getUserId());
			pstmt.setInt(2, cart.getProductId());
			pstmt.setInt(3, cart.getAmount());
			pstmt.setString(4, cart.getColor());
			pstmt.setInt(5, cart.getPayment());
			pstmt.setString(6, cart.getCart_productImage());
			pstmt.setString(7, cart.getProductname());
			pstmt.setInt(8, cart.getProductprice());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	/*

	
	public void update(Connection conn, Cart cart) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("update cart set guestname=?,password=?,cart=?, "
					+ "   registertime=? where cartId=?");
			pstmt.setString(1, cart.getGuestName());
			pstmt.setString(2, cart.getPassword());
			pstmt.setString(3, cart.getCart());
			pstmt.setTimestamp(4, new Timestamp(cart.getRegisterTime().getTime()));
			pstmt.setInt(5, cart.getCartId());
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
			rs = stmt.executeQuery("select count(*) from cart");
			rs.next();
			return rs.getInt(1);
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(rs);
		}
	}
	*/
	public void deleteById(Connection conn, int cartId) 
			throws SQLException {
		PreparedStatement pstmt=null; 		
		try {
			pstmt = conn.prepareStatement
			("delete from cart where cartId = ?");
			pstmt.setInt(1, cartId);
			pstmt.executeUpdate();			
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public Cart selectById(Connection conn, int cartId) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Cart cart = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from cart where cartId = ?");
			pstmt.setInt(1, cartId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				cart = new Cart(); 
				cart.setCartId(rs.getInt(1));
				cart.setUserId(rs.getString(2));
				cart.setProductId(rs.getInt(3));
				cart.setAmount(rs.getInt(4));
				cart.setColor(rs.getString(5));
				cart.setPayment(rs.getInt(6));
				cart.setCart_productImage(rs.getString(7));
				cart.setProductname(rs.getString(8));
				cart.setProductprice(rs.getInt(9));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return cart;
	}
	public List<Cart> selectList(Connection conn, String userId) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Cart> cartList = null;
		String sql="select * from cart";
		if(userId!=null && !userId.equals("")) {
			sql+=" where userId= '"+userId.trim()+"'";
		}
		try {
			pstmt = conn.prepareStatement(sql);
			rs  = pstmt.executeQuery(); 
			cartList = new ArrayList<Cart>();
			while (rs.next()){
				Cart cart = new Cart();
				cart.setCartId(rs.getInt(1));
				cart.setUserId(rs.getString(2));
				cart.setProductId(rs.getInt(3));
				cart.setAmount(rs.getInt(4));
				cart.setColor(rs.getString(5));
				cart.setPayment(rs.getInt(6));
				cart.setCart_productImage(rs.getString(7));
				cart.setProductname(rs.getString(8));
				cart.setProductprice(rs.getInt(9));
				cartList.add(cart);
			}
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return cartList;
	}
}




















