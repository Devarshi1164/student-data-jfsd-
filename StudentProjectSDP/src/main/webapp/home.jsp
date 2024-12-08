<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Student Performance Analytics</title>
    <style>
        /* General styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background-color: #f8f9fa;
            color: #333;
        }

        /* Main content style */
        main {
            flex: 1;
            padding: 2rem;
            text-align: center;
        }

        .content-box {
            background: white;
            margin: 0 auto;
            padding: 1.5rem;
            max-width: 600px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .content-box h2 {
            color: #007bff; /* Primary color */
            margin-bottom: 1rem;
        }

        /* Footer style */
        footer {
            background-color: #343a40; /* Dark gray for footer */
            color: white;
            text-align: center;
            padding: 1rem 0;
            margin-top: auto;
        }

        footer p {
            margin: 0;
            font-size: 0.9rem;
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %> <!-- Navbar included at the top -->
    <main>
        <div class="content-box">
            <h2>Welcome to the Dashboard</h2><br/>
        </div>
    </main>
    <footer>
        <p>&copy; 2024 Student Performance Analytics. All Rights Reserved.</p>
    </footer>
</body>
</html>
