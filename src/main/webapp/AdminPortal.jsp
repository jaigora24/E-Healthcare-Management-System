<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		  <meta charset="utf-8">
		  <meta charset="utf-8">
		  <meta name="viewport" content="width=device-width, initial-scale=1">
		  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
		  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		  <link rel="stylesheet" href="/AdminPortal.css">
		<title>Admin Portal</title>
		<style>
			h2{
				position:absolute;
				font-size:45px;
				top:5%;
				left:42%;
			}
			.logout{
				position:absolute;
				left:90%;
				top:5%;
				background-color: black;
				border: solid 2px white;
				color: white;
				width:100px;
			}
			.logout:hover{
				background-color: white;
				border: solid 2px black;
				color: black;
			}

			h1{
				color: white;
			    font-family: Brush Script MT, Brush Script Std, cursive;
			    font-size: 50px;
			    position: absolute;
			    top: 35px;
			    left: 80px;
			}
			.add{
				position:absolute;
				font-size:20px;
				top:17%;
				left:5%;
				background-color : transparent;
				color: white;
				font-weight:bold;
				border: solid 2px white;
			}
			.add:hover{
				background-color : white;
				color: black;
				font-weight:bold;
				border: solid 2px black;
			}
			.delete{
				position:absolute;
				font-size:20px;
				top:17%;
				left:37%;
			}
			.deletebtn{
				background-color : transparent;
				color: white;
				font-weight:bold;
				border: solid 2px white;
			}
			.deletebtn:hover{
				background-color : white;
				color: black;
				font-weight:bold;
				border: solid 2px black;
			}
			.deletebar{
				background-color : transparent;
				color: white;
				font-weight:bold;
				border: solid 1px white;
			}
			.searchbtn{
				background-color : transparent;
				color: white;
				font-weight:bold;
				border: solid 2px white;
			}
			.searchbtn:hover{
				background-color : white;
				color: black;
				font-weight:bold;
				border: solid 2px black;
			}
			.searchbar{
				background-color : transparent;
				color: white;
				font-weight:bold;
				border: solid 1px white;
			}
			.search{
				position:absolute;
				font-size:20px;
				top:17%;
				left:72%;
			}
			.data{
				margin-top: 5%;
			}
			body{
				padding:1%;
				background: linear-gradient(to top, #000066 0%, #000000 100%);
			color: white;
			}
		
		
		
		</style>
		</head>
		<body>
		<h1>Abcd Hospital</h1>
			<h2>Admin Portal</h2>
			<form name="logout"  method="get" action="AdminLogin.jsp">
			<input class="logout" type="submit" value="Logout" >
		</form>
			<form class="add" name="addPatient"  method="get" action="AddPatient.jsp">
			<input class="add" type="submit" value="Add New Patient" >
		</form>
		<br>
		<form class="delete" action="delete" method="post">
				<input class="deletebar" type="text" placeholder="Report Id" name="reportid">
				<input class="deletebtn" type="submit" value="Delete">
			</form>
		<br>
		<form class="search" action="PatientPortal" method="post">
				<input class="searchbar" type="text" placeholder="Report Id" name="reportid">
				<input class="searchbtn" type="submit" value="Search">
			</form>
		<br>
		<hr>
		<%
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/patientmanagementsystem","root","");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM patients");
			while(rs.next()){
		%>
		
		<div class="data">
		<hr>
		<table align = "center" border="1" width="100" style="width:100%" class="table table-dark"">
		<tbody>
			<tr>
				<th width="2%">ID</th>
				<th width="10%">Patient Name</th>
				<th width="3%">Age</th>
				<th width="5%">Gender</th>
				<th width="10%">Email</th>
				<th width="10%">Phone</th>
				<th width="10%">Aadhar No.</th>
				<th width="10%">Disease</th>
				<th width="8%">Report ID</th>
				<th width="10%">Report Status</th>
				<th width="10%">Medicine</th>
				<th width="10%">Note</th>
				<th width="5%">Action</th>
			</tr>
			<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=rs.getString(6) %></td>
			<td><%=rs.getString(7) %></td>
			<td><%=rs.getString(8) %></td>
			<td><%=rs.getString(9) %></td>
			<td><%=rs.getString(10) %></td>
			<td><%=rs.getString(11) %></td>
			<td><%=rs.getString(12) %></td>
			<td><a href='Fetch.jsp?ReportId=<%=rs.getString("ReportId")%>' class="btn btn-danger">EDIT</a>
			</td>
			
			</tr>
		
		</tbody>
		</table>
		</div>
		
		<%
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
