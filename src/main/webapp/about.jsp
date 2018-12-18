<%-- 
    Document   : about
    Created on : 17-Dec-2018, 16:01:04
    Author     : Thomas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="Author" content="Thomas Gammelby">
    <meta name="Description" content="School Project: Web Programming Client Side">
    <meta name="keywords" content="Code, Tech, Contact Form, Gallery, HTML, CSS, JavaScript">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="js/JSMain.js"></script>
    <link rel="stylesheet" href="css/StyleMain.css">
    <link href="https://fonts.googleapis.com/css?family=Merriweather" rel="stylesheet">
    <title>CodeGeek-About</title>
</head>
<body>
<header id="headerabout">CodeGeek</header>
<nav>
    <div class="icon-bar" style="text-align: center;">
        <a href="home.jsp"><i class="fa fa-home"></i></a>
        <a class="active"><i class="fa fa-info"></i></a>
        <a href="#"><i class="fa fa-shopping-bag"></i></a>
        
        <form class="formindex" id="logout" action="LogOut" method="GET" style="color:greenyellow">
        <input type="submit" value="LogOut">
        </form>
        
        <div style="color: greenyellow; text-align: right;">
            <%
            
            out.println("Logged in as: " + session.getAttribute("user"));
            
            %>
        </div>
    </div>
    
    
</nav>

<div class="leftcolumn" id="aboutlcolumn">
    <div>
        <img class="staffimg" src="http://ichef.bbci.co.uk/wwfeatures/wm/live/1600_640/images/live/p0/5k/d5/p05kd5g6.jpg" alt="Thor" style="width: 100%; height: 100px">
    </div>
    <div>
        <img class="staffimg" src="https://d.ibtimes.co.uk/en/full/1511393/robert-downey-jr-iron-man.jpg?w=736&e=371bdbf3fff4d1c7bb84dae313c40472" alt="IronMan" style="width: 100%; height: 100px">
    </div>
    <div>
        <img class="staffimg" src="https://www.unilad.co.uk/wp-content/uploads/2018/07/MARVEL-1-1048x700.jpg" alt="CaptainAmerica" style="width: 100%; height: 100px">
    </div>
    <div>
        <img class="staffimg"src="http://img.en.eenaduindia.com/Article/201806250846503721_Evangeline-Lilly-couldnt-eat-in-AntMan-and-the-Wasp_SECVPF.gif" alt="TheWasp" style="width: 100%; height: 100px">
    </div>
    <div>
        <img class="staffimg" src="https://www.screengeek.net/wp-content/uploads/2018/10/avengers-4-hulk-mark-ruffalo.jpg" alt="Hulk" style="width: 100%; height: 100px">
    </div>
    <div  class="icon-bar" id="shoppingcontainer">
            <ul id="shoppinglist"></ul>
    </div>
</div>

<div class="centercolumn" id="aboutcontent">
    <h1 class="h1about">Skills & Tools <br> Used to create this project</h1>

    <h2>What we are about</h2>
    <h3>Our vision - AI everywhere advancing humankind.</h3>
    <p>
        <p></h2>
    <h3>Artificial intelligence </h3>
    <p>
        

    <p></p>

    <p></p>

    <p></p>

    <p></p>

    <p></p>
    <h2></h2>
    <h3></h3>
    <p>
    </p>
    <h2></h2>
    <p></p>

</div>

<div class="rightcolumn" id="aboutrcolumn"></div>
<br style="clear: left;">


<footer>
    Copyright Technophobe ©2018 <br>
    TECHNOPHOBE LTD, UNIT1, 64 EDWARD STREET, SOUTHBOROUGH, TUNBRIDGE WELLS, KENT, TN4 0EY, UK0800 75 666 85INFO@TECHNOPHOBE.TV
</footer>
</body>
</html>
