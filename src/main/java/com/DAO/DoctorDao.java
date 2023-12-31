package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
			
			String sql = "insert into doctor (name,dob,qualification,specialist,email,mob,password) values(?,?,?,?,?,?,?)";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, d.getFullName());
			ps.setString(2, d.getDob());
			ps.setString(3, d.getQualification());
			ps.setString(4, d.getSpecialist());
			ps.setString(5, d.getEmail());
			ps.setString(6, d.getMob());
			ps.setString(7, d.getPassword());
			
			int i = ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("doctordao");
		}
		
		
		return f;
	}
	
	public List<Doctor> getAllDoctor(){
		
		List<Doctor> list = new ArrayList<Doctor>();
		Doctor d = null;
		
		try {
			
			String sql = "select * from doctor order by id";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery() ;
			
			while(rs.next()) {
				
				d = new Doctor();
				
				d.setId(rs.getInt(1));
				d.setFullName(rs.getString(2));
				d.setDob(rs.getString(3));
				d.setQualification(rs.getString(4));
				d.setSpecialist(rs.getString(5));
				d.setEmail(rs.getString(6));
				d.setMob(rs.getString(7));
				d.setPassword(rs.getString(8));
				
				list.add(d);
			}
			
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return list;
		
	}

}
