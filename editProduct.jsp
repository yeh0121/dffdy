<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@ include file="setSql.jsp"%>

<%
	String Pid=request.getParameter("srh");
	String Title= request.getParameter("Title");
	String Category = request.getParameter("Category");
	String Price = request.getParameter("Price");
	String Inventory= request.getParameter("Inventory");
	String Description= request.getParameter("Description");
	String Material= request.getParameter("Material");
	String Size= request.getParameter("Size");
	String Preser= request.getParameter("Preserve");
	String Img= request.getParameter("imgPath");
	String Note= request.getParameter("Note");
	
	
	sql="UPDATE commodity SET Title='"+Title+"' , Category='"+Category+"' ";
	sql+=",Price='"+Price+"' , Inventory='"+Inventory+"' ";
	sql+=",Description='"+Description+"' , Material='"+Material+"' ";
	sql+=",Size='"+Size+"' , Preserve='"+Preser+"' ";
	sql+=",Img='"+Img+"' , Note='"+Note+"'";
	sql+="where ID='"+Pid+"'";
	
	con.createStatement().execute(sql);


	out.print("<script>alert('商品已修改！'); window.location='product.jsp?Pid="+Pid+"'</script>");

	
	
	
%>
	
