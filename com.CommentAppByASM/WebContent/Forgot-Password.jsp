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
	<form action="forg" method="post">
  

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Secret Code</b></label>
    <input type="password" placeholder="Enter Secret Code" name="psw" required>

    <button type="submit">Get Password</button>
    
	    <!-- Forgot Password -->
	
	     <div class="container" style="background-color:#f1f1f1">
	    <span class="psw">Go to <a href="index.jsp">LogIn</a> page</span>
	    
	  		</div>
	
 		
  </div>
	<div class="container" style="background-color:#abd3d1">
		    <span class="signup" >Don't have an account? <a href="signup.jsp">SignUp</a></span>
	
	</div> 	
	
 
</form>

</body>
</html>