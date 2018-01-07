<%@ page errorPage="err.jsp" %>
<%@ page  import="java.sql.*" %>
<html>
<body>		
		<% String n=request.getParameter("pro");
		
		 Class.forName("com.mysql.jdbc.Driver"); 
		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MYSQL","root","uday12345");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from prjct ");
		PreparedStatement ps=con.prepareStatement("insert into project (ques) values (?)");
		//ps.setString(1,id);
		 ps.setString(1,n); 
		 

		int  i=ps.executeUpdate();
			response.sendRedirect("ques1.jsp");
				%>
		
</body>
</html>
