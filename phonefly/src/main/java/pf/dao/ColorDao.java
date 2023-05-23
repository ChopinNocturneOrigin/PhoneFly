package pf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pf.dto.ColorVO;
import pf.util.DBM;

public class ColorDao {
	private ColorDao() {}
	private static ColorDao instance = new ColorDao();
	public static ColorDao getInstance() { return instance;}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	public void insertColor(ColorVO cvo) {
		String sql = "insert into color(cseq,pseq,name,ccode,image) "
				+ " values(cseq.nextVal, ? , ?, ?, ?)";
		con = DBM.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, cvo.getPseq());
			pstmt.setString(2, cvo.getName());
			pstmt.setString(3, cvo.getCcode());
			pstmt.setString(4, cvo.getImage());
			pstmt.executeUpdate();
		} catch (SQLException e) { e.printStackTrace();
		} finally { DBM.close(con, pstmt, rs);
		}
	}


	public ArrayList<ColorVO> getColorListByPseq(int pseq) {
	    ArrayList<ColorVO> list = new ArrayList<ColorVO>();
	    String sql = "select * from color where pseq=?";
	    con = DBM.getConnection();
	    try {
	        pstmt = con.prepareStatement(sql);
	        pstmt.setInt(1, pseq);
	        
	        // 쿼리 실행 결과를 받아올 때는 executeQuery 메서드를 사용해야 합니다.
	        rs = pstmt.executeQuery();

	        // 쿼리 결과를 반복하여 리스트에 추가해야 합니다.
	        while (rs.next()) {
	            ColorVO cvo = new ColorVO();
	            // 쿼리 결과에서 필요한 데이터를 가져와서 ColorVO 객체에 설정해줍니다.
	            cvo.setPseq(rs.getInt("pseq"));
	            cvo.setName(rs.getString("name"));
	            // ColorVO 객체를 리스트에 추가합니다.
	            list.add(cvo);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        DBM.close(con, pstmt, rs);
	    }
	    return list;
	}

		
		
	}

