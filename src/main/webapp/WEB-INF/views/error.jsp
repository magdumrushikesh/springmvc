<%@ page isErrorPage="true" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error - Something Went Wrong</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .error-container {
            text-align: center;
            background-color: #fff;
            padding: 40px 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        .error-container h1 {
            font-size: 72px;
            color: #ff6b6b;
            margin: 0;
        }
        .error-container p {
            font-size: 18px;
            color: #333;
        }
        .error-details {
            margin-top: 20px;
            font-size: 14px;
            color: #777;
            background-color: #f9f9f9;
            padding: 10px;
            border-radius: 5px;
        }
        .error-container a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #4caf50;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .error-container a:hover {
            background-color: #43a047;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h1>Oops!</h1>
        <p>Something went wrong. Please try again later.</p>
        <div class="error-details">
            <strong>Error Details:</strong>
            <p>${errordata}</p>
            <pre>${exception}</pre>
        </div>
        <a href="login">Go Back to Home</a>
    </div>
</body>
</html>
