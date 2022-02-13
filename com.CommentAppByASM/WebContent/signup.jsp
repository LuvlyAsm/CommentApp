<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<title>Comment App</title>
<link rel="stylesheet" type="text/css" href="design.css">
</head>
<body>
	<form action="sign" method="post">
  

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
    
    <label for="secret"><b>Secret Code</b></label>
    <input type="number" placeholder="Enter Secret Code" name="secret" required>

    <button type="submit">SignUp</button>
    
	 	<div class="container" style="background-color:#abd3d1">
		    <span class="signup" >Already have an account? <a href="index.jsp">LogIn</a></span>
	
	</div>  
	
		
  </div>
	
	
 
</form>

</body>
</html>