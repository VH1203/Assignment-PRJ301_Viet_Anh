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
    <h1>Login</h1>
    <form action="login" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username"><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password"><br>
        <input type="submit" value="Login">
    </form>
    <% if (request.getAttribute("error") != null) { %>
            <p style="color: red;"><%= request.getAttribute("error") %></p>
        <% } %>
    </body>
</html>
