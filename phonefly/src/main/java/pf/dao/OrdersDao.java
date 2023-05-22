package pf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pf.dto.OrdersVO;
import pf.util.DBM;

public class OrdersDao {
	private OrdersDao() {}
	private static OrdersDao instance = new OrdersDao();
	public static OrdersDao getInstance() { return instance;}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public ArrayList<OrdersVO> listOrderByOseq(int oseq) {
		ArrayList<OrdersVO> list = new ArrayList<OrdersVO>();
		String sql = "select * from order_view where oseq=?";
		con = DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, oseq);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				    OrdersVO ovo = new OrdersVO();	
					ovo.setOdseq(rs.getInt("odseq"));						ovo.setOseq(rs.getInt("oseq"));
					ovo.setId(rs.getString("id"));							ovo.setIndate(rs.getTimestamp("indate"));
					ovo.setMname(rs.getString("mname"));					ovo.setZip_num(rs.getString("zip_num"));
					ovo.setAddress1(rs.getString("address1"));				ovo.setAddress2(rs.getString("address2"));
					ovo.setPhone(rs.getString("phone"));					ovo.setPname(rs.getString("pname"));
					ovo.setPrice2(rs.getInt("price2"));						ovo.setPseq(rs.getInt("pseq"));
					ovo.setQuantity(rs.getInt("quantity"));					ovo.setResult(rs.getString("result"));
					list.add(ovo);
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { DBM.close(con, pstmt, rs);
		}
		return list;
	}
}
