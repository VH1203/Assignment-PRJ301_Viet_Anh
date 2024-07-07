<%-- 
    Document   : adminHime
    Created on : Jul 7, 2024, 8:39:46 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>Admin Home</title>
</head>
<body>
    <h1>Welcome, Admin</h1>
    <a href="editGrades">Edit Grades</a>
    <form action="../logout" method="post">
        <input type="submit" value="Logout">
    </form>
</body>
</html>
