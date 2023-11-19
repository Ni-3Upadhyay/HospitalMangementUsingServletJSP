package com.DAO;

import java.sql.Connection;

import com.Entity.Doctor;

public class DoctorDao {
	
	private Connection conn;

	public DoctorDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addDoctor(Doctor d) {
		
		boolean f = false;
		
		try {
			
			String sql = "insert into table doctor ()"
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}

}
