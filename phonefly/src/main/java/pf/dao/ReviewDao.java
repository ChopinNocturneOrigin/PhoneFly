package pf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ReviewDao {
	private ReviewDao() {}
	private static ReviewDao instance = new ReviewDao();
	public static ReviewDao getInstance() { return instance;}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
}
