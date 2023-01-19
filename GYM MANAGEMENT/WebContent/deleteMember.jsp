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

	try {
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		st.execute("delete from members where id='" + id + "'");
		
		response.sendRedirect("dashboard.jsp");
	} catch (Exception e) {
		System.out.println(e);
		response.sendRedirect("dashboard.jsp");
	}

%>


</body>
</html>