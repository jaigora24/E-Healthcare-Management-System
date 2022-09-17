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
public class PatientPortalServlet extends HttpServlet{
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
				out.println("<html>");
				out.println("<title>Patient Portal</title>");
				out.println("<head>");
				out.println("<link rel='stylesheet' type='text/css' href='PatientPortal.css' />");
				out.println("</head>");
				out.println("<body>");
				out.println("<div class='heading'>");
				out.println("<br>");
				out.print(resultSet.getString("Name"));
				out.print("'s  Report");
				out.println("<br>");
				out.println("</div>");
				out.println("<br>");
				out.println("<hr>");
				out.println("<br>");
				out.println("<table style='border:1px solid black margin-left:auto;margin-right:auto;'>");
					out.println("<tr>");
					out.println("<td>");
						out.print("<b>Patient's Name : </b>");
					out.println("</td>");
					out.println("<td>");
						out.println(resultSet.getString("Name"));
					out.println("</td>");
					out.println("</tr>");
		
					out.println("<tr>");
					out.println("<td>");
						out.print("<b>Patient's Age : </b>");
					out.println("</td>");
					out.println("<td>");
						out.println(resultSet.getString("Age"));
					out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr>");
					out.println("<td>");
						out.print("<b>Patient's Gender : </b>");
					out.println("</td>");
					out.println("<td>");
						out.println(resultSet.getString("Gender"));
					out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr>");
					out.println("<td>");
						out.print("<b>Patient's Email : </b>");
					out.println("</td>");
					out.println("<td>");
						out.println(resultSet.getString("Email"));
					out.println("</td>");
					out.println("</tr>");
						
					out.println("<tr>");
					out.println("<td>");
						out.print("<b>Patient's Phone Number : </b>");
					out.println("</td>");
					out.println("<td>");
						out.println(resultSet.getString("Phone"));
					out.println("</td>");
					out.println("</tr>");
						
					out.println("<tr>");
					out.println("<td>");
						out.print("<b>Patient's Aadhar Number : </b>");
					out.println("</td>");
					out.println("<td>");
						out.println(resultSet.getString("AadharNo"));
					out.println("</td>");
					out.println("</tr>");
						
					out.println("<tr>");
					out.println("<td>");
						out.print("<b>Disease Name or Type : </b>");
					out.println("</td>");
					out.println("<td>");
						out.println(resultSet.getString("Disease"));
					out.println("</td>");
					out.println("</tr>");
						
					out.println("<tr>");
					out.println("<td>");
						out.print("<b>Report Id : </b>");
					out.println("</td>");
					out.println("<td>");
						out.println(resultSet.getString("ReportId"));
					out.println("</td>");
					out.println("</tr>");
						
					out.println("<tr>");
					out.println("<td>");
						out.print("<b>Report Status : </b>");
					out.println("</td>");
					out.println("<td>");
						out.println(resultSet.getString("ReportStatus"));
					out.println("</td>");
					out.println("</tr>");
						
					out.println("<tr>");
					out.println("<td>");
						out.print("<b>Medicine Recommeded : </b>");
					out.println("</td>");
					out.println("<td>");
						out.println(resultSet.getString("Medicine"));
					out.println("</td>");
					out.println("</tr>");
						
					out.println("<tr>");
					out.println("<td>");
						out.print("<b>Note issued by the Doctor : </b>");
					out.println("</td>");
					out.println("<td>");
						out.println(resultSet.getString("Note"));
					out.println("</td>");
					out.println("</tr>");
					out.println("</div>");
				out.println("</table>");
				out.println("<br>");
				out.println("<button id='print-btn' onclick='print_page()'>Download Report</button>");
				out.println("<script src='script.js'></script>");
			}
		}
		catch(Exception e) {
			out.println("<h1 text-align='center'>");
		    out.println("Some Error Occured. Please contact the development team");
		    out.println("</h1>");
		    System.out.println(e);
		}
		
	}

}
