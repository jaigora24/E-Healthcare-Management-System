<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>ABCD Hospital</title>
		<link rel="stylesheet" href="/Home.css">
		<style>
		
			body{
			  background: linear-gradient(to top, #000066 0%, #000000 100%);
			    height: 100vh;
			    padding-left: 5%;
			    padding-right: 5%;
			    color: white;
			}
			h1{
			  font-family: Brush Script MT, Brush Script Std, cursive;
			  font-size: 50px;
			}
			img{
			    float: left;
			    margin-top: 20px;
			}
			p{
			  padding-left: 700px;
			  font-size: 50px;
			  font-style: italic;
			}
			form{
			    margin-left: 800px;
			    margin-top: 150px;
			    font-size: larger;   
			}
			.searchbar{
			  background: transparent;
			    border: none;
			    border-bottom: 1px solid white;
			    inline-size: 170px;
			    height: 30px;
			}

			.searchbtn{
			    inline-size: 100px;
			    height: 25px;
			    cursor: pointer;
			    border: solid 2px white;
			    border-radius: 15%;
			} 
			.btn{
			    position: absolute;
			    top: 35px;
			    right: 35px;
			    width: 120px;
			    height: 30px;
			    cursor: pointer;
			    border: solid 2px white;
			    border-radius: 10%;
			}
			.btn:disabled {
			  pointer-events: none;
			}

			.btn:hover {
			  box-shadow: rgba(0, 0, 0, 0.25) 0 8px 15px;
			  transform: translateY(-2px);
			}

			.searchbtn:active {
			  box-shadow: none;
			  transform: translateY(0);
			}
			.searchbtn:disabled {
			    pointer-events: none;
			  }

			  .searchbtn:hover {
			    box-shadow: rgba(0, 0, 0, 0.25) 0 8px 15px;
			    transform: translateY(-2px);
			    background-color: black;
			  }

			  .searchbtn:active {
			    box-shadow: none;
			    transform: translateY(0);
			  }
			  input{
			    background: transparent;
			    border: none;
			    border-bottom: 1px solid white;
			    color: white;
			    font-weight: bolder !important;
			  }
  </style>
  
	</head>
	<body>
	    <h1>Abcd Hospital</h1>
		<img src="https://raw.githubusercontent.com/Ishusharma7/dev1/main/2.png" width="600" height="500">
		<form name="adminlogin"  method="get" action="AdminLogin.jsp">
        	<input type="submit" value="ADMIN LOGIN" class="btn" >
		</form>
		<p>Welcome to the E-Health Care System<br></p>
		<div class="search">
			<form action="PatientPortal" method="post">
				<h2>Search Your Report Id</h2>
				<input type="text" placeholder="Report Id" name="reportid">
				<input type="submit" value="Search" class="searchbtn">
			</form>
		</div>
	</body>
</html>
