package my.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import my.model.Member;
import my.util.JdbcUtil;
public class MemberDao {
	public void insert(Connection conn, Member member) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into member (userId,password,name,birthdate)"
					+ " values(?,?,?,?)");
			pstmt.setString(1, member.getUserId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getName());
			pstmt.setTimestamp(4,new Timestamp(member.getBirthdate().getTime()));
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	public Member selectById(Connection conn, String userId) throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Member member=null;
		try {
			pstmt = conn.prepareStatement
			("select * from member where userId = ?");
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				member=new Member();
				member.setMemberId(rs.getInt(1));
				member.setUserId(rs.getString(2));
				member.setPassword(rs.getString(3));
				member.setName(rs.getString(4));
				member.setBirthdate(rs.getTimestamp(5));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return member;
	}

	public String selectPasswordById(Connection conn, String userId) throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		String password=null;
		try {
			pstmt = conn.prepareStatement
			("select password from member where userId = ?");
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
	public void update(Connection conn, Member member) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("update member set guestname=?,password=?,member=?, "
					+ "   registertime=? where memberId=?");
			pstmt.setString(1, member.getGuestName());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getMember());
			pstmt.setTimestamp(4, new Timestamp(member.getRegisterTime().getTime()));
			pstmt.setInt(5, member.getMemberId());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public void deleteById(Connection conn, int memberId) 
			throws SQLException {
		PreparedStatement pstmt=null; 		
		try {
			pstmt = conn.prepareStatement
			("delete from member where memberId = ?");
			pstmt.setInt(1, memberId);
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
			rs = stmt.executeQuery("select count(*) from member");
			rs.next();
			return rs.getInt(1);
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(rs);
		}
	}
	*/
	public List<Member> selectList(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Member> memberList = null;
		try {
			pstmt = conn.prepareStatement("select * from member");
			rs  = pstmt.executeQuery(); 
			memberList = new ArrayList<Member>();
			while (rs.next()){
				Member member = new Member();
				member.setMemberId(rs.getInt(1));
				member.setUserId(rs.getString(2));
				member.setPassword(rs.getString(3));
				member.setName(rs.getString(4));
				member.setBirthdate(rs.getTimestamp(5));
				memberList.add(member);
			}
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return memberList;
	}
}




















