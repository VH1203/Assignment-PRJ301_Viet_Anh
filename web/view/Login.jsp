<%-- 
    Document   : Login
    Created on : Jun 3, 2024, 3:06:54 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/login.css"/>
        <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
        <title>Quản lý điểm sinh viên</title>
    </head>
    <style>
        body{
            background-image: url(img);
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
    </style>
    <body>
        <form action="login" method="POST">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>
            <input type="submit" value="Login">
        </form>
        <%
            String error = request.getParameter("error");
            if ("1".equals(error)) {
                out.println("<p>Invalid username or password.</p>");
            }
        %>

    </body>
</html>
