<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <!-- Add Bootstrap for styling -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEJr2X1vK2De1fQjjs4wD6dN4F5oZX2ZzHfbfAlc5ny4Zc9/qGh0zpm9lbkw9" crossorigin="anonymous">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        html, body {
            height: 100%;
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            overflow: hidden; /* Disable scrolling */
        }
        .form-container {
            display: flex;
            margin-bottom:100px;
            justify-content: center;
            align-items: center;
            height: calc(100vh - 250px); /* Adjust for navbar height */
            padding: 0 15px;
        }
        .container {
            max-width: 450px; /* Width for the login form */
            width: 150%;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        h3 {
            margin-bottom: 15px;
            font-weight: bold;
            color: #333;
            text-align: center;
        }
        h4 {
            color: red;
            font-weight: bold;
            text-align: center;
            margin-bottom: 15px;
        }
        label {
            font-weight: bold;
            color: #555;
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border-radius: 4px;
            border: 1px solid #ddd;
        }
        .btn {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            font-size: 14px;
        }
        .btn-success {
            background-color: #28a745;
            border: none;
        }
        .btn-success:hover {
            background-color: #218838;
        }

        /* Footer Styles */
        footer {
            background-color: #343a40;
            color: white;
            padding: 10px 0;
            text-align: center;
            width: 100%;
            position: absolute;
            bottom: 0;
        }
    </style>
</head>
<body>
<%@include file="mainnavbar.jsp" %>

<div class="form-container">
    <!-- Display message if provided -->
    <div class="container">
        <h4>
            <c:out value="${message}"></c:out>
        </h4>

        <h3>User Login Form</h3>
        <form method="post" action="checkuserlogin">
            <label for="cemail">Enter Email</label>
            <input type="text" id="cemail" name="cemail" class="form-control" required/>

            <label for="cpwd">Enter Password</label>
            <input type="password" id="cpwd" name="cpwd" class="form-control" required/>

            <input type="submit" value="Login" class="btn btn-success"/>
            <input type="reset" value="Clear" class="btn btn-secondary"/>
        </form>
    </div>
</div>

<!-- Footer -->
<footer>
    <p>&copy; 2024 Your Company. All rights reserved.</p>
</footer>

<!-- Include Bootstrap JS (Optional for enhanced functionality like modals or tooltips) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0p4WbDqzGqgHV2U1Ofr9FjjvZzzc4/VsqP3FdlzqxF7zAfcJ" crossorigin="anonymous"></script>
</body>
</html>
