<%@ page errorPage="err.jsp" %>
<%@ page  import="java.sql.*" %>
<html>

<head>
</head>

	<body>
	
		<%
		int id=Integer.parseInt(request.getParameter("qid"));
		 String ans=request.getParameter(id+"ans");	PreparedStatement ps;
		String user=(String)session.getAttribute("user");
		
		String res="<i>posted by</i>  "+user;
		res="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+res;
		res="<h5>"+res+"</h5>";
		ans=ans+"<br>"+res;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MYSQL","root","uday12345");
		Statement st=con.createStatement();
		
		ResultSet rs=st.executeQuery("select * from project where id="+id);int col=0,cols;
		
		ResultSetMetaData rsmd=rs.getMetaData();
			cols=rsmd.getColumnCount();  
			
			rs.next();
			for(int j=1;j<=cols;j++)
			{
				if(rs.getString(j)!=null)
				{
					col++;
					
				}
					
				else 
					break;
			}
			if(col==cols)
			{
				
				
			 ps=con.prepareStatement("alter table project add ans"+(cols-1)+" varchar(2000)");int k=ps.executeUpdate();
		ps=con.prepareStatement("update project set ans"+(cols-1)+"=? where id="+id);
		 ps.setString(1,ans);
		 int j=ps.executeUpdate();
		   response.sendRedirect("ques1.jsp");
		 }
		else
		{
		 ps=con.prepareStatement("update project set ans"+(col-1)+"=? where id="+id);
		 ps.setString(1,ans);
		int  i=ps.executeUpdate();
		  response.sendRedirect("ques1.jsp");
		}

					%>
		
		</body>
	</html>