package pf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class OrdersDao {
	private OrdersDao() {}
	private static OrdersDao instance = new OrdersDao();
	public static OrdersDao getInstance() { return instance;}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
}
