<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@page import="java.time.LocalDateTime" %>
<%@page import="java.time.format.DateTimeFormatter" %>

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
	String gender = request.getParameter("gender");
	String birth = request.getParameter("birth");
	String weight = request.getParameter("weight");
	String mobile = request.getParameter("mobile");
	String address = request.getParameter("address");
	String plan = request.getParameter("plan");
	String status = "pending";
	
	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
	String date = dtf.format(LocalDateTime.now());
	
	try {
		Connection con = ConnectionProvider.getCon();
		PreparedStatement ps = con.prepareStatement("insert into memberRequest values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
		
		ps.setString(1, name);
		ps.setString(2, gender);
		ps.setString(3, birth);
		ps.setString(4, mobile);
		ps.setString(5, address);
		ps.setString(6, weight);
		ps.setString(7, plan);
		ps.setString(8, id);
		ps.setString(9, date);
		ps.setString(10, status);
		
		ps.execute();
		
		response.sendRedirect("index.jsp");
		
	} catch(Exception e) {
		System.out.println(e);
		response.sendRedirect("index.jsp");
	}
%>

</body>
</html>