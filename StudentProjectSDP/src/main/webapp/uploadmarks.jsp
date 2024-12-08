<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Upload Marks</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        .content {
            margin-top: 50px;
            text-align: center;
        }
        .form-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f4f4f9;
            border-radius: 8px;
        }
    </style>
</head>
<body>

<%@ include file="adminnavbar.jsp" %> <!-- Include Navbar -->

<!-- Content Section for Upload Marks -->
<div class="content">
    <h3>Upload Marks</h3>
    <div class="form-container">
        <form action="uploadmarks" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="subject">Subject:</label>
                <input type="text" class="form-control" id="subject" name="subject" placeholder="Enter Subject" required>
            </div>
            <div class="form-group">
                <label for="file">Upload File (CSV):</label>
                <input type="file" class="form-control" id="file" name="file" required>
            </div>
            <button type="submit" class="btn btn-primary">Upload</button>
        </form>
    </div>
</div>

</body>
</html>
