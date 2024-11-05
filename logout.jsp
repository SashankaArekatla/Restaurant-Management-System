<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
</head>
<body>
<%
session.invalidate(); // Invalidate the session on logout
response.sendRedirect("index.jsp"); // Redirect back to the main page (index.jsp)
%>
</body>
</html>
