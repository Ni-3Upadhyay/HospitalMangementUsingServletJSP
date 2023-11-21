package com.adminServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Connection.DBConnection;
import com.DAO.DoctorDao;
import com.Entity.Doctor;

@WebServlet("/addDoctor")
public class addDoctor extends HttpServlet{
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
		
		String name = req.getParameter("name");
		String dob = req.getParameter("dob");
		String qualification = req.getParameter("qualification");
		String specialist = req.getParameter("specialist");
		String email = req.getParameter("email");
		String mobile = req.getParameter("num");
		String password = req.getParameter("password");
		
		Doctor d = new Doctor(name, dob, qualification, specialist, email, mobile, password);
		
		
		DoctorDao dao = new DoctorDao(DBConnection.getConn());
		HttpSession session = req.getSession();
		
		
		
		
		if(dao.addDoctor(d)) {
			
			session.setAttribute("succMsg", "Doctor Details added Successfully");
			resp.sendRedirect("admin/doctor.jsp");
			
		}else {
			
			session.setAttribute("errorMsg", "Something Wrong on Server");
			resp.sendRedirect("admin/doctor.jsp");
			
		}
	
		
		}catch(Exception e) {
			e.printStackTrace();
			System.out.print("addDoctor");
		}
	}

}
