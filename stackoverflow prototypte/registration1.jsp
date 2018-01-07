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
<form action="search.jsp" method="post"><ul id="top"><li><input type="text" name="search" id="search" class="tb"></li><li><input type="submit" value="search" id="button"></li>   <li><a href="home.html">&nbsp;&nbsp;Logout&nbsp;&nbsp;</a></li></ul></form></div>
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
        <li><a href="registration1.html">Registration</a></li>
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
          
		
		
		<% String n=request.getParameter("name");
		String p0=request.getParameter("pass0"); 
		 String e=request.getParameter("email"); 
		 String p=request.getParameter("ph"); 
		 String dob=request.getParameter("dob");
				int c=0,i=0;
		
		
		
		 Class.forName("com.mysql.jdbc.Driver"); 
		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MYSQL","root","uday12345");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from rgn "); 
		 while(rs.next())
		{
			if(n.equals(rs.getString(1)))
				c++;
		} 
		 if(c==0){
		 PreparedStatement ps=con.prepareStatement("insert into rgn values(?,?,?,?,?,?)"); 
		 ps.setString(1,n); 
		ps.setString(2,p0); 
		
		 ps.setString(3,e); 
		 ps.setString(4,p); 
		 ps.setString(5,dob); 
		 ps.setString(6,"");
		
		  i=ps.executeUpdate();} 
		 if(i>0)
		out.print("You are successfully registered...");
		 else
		out.print("not success"); 		
		 out.close(); 
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
