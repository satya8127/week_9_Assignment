<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring 4 Example</title>
</head>
<body>
<h3>Login Form</h3>
<FONT color="blue">

</FONT>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login: Naggaro</title>
<link type="text/css" rel="stylesheet" href="/css/login.css" />
</head>
<body>
	 <div class="wrapper">
		<form action="/login" class="login" method="post">
			<p class="title">Log in</p>
			
     <p>
			<input type="text" name = "username" id="username" placeholder="Username" autofocus /> <i class="fa fa-user">
			</i> 
			<input type="password" id = "password" name = "password" placeholder="Password" /> <i class="fa fa-key">
			</i> 
			
			<button type="submit" >
				<i class="spinner"></i> <span class="state">Log in</span>
			</button>
		</form>
		
		<footer>
			<a target="blank" href="http://boudra.me/">boudra.me</a>
		</footer>
		</p>

	</div>
	
		
		<ul>
  <li><a href="list">Login Form</a></li>
</body>
</html>