<%@ page errorPage="err.jsp" %>
<%@ page  import="java.sql.*" %>

<html>
<head>






<title>Simple Personal</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen, projection, tv" />
<link rel="stylesheet" href="css/style-print.css" type="text/css" media="print" />


<style type="text/css">
.hide{display:none}
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
<form action="search1.jsp" method="post"><ul id="top"><li><input type="text" name="search" id="search" class="tb"></li><li><input type="submit" value="search" id="button"></li>   <li><a href="logout.jsp">&nbsp;&nbsp;Logout&nbsp;&nbsp;</a></li></ul></form></div>
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
                    <h1>MY <span>PERSONAL</span> WEBSITE</h1>
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
        <li><a href="home1.html">Home</a></li>
        <li><a href="askques1.html">Ask Question</a></li>
		<li><a href="ques1.jsp">Questions</a></li>
      </ul>
    </div>
    <div id="skip-menu"></div>
    <div class="column-right">
      <div class="box">
        <div class="box-top"></div>
        <div class="box-in">
          <h2></h2>
          

			<form action="postques.jsp" method="post" >
			<textarea id="pro" name="pro" rows="5" cols="20" ></textarea>
			<INPUT type="submit"  value="POST QUESTION" onclick="send()">
	
		  
		  
		  
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
