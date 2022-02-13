<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Comment ! </title>
<style>
textarea {
  margin:10;
}
</style>
</head>
<body style="background-color:#abd3d1;">
<label for="comment" type="text" >Type Your Comment</label>
<br>
<form action="sign" method="post">

<textarea id="comment" name="comment" rows="4" cols="100" >
</textarea>
<button type="submit" style="background-color:orange;" >Submit</button>

</form>
</body>
</html>