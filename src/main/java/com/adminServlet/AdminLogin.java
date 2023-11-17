package com.adminServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Entity.User;



@WebServlet("/adminLogin")
public class AdminLogin extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		try {
			
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			HttpSession session = req.getSession();		// HttpSession is created so that when we log out no admin page can be accessed.
			
			if("admin@gmail.com".equals(email) && "admin".equals(password)) {
				
				session.setAttribute("adminObj", new User());		// with the help of session if the admin object is available than it means 
																	// admin is using the page otherwise any other user is using.
				
				resp.sendRedirect("admin/index.jsp");
			}
			else {
				session.setAttribute("failMessage", "Invalid Username or Password");
				resp.sendRedirect("AdminLogin.jsp");
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
