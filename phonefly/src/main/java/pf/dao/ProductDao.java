package pf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pf.dto.ColorVO;
import pf.dto.ProductVO;
import pf.util.DBM;

public class ProductDao {
	
	private ProductDao() {}
	private static ProductDao itc = new ProductDao();
	public static ProductDao getInstance() { return itc; }

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	Connection con2 = null;
	PreparedStatement pstmt2 = null;
	ResultSet rs2 = null;


	public ArrayList<ProductVO> getMainBestList() {
		// author : BHS
		ArrayList<ProductVO> list = new ArrayList<>();
		con = DBM.getConnection();
		String sql = "SELECT * FROM main_best_pro_view";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO pvo = new ProductVO();
				pvo.setPseq(rs.getInt("pseq"));
				pvo.setName(rs.getString("name"));
				pvo.setPrice1(rs.getInt("price1"));
				pvo.setPrice2(rs.getInt("price2"));
				pvo.setPrice3(rs.getInt("price3"));
				pvo.setContent(rs.getString("content"));
				pvo.setUseyn(rs.getString("useyn"));
				pvo.setEventyn(rs.getString("eventyn"));
				pvo.setBestyn(rs.getString("bestyn"));
				pvo.setIndate(rs.getTimestamp("indate"));
				pvo.setMfc(rs.getString("mfc"));

				// 컬러 리스트 추가
				ArrayList<ColorVO> cvo = getColorList(pvo.getPseq());
				pvo.setColorList(cvo);

				list.add(pvo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBM.close(con, pstmt, rs);
		}
		return list;
	}

	public ArrayList<ProductVO> getMainEventList() {
		// author : BHS
		ArrayList<ProductVO> list = new ArrayList<>();
		con = DBM.getConnection();
		String sql = "SELECT * FROM main_event_pro_view";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO pvo = new ProductVO();
				pvo.setPseq(rs.getInt("pseq"));
				pvo.setName(rs.getString("name"));
				pvo.setPrice1(rs.getInt("price1"));
				pvo.setPrice2(rs.getInt("price2"));
				pvo.setPrice3(rs.getInt("price3"));
				pvo.setContent(rs.getString("content"));
				pvo.setUseyn(rs.getString("useyn"));
				pvo.setEventyn(rs.getString("eventyn"));
				pvo.setBestyn(rs.getString("bestyn"));
				pvo.setIndate(rs.getTimestamp("indate"));
				pvo.setMfc(rs.getString("mfc"));

				// 컬러 리스트 추가
				ArrayList<ColorVO> cvo = getColorList(pvo.getPseq());
				pvo.setColorList(cvo);

				list.add(pvo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBM.close(con, pstmt, rs);
		}
		return list;
	}

	private ArrayList<ColorVO> getColorList(int pseq) {
		// author : BHS
		ArrayList<ColorVO> list = new ArrayList<>();
		con2 = DBM.getConnection();
		String sql = "SELECT * FROM color WHERE pseq = ? ORDER BY cseq DESC";
		try {
			pstmt2 = con2.prepareStatement(sql);
			pstmt2.setInt(1, pseq);
			rs2 = pstmt2.executeQuery();
			while (rs2.next()) {
				ColorVO cvo = new ColorVO();
				cvo.setCseq(rs2.getInt("cseq"));
				cvo.setPseq(pseq);
				cvo.setName(rs2.getString("name"));
				cvo.setCcode(rs2.getString("ccode"));
				cvo.setImage(rs2.getString("image"));
				list.add(cvo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBM.close(con2, pstmt2, rs2);
		}
		return list;
	}
}
