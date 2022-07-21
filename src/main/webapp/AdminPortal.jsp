<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Admin Portal | Hospital</title>
	</head>
	<body>
		<form name="addPatient"  method="get" action="AddPatient.jsp">
        	<input type="submit" value="Add New Patient" >
    	</form>
    	<form name="deletePatient"  method="get" action="DeletePatient.jsp">
        	<input type="submit" value="Delete Existing Patient" >
    	</form>
    	<form name="updatePatient"  method="get" action="UpdatePatient.jsp">
        	<input type="submit" value="Update Existing Patient" >
    	</form>
    	<form name="viewPatient"  method="get" action="ViewPatient.jsp">
        	<input type="submit" value="View Patient Report" >
    	</form>
	</body>
</html>
