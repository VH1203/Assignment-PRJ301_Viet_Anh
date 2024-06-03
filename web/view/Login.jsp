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
        <title>JSP Page</title>
    </head>
    <body>
        <form action="login" method="POST">
            Username: <input type="text" name="username"><br/>
            Password: <input type="password" name="password">
        </form>
        <input type="submit" value="Login">
    </body>
</html>
