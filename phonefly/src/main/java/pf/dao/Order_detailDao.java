package pf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Order_detailDao {
	private Order_detailDao() {}
	private static Order_detailDao instance = new Order_detailDao();
	public static Order_detailDao getInstance() { return instance;}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
}
