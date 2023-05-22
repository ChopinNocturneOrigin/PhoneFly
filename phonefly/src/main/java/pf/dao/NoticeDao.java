package pf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pf.dto.NoticeVO;
import pf.dto.QnaVO;
import pf.util.DBM;
import pf.util.Paging;

public class NoticeDao {
	private NoticeDao() {}
	private static NoticeDao instance = new NoticeDao();
	public static NoticeDao getInstance() { return instance;}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public int getAllCount() {
		int count =0;
		String sql = "select count(*) as cnt from notice";
		con = DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if( rs.next() ) count=rs.getInt("cnt");
		} catch (SQLException e) { e.printStackTrace();
		} finally { DBM.close(con, pstmt, rs);
	}
		return count;
	}

	public ArrayList<NoticeVO> selectNotice(Paging paging) {
		ArrayList<NoticeVO> list= new ArrayList<NoticeVO>();
		String sql = " select*from( "
				+ " select*from( "
				+ " select rownum as rn, n.*from ((select*from notice order by nseq desc) n) "
				+ " ) where rn>=? "
				+ " ) where rn<=? ";
		con = DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, paging.getStartNum());
			pstmt.setInt(2,paging. getEndNum());
			rs = pstmt.executeQuery();
			while( rs.next() ) {
				NoticeVO nvo = new NoticeVO();
				nvo.setNseq(rs.getInt("nseq"));
				nvo.setSubject(rs.getString("subject"));
				nvo.setContent(rs.getString("content"));
				nvo.setId(rs.getString("id"));
				nvo.setIndate(rs.getTimestamp("indate"));
				list.add(nvo);
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { DBM.close(con, pstmt, rs);
	}
		return list;
	}

	public NoticeVO getNotice(int nseq) {
		NoticeVO nvo = new NoticeVO();
		String sql = " select*from notice where nseq = ? ";
		con = DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, nseq);
			rs = pstmt.executeQuery();
			if( rs.next() ) {
				nvo.setNseq(nseq);
				nvo.setSubject(rs.getString("subject"));
				nvo.setContent(rs.getString("content"));
				nvo.setId(rs.getString("id"));
				nvo.setIndate(rs.getTimestamp("indate"));
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { DBM.close(con, pstmt, rs);
	}
		return nvo;
		
	}
}
