<%-- 
    Document   : loggedin
    Created on : 17-Dec-2018, 16:00:20
    Author     : Thomas
--%>

<%@ page import = "java.io.*,java.util.*" %>
<%
   // Get session creation time.
   Date createTime = new Date(session.getCreationTime());
   
   // Get last access time of this Webpage.
   Date lastAccessTime = new Date(session.getLastAccessedTime());

   String title = "Welcome Back to my website";
   Integer visitCount = new Integer(1);
   Integer totalVisitCount = new Integer(1);
   String visitCountKey = new String("visitCount");
   String userIDKey = new String("userID");
   String userID = new String("ABCD");

   // Check if this is new comer on your Webpage.
   if (session.isNew() ){
      title = "Welcome to my website";
      session.setAttribute(userIDKey, userID);
      session.setAttribute(visitCountKey,  visitCount);
   } 
   visitCount = (Integer)session.getAttribute(visitCountKey);
   if (visitCount==null) {
         totalVisitCount = 1;  
       }else{
   totalVisitCount = visitCount + 1;
   }
   userID = (String)session.getAttribute(userID);
   session.setAttribute(visitCountKey,  totalVisitCount);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="Author" content="Thomas Gammelby">
    <meta name="Description" content="School Project: Web Programming Client Side">
    <meta name="keywords" content="Code, Tech, Contact Form, Gallery, HTML, CSS, JavaScript">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Merriweather" rel="stylesheet">
    <script src="js/JSMain.js"></script>
    <link rel="stylesheet" href="css/StyleMain.css">

    <title>CodeGeek-Enter The Rabbit Hole</title>
</head>

<body>
<header id="headerindex">CodeGeek</header>
<H1 id="h1index">Do you want to se how deep <br> the rabbit-hole goes?</H1>
<div class="leftcolumn" id="leftbanner" style="background-image:URL(img/MatrixCode1600x900.gif)"> 
    <div>
        <p>
            <%
            out.println(session.getAttribute("message"));
            session.removeAttribute("message");
            %>
        </p>
    </div>
    <form class="formindex" id="logout" action="Login" method="POST" style="color:greenyellow">
    <br><br>
  <input type="submit" value="LogOut">
    </form>

</div>

<div class="centercolumn" id="enterleave">
    
    <a type="button" class="button" id="enterbutton" href="home.jsp"></a>  <a type="button" class="button" id="leavebutton" href="https://retronaut.com"></a>
</div>

<form id="accept" action="">
    <div id="declaration">I here by declare i'm not a malevolent AI trying to take over the world. <br>
    That my soul and all my earthly possessions, are yours to do with as you choose. <br>
    From this day forth, i will strive to follow all religions simultaneously.<br>
    I give my full consent to any medical experiments that you would subject me to.
    Now we get to the small print.......
    </div> <br>
    <input type="checkbox" id="botcheck"  onclick="verify()"> I Agree!
</form>

<div class="rightcolumn" id="rightbanner" style="background-image:URL(img/MatrixCode1600x900.gif)"> 
</div>

<footer>
    Copyright Technophobe ©2018
    <br>
    TECHNOPHOBE LTD, UNIT1, 64 EDWARD STREET, SOUTHBOROUGH, TUNBRIDGE WELLS, KENT, TN4 0EY, UK0800 75 666 85INFO@TECHNOPHOBE.TV
</footer>
<script>

</script>

</body>
</html>