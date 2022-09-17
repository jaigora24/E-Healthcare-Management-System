package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddPatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String name, age, gender, email, phone, aadhar, disease, reportid, status, medicine, note;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		name = req.getParameter("name");
		age = req.getParameter("age");
		gender = req.getParameter("gender");
		email = req.getParameter("email");
		phone = req.getParameter("phone");
		aadhar = req.getParameter("aadhar");
		disease = req.getParameter("disease");
		reportid = req.getParameter("reportid");
		status = req.getParameter("status");
		medicine = req.getParameter("medicine");
		note = req.getParameter("note");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/patientmanagementsystem","root","");
			String query="INSERT INTO patients(Name,Age,Gender,Email,Phone,AadharNo,Disease,ReportId,ReportStatus,Medicine,Note) values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1, name);
			pst.setString(2, age);
			pst.setString(3, gender);
			pst.setString(4, email);
			pst.setString(5, phone);
			pst.setString(6, aadhar);
			pst.setString(7, disease);
			pst.setString(8, reportid);
			pst.setString(9, status);
			pst.setString(10, medicine);
			pst.setString(11, note);
			pst.executeUpdate();
			res.sendRedirect("AdminPortal.jsp"); 
		}
		catch(Exception e) {
		    out.println("<h1 text-align='center'>");
		    out.println("Some Error Occured. Please contact the development team");
		    out.println("</h1>");
		    System.out.println(e);
		}
		
	}

}
