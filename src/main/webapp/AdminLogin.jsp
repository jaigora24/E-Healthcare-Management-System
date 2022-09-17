<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Admin Login | Hospital</title>
		<link rel="stylesheet" href="/Adminlogin.css" />
  		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous" />
		<style>
			body{
			    background: linear-gradient(to top, #000066 0%, #000000 100%);
			    height: 85vh;
			    margin-top: 15vh !important;
			}
			.btn{
			    margin: 2mm !important;
			    border: 2px solid !important;    
			}
			.password{
			    padding: 2mm ;
			    margin: 2mm ;
			    border: 2px solid ;
			}
			.username{
			    padding: 2mm ;
			    margin: 2mm ;
			    border: 2px solid ;
			}

			h2{
			    text-align: center;
			}
			.center-block {
			    margin: auto;
			    display: block;
			  }
			  #btn{
			    width: 75%;
			    cursor: pointer;
			    border-radius: 16px;
			    background-color: black !important;
			    color: white;
			  }
			  #btn:hover{
			    background-color: #ECECEC !important;
			    color: black;
			  }
			  h1{
			    color: white;
			    font-family: Brush Script MT, Brush Script Std, cursive;
			    font-size: 50px;
			    position: absolute;
			    top: 40px;
			    left: 80px;
			  }
		</style>
	
	</head>
	<body>
		<h1>Abcd Hospital</h1>
  		<div class="container">
	    	<div class="row justify-content-center">
		      	<div class="col-md-3 shadow-lg p-3 mb-5 bg-white rounded">
					<form action="login" method="post">
						<h2>Admin Login</h2>
			          	<img class="center-block" src="https://raw.githubusercontent.com/Ishusharma7/dev1/main/3.png" width="150px" height="150px"><br>
						<input class="center-block" type="text" placeholder="Admin Username" name="username" class="username" required><br>
						<input class="center-block" type="password" placeholder="Admin Password" name="password" class="password" required><br>
						<input class="center-block" id="btn" type="submit" value="Login">
					</form>
				</div>
	        </div>
        </div>
	</body>
</html>
