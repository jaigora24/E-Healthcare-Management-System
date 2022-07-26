package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
public class DeletePatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/patientmanagementsystem","root","");
			String query = "DELETE FROM `patients` WHERE ReportId=?";
			PreparedStatement pst=con.prepareStatement(query);
			String pid = req.getParameter("reportid");
			pst.setString(1, pid);
			pst.executeUpdate();
			out.println("<script type=\"text/javascript\">");
		    out.println("alert('Patient Data Deleted Successfully');");
		    out.println("</script>");
		    res.sendRedirect("DeletePatient.jsp"); 	
		}
		catch(Exception e) {
			out.println("<script type=\"text/javascript\">");
		    out.println("alert('Some Error Occured. Please contact the development team');");
		    out.println("</script>");
		    System.out.println(e);
		}

	}

}
