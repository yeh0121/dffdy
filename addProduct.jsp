<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@ include file="setSql.jsp"%>

<%
	String Title= request.getParameter("Title");
	String CategoryCH = request.getParameter("Category");
	String Price = request.getParameter("Price");
	String Inventory= request.getParameter("Inventory");
	String Description= request.getParameter("Description");
	String Material= request.getParameter("Material");
	String Size= request.getParameter("Size");
	String Preser= request.getParameter("Preserve");
	String Img= request.getParameter("Img");
	String Note= request.getParameter("Note");
	String Category="";
	
	if(CategoryCH. equals("花束")){
		Category="bouquet";
	}
	if(CategoryCH. equals("卡片")){
		Category="card";
	}
	if(CategoryCH. equals("玻璃瓶")){
		Category="glass";
	}
	
	String imgpath="images/"+Category+"/"+Img;
	
	sql = "INSERT INTO commodity (Title,Category ,Price,Inventory ,Description ,Material ,Size,Preserve ,Img,Note,Sold ) " ;
	sql+= "VALUES ('"+Title+"','"+Category+"' ,'"+Price+"','"+Inventory+"' ,'"+Description+"' ,'"+Material+"' ,'"+Size+"','"+Preser+"','"+imgpath+"','"+Note+"','0')";
	con.createStatement().execute(sql);

	sql ="SELECT * FROM `commodity` order by `ID` desc limit 1";  
	ResultSet newProduct=con.createStatement().executeQuery(sql);
	newProduct.next();
	out.print("<script>alert('商品已上架！'); window.location='product.jsp?Pid="+newProduct.getString(1)+"'</script>");

	
	
	
%>
	
