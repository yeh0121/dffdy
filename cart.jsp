<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@ include file="setSql.jsp"%>

<%
	String ID=(String)session.getAttribute("ID");
	String Iden=(String)session.getAttribute("Iden");
	String Pid=(String)request.getParameter("sendPid");
	String Num=request.getParameter("num");
	String add=request.getParameter("add");
	if (Num==null){
		Num="1";
	}
	
	sql = "SELECT * FROM `cart` WHERE `Mem_id`='" + ID+ "' AND `Pid`='"+Pid+"'"  ; 
	ResultSet rs =con.createStatement().executeQuery(sql);
	
	sql="SELECT * FROM `commodity` WHERE `ID`='"+Pid+ "'";
	ResultSet rsP=con.createStatement().executeQuery(sql);
	rsP.next();
	int Price=Integer.valueOf(rsP.getString(4));
	
	if(Iden==null){
		out.print("<script>alert('請先登入~');window.location='log-in.jsp' </script>");
		
	}
	else if(Iden.equals("member")){
		if(rs.next()){
			int Q=Integer.valueOf(rs.getString(3))+Integer.valueOf(Num);
			int TotalPrice= Price*Q;
			
			sql = "UPDATE cart SET Q='"+Q+"' ,Price='"+TotalPrice+"' WHERE `Mem_id`='" + ID+ "' AND `Pid`='"+Pid+"'" ;
			con.createStatement().execute(sql);
		}
		else{
			int TotalPrice= Price*Integer.valueOf(Num);
			
			sql = "INSERT INTO cart (Mem_id, Pid, Q,Price) VALUES ('"+ID+"', '"+Pid+"', '"+Num+"','"+TotalPrice+"')" ;
			con.createStatement().execute(sql);
		}
		if (add.equals("1")){
			out.print("<script>alert('已成功加入購物車！'); window.location='product.jsp?Pid="+Pid+"' </script>");
		}
		else if(add.equals("2")){
			out.print("<script>alert('已成功加入購物車！'); window.location='member-center.jsp?page=4' </script>");
		}
		else{
			out.print("<script>alert('已成功加入購物車！'); window.location='"+rsP.getString(3)+".jsp' </script>");
		}
	}
	else{
		out.print("<script>alert('身分別為管理員，請切換帳號再選購～');window.location='log-in.jsp' </script>");

	}
	con.close();
%>
	
