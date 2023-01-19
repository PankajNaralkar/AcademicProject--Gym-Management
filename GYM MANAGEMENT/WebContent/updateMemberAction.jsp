<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String mobile = request.getParameter("mobile");
String address = request.getParameter("address");
String weight = request.getParameter("weight");
String plan = request.getParameter("plan");

try {
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("update members set name=?, mobile=?, address=?, weight=?, plan=? where id=?");
	
	ps.setString(1, name);
	ps.setString(2, mobile);
	ps.setString(3, address);
	ps.setString(4, weight);
	ps.setString(5, plan);
	ps.setString(6, id);
	ps.executeUpdate();
	
	response.sendRedirect("dashboard.jsp?id=" + id);
} catch (Exception e) {
	System.out.println(e);
	response.sendRedirect("requests.jsp");
}

%>



</body>
</html>