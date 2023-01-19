<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <link rel="stylesheet" href="./css/login.css">
</head>

<body>
    <div class="login__page">
        <img class="profile__image" src="./project__images/bac4.jpg" alt="">
        <h2>Admin Login</h2>
        <form mathod="post" action="loginAction.jsp">
            <input name="username" type="text" placeholder="User Name" />
            <input name="password" type="password" placeholder="Password" />
            <button type="submit">Login</button>
            <p>Forgot Username / Password?</p>
        </form>
    </div>
</body>

</html>