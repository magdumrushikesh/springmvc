<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
	<font color="green">${logindata}</font>
	<form:form action="authenticate" modelAttribute="objUser">
	User name: <form:input path="userName" />
		<br>
	Password: <form:input path="password" />
		<br>
		<form:button value="submit">Login</form:button>
	</form:form>
	
	<a href="newUser">New User? Register</a>

</body>
</html>