package pf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pf.dto.OrderDetailVO;
import pf.util.DBM;

public class OrderDetailDao {
	private OrderDetailDao() {}
	private static OrderDetailDao instance = new OrderDetailDao();
	public static OrderDetailDao getInstance() { return instance;}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public void insertOrder(int pseq, int rseq, String id, int mseq, int charge, int discount, 
			int buyplan, int dcmonth, int dctotal, int mmonth, int mtotal, String cc, int cseq) {
		con = DBM.getConnection();
		String sql = "insert into order_detail(odseq, pseq, rseq, id, mseq, charge, discount,"
				+ " buyplan, dcmonth, dctotal, mmonth, mtotal, cc, cseq) "
				+ " values(odseq.nextVal, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,  pseq);
			pstmt.setInt(2,  rseq);
			pstmt.setString(3,  id);
			pstmt.setInt(4,  mseq);
			pstmt.setInt(5,  charge);
			pstmt.setInt(6,  discount);
			pstmt.setInt(7,  buyplan);
			pstmt.setInt(8,  dcmonth);
			pstmt.setInt(9,  dctotal);
			pstmt.setInt(10,  mmonth);
			pstmt.setInt(11,  mtotal);
			pstmt.setString(12,  cc);
			pstmt.setInt(13,  cseq);
			pstmt.executeUpdate();		
		} catch (SQLException e) { e.printStackTrace();
		} finally { DBM.close(con, pstmt, rs);		}		
	}

	public ArrayList<OrderDetailVO> listOrderByOdseq(String id) {
		ArrayList<OrderDetailVO> list = new ArrayList<OrderDetailVO>();
		String sql = "select * from order_detail where id=?";
		con = DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				OrderDetailVO ovo = new OrderDetailVO();	
				ovo.setOdseq(rs.getInt("odseq"));					ovo.setPseq(rs.getInt("pseq"));
				ovo.setRseq(rs.getInt("rseq"));						ovo.setId(rs.getString("id"));
				ovo.setResult(rs.getString("result"));				ovo.setDiscount(rs.getInt("discount"));
				ovo.setBuyplan(rs.getInt("buyplan"));				ovo.setDcmonth(rs.getInt("dcmonth"));
				ovo.setDctotal(rs.getInt("dctotal"));				ovo.setMmonth(rs.getInt("mmonth"));
				ovo.setMtotal(rs.getInt("mtotal"));					ovo.setCc(rs.getString("cc"));
				ovo.setIndate(rs.getTimestamp("indate"));			list.add(ovo);
			} 
		} catch (SQLException e) { e.printStackTrace();
		} finally { DBM.close(con, pstmt, rs);
		}
		return list;
	}

	public OrderDetailVO getOrderDetails(int odseq) {
		con = DBM.getConnection();
		OrderDetailVO ovo = null;
		String sql = "SELECT * FROM order_detail_view WHERE odseq=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, odseq);
			rs = pstmt.executeQuery();	
			if (rs.next()) {
				ovo = new OrderDetailVO();
				ovo.setOdseq(rs.getInt("odseq"));
				ovo.setPseq(rs.getInt("pseq"));
				ovo.setId(rs.getString("id"));
				ovo.setResult(rs.getString("result"));
				ovo.setDiscount(rs.getInt("discount"));
				ovo.setBuyplan(rs.getInt("buyplan"));
				ovo.setDcmonth(rs.getInt("dcmonth"));
				ovo.setDctotal(rs.getInt("dctotal"));
				ovo.setMmonth(rs.getInt("mmonth"));
				ovo.setMtotal(rs.getInt("mtotal"));
				ovo.setCc(rs.getString("cc"));
				ovo.setIndate(rs.getTimestamp("indate"));
				ovo.setPname(rs.getString("pname"));
				ovo.setCname(rs.getString("cname"));
				ovo.setRname(rs.getString("rname"));
		        }
		    } catch (SQLException e) {
		        e.printStackTrace();
		    } finally {
		        DBM.close(con, pstmt, rs);
		    }
		    return ovo;
		}


	
}