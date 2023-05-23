package pf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pf.dto.ReviewVO;
import pf.util.DBM;
import pf.util.Paging;


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

	public ArrayList<ReviewVO> selectReview(Paging paging, String loggedInId) {
		
		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
		String sql = " select * from ( "
				+ " select * from ( "
				+ " select rownum as rn, r.* from ((select * from review where id=? order by rseq desc) r) "
				+ " ) where rn>=? "
				+ " ) where rn<=? ";
		con = DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,  loggedInId);
			pstmt.setInt(2,  paging.getStartNum() );
			pstmt.setInt(3,  paging.getEndNum() );
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ReviewVO rvo = new ReviewVO();
				rvo.setRseq(rs.getInt("rseq"));
				rvo.setId(rs.getString("id"));
				rvo.setSubject(rs.getString("subject"));
				rvo.setContent(rs.getString("content"));
				rvo.setIndate(rs.getTimestamp("indate"));		    	
		    	list.add(rvo);
		    }
		} catch (SQLException e) {e.printStackTrace();
		} finally { DBM.close(con, pstmt, rs);  }
		return list;
	}

	public void insertReview(ReviewVO rvo) {
		
		String sql = "insert into review (rseq, subject, content, id, pseq, indate) "
				+ " values(rseq.nextval, ? , ? , ?, ?, ?)";
		con = DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, rvo.getSubject());
		    pstmt.setString(2, rvo.getContent());
		    pstmt.setString(3, rvo.getId());
		    pstmt.setInt(4, rvo.getPseq());
		    pstmt.executeUpdate();  
		} catch (SQLException e) {e.printStackTrace();
		} finally {  DBM.close(con, pstmt, rs);  }
		
	}
		
		
}

