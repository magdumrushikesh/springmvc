<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome Page</title>
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
        max-width: 500px;
        width: 90%;
    }

    .container a {
        display: block;
        margin: 10px 0;
        padding: 10px 15px;
        text-decoration: none;
        background-color: #007bff;
        color: #ffffff;
        border-radius: 5px;
        font-size: 1rem;
        transition: background-color 0.3s;
    }

    .container a:hover {
        background-color: #0056b3;
    }

    .container a:active {
        background-color: #003f7f;
    }
</style>
</head>
<body>
<div class="container">
    <a href="spring/home">Login As Guest</a>
    <a href="spring/login">Already User? Login</a>
    <a href="spring/newUser">New User? Register</a>
</div>
</body>
</html>
