<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Message Page</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 0;
        background-color: #eef2f7;
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
        padding: 40px;
        max-width: 600px;
        width: 90%;
    }

    h1 {
        font-size: 2rem;
        color: #2c3e50;
        margin: 0;
    }

    p {
        font-size: 1rem;
        color: #7f8c8d;
        margin-top: 15px;
    }
</style>
</head>
<body>
<div class="container">
    <h1>${message}</h1>
    <p>If you need further assistance, please contact support.</p>
</div>
</body>
</html>
