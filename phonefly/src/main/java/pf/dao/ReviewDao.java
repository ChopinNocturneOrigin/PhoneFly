package pf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import pf.dto.ReviewVO;
import pf.util.DBM;


public class ReviewDao {
	private ReviewDao() {}
	private static ReviewDao instance = new ReviewDao();
	public static ReviewDao getInstance() { return instance;}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public int getAllCount() {
		int count= 0;
		String sql = "select count(*) as cnt from review";
		con = DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if( rs.next() ) count = rs.getInt("cnt");
		} catch (SQLException e) { e.printStackTrace();
		} finally { DBM.close(con, pstmt, rs);   }
		return count;
	}

	public void updateReview(ReviewVO rvo) {
		String sql = "Update review set subject=?, content=?, id=?, indate=? where rseq = ?";
		con = DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, rvo.getSubject());
			pstmt.setString(2, rvo.getContent());
			pstmt.setString(3, rvo.getId());
			pstmt.setTimestamp(4, rvo.getIndate());
			pstmt.setInt(5, rvo.getRseq());
			pstmt.executeUpdate();
		} catch (SQLException e) { e.printStackTrace();
		} finally { DBM.close(con, pstmt, rs);
		}
			
	}

	public void deleteReview(int rseq) {
		
		String sql = "delete from review where rseq=?";
		con = DBM.getConnection();
		try {
		      pstmt = con.prepareStatement(sql); 
		      pstmt.setInt(1, rseq);
		      pstmt.executeUpdate();
		} catch (Exception e) { e.printStackTrace();
	    } finally { DBM.close(con, pstmt, rs); }   	
		
	}
	
		
}

