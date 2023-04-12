<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@ include file="setSql.jsp"%>

<%
	String ID=(String)session.getAttribute("ID");
	String Cid=(String)request.getParameter("sendCid");

	sql="DELETE FROM board WHERE `ID`='"+Cid+"'";
	con.createStatement().execute(sql);
	
	con.close();
	
	out.print("<script>alert('留言移除成功'); window.location='member-center.jsp?page=2' </script>");
%>
	
