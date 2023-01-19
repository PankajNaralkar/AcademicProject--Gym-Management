<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@page import="java.time.LocalDateTime" %>
<%@page import="java.time.format.DateTimeFormatter" %>

<%@page import="java.util.Date" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.text.SimpleDateFormat" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String id = request.getParameter("id");
String plan = request.getParameter("plan");


DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyy");
String joinDate = dtf.format(LocalDateTime.now());


SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
Calendar c = Calendar.getInstance();
c.setTime(sdf.parse(joinDate));
c.add(Calendar.MONTH, Integer.parseInt(plan));
String expiryDate = sdf.format(c.getTime());

System.out.println(id + " " + plan);


try {
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("update members set plan=?, joinD=?, expire=? where id=?");

	ps.setString(1, plan);
	ps.setString(2, joinDate);
	ps.setString(3, expiryDate);
	ps.setString(4, id);
	ps.executeUpdate();
	
	response.sendRedirect("dashboard.jsp");
} catch (Exception e) {
	System.out.println(e);
	response.sendRedirect("requests.jsp");
}

%>


</body>
</html>