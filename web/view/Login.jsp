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
            Username: <input type="text" name="username"><br/>
            Password: <input type="password" name="password">
        </form>
        <input type="submit" value="Login">
        
    </body>
</html>
