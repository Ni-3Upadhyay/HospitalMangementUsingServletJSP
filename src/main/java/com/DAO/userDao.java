package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.Entity.User;

public class userDao {
	
	private Connection conn;

	public userDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean userRegister(User u) {
		
		boolean f = false;
		
		try {
			
			String sql = "insert into user(name , email , password) values(?,?,?)";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, u.getFullName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());

			int i = ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}

}
