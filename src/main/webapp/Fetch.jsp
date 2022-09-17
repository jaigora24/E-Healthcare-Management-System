<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Update Patient</title>
		<link rel="stylesheet" href="/Updateatient.css" />
		  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous" />
		  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		  <style>
		  		body{
			  background: linear-gradient(to top, #000066 0%, #000000 100%);
			  height: 110vh;
			  color: white !important;
			  padding-top: 2%;
			}
			.sbmt{
			  background-color: white;
				border: solid 2px black !important;
				color: black;
				padding: 15px 30px;   
				text-decoration: none;
				margin: 4px 2px;
				cursor: pointer;
				border-radius: 10%;
			}
			.sbmt:hover{
			    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
			    background-color: black;
			    color: white;
			    border: solid 2px white !important;
			}
			h1{
			  font-weight: bolder !important;
			  text-align: center;
			}
			.col-md-5{
			  border: solid white;
			  border-width: 7px;
			  padding-top: 15px;
			  padding-left: 20px;
			  padding-bottom: 20px;
			}
			h2{
			text-align:center;
			}
			input{
			  width: 400px;
			  background: transparent;
			    border: none;
			    border-bottom: 1px solid white;
			    color: white;
			    font-weight: bolder !important;
			}
			.form{
			  margin: auto;
			  color: white;  
			}
			.sbmt:active {
			    box-shadow: none;
			    transform: translateY(0);
			  }
			  .sbmt:disabled {
			      pointer-events: none;
			    }

			    .sbmt:hover {
			      box-shadow: rgba(0, 0, 0, 0.25) 0 8px 15px;
			      transform: translateY(-2px);
			    }

			    .sbmt:active {
			      box-shadow: none;
			      transform: translateY(0);
			    }

			    h1{
			      color: white;
			      font-family: Brush Script MT, Brush Script Std, cursive !important;
			      font-size: 50px !important;
			      position:absolute;
			      top:2%;
			      left:5%;
			    }
			    .male{
				width:30px;
			    }
			    .female{
				width:30px;
			    }
			    .other{
				width:30px;
			    }
		  </style>
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
		<h1>ABCD Hospital</h1>
		  <div class="container">
		    <div class="row justify-content-center">
		      <div class="col-md-5">
					<h2>Patient's Details</h2>
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
						<input type="submit" value="Update Details" class="sbmt">
					</form>
				</div>
			</div>
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
