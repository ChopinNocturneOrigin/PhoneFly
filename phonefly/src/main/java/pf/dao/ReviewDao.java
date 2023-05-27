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
		String sql = "Update review set content=?, id=? where rseq = ?";
		con = DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, rvo.getContent());
			pstmt.setString(2, rvo.getId());
			pstmt.setInt(3, rvo.getRvseq());
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
				+ " select rownum as rn, r.* from ((select * from review where id=? order by rvseq desc) r) "
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
				rvo.setRvseq(rs.getInt("rvseq"));
				rvo.setId(rs.getString("id"));
				rvo.setContent(rs.getString("content"));
				rvo.setIndate(rs.getTimestamp("indate"));		    	
		    	list.add(rvo);
		    }
		} catch (SQLException e) {e.printStackTrace();
		} finally { DBM.close(con, pstmt, rs);  }
		return list;
	}

	public void insertReview(ReviewVO rvo) {
		// 수정 : bhs
		//String sql = "insert into review (rseq, content, id, pseq, indate) "
				//+ " values(rseq.nextval, ?, ?, ?, ?)";
		String sql = "INSERT INTO review (rvseq, id, content, pseq) VALUES (rvseq.nextVal, ?, ?, ?)";
		con = DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, rvo.getId());
			pstmt.setString(2, rvo.getContent());
			pstmt.setInt(3, rvo.getPseq());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBM.close(con, pstmt, rs);
		}
	}

	public ArrayList<ReviewVO> listReviewBypseq(int pseq) {
		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
		String sql = "SELECT r.*, m.NAME "
				+ "FROM REVIEW "
				+ "JOIN MEMBER m ON r.ID = m.ID "
				+ "WHERE r.PSEQ = ?";
		con = DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,  pseq);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ReviewVO rvo = new ReviewVO();
				rvo.setRvseq(rs.getInt("rvseq"));
				rvo.setId(rs.getString("id"));
				rvo.setContent(rs.getString("content"));
				rvo.setIndate(rs.getTimestamp("indate"));
		    	list.add(rvo);
		    }
		} catch (SQLException e) {e.printStackTrace();
		} finally { DBM.close(con, pstmt, rs);  }
		return list;
	}

	public boolean checkIfPurchased(String id, int pseq) {
		boolean result = false;
		 String sql = "SELECT COUNT(*) AS cnt FROM order_detail_view2 WHERE id = ? AND pseq = ?";
	        con = DBM.getConnection();
	        try {
	            pstmt = con.prepareStatement(sql);
	            pstmt.setString(1, id);
	            pstmt.setInt(2, pseq);
	            rs = pstmt.executeQuery();
	            if (rs.next()) {
	                if (rs.getInt("cnt") > 0) {
	                	result = true;
	                }
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            DBM.close(con, pstmt, rs);
	        }
	        return result;
	    }
		
		
}

