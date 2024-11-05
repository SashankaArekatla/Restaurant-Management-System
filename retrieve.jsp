<%@ page import="java.sql.*, javax.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String mobile = request.getParameter("user");
String password = request.getParameter("pass");

if (mobile == null || mobile.trim().isEmpty() || password == null || password.trim().isEmpty()) {
    response.sendRedirect("log.html?error=Please+enter+mobile+number+and+password");
} else {
    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/utk", "root", "");

        String query = "SELECT * FROM users WHERE mobile = ? AND password = ?";
        pst = con.prepareStatement(query);
        pst.setString(1, mobile);
        pst.setString(2, password);

        rs = pst.executeQuery();

        if (rs.next()) {
            // Valid login, set session attributes
            String firstName = rs.getString("first_name");
            session.setAttribute("loggedInUser", firstName); // Store user's first name in session

            response.sendRedirect("index.jsp"); // Redirect to home page after successful login
        } else {
            response.sendRedirect("log.html?error=Login+failed.+Invalid+mobile+number+or+password");
        }
    } catch (Exception e) {
        response.sendRedirect("log.html?error=Error%3A+" + e.getMessage());
    } finally {
        try {
            if (rs != null) rs.close();
            if (pst != null) pst.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            response.sendRedirect("log.html?error=Error+in+closing+resources%3A+" + e.getMessage());
        }
    }
}
%>
