<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rahul Yadav - Portfolio</title>
<link rel="stylesheet" href="profile.css?v=20">
</head>
<body>

    <!-- NAVBAR -->
    <nav class="navbar">
        <img src="images/new_logo.png" class="logo">

        <span class="menu-btn" onclick="toggleMenu()">&#9776;</span>

        <ul id="menuList">
            <li><a href="profile.jsp">HOME</a></li>
            <li><a href="skills.jsp">SKILLS</a></li>
            <li><a href="Education.jsp">EDUCATION</a></li>
            <li><a href="contact.jsp">CONTACT US</a></li>
        </ul>
    </nav>


    <!-- HERO SECTION -->
    <section class="hero">

        <!-- PROFILE IMAGE -->
        <div class="profile-img">
            <img src="images/rahul image.jpg">
        </div>

        <!-- ORIGINAL CONTENT -->
        <h3 class="intro">Hi, I'm <span>Rahul Yadav</span>.</h3>

        <h1 class="title">
            <span>S</span>OFTWARE <span>D</span>EVELOPER
        </h1>

        <p class="desc">
            A Passionate Software Developer skilled in Java, JSP, Servlet, MySQL, HTML, CSS, 
            and Spring Framework, with a strong interest in building responsive and user-friendly 
            web applications.
        </p>

        <a href="About me.jsp" class="btn">ABOUT ME</a>

    </section>

<script>
function toggleMenu(){
    let menu = document.getElementById("menuList");
    menu.style.display = (menu.style.display === "flex") ? "none" : "flex";
}
</script>

</body>
</html>
