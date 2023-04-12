<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@ include file="setSql.jsp"%>

<%
	String Pid=(String)request.getParameter("delP");

	sql="DELETE FROM commodity WHERE `ID`='"+Pid+"'";
	con.createStatement().execute(sql);
	
	con.close();
	
	out.print("<script>alert('商品已下架！'); window.location='controller.jsp' </script>");
%>
	
