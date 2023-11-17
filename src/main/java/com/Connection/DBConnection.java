package com.Connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	private static Connection conn;
	
	public static Connection getConn() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_db", "root", "nitin");
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
	
	
}
