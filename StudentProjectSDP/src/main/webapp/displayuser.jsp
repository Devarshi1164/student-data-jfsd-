<%@ page import="com.klef.jfsd.SDP.model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>   
<%@ taglib uri="jakarta.tags.core" prefix="c" %>    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Display User</title>
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
        h3 {
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

<%@ include file="adminnavbar.jsp" %> <!-- Admin Navbar -->

<h3>Display User</h3>

<!-- User Profile Card -->
<div class="card">
    <img src="/w3images/team2.jpg" alt="User Image"> <!-- Default Image, you can change this -->
    <h1><c:out value="${u.name}"></c:out></h1>
    <p class="title">Student</p>
    <p>Id: <c:out value="${u.id}"></c:out></p>
    <p>Date of Birth: <c:out value="${u.dob}"></c:out></p>
    <p>Email: <c:out value="${u.email}"></c:out></p>
    <p>Contact: <c:out value="${u.contact}"></c:out></p>
</div>

<!-- Footer -->
<footer>
    <p>&copy; 2024 Your Company. All rights reserved.</p>
</footer>

</body>
</html>
