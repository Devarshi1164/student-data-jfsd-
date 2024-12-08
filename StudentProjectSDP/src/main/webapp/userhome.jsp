<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.klef.jfsd.SDP.model.Marks" %>
<%@ page import="com.klef.jfsd.SDP.service.MarksService" %>
<%@ page import="com.klef.jfsd.SDP.model.User" %>

<%
try {
    User user = (User) session.getAttribute("user");

    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    MarksService marksService = new MarksService();
    List<Marks> marksList = marksService.getMarksByStudentNameAndId(user.getName(), user.getId());

    // Use marksList for your logic here
} catch (Exception e) {
    e.printStackTrace(); // For debugging
    out.println("Error: " + e.getMessage()); // Show error message
}
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Home - Student Performance Analytics</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Additional styling */
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }

        table th, table td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }

        table th {
            background-color: #007bff;
            color: white;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="userhome">Home</a>
        <div class="navbar-nav">
            <a class="nav-link" href="userprofile">User Profile</a>
            <a class="nav-link" href="userlogout">Logout</a>
        </div>
    </div>

    <!-- Welcome Section -->
    <div class="container text-center mt-4">
        <h2>Welcome, <%= user.getName() %>!</h2>
        <p>Your ID: <%= user.getId() %></p>
    </div>

    <!-- Marks Table -->
    <div class="container">
        <h3 class="text-center mt-4">Your Marks</h3>
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Subject</th>
                    <th>Marks</th>
                </tr>
            </thead>
            <tbody>
                <% if (marksList != null && !marksList.isEmpty()) { %>
                    <% for (Marks mark : marksList) { %>
                        <tr>
                            <td><%= mark.getSubject() %></td>
                            <td><%= mark.getMarks() %></td>
                        </tr>
                    <% } %>
                <% } else { %>
                    <tr>
                        <td colspan="2">No marks available.</td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </div>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center py-3">
        &copy; 2024 Student Performance Analytics. All Rights Reserved.
    </footer>
</body>
</html>
