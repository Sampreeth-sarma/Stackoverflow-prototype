<%@ page errorPage="err.jsp" %>
<%@ page import="java.util.*" %>
<%@ page  import="java.sql.*" %>
<html>
<head>






<title>Simple Personal</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen, projection, tv" />
<link rel="stylesheet" href="css/style-print.css" type="text/css" media="print" />


<style type="text/css">
.hide{display:none}


#button{
			margin:2px;padding:3px;background-color:black;
			border-radius:7px;background:white;
			width:100px;height:25px;
			color:black;font-weight:bold;
			border:3px solid black;
			
	}
	#button:hover{
			background:#6699FF;text-decoration:none;
	}
	
	.tb{
		border-radius:20px;
		background:white;
		border 10px solid black;
		width="250px";}
		
		.search{
					float:right;
					margin-top:-50px;}



		#top li{
		postion:relative;top-left:80px;
			display:inline; 
		}
		a{
		 color:black;text-decoration:none; 
		}
		a:hover{
			color:red;
		}
		a:link{
		color:white;
		text-decoration:none; }
</style>





</head>
<body>

<div class="search">
<form action="search.jsp" method="post"><ul id="top"><li><input type="text" name="search" id="search" class="tb"></li><li><input type="submit" value="search" id="button"></li>   <li><a href="login1.html">&nbsp;&nbsp;Login&nbsp;&nbsp;</a></li></ul></form></div>

<div id="wrapper">
		
  <div class="title">
    <div class="title-top">
      <div class="title-left">
        <div class="title-right">
          <div class="title-bottom">
            <div class="title-top-left">
              <div class="title-bottom-left">
                <div class="title-top-right">
                  <div class="title-bottom-right">
                    <h1>STACK <span>UNDERFLOW</span></h1>
                    <p></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <hr class="noscreen" />
  <div class="content">
    <div class="column-left">
      <h3>MENU</h3>
     
      <ul class="menu">
        <li><a href="home.html">Home</a></li>
        <li><a href="registration.html">Registration</a></li>
        <li><a href="askques.html">Ask Question</a></li>
		<li><a href="ques.jsp">Questions</a></li>
      </ul>
    </div>
    <div id="skip-menu"></div>
    <div class="column-right">
      <div class="box">
        <div class="box-top"></div>
        <div class="box-in">
          
		  
	
		<h2>YOU HAVE TO LOGIN FIRST</h2>
		  
		  
          <br />
          <h2></h2>
          <ul class="main-list">
            <li>, <strong></strong> </li>
            <li> <strong></strong></li>
            <li> <strong></strong> </li>
            <li> <strong></strong></li>
            <li><strong></strong></li>
          </ul>
        </div>
      </div>
      <div class="box-bottom">
        <hr class="noscreen" />
        <div class="footer-info-left"></div>
        <div class="footer-info-right"></div>
      </div>
    </div>
    <div class="cleaner">&nbsp;</div>
  </div>
</div>

</html>
