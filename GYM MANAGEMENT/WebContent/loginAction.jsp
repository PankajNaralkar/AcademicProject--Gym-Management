<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	if (username.equals("123") && password.equals("123") ) {
		response.sendRedirect("dashboard.jsp");
	} else {
		response.sendRedirect("login.jsp");
	}

%>
	

</body>
</html>