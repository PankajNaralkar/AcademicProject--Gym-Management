<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Request</title>
</head>
<body>

<%
	String id = request.getParameter("id");

	try {
		Connection con = ConnectionProvider.getCon();
		PreparedStatement ps = con.prepareStatement("update memberrequest set status='complete' where id=?");
		
		ps.setString(1, id);
		ps.executeUpdate();
		
		response.sendRedirect("addRequest.jsp?id=" + id);
	} catch (Exception e) {
		System.out.println(e);
		response.sendRedirect("requests.jsp");
	}

%>

</body>
</html>