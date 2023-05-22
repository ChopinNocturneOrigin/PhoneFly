package pf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pf.dto.MemberVO;
import pf.util.DBM;

public class MemberDao {
	private MemberDao() {}
	private static MemberDao instance = new MemberDao();
	public static MemberDao getInstance() { return instance;}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public MemberVO getMember(String id) {
		MemberVO mvo = null;
		String sql = "select * from member where id=?";
		con = DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,  id);
			rs = pstmt.executeQuery();
			if( rs.next() ) {
				mvo = new MemberVO();
				mvo.setId( rs.getString("id") );
				mvo.setPwd(rs.getString("pwd"));
		        mvo.setName(rs.getString("name"));
		        mvo.setEmail(rs.getString("email"));
		        mvo.setZipnum(rs.getString("zipnum"));
		        mvo.setAddress1(rs.getString("address1"));
		        mvo.setAddress2(rs.getString("address2"));
		        mvo.setPhone(rs.getString("phone"));
		        mvo.setUseyn(rs.getString("useyn"));
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { DBM.close(con, pstmt, rs);   }		
		return mvo;
		
	}

	public MemberVO selectId(String name, String phone) {
		MemberVO mvo = null;
		String sql = "SELECT ID FROM member WHERE name = ? AND phone = ?";
		con = DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, phone);
			rs = pstmt.executeQuery();
		    while( rs.next() ) {
		    	mvo = new MemberVO();
				mvo.setId( rs.getString("id") );
		    }
		} catch (SQLException e) { e.printStackTrace();
		} finally { DBM.close(con, pstmt, rs);
		}
		return mvo;
	}

	public MemberVO selectPwd(String id, String newPwd) {
	    MemberVO mvo = null;
	    String sql = "UPDATE member SET pwd = ? WHERE id = ?";
	    con = DBM.getConnection();
	    try {
	        pstmt = con.prepareStatement(sql);
	        pstmt.setString(1, newPwd);
	        pstmt.setString(2, id);		
	        rs = pstmt.executeQuery();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        DBM.close(con, pstmt, rs);
	    }
	    return mvo;
	}

}



