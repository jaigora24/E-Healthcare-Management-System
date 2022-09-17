<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Update Patient</title>
	</head>
	<body>
	
		<%
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String aadhar = request.getParameter("aadhar");
		String disease = request.getParameter("disease");
		String reportid = request.getParameter("reportid");
		String status = request.getParameter("status");
		String medicine = request.getParameter("medicine");
		String note = request.getParameter("note");
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/patientmanagementsystem","root","");
			PreparedStatement ps = con.prepareStatement("UPDATE `patients` SET Name=?, Age=?, Email=?, Phone=?, AadharNo=?, Disease=?, ReportId=?, ReportStatus=?, Medicine=?, Note=? WHERE ReportId=? ");
			ps.setString(1,name);
			ps.setString(2,age);
			ps.setString(3,email);
			ps.setString(4,phone);
			ps.setString(5,aadhar);
			ps.setString(6,disease);
			ps.setString(7,reportid);
			ps.setString(8,status);
			ps.setString(9,medicine);
			ps.setString(10,note);
			ps.setString(11,reportid);
			int i=ps.executeUpdate();
			if(i>0){
				response.sendRedirect("AdminPortal.jsp");
			}
			else{
				out.println("<h1 text-align='center'>");
			    out.println("Some Error Occured. Please contact the development team");
			    out.println("</h1>");
			}
		}
		catch(Exception e){
			out.println("<h1 text-align='center'>");
		    out.println("Some Error Occured. Please contact the development team");
		    out.println("</h1>");
			System.out.println(e);
		}
		%>
	
	</body>
</html>
