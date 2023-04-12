<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="setSql.jsp" %>

<%
String Acc=request.getParameter("Acc");
String pwd=request.getParameter("pwd");
if( Acc!=null && !Acc.equals("") && pwd != null && !pwd.equals("")){

    sql = "SELECT * FROM `member` WHERE `Account`=?  AND `Password`=?"  ; 
	PreparedStatement pstmt=null;
	pstmt=con.prepareStatement(sql);
	pstmt.setString(1,request.getParameter("Acc"));
	pstmt.setString(2,request.getParameter("pwd"));
	ResultSet paperrs =pstmt.executeQuery();
    
    if(paperrs.next()){            
		session.setAttribute("ID",paperrs.getString(1));
		session.setAttribute("Iden",paperrs.getString(4));
		con.close();
        response.sendRedirect("index.jsp") ;
		out.print("<script>alert('你好~已成功登入!'); window.location='index.jsp' </script>");
    }
    else{
		con.close();
        out.print("<script>alert('帳號密碼輸入錯誤！請重新登入。'); window.location='log-in.jsp' </script>");
	}
}
else{
	out.print("<script>alert('帳號密碼不得為空！請重新登入。'); window.location='log-in.jsp' </script>");
	response.sendRedirect("log-in.jsp");
}
%>