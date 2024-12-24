<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
errorPage="error.jsp"
%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register Page</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f9;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #333;
    }

    .container {
        text-align: center;
        background: #ffffff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 30px;
        max-width: 400px;
        width: 90%;
    }

    h1 {
        font-size: 1.8rem;
        color: #2c3e50;
        margin-bottom: 20px;
    }

    form {
        margin: 20px 0;
    }

    form label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }

    form input {
        width: 100%;
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 1rem;
    }

    form button {
        background-color: #2ecc71;
        color: #fff;
        border: none;
        padding: 10px 15px;
        border-radius: 5px;
        font-size: 1rem;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    form button:hover {
        background-color: #27ae60;
    }

    a {
        text-decoration: none;
        color: #3498db;
        font-weight: bold;
        transition: color 0.3s;
    }

    a:hover {
        color: #21618c;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Register Page</h1>
    <form:form action="newUser" modelAttribute="objUser">
        <label for="userName">User Name:</label>
        <form:input path="userName" id="userName" /><form:errors path="userName" cssStyle="color:red"></form:errors>

        <label for="password">Password:</label>
        <form:input path="password" id="password" type="password" /><form:errors path="password" cssStyle="color:red"></form:errors>

        <label for="name">Name:</label>
        <form:input path="name" id="name" />

        <label for="email">Email:</label>
        <form:input path="email" id="email" type="email" /><form:errors path="email" cssStyle="color:red"></form:errors>

        <form:button value="submit">Register</form:button>
    </form:form>

    <a href="login">Already a User? Login</a>
</div>
</body>
</html>
