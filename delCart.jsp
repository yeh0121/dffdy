<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@ include file="setSql.jsp"%>

<%
	String ID=(String)session.getAttribute("ID");
	String Pid=(String)request.getParameter("sendPid");

	sql="DELETE FROM cart WHERE `Mem_id`='" + ID+ "' AND `Pid`='"+Pid+"'";
	con.createStatement().execute(sql);
	
	con.close();
	
	out.print("<script>alert('商品已移出購物車，歡迎再次選購~'); window.location='member-center.jsp?page=4' </script>");
%>
	
