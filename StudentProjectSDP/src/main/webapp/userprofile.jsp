<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.klef.jfsd.SDP.model.User" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh; /* Ensures full height for the page */
        }

        /* Styling for the user profile card */
        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            max-width: 400px;
            margin: auto;
            text-align: center;
            font-family: arial;
            background-color: white;
            padding: 20px;
            margin-top: 20px;
            border-radius: 10px;
        }

        /* Image styling for the profile */
        .card img {
            width: 100%;
            border-radius: 50%;
            margin-bottom: 20px;
        }

        /* Title text for the profile */
        .title {
            color: grey;
            font-size: 18px;
        }

        /* Increase font size for user data */
        .card p {
            font-size: 20px; /* Larger font for user data */
            margin: 10px 0;
        }

        /* Button styling */
        button {
            border: none;
            outline: 0;
            display: inline-block;
            padding: 8px;
            color: white;
            background-color: #000;
            text-align: center;
            cursor: pointer;
            width: 100%;
            font-size: 18px;
            border-radius: 5px;
        }

        button:hover {
            opacity: 0.7;
        }


        /* Main heading */
        h2 {
            text-align: center;
            color: #007bff;
            margin-top: 30px;
            font-weight: bold;
        }

        /* Footer styles */
        footer {
            background-color: #343a40;
            color: white;
            padding: 10px 0;
            text-align: center;
            margin-top: auto;  /* Ensures footer stays at the bottom */
        }
    </style>
</head>
<body>

<%@include file="usernavbar.jsp" %> <!-- Navbar -->

<% 
    User u = (User) session.getAttribute("user"); // Get user data from session
%>

<h2>User Profile</h2>

<div class="card">
    <img src="/w3images/team2.jpg" alt="User Image">
    <h1><%= u.getName() %></h1>
    <p class="title">Student</p>
    <p>Id: <%= u.getId() %></p>
    <p>Date of Birth: <%= u.getDob() %></p>
    <p>Email: <%= u.getEmail() %></p>
    <p>Contact: <%= u.getContact() %></p>
</div>

<!-- Footer -->
<footer>
    <p>&copy; 2024 Your Company. All rights reserved.</p>
</footer>

</body>
</html>
