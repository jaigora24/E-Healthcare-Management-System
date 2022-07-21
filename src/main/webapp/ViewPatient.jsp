<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>	
		<meta charset="ISO-8859-1">
		<title></title>
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
			Patient Name : <input type="text" placeholder="John Doe" name="name" readonly><br><br>
			Patient Age : <input type="text" placeholder="XX" name="age" readonly><br><br>
				<label for="gender">Gender :  </label>
				Male<input type="radio" name="gender" id="gender" value="Male" disabled>
				Female<input type="radio" name="gender" id="gender" value="Female" disabled> 
				Other<input type="radio" name="gender" id="gender" value="Other" disabled><br><br>
			Patient Email : <input type="text" placeholder="abc@xyz.com" name="email" readonly><br><br>
			Patient Phone No : <input type="text" placeholder="XXX XXX XXXX" name="phone" readonly><br><br>
			Patient Aadhar No : <input type="text" placeholder="XXXX XXXX XXXX" name="aadhar" readonly><br><br>
			Patient Disease : <input type="text" placeholder="Disease" name="disease" readonly><br><br>
			Report Id : <input type="text" placeholder="Report Id" name="reportid" readonly><br><br>
			Report Status : <input type="text" placeholder="Status" name="status" readonly><br><br>
			Medicine Recommendation (If any) : <input type="text" placeholder="Medicine Recommendation" name="medicine" readonly><br><br>
			Note : <input type="text" placeholder="Other note" name="note" readonly><br><br>
		</form>
	</body>
</html>
