<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@ include file="setSql.jsp"%>

<%
	String ID=(String)session.getAttribute("ID");
	sql = "SELECT * FROM `member` WHERE `ID`='" + ID+ "' "  ; 
	ResultSet rs =con.createStatement().executeQuery(sql);
	rs.next();

	String star =request.getParameter("star");
	String name = rs.getString(6);
	String comment = request.getParameter("comment");
	String Pid=(String)session.getAttribute("Pid");
	
	Timestamp time=new Timestamp(System.currentTimeMillis());  
	
	if(comment.equals("")||star.equals("")){
		out.print("<script>alert('請填寫留言並評星再送出！'); window.location='product.jsp?Pid="+Pid+"'</script>");
	}
	else{
		sql = "INSERT INTO board (Pid, Star, Account,Comment,Date) VALUES ('"+Pid+"', '"+star+"', '"+rs.getString(2)+"','"+comment+"','"+time.toString()+"')" ;
		// sql = "INSERT INTO board (Pid, Star, Account, Comment) VALUES ('10', '1', 'zz','dshjkalhd')" ;
		con.createStatement().execute(sql);
		con.close();
		out.print("<script>alert('感謝您的評分與留言！'); window.location='product.jsp?Pid="+Pid+"'</script>");
	}
%>
	
