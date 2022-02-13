<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Comment App</title>
<link rel="stylesheet" type="text/css" href="design.css">
</head>
<body>
	<form action="validate" method="post">
  

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="email" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <button type="submit">Login</button>
    
	    <!-- Forgot Password / signup-->
	
    <div class="container" style="background-color:#f1f1f1">
	    <span class="psw">Forgot <a href="Forgot-Password.jsp">password?</a></span>
	    
	  		</div>
	
 		
  </div>
	<div class="container" style="background-color:#abd3d1">
		    <span class="signup" >Don't have an account? <a href="signup.jsp">SignUp</a></span>
	
	</div> 	
	
	
 
</form>

</body>
</html>
