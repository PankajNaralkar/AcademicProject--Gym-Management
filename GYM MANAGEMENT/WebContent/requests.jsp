<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>

    <link rel="stylesheet" href="./css/dashboard.css">
</head>

<body>
    <div class="dashboard">
        <div class="sidebar">
            <img class="profile" src="./project__images/logo2.jpeg" alt="profile">
            <div class="links">

                <a href="dashboard.jsp">
                    <div class="link">Dashboard</div>
                </a>

                <a href="addMember.jsp">
                    <div class="link">Add Member</div>
                </a>


                <a href="requests.jsp">
                    <div class="link">Requests</div>
                </a>

            </div>

            <div class="logout">
                <a href="index.jsp">
                    <div class="link">Log Out</div>
                </a>
            </div>
        </div>

        <div class="page">            
            <h1 style="margin: 20px 0px;">Member Requests</h1>

            <div class="members">
            
  <%
  			try {
  				
  				Connection con = ConnectionProvider.getCon();
  				Statement st = con.createStatement();
  				ResultSet rs = st.executeQuery("select * from memberrequest where status='pending'");
  				
  				while(rs.next()) {
  					%>
  					<div class="member__card">
                    <img src="./project__images/member.jpg" alt="">
                    <div class="member__card__info">
                        <h3><%= rs.getString(1) %></h3>
                        <p><span>Gender : </span> <%= rs.getString(2) %></p>
                        <P><span>Birth Date : </span> <%= rs.getString(3) %></P>
                        <p><span>Weight : </span>  <%= rs.getString(6) %>kg</p>
                        <p><span>Mobile : </span> <%= rs.getString(4) %></p>
                        <p><span>Address :</span> <%= rs.getString(5) %></p>
                    </div>
                    <span class="batch"><%= rs.getString(7) %> Month</span>
                    <div class="button__group">
                        <button class="button update"><a href="statusRequest.jsp?id=<%= rs.getString(8) %>">Complete</a></button>
                        <button class="button delete"><a href="deleteRequest.jsp?id=<%= rs.getString(8) %>">Delete</a></button>
                    </div>
                </div>
  					
  					<%
  				}
  			} catch (Exception e) {
  				System.out.println(e);
  			}
  
  %>    
            
      
            </div>

        </div>
    </div>

</body>

</html>