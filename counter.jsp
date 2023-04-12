<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
	<title>存取 application 變數資料</title>
	<body>
		<%
		application.setAttribute("count",100);
		Object counter=application.getAttribute("count");

		out.print(counter);
		%>
	</body>
</html>