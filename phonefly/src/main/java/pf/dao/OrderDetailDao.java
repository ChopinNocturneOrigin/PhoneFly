package pf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class OrderDetailDao {
	private OrderDetailDao() {}
	private static OrderDetailDao instance = new OrderDetailDao();
	public static OrderDetailDao getInstance() { return instance;}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
}
