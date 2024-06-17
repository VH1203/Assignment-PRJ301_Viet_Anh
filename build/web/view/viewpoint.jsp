<%-- 
    Document   : Viewpoint
    Created on : Jun 15, 2024, 12:41:29 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Student</title>
</head>
<body>
    <h2>Add Student</h2>
    <form method="post" action="AddStudentServlet">
        <label for="studentId">Student ID</label>
        <input type="text" name="studentId" id="studentId" required>
        <label for="name">Name</label>
        <input type="text" name="name" id="name" required>
        <label for="email">Email</label>
        <input type="email" name="email" id="email" required>
        <label for="class">Class</label>
        <input type="text" name="class" id="class" required>
        <button type="submit">Add</button>
    </form>
</body>
</html>

