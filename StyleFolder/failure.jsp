<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Error Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f9f9f9;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #333;
    }

    .container {
        text-align: center;
        background: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        padding: 30px;
        width: 90%;
        max-width: 400px;
    }

    .message {
        color: #e74c3c;
        font-size: 1.2rem;
        margin-bottom: 20px;
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
    <div class="message">${message}</div>
    <a href="login">Try Again</a>
</div>
</body>
</html>
