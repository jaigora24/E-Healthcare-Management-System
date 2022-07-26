package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String username, password;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		username = req.getParameter("username");
		password = req.getParameter("password");
		PrintWriter out = res.getWriter();
		// pass default "admin" as username and "admin123" as password
		try {
			if(username.equals("admin") && password.equals("admin123")) {
				res.sendRedirect("AdminPortal.jsp");
			}
			else {
				out.println("Incorrect Username or Password");
			}
		}
		catch(Exception e) {
			out.println("Unexpected Error Occured!");
			System.out.println(e);
		}
	
	}

}
