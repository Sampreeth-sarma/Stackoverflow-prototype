<%@ page errorPage="err.jsp" %>
<%@ page  import="java.sql.*" %>
<%
session.setAttribute("user","");
session.invalidate();
response.sendRedirect("home.html");
%>

