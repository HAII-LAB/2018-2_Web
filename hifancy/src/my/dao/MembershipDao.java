package my.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import my.model.Membership;
import my.util.JdbcUtil;
public class MembershipDao {
	public void insert(Connection conn, Membership membership) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into membership (userId,password,name,email,birthdate)"
					+ " values(?,?,?,?,?)");
			pstmt.setString(1, membership.getUserId());
			pstmt.setString(2, membership.getPassword());
			pstmt.setString(3, membership.getName());
			pstmt.setString(4, membership.getEmail());
			pstmt.setTimestamp(5,new Timestamp(membership.getBirthdate().getTime()));
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	public Membership selectById(Connection conn, String userId) throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Membership membership=null;
		try {
			pstmt = conn.prepareStatement
			("select * from membership where userId = ?");
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				membership=new Membership();
				membership.setMembershipId(rs.getInt(1));
				membership.setUserId(rs.getString(2));
				membership.setPassword(rs.getString(3));
				membership.setName(rs.getString(4));
				membership.setEmail(rs.getString(5));
				membership.setBirthdate(rs.getTimestamp(6));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return membership;
	}

	public String selectPasswordById(Connection conn, String userId) throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		String password=null;
		try {
			pstmt = conn.prepareStatement
			("select password from membership where userId = ?");
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				password=rs.getString(1);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return password;
	}
	/*
	public void update(Connection conn, Membership membership) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("update membership set guestname=?,password=?,membership=?, "
					+ "   registertime=? where membershipId=?");
			pstmt.setString(1, membership.getGuestName());
			pstmt.setString(2, membership.getPassword());
			pstmt.setString(3, membership.getMembership());
			pstmt.setTimestamp(4, new Timestamp(membership.getRegisterTime().getTime()));
			pstmt.setInt(5, membership.getMembershipId());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public void deleteById(Connection conn, int membershipId) 
			throws SQLException {
		PreparedStatement pstmt=null; 		
		try {
			pstmt = conn.prepareStatement
			("delete from membership where membershipId = ?");
			pstmt.setInt(1, membershipId);
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
			rs = stmt.executeQuery("select count(*) from membership");
			rs.next();
			return rs.getInt(1);
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(rs);
		}
	}
	*/
	public List<Membership> selectList(Connection conn)  
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Membership> membershipList = null;
		try {
			pstmt = conn.prepareStatement("select * from membership");
			rs  = pstmt.executeQuery(); 
			membershipList = new ArrayList<Membership>();
			while (rs.next()){
				Membership membership = new Membership();
				membership.setMembershipId(rs.getInt(1));
				membership.setUserId(rs.getString(2));
				membership.setPassword(rs.getString(3));
				membership.setName(rs.getString(4));
				membership.setEmail(rs.getString(5));
				membership.setBirthdate(rs.getTimestamp(6));
				membershipList.add(membership);
			}
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return membershipList;
	}
}




















