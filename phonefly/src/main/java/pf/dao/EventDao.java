package pf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pf.dto.EventVO;
import pf.dto.NoticeVO;
import pf.util.DBM;
import pf.util.Paging;

public class EventDao {
	private EventDao() {}
	private static EventDao instance = new EventDao();
	public static EventDao getInstance() { return instance;}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	public int getAllCount() {
		int count =0;
		String sql = "select count(*) as cnt from event";
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


	public ArrayList<EventVO> selectNotice(Paging paging) {
		ArrayList<EventVO> list= new ArrayList<EventVO>();
		String sql = " select*from( "
				+ " select*from( "
				+ " select rownum as rn, e.*from ((select*from event order by eseq desc) e) "
				+ " ) where rn>=? "
				+ " ) where rn<=? ";
		con = DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, paging.getStartNum());
			pstmt.setInt(2,paging. getEndNum());
			rs = pstmt.executeQuery();
			while( rs.next() ) {
				EventVO evo = new EventVO();
				evo.setEseq(rs.getInt("eseq"));
				evo.setSubject(rs.getString("subject"));
				evo.setContent(rs.getString("content"));
				evo.setId(rs.getString("id"));
				evo.setIndate(rs.getTimestamp("indate"));
				list.add(evo);
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { DBM.close(con, pstmt, rs);
	}
		return list;
	}
	
	public EventVO getEvent(int eseq) {
		EventVO evo = new EventVO();
		String sql = " select*from event where eseq = ? ";
		con = DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, eseq);
			rs = pstmt.executeQuery();
			if( rs.next() ) {
				evo.setEseq(eseq);
				evo.setSubject(rs.getString("subject"));
				evo.setContent(rs.getString("content"));
				evo.setId(rs.getString("id"));
				evo.setIndate(rs.getTimestamp("indate"));
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { DBM.close(con, pstmt, rs);
	}
		return evo;
	}
	
}
