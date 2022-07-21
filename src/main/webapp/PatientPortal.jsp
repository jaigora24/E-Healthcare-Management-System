<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Search your report | Hospital</title>
	</head>
	<body>
		<form action="search" method="post">
		<h1>Search Your Report Id</h1>
			<input type="text" placeholder="Report Id" name="reportid">
			<input type="submit" value="Search">
		</form>
	<br>
	<hr>
	<br>
		<form>
		<h1>Patient Report</h1>
			Patient Name : <input type="text" placeholder="" name="name" readonly><br><br>
			Patient Age : <input type="text" placeholder="" name="age" readonly><br><br>
			Gender :  <input type="text" placeholder="" name="gender" readonly><br><br>
			Patient Email : <input type="text" placeholder="" name="email" readonly><br><br>
			Patient Phone No : <input type="text" placeholder="" name="phone" readonly><br><br>
			Patient Aadhar No : <input type="text" placeholder="" name="aadhar" readonly><br><br>
			Patient Disease : <input type="text" placeholder="" name="disease" readonly><br><br>
			Report Id : <input type="text" placeholder="" name="reportid" readonly><br><br>
			Report Status : <input type="text" placeholder="" name="status" readonly><br><br>
			Medicine Recommendation (If any) : <input type="text" placeholder="" name="medicine" readonly><br><br>
			Note : <input type="text" placeholder="" name="note" readonly><br><br>
		</form>
	</body>
</html>
