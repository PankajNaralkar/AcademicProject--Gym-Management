<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gym Management</title>

    <!-- custom css -->
    <link rel="stylesheet" href="./css/styles.css">

    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <!-- google fonts -->

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Racing+Sans+One&display=swap" rel="stylesheet">
    <!-- font-family: 'Racing Sans One', cursive; -->

</head>

<body>

    <!-- Navbar -->
    <div class="navbar">
        <div class="logo">
            <img style="height:80px;" src="./project__images/logo2.jpeg" />
        </div>
        <div class="links">
            <a href="#">HOME</a>
            <a href="#about">ABOUT</a>
            <a href="#">FACILITIES</a>
            <a href="login.jsp">LOGIN</a>
        </div>
    </div>
    <!-- Navbar End -->

    <!-- Title Section -->
    <div class="title" style="background-image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNhzNggsQ3ctHcF0fy1jz3IAuG5V2dVL1e7Q&usqp=CAU'">
        <div class="clip"></div>
        <div class="title__text" data-aos="fade-left">
            <h1>REFUEL GYM</h1>
            <h4>Show your body some love!</h4>
            <br />

            <div class="title__text__button">
                <button class="button1"><a style="text-decoration: none; color: #fff;" href="memberRequest.jsp">JOIN US TODAY</a></button>
                <button class="button2">CONTACT US</button>
            </div>

        </div>
    </div>
    <!-- Title Section END-->

    <!-- slogan section start -->
    <div class="slogan" data-aos="fade-left">
        <h1>NO <span class="red">PAIN</span> NO <span class="orange">GAIN</span></h1>
        <h3>MOTIVATION IS WHAT GETS YOU STARTED. HABBIT <br /> IS WHAT KEEPS YOU GOING.</h3>
        <h4>We can give you <span class="orange">Much More Than Others.</span></h4>
        <div class="button__group">
            <button>PERSONAL TRAINING</button>
            <button>DIET PLANNING</button>
            <button>ADVENTURE TRICKS</button><br>
            <button>HOME TRAINER</button>
            <button>BODY MASSAGE</button>
        </div>
    </div>
    <!-- slogan section end -->

    <!-- intro section start -->
    <div class="intro" id="about">
        <div class="clip">

        </div>
        <div class="text" data-aos="fade-right">
            <h1>WHO WE ARE</h1>
            <p>REFUEL GYM is all about getting you fit at your own pace. We are dedicated to making your body strong and
                healthy in a supportive environment.</p>
        </div>
    </div>
    <!-- intro section end -->


    <!-- footer start  -->
    <div class="footer">
        <p><span >copyright © 2021 refuel gym</span></p>
    </div>
    <!-- footer end  -->



    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>
        AOS.init();
    </script>


</body>

</html>