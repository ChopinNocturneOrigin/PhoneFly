package pf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class QnaDao {
	private QnaDao() {}
	private static QnaDao instance = new QnaDao();
	public static QnaDao getInstance() { return instance;}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
}
