package com.kt.ipmc.check.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBConnManager {

	private static DBConnManager manager = new DBConnManager();
	private DBConnManager() {}
	public static DBConnManager getInstance() {
		return manager;
	}
	
	public Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("org.postgresql.Driver");
			conn = DriverManager.getConnection("jdbc:postgresql://192.168.56.201:5432/dailycheck","dailycheck","tjqj1234");
		} catch (Exception e) {
			System.out.println("DBConnManager.getConnection : " + e);
		}
		return conn;
	}
	
	public void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		if (rs != null) {
			try {rs.close();	} catch (Exception e) {e.printStackTrace();}
		}
		close(conn,pstmt);
	}
	
	public void close(Connection conn, PreparedStatement pstmt) {
		if (pstmt != null) {
			try {pstmt.close();} catch (Exception e) {e.printStackTrace();}
		}
		if (conn != null) {
			try {conn.close();} catch (Exception e) {e.printStackTrace();}
		}
	}
}
