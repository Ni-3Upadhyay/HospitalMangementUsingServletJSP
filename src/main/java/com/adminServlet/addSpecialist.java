package com.adminServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Connection.DBConnection;
import com.DAO.SpecialistDao;

@WebServlet("/addSpecialist")
public class addSpecialist extends HttpServlet{
		
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String specialistName = req.getParameter("name");
		
		SpecialistDao dao =new SpecialistDao(DBConnection.getConn());
		
		boolean f = dao.addSpecialist(specialistName);
		
		HttpSession session = req.getSession();
		
		if(f) {
			session.setAttribute("succMsg", "Specialist added successfully");
			resp.sendRedirect("admin/index.jsp");
		}
		else {
			session.setAttribute("errorMsg", "There might be some problem with server");
			resp.sendRedirect("admin/index.jsp");
		}
		
		
	}
	
}
