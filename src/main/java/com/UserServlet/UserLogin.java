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

@WebServlet("/userLogin")
public class UserLogin extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		userDao dao = new userDao(DBConnection.getConn());
		
		User user = dao.login(email, password);
		HttpSession session = req.getSession();
		
		if(user!=null) {
			session.setAttribute("userObj", user);
			resp.sendRedirect("index.jsp");
			
		}else {
			session.setAttribute("errorMsg", "Invalid email or password");
			resp.sendRedirect("UserLogin.jsp");
			
			
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	
	
}
