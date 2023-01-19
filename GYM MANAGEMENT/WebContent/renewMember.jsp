<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Member</title>
    <link rel="stylesheet" href="./css/dashboard.css">
    <link rel="stylesheet" href="./css/addMember.css">
</head>

<body>
    <div class="add__member">
        <h1>Update Member</h1>
        
       <%
       		String id = request.getParameter("id");
       
       		Connection con = ConnectionProvider.getCon();
       		Statement st = con.createStatement();
       		ResultSet rs = st.executeQuery("select * from members where id='" + id +  "'");
       		
       		while (rs.next()) {
       			%>
       				<form action="renewMemberAction.jsp" method="post">
        				<input name="id" type="hidden" value="<%= rs.getString(1)  %>" />
         
            <div class="input">
                <label>Plan</label><br>
                <select name="plan">
                    <option value="<%= rs.getString(8) %>" selected disabled hidden><%= rs.getString(8) %> Month</option>
                    <option value="1">1 Month(Rs. 1000)</option>
                    <option value="2">2 Month(Rs. 1800)</option>
                    <option value="3">3 Month(Rs. 2500)</option>
                </select>
            </div>

            <div class="btn__grp">
                <button class="btn green">Save</button>
                <button class="btn red"><a href="./dashboard.htm">Close</a></button>
            </div>


        </form>
       			
       			
       			<%
       		}
       
       
       %>
        
        
    </div>

</body>

</html>