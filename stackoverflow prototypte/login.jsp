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
<form action="search1.jsp" method="post"><ul id="top"><li><input type="text" name="search" id="search" class="tb"></li><li><input type="submit" value="search" id="button"></li>   <li><a href="home.html">&nbsp;&nbsp;Logout&nbsp;&nbsp;</a></li></ul></form></div>
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
          
		
		
		<% 
		String username=request.getParameter("username");
		String password=request.getParameter("pass");String log_value="0";
		Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MYSQL","root","uday12345");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from rgn where name="+"'"+username+"'"+" and pass0="+"'"+password+"'"); 
	
		
			if(!rs.next())
			{
				 PreparedStatement ps=con.prepareStatement("update rgn set login='"+log_value+"' where name='"+username+"'");
				
				ps.executeUpdate();
				
			response.sendRedirect("login1.html");
			}
			else{
				
				 log_value="1";
				 PreparedStatement ps=con.prepareStatement("update rgn set login='"+log_value+"' where name='"+username+"'");
				
				ps.executeUpdate();
			response.sendRedirect("ques.jsp");}
			   %>
		
			
	
		  
		  
		  
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
