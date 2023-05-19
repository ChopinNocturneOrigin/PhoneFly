package pf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Color_detailDao {
	private Color_detailDao() {}
	private static Color_detailDao instance = new Color_detailDao();
	public static Color_detailDao getInstance() { return instance;}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
}
