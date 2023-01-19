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

                <a href="#">
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
            <div class="page__top">
                <h6>Welcome to Refine Gym</h6>
                <div class="page__search">
                    <input type="text" placeholder="Search" />
                    <button>Go</button>
                </div>
                <a href="addMember.jsp">Add Member</a>
            </div>

            <div class="page__numbers">
                <div class="data data1">
                    <h5>Members</h5>
                     <%
        			int members = 0;
    	try {
    		Connection conId = ConnectionProvider.getCon();
    		Statement stId = conId.createStatement();
    		ResultSet rsId = stId.executeQuery("select count(*) from members");
    	
    		if (rsId.first()) {
    			members = rsId.getInt(1);
    		}
    	} catch (Exception e) {
    		System.out.println(e);
    	}
        
        %>
                    <h1><%= members %></h1>
                </div>

                <div class="data data2">
                    <h5>Requests</h5>
                    
                    <%
        			int requests = 0;
    	try {
    		Connection conId = ConnectionProvider.getCon();
    		Statement stId = conId.createStatement();
    		ResultSet rsId = stId.executeQuery("select count(*) from memberrequest where status='pending'");
    	
    		if (rsId.first()) {
    			requests = rsId.getInt(1);
    		}
    	} catch (Exception e) {
    		System.out.println(e);
    	}
        
        %>
                    <h1><%= requests %></h1>
                </div>

                <div class="data data3">
                    <h5>Data</h5>
                    <h1>3</h1>
                </div>
            </div>

            
            <h1>Members</h1>

            <div class="members">
            
            <%
            	try {
            		Connection con = ConnectionProvider.getCon();
      				Statement st = con.createStatement();
      				ResultSet rs = st.executeQuery("select * from members");
      				
      				while(rs.next()) {
      		%>
      					<div class="member__card">
                    <img src="./project__images/member.jpg" alt="">
                    <div class="member__card__info">
                        <h3><%= rs.getString(2) %></h3>
                        <p><span>Gender : </span><%= rs.getString(3) %></p>
                        <P><span>Birth Date : </span><%= rs.getString(4) %></P>
                        <p><span>Weight : </span><%= rs.getString(7) %>kg</p>
                        <p><span>Mobile : </span><%= rs.getString(5) %></p>
                        <p><span>Address :</span><%= rs.getString(6) %></p>
                        <p><span>Join Date :</span><%= rs.getString(9) %></p>
                        <p><span>Expiry Date :</span><%= rs.getString(10) %></p>
                    </div>
                    <span class="batch"><%= rs.getString(8) %> Month</span>

                    <div class="button__group">
                        <button class="button update"><a href="updateMember.jsp?id=<%= rs.getString(1) %>">Update</a></button>
                        <button class="button delete"><a href="deleteMember.jsp?id=<%= rs.getString(1) %>">Delete</a></button>
                        <button class="button renew"><a href="renewMember.jsp?id=<%= rs.getString(1) %>">Renew</a></button>
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