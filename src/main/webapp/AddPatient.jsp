<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Add New Patient | Hospital</title>
		<link rel="stylesheet" href="/AddPatient.css" />
		  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous" />
		  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		  <style>
		  	body{
			  background: linear-gradient(to top, #000066 0%, #000000 100%);
			  height: 100vh;
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
	<h1>ABCD Hospital</h1>
	  <div class="container">
		    <div class="row justify-content-center">
			      <div class="col-md-5">
					<h2>Patient's Details</h2>
						<form action="add" method="post">
							<input class="t1" type="text" placeholder="Patient Name" name="name" required><br><br>
							<input type="text" placeholder="Patient Age" name="age" required><br><br>
							<label id="gender" class="radio-inline" for="gender">Gender :  </label><br>
								Male<input class="male" type="radio" name="gender" id="gender" value="Male">
								Female<input class="female" type="radio" name="gender" id="gender" value="Female"> 
								Other<input class="other" type="radio" name="gender" id="gender" value="Other"><br><br>
							<input type="text" placeholder="Patient Email" name="email" required><br><br>
							<input type="text" placeholder="Patient Phone No" name="phone" required><br><br>
							<input type="text" placeholder="Patient Aadhar No" name="aadhar" required><br><br>
							<input type="text" placeholder="Patient Disease" name="disease" required><br><br>
							<input type="text" placeholder="Report Id" name="reportid" required><br><br>
							<input type="text" placeholder="Report Status" name="status"><br><br>
							<input type="text" placeholder="Medicine Recommendation (if any)" name="medicine"><br><br>
							<input type="text" placeholder="Other note" name="note"><br><br>
							<input type="submit" value="Submit Details" class="sbmt">
						</form>
				    </div>
			  </div>
		</div>
	</body>
</html>
