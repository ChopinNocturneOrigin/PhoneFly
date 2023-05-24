package pf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pf.dto.AdminVO;
import pf.dto.ColorVO;
import pf.dto.MemberVO;
import pf.dto.ProductVO;
import pf.util.DBM;
import pf.util.Paging;

public class AdminDao {
	private AdminDao() {}
	private static AdminDao instance = new AdminDao();
	public static AdminDao getInstance() { return instance;}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public int getAllcount(String tablename, String fieldname, String key) {
		int count=0;
		String sql="select count(*) as cnt from " + tablename 
				+ " where " + fieldname + " like'%'||?||'%'";
		con = DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, key);
			rs = pstmt.executeQuery();
			if(rs.next()) count = rs.getInt("cnt");
		} catch (SQLException e) {e.printStackTrace();
		} finally { DBM.close(con, pstmt, rs);
		}
		return count;
	}

	public ArrayList<MemberVO> adminMemberList(Paging paging, String key) {
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		con = DBM.getConnection();
		String sql="select * from ( "
				+ " select * from ( "
				+ " select rownum as rn,m.*from "
				+ " ((select*from member where name like'%'||?||'%' order by mseq desc) m)"
				+ " ) where rn>=? "
				+ " ) where rn<=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, key);
			pstmt.setInt(2, paging.getStartNum());
			pstmt.setInt(3, paging.getEndNum());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MemberVO mvo = new MemberVO();
				mvo.setId(rs.getString("id") );
				
				list.add(mvo);
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { DBM.close(con, pstmt, rs);
		}
		return list;
	}

	public ArrayList<ProductVO> adminProductList(Paging paging, String key) {
		ArrayList<ProductVO> list = new ArrayList<ProductVO>();
		con = DBM.getConnection();
		String sql="select * from ( "
				+ " select * from ( "
				+ " select rownum as rn,p.*from "
				+ " ((select*from product where name like'%'||?||'%' order by pseq desc) p)"
				+ " ) where rn>=? "
				+ " ) where rn<=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, key);
			pstmt.setInt(2, paging.getStartNum());
			pstmt.setInt(3, paging.getEndNum());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ProductVO pvo = new ProductVO();
				pvo.setPseq(  rs.getInt("pseq") );
				pvo.setName(  rs.getString("name") );
				pvo.setPrice1(  rs.getInt("price1") ); 
				pvo.setPrice2(  rs.getInt("price2") ); 
				pvo.setPrice3(  rs.getInt("price3") );
				pvo.setContent(  rs.getString("content") );
				pvo.setUseyn(  rs.getString("useyn") );
				pvo.setBestyn(  rs.getString("bestyn") );
				pvo.setEventyn(  rs.getString("eventyn") );
				pvo.setIndate(  rs.getTimestamp("indate") );
				pvo.setMfc(  rs.getString("mfc") );
				list.add(pvo);
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { DBM.close(con, pstmt, rs);
		}
		return list;
	}

	public AdminVO workerCheck(String workId) {
		AdminVO avo = null;
		String sql = "select * from worker where id=?";
		con = DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,  workId);
			rs = pstmt.executeQuery();
			if( rs.next() ) {
				avo = new AdminVO();
				avo.setId( rs.getString("id") );
				avo.setPwd( rs.getString("pwd") );
				avo.setName( rs.getString("name") );
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { DBM.close(con, pstmt, rs); 		}
		return avo;
	}

	public void insertColor(ColorVO cvo) {
		String sql="insert into color(cseq,pseq,name,ccode,image)values(cseq.nextVal,?,?,?,?)";
				con =DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, cvo.getPseq());      
		    pstmt.setString(2, cvo.getName());
		    pstmt.setString(3, cvo.getCcode());		
		    pstmt.setString(4, cvo.getImage());  
		    pstmt.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {DBM.close(con, pstmt, rs);
		}
	}

	public void insertProduct(ProductVO pvo) {
		String sql = "insert into product ( pseq,name,price1,price2,price3,content,mfc)"
				+ "values (product_seq.nextVal,?,?,?,?,?,?) ";
		con =DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
		    pstmt.setString(1, pvo.getName());
		    pstmt.setInt(2, pvo.getPrice1());
		    pstmt.setInt(3, pvo.getPrice2());
		    pstmt.setInt(4, pvo.getPrice3());
		    pstmt.setString(5, pvo.getContent());
		    pstmt.setString(6, pvo.getMfc());
		    pstmt.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {DBM.close(con, pstmt, rs);
		}
	}
	
	
}
