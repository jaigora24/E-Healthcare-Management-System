package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SearchServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	ResultSet resultSet = null;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		String pid;
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/patientmanagementsystem","root","");
			String query="SELECT * FROM patients where ReportId = ?";
			PreparedStatement pst = con.prepareStatement(query);
			
			pid = req.getParameter("reportid");
			pst.setString(1, pid);
			
			resultSet = pst.executeQuery();
			
			while(resultSet.next()) {
				String s1 = resultSet.getString("Name");
				String s2 = resultSet.getString("Age");
				String s3 = resultSet.getString("Gender");
				String s4 = resultSet.getString("Email");
				String s5 = resultSet.getString("Phone");
				String s6 = resultSet.getString("AadharNo");
				String s7 = resultSet.getString("Disease");
				String s8 = resultSet.getString("ReportId");
				String s9 = resultSet.getString("ReportStatus");
				String s10 = resultSet.getString("Medicine");
				String s11 = resultSet.getString("Note");
				
				System.out.println(s1);
				
				
		//		out.println("Patient Name : "+"<input type='text' name='name' value="+s1+">");
				resultSet.setString(1,"name")
				res.setAttribute("name", s1);
				req.setAttribute("age", s2);
				req.setAttribute("gender", s3);
				req.setAttribute("email", s4);
				req.setAttribute("phone", s5);
				req.setAttribute("aadhar", s6);
				req.setAttribute("disease", s7);
				req.setAttribute("reportid", s8);
				req.setAttribute("status", s9);
				req.setAttribute("medicine", s10);
				req.setAttribute("note", s11);
				
			}
			
		}
		catch(Exception e) {
			out.println("<script type=\"text/javascript\">");
		    out.println("alert('Some Error Occured. Please contact the development team');");
		    out.println("</script>");
		    System.out.println(e);
		}
		
		
	}
	
}
