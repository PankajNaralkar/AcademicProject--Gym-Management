<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="./css/addmem.css">
</head>
<body>



    <div class="addmem">
        <div class="backgr">
        </div>
        
       

       <div class="body">
       		 <%
        	String id = request.getParameter("id");
        
        
       		Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from memberrequest where id='" + id + "'");
			
			while(rs.next()) {
				%>
					<h2><%= rs.getString(1) %></h2>
           			<p><span>Gender : </span><%= rs.getString(2) %></p>
          			<p><span>Birth date : </span><%= rs.getString(3) %></p>
           			<p><span>Weight : </span><%= rs.getString(6) %></p>
           			<p><span>Mobile Number : </span><%=rs.getString(4) %></p>
           			<p><span>Address : </span><%= rs.getString(5) %></p>
           			<p><span>Plan : </span><%= rs.getString(7) %></p>

           			<form action="addRequestAction.jsp" method="post" >
           				<input name="name" type="hidden" value="<%= rs.getString(1) %>" />
           				<input name="gender" type="hidden" value="<%= rs.getString(2) %>" />
           				<input name="birth" type="hidden" value="<%= rs.getString(3) %>" />
           				<input name="weight" type="hidden" value="<%= rs.getString(6) %>" />
           				<input name="mobile" type="hidden" value="<%= rs.getString(4) %>" />
           				<input name="address" type="hidden" value="<%= rs.getString(5) %>" />
           				<input name="plan" type="hidden" value="<%= rs.getString(7) %>" />
           				
               			<button class="form form1" type="submit">Add Member</button>
               			<button class="form link"><a href="requests.jsp">Close</a></button>
           			</form>
				<%
				
			}
        
        %>
       
           
       </div>
        
    </div>
    
</body>
</html>