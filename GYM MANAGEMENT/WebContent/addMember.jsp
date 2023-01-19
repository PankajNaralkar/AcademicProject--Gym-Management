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
        <h1>Add Member</h1>
        
        <%
        int memberId = 1;
    	try {
    		Connection conId = ConnectionProvider.getCon();
    		Statement stId = conId.createStatement();
    		ResultSet rsId = stId.executeQuery("select max(id) from members");
    	
    		if (rsId.first()) {
    			memberId = rsId.getInt(1);
    			memberId = memberId + 1;
    		}
    	} catch (Exception e) {
    		System.out.println(e);
    	}
        
        %>

        <form action="addMemberAction.jsp" method="post">
        	<input name="id" type="hidden" value="<%= memberId %>" />
            <div class="input">
                <label>Full Name</label><br>
                <input name="name" type="text" placeholder="Enter Full Name" required />
            </div>

            <div class="input">
                <label>Gender</label><br>
                <div class="radio__grp">
                    <input class="radio" name="gender" type="radio" value="Male" required  /> <span>Male</span>
                    <input class="radio" name="gender" type="radio" value="Female" required  /> <span>Female</span>
                    <input class="radio" name="gender" type="radio" value="Others" required  /> <span>Others</span>
                </div>
            </div>
            
            <div class="input">
                <label>Birth Date</label><br>
                <input name="birth" type="date" placeholder="dd-mm-yyyy"  required />
            </div>
            
            <div class="input">
                <label>Mobile Number</label><br>
                <input name="mobile" type="number" placeholder="Enter Mobile Number" required />
            </div>
            
            <div class="input">
                <label>Full Address</label><br>
                <input name="address" type="text" placeholder="Enter Full Number" required />
            </div>
            
             <div class="input">
                <label>Current Weight</label><br>
                <input name="weight" type="number" placeholder="Enter Your Weight" required />
            </div>

            <div class="input">
                <label>Plan</label><br>
                <select name="plan">
                    <option value="1" selected disabled hidden>Enter Your Plan</option>
                    <option value="1">1 Month(Rs. 1000)</option>
                    <option value="2">2 Month(Rs. 1800)</option>
                    <option value="3">3 Month(Rs. 2500)</option>
                </select>
            </div>

            <div class="btn__grp">
                <button class="btn green">Save</button>
                <button class="btn red"><a href="./dashboard.jsp">Close</a></button>
            </div>


        </form>
    </div>

</body>

</html>