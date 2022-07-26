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
	String reportid = request.getParameter("ReportId");
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/patientmanagementsystem","root","");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("SELECT * FROM patients WHERE ReportId='"+reportid+"'");
		while(rs.next()){	
	%>
		<h1>Patient's Details</h1>
		<form action="Update.jsp" method="post">
			Patient Name : <input type="text" placeholder="John Doe" name="name" value=<%=rs.getString(2) %> required><br><br>
			Patient Age : <input type="text" placeholder="XX" name="age" value=<%=rs.getString(3) %> required><br><br>
		    Patient Email : <input type="text" placeholder="abc@xyz.com" name="email" value=<%=rs.getString(5) %> required><br><br>
			Patient Phone No : <input type="text" placeholder="XXX XXX XXXX" name="phone" value=<%=rs.getString(6) %> required><br><br>
			Patient Aadhar No : <input type="text" placeholder="XXXX XXXX XXXX" name="aadhar" value=<%=rs.getString(7) %> required><br><br>
			Patient Disease : <input type="text" placeholder="Disease" name="disease" value=<%=rs.getString(8) %> required><br><br>
			Report Id : <input type="text" placeholder="Report Id" name="reportid" value=<%=rs.getString(9) %> readonly required><br><br>
			Report Status : <input type="text" placeholder="Status" name="status" value=<%=rs.getString(10) %>><br><br>
			Medicine Recommendation (If any) : <input type="text" placeholder="Medicine Recommendation" name="medicine" value=<%=rs.getString(11) %>><br><br>
			Note : <input type="text" placeholder="Other note" name="note" value=<%=rs.getString(12) %>><br><br>
			<input type="submit" value="Update Details">
		</form>
	<%
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
	%>
	</body>
</html>
