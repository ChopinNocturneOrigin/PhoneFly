package pf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class NoticeDao {
	private NoticeDao() {}
	private static NoticeDao instance = new NoticeDao();
	public static NoticeDao getInstance() { return instance;}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
}
