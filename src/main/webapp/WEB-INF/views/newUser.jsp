<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
</head>
<body>
	<form:form action="register" modelAttribute="objUser">
	User name: <form:input path="userName" />
		<br>
	Password: <form:input path="password" />
		<br>
	Name: <form:input path="name" />
		<br>
	Email: <form:input path="email" />
		<br>
		<form:button value="submit">Register</form:button>
	</form:form>
	
	<a href="login">Already User? Login</a>

</body>
</html>