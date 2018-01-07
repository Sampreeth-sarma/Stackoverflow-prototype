<%@ page isErrorPage="true"%>
<html>
	<body>
		The Error is:
		<%= exception.getClass()%>
		<%= exception.getMessage()%>
	</body>
</html>