<%-- 
    Document   : home
    Created on : 17-Dec-2018, 16:00:36
    Author     : Thomas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
    <title>CodeGeek-Home</title>
</head>


<body>
    <%
    if (session.getAttribute("user")== null) {
        response.sendRedirect("index.html");
    }
    %>
<header id="headerhome">CodeGeek</header>
<nav>
    <div class="icon-bar" style="text-align: center;">
        <a class="active"><i class="fa fa-home"></i></a>
        <a href="about.jsp"><i class="fa fa-info"></i></a>
        <a href="#"><i class="fa fa-shopping-bag"></i></a>
    </div>
</nav>

<div class="leftcolumn" id="homelcolumn">
    <div style="color: greenyellow">
            <%
            
            out.println("Logged in as: " + session.getAttribute("user"));
            
            %>
            <form class="formindex" id="logout" action="LogOut" method="GET" style="color:greenyellow">
                <input type="submit" value="LogOut">
            </form>
    </div>
    <p>
        Shopping Cart List
    </p>
    <ul id="shoppinglist">

    </ul>
</div>

<div class="centercolumn" id="homecontent">
    <h1 class="h1home">Welcome to the bottom of the rabbit hole... <br> You see something you like grab it... <br><br> </h1>

    <center>
         <h1>Session Tracking</h1>
      </center>
      
      <table border = "1" align = "center"> 
         <tr bgcolor = "#949494">
            <th>Session info</th>
            <th>Value</th>
         </tr> 
         <tr>
            <td>id</td>
            <td><% out.print( session.getId()); %></td>
         </tr> 
         <tr>
            <td>Creation Time</td>
            <td><% out.print(createTime); %></td>
         </tr> 
         <tr>
            <td>Time of Last Access</td>
            <td><% out.print(lastAccessTime); %></td>
         </tr> 
         <tr>
            <td>User ID</td>
            <td><% out.print(userIDKey); %></td>
         </tr> 
         <tr>
            <td>Number of visits</td>
            <td><% out.print(visitCount); %></td>
         </tr> 
      </table>
    
    
        <div class="product">
            <img src="img/TheMatrix.jpg" alt="TheMatrix" class="productimg">
            <div class="container">
                <h2 class="movietittle">The Matrix</h2>
                <p>1999 ‧ Fantasy/Science Fiction ‧ 2h 30m</p>
                <p class="cast">Cast: Keanu Reeves, Carrie-Anne Moss, Laurence Fishburne</p>
                <p>Neo (Keanu Reeves) believes that Morpheus (Laurence Fishburne), an elusive figure considered to be the most dangerous man alive, can answer his question
                    -- What is the Matrix? Neo is contacted by Trinity (Carrie-Anne Moss), a beautiful stranger who leads him into an underworld where he meets Morpheus.
                    They fight a brutal battle for their lives against a cadre of viciously intelligent secret agents. It is a truth that could cost Neo something more precious than his life.</p>
                <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                <p class="productid" id="The Matrix">#a85b80c75d70</p>
                <button class="buybutton">Buy</button>
            </div>
        </div>
            <div class="product">
                <img src="img/TheTerminator.jpg" alt="TheTerminator" class="productimg" style="width:100%">
                <div class="container">
                    <h2 class="movietittle">The Terminator</h2>
                    <p>1984 ‧ Fantasy/Science Fiction ‧ 1h 48m</p>
                    <p class="cast">Cast: Arnold Schwarzenegger, Linda Hamilton, Michael Biehn</p>
                    <p>Disguised as a human, a cyborg assassin known as a Terminator (Arnold Schwarzenegger) travels from 2029 to 1984 to kill Sarah Connor (Linda Hamilton).
                        Sent to protect Sarah is Kyle Reese (Michael Biehn), who divulges the coming of Skynet, an artificial intelligence system that will spark a nuclear holocaust.
                        Sarah is targeted because Skynet knows that her unborn son will lead the fight against them. With the virtually unstoppable Terminator in hot pursuit,
                        she and Kyle attempt to escape.</p>
                    <p class="productid" id="The Terminator">#a8b7c7d60505</p>
                    <button class="buybutton">Buy</button>
                </div>
            </div>
                <div class="product">
                    <img src="img/GostInTheShell.jpg" alt="GostInTheShell" class="productimg" style="width:100%">
                    <div class="container">
                        <h2 class="movietittle">Ghost in the Shell</h2>
                        <p>1995 ‧ Drama/Fantasy ‧ 1h 25m</p>
                        <p class="cast">Cast: Atsuko Tanaka, Akio Ōtsuka, Kōichi Yamadera</p>
                        <p>In this Japanese animation, cyborg federal agent Maj. Motoko Kusanagi (Mimi Woods) trails "The Puppet Master" (Abe Lasser),
                            who illegally hacks into the computerized minds of cyborg-human hybrids. Her pursuit of a man who can modify the identity of strangers
                            leaves Motoko pondering her own makeup and what life might be like if she had more human traits. With her partner (Richard George),
                            she corners the hacker, but her curiosity about her identity sends the case in an unforeseen direction.</p>
                        <p class="productid" id="Ghost in the Shell">#c90d85dd80e75</p>
                        <button class="buybutton">Buy</button>
                    </div>
                </div>
        <div class="product">
            <img src="img/CHAPPiE.jpg" alt="CHAPPiE" class="productimg" style="width:100%">
            <div class="container">
                <h2 class="movietittle">Chappie</h2>
                <p>2015 ‧ Crime/Science Fiction ‧ 2 hours</p>
                <p class="cast">Sharlto Copley, Dev Patel, Hugh Jackman </p>
                <p>In the near future, a mechanized police force patrols the streets and deals with lawbreakers -- but now, the people are fighting back. When one police droid is stolen
                    and given new programming, he acquires the ability to feel and think for himself. While the robot, dubbed "Chappie (Sharlto Copley),"
                    puzzles out human behavior, the authorities begin to see him as a danger to mankind and order; they will stop at nothing to ensure that Chappie is the last of his kind.</p>
                <p class="productid" id="Chappie">#a75b70c65d60<</p>
                <button class="buybutton">Buy</button>
            </div>
        </div>
        <div class="product">
            <img src="img/ExMachina.jpg" alt="ExMachina" class="productimg" style="width:100%">
            <div class="container">
                <h2 class="movietittle">Ex Machina</h2>
                <p>2014 ‧ Drama/Fantasy ‧ 1h 50m</p>
                <p class="cast">Cast: Alicia Vikander, Oscar Isaac, Domhnall Gleeson</p>
                <p>Caleb Smith (Domhnall Gleeson) a programmer at a huge Internet company, wins a contest that enables him to spend a week at the private estate of Nathan Bateman (Oscar Isaac),
                    his firm's brilliant CEO. When he arrives, Caleb learns that he has been chosen to be the human component in a Turing test to determine the capabilities and consciousness of
                    Ava (Alicia Vikander), a beautiful robot. However, it soon becomes evident that Ava is far more self-aware and deceptive than either man imagined.</p>
                <p class="productid" id="ExMachina">#a80b75c70d65</p>
                <button class="buybutton">Buy</button>
            </div>
        </div>
        <div class="product">
            <img src="img/RoboCop.jpg" alt="RoboCop" class="productimg" style="width:100%">
            <div class="container">
                <h2 class="movietittle">RoboCop</h2>
                <p>1987 ‧ Fantasy/Mystery ‧ 1h 43m</p>
                <p class="cast">Peter Weller, Nancy Allen, Dan O'Herlihy</p>
                <p>In a violent, near-apocalyptic Detroit, evil corporation Omni Consumer Products wins a contract from the city government to privatize the police force.
                    To test their crime-eradicating cyborgs, the company leads street cop Alex Murphy (Peter Weller) into an armed confrontation with crime lord Boddicker (Kurtwood Smith)
                    so they can use his body to support their untested RoboCop prototype. But when RoboCop learns of the company's nefarious plans, he turns on his masters.</p>
                <p class="productid" id="RoboCop">#d75d70dd75dd70</p>
                <button class="buybutton">Buy</button>
            </div>
        </div>
        <div class="product">
            <img src="img/Terminator2JudgementDay.jpg" alt="Terminator2JudgementDay" class="productimg" style="width:100%">
            <div class="container">
                <h2 class="movietittle">Terminator 2: Judgment Day</h2>
                <p>1991 ‧ Fantasy/Mystery ‧ 2h 36m</p>
                <p class="cast"> Arnold Schwarzenegger, Linda Hamilton, Edward Furlong</p>
                <p>In this sequel set eleven years after "The Terminator," young John Connor (Edward Furlong), the key to civilization's victory over a future robot uprising,
                    is the target of the shape-shifting T-1000 (Robert Patrick), a Terminator sent from the future to kill him. Another Terminator, the revamped T-800 (Arnold Schwarzenegger),
                    has been sent back to protect the boy. As John and his mother (Linda Hamilton) go on the run with the T-800, the boy forms an unexpected bond with the robot.</p>
                <p class="productid" id="Terminator 2: Judgment Day">#a7b7c6d60505</p>
                <button class="buybutton">Buy</button>
            </div>
        </div>
        <div class="product">
            <img class="productimg" alt="RPi3B+" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Raspberry_Pi_3_B%2B_%2839906369025%29.png/450px-Raspberry_Pi_3_B%2B_%2839906369025%29.png" style="max-width:50%">
            <div class="container">
                <h2 class="productname">RPi3B+</h2>
                <p class="manufacturer">Raspberry Pi Foundation</p>
                <p>The Raspberry Pi is a series of small single-board computers developed in the United Kingdom by the Raspberry Pi Foundation to promote the teaching of basic computer
                    science in schools and in developing countries.[5][6][7] The original model became far more popular than anticipated,[8] selling outside its target market for uses such as robotics.
                    It does not include peripherals (such as keyboards and mice) and cases. However, some accessories have been included in several official and unofficial bundles.[8]</p>
                <p class="productid" id="RPi3B+">#a01000010i01101001</p>
                <button class="buybutton">Buy</button>
            </div>
        </div>
        <div class="product">
            <img class="productimg" alt="RpiAIY" src="https://wi-images.condecdn.net/image/KLyd2g2mORd/crop/810/f/Google-VoiceSim-Packaging-white-EDIT-copy.jpg" style="max-width:50%">
            <div class="container">
                <h2 class="productname">AIRPi</h2>
                <p class="manufacturer">Raspberry Pi Foundation</p>
                <p >Technology's biggest companies are shifting to become artificial intelligence firms. In addition to hiring the world's top AI talent, Microsoft, Google, Amazon and Baidu,
                    have all opened-up parts of their systems to let developers work in the emerging field.
                    Google is now taking things a step further. The Silicon Valley giant has teamed up with the UK's Raspberry Pi to create an addition to the credit-card sized computer.</p>
                <p class="productid" id="AIRPi">#a01000010i01101001</p>
                <button class="buybutton">Buy</button>
            </div>
        </div>

</div>

<div class="rightcolumn" id="homercolumn"></div>
<!--<br style="clear: left;">-->


<footer>
    Copyright Technophobe ©2018 <br>
    TECHNOPHOBE LTD, UNIT1, 64 EDWARD STREET, SOUTHBOROUGH, TUNBRIDGE WELLS, KENT, TN4 0EY, UK0800 75 666 85INFO@TECHNOPHOBE.TV
</footer>
