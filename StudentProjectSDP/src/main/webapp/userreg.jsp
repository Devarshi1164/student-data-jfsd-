<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <!-- Add Bootstrap for styling -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEJr2X1vK2De1fQjjs4wD6dN4F5oZX2ZzHfbfAlc5ny4Zc9/qGh0zpm9lbkw9" crossorigin="anonymous">
    <style>
        body {
            background-color: #f4f4f9;
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 750px;  /* Increased width */
            margin-top: 30px;  /* Reduced space between navbar and form */
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        h3 {
            margin-bottom: 20px;
            font-weight: bold;
            color: #333;
        }
        label {
            font-weight: bold;
            color: #555;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="number"],
        input[type="date"] {
            width: 100%;
            padding: 8px;  /* Reduced padding to decrease height */
            margin: 8px 0;
            border-radius: 4px;
            border: 1px solid #ddd;
        }
        input[type="radio"] {
            margin-left: 10px;
        }
        .form-check-label {
            margin-right: 20px;
        }
        .btn {
            width: 100%;
            padding: 10px;
            margin-top: 15px;
            font-size: 16px;
        }
        .btn-success {
            background-color: #28a745;
            border: none;
        }
        .btn-success:hover {
            background-color: #218838;
        }
        .form-control {
            margin-top: 10px;
        }

        /* Footer Styles */
        footer {
            background-color: #343a40;
            color: white;
            padding: 10px 0;
            text-align: center;
            margin-top: 30px;
        }
    </style>
</head>
<body>
<%@include file="mainnavbar.jsp" %>
<div class="container">
    <h3 align="center">User Registration Form</h3>
    <form method="post" action="/insertuser">
        <label for="cname">Enter Name</label>
        <input type="text" id="cname" name="cname" class="form-control" required/>
        
        <label>Select Gender</label>
        <div class="form-check">
            <input type="radio" name="cgender" value="Male" class="form-check-input" required/>
            <label class="form-check-label">Male</label>
        </div>
        <div class="form-check">
            <input type="radio" name="cgender" value="Female" class="form-check-input" required/>
            <label class="form-check-label">Female</label>
        </div>
        <div class="form-check">
            <input type="radio" name="cgender" value="Others" class="form-check-input" required/>
            <label class="form-check-label">Others</label>
        </div>
        
        <label for="cdob">Select Date of Birth</label>
        <input type="date" name="cdob" class="form-control" required/>
        
        <label for="cemail">Enter Email Id</label>
        <input type="email" id="cemail" name="cemail" class="form-control" required/>
        
        <label for="cpwd">Enter Password</label>
        <input type="password" id="cpwd" name="cpwd" class="form-control" required/>
        
        <label for="ccontact">Enter Contact</label>
        <input type="number" id="ccontact" name="ccontact" class="form-control" required/>
        
        <input type="submit" value="Register" class="btn btn-success"/>
        <input type="reset" value="Clear" class="btn btn-secondary"/>
    </form>
</div>

<!-- Footer -->
<footer>
    <p>&copy; 2024 Your Company. All rights reserved.</p>
</footer>

<!-- Include Bootstrap JS (Optional for enhanced functionality like modals or tooltips) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0p4WbDqzGqgHV2U1Ofr9FjjvZzzc4/VsqP3FdlzqxF7zAfcJ" crossorigin="anonymous"></script>
</body>
</html>
