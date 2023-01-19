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
        <h1 style="text-shadow: 0px 2px 5px #404040;">Welcome to <span style="color: #7766b4;">REFUEL GYM</span></h1>

<%
		int id = 1;
		try {
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select max(id) from memberrequest");
			
			if (rs.first()) {
				id = rs.getInt(1);
				id = id + 1;
			}
		} catch (Exception e) {
			System.out.println(e);
		}

%>

        <form action="memberRequestAction.jsp" method="post">
        	<input name="id" type="hidden" value="<% out.print(id); %>" />
        
            <div class="input">
                <label>Full Name</label><br>
                <input name="name" type="text" placeholder="Enter Name" />
            </div>
            
            <div class="input">
                <label>Gender</label><br>
                <div class="radio__grp">
                    <input class="radio" name="gender" type="radio" value="male" /> <span>male</span>
                    <input class="radio" name="gender" type="radio" value="female" /> <span>Female</span>
                    <input class="radio" name="gender" type="radio" value="others" /> <span>Others</span>
                </div>
            </div>
            
            <div class="input">
                <label>Full Birthdate</label><br>
                <input name="birth" type="date" placeholder="Enter Birth date" />
            </div>
            
            <div class="input">
                <label>Current Weight</label><br>
                <input name="weight" type="number" placeholder="Enter Your Current Weight" />
            </div>
            
            <div class="input">
                <label>Mobile Number</label><br>
                <input name="mobile" type="number" placeholder="Enter Your Mobilenumber" />
            </div>
            
            <div class="input">
                <label>Full Address</label><br>
                <input name="address" type="text" placeholder="Enter Full address" />
            </div>

            <div class="input">
                <label>Your Plan</label><br>
                <select name="plan">
                    <option value="1" selected disabled>Enter your Plan</option>
                    <option value="1">1 month (Rs. 1000 only)</option>
                    <option value="2">2 month (Rs. 1800 only)</option>
                    <option value="3">1 month (Rs. 2500 only)</option>
                </select>
            </div>
	

			<div class="btn__grp">
                <button class="btn green">Submit Request</button>
                <button class="btn red"><a href="./index.jsp">Close</a></button>
            </div>
        </form>
    </div>

</body>

</html>