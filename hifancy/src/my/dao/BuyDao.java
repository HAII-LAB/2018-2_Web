package my.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import my.model.Cart;
import my.model.Buy;
import my.util.JdbcUtil;
public class BuyDao {
	public void insert(Connection conn, Buy buy) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into buy (name, email ,content, payment, address, memo)"+" values(?,?,?,?,?,?)");
			pstmt.setString(1, buy.getName());
			pstmt.setString(2, buy.getEmail());
			pstmt.setString(3, buy.getContent());
			pstmt.setInt(4, buy.getPayment());
			pstmt.setString(5, buy.getAddress());
			pstmt.setString(6, buy.getMemo());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	/*
	public Buy selectById(Connection conn, int buyId) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Buy buy = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from buy where buyId = ?");
			pstmt.setInt(1, buyId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				buy = new Buy(); 
				buy.setBuyId(rs.getInt(1));
				buy.setGuestName(rs.getString(2));
				buy.setPassword(rs.getString(3));
				buy.setBuy(rs.getString(4));
				buy.setRegisterTime(rs.getTimestamp(5));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return buy;
	}
	
	public void update(Connection conn, Buy buy) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("update buy set guestname=?,password=?,buy=?, "
					+ "   registertime=? where buyId=?");
			pstmt.setString(1, buy.getGuestName());
			pstmt.setString(2, buy.getPassword());
			pstmt.setString(3, buy.getBuy());
			pstmt.setTimestamp(4, new Timestamp(buy.getRegisterTime().getTime()));
			pstmt.setInt(5, buy.getBuyId());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public void deleteById(Connection conn, int buyId) 
			throws SQLException {
		PreparedStatement pstmt=null; 		
		try {
			pstmt = conn.prepareStatement
			("delete from buy where buyId = ?");
			pstmt.setInt(1, buyId);
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
			rs = stmt.executeQuery("select count(*) from buy");
			rs.next();
			return rs.getInt(1);
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(rs);
		}
	}
	
	public Buy selectById(Connection conn, int buyId) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Buy buy = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from buy where buyId = ?");
			pstmt.setInt(1, buyId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				buy = new Buy(); 
				buy.setBuyId(rs.getInt(1));
				buy.setUserId(rs.getString(2));
				buy.setContent(rs.getString(3));
				buy.setPayment(rs.getInt(4));
				buy.setBuyDate(rs.getTimestamp(5));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return buy;
	}
	public List<Buy> selectList(Connection conn, String userId) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Buy> buyList = null;
		String sql="select * from buy";
		if(userId!=null && !userId.equals("")) {
			sql+=" where userId= '"+userId.trim()+"'";
		}
		try {
			pstmt = conn.prepareStatement(sql);
			rs  = pstmt.executeQuery(); 
			buyList = new ArrayList<Buy>();
			while (rs.next()){
				Buy buy = new Buy();
				buy.setBuyId(rs.getInt(1));
				buy.setUserId(rs.getString(2));
				buy.setContent(rs.getString(3));
				buy.setPayment(rs.getInt(4));
				buy.setBuyDate(rs.getTimestamp(5));
				buyList.add(buy);
			}
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return buyList;
	}
	*/
}




















