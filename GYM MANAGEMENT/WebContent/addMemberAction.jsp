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
	String name= request.getParameter("name");
	String gender = request.getParameter("gender");
	String birth = request.getParameter("birth");
	String mobile = request.getParameter("mobile");
	String address= request.getParameter("address");
	String weight= request.getParameter("weight");
	String plan = request.getParameter("plan");
	String status = "joined";
	
	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyy");
	String joinDate = dtf.format(LocalDateTime.now());
	

	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	Calendar c = Calendar.getInstance();
	c.setTime(sdf.parse(joinDate));
	c.add(Calendar.MONTH, Integer.parseInt(plan));
	String expiryDate = sdf.format(c.getTime());
	
	
	try {
		Connection con = ConnectionProvider.getCon();
		PreparedStatement ps = con.prepareStatement("insert into members values( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
		
		ps.setString(1, id);
		ps.setString(2, name);
		ps.setString(3, gender);
		ps.setString(4, birth);
		ps.setString(5, mobile);
		ps.setString(6, address);
		ps.setString(7, weight);
		ps.setString(8, plan);
		ps.setString(9, joinDate);
		ps.setString(10, expiryDate);
		ps.setString(11, status);
		
		ps.execute();
		
		response.sendRedirect("dashboard.jsp");
		
	} catch(Exception e) {
		System.out.println(e);
		response.sendRedirect("index.jsp");
	}

%>
</body>
</html>