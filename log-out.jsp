<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="setSql.jsp" %>
<%
response.setHeader("refresh","0;url=allproducts.jsp"); //跳躍到登入畫面
session.invalidate();//清除session資料
out.print("<script>alert('您已登出，回首頁！'); window.location='index.jsp");
%>