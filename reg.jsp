<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Registration Status</title>
</head>
<body>
<%
String fname = request.getParameter("first");
String lname = request.getParameter("last");
String email = request.getParameter("email");
String pwd = request.getParameter("password");
String mobile = request.getParameter("mobile");

if (fname == null || fname.trim().isEmpty() ||
    lname == null || lname.trim().isEmpty() ||
    email == null || email.trim().isEmpty() ||
    pwd == null || pwd.trim().isEmpty() ||
    mobile == null || mobile.trim().isEmpty()) {
  out.println("<h2>Error: Please fill in all fields!</h2>");
} else {
  Connection con = null;
  PreparedStatement pst = null;

  try {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/utk", "root", "");

    String query = "INSERT INTO users (first_name, last_name, email, password, mobile) VALUES (?, ?, ?, ?, ?)";
    pst = con.prepareStatement(query);
    pst.setString(1, fname);
    pst.setString(2, lname);
    pst.setString(3, email);
    pst.setString(4, pwd);
    pst.setString(5, mobile);

    int rowsAffected = pst.executeUpdate();

    if (rowsAffected > 0) {
      response.sendRedirect("log.html");
    } else {
      out.println("<h2>Registration failed. Please try again later.</h2>");
    }
  } catch (Exception e) {
    out.println("<h2>Error: " + e.getMessage() + "</h2>");
  } finally {
    try {
      if (pst != null) {
        pst.close();
      }
      if (con != null) {
        con.close();
      }
    } catch (SQLException e) {
      out.println("<h2>Error in closing resources: " + e.getMessage() + "</h2>");
    }
  }
}
%>
</body>
</html>
