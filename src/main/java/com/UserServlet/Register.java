package com.UserServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Connection.DBConnection;
import com.DAO.userDao;
import com.Entity.User;


@WebServlet("/user_register")
public class Register extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			
			User u = new User(name, email, password);
			
			userDao dao = new userDao(DBConnection.getConn());
			
			HttpSession session = req.getSession();
			
			boolean f = dao.userRegister(u);
			
			if(f) {
				
				session.setAttribute("succMsg", "Registration Successfull");
				resp.sendRedirect("signUp.jsp");
				
//				System.out.println("Data Register Successful");
			}
			else {
				session.setAttribute("errorMsg", "Something wrong on server");
				resp.sendRedirect("signUp.jsp");
				
//				System.out.println("something Wrong on server");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
