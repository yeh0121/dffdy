<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="setSql.jsp"%>

<%
String Acc =request.getParameter("Acc");
String Pwd1 = request.getParameter("Pwd1");
String Pwd2 = request.getParameter("Pwd2");
String Name = request.getParameter("Name");
String Phone = request.getParameter("Phone");
String Addr = request.getParameter("Address");
String Email= request.getParameter("Email");
String Gender = request.getParameter("Gender");
String Birth = request.getParameter("Birth");

//.getBytes("ISO-8859-1"),"UTF-8"


out.println("TEST");
out.println(Acc);
out.println(Pwd1);
out.println(Pwd2);

if(Pwd2.equals(Pwd1)){
	


//Account,Password,"Identity",Email,Name,Gender,Address,Phone,Birth,"Photo";

String col="Account, Password, Name, Phone, Address, Email, Gender, Birth";
String data="'"+Acc+"','"+Pwd2+"','"+Name+"','"+Phone+"','"+Addr+"','"+Email+"','"+Gender+"','"+Birth+"'";
sql = "INSERT INTO member ("+col+") VALUES ("+data+")" ;

	con.createStatement().execute(sql);
    con.close();
	out.print("<script>alert('註冊成功～請重新登入！'); window.location='log-in.jsp' </script>");
}
else{
	out.print("<script>alert('兩次密碼輸入不同，請再次檢查！'); window.location='register.jsp' </script>");

}	
	
//"INSERT INTO board (Account, Password, Name, Phone, Address, Email, Gender, Birth) VALUES ('Acc','Pwd2','Name','Phone','Addr',Email','Gender','Birth')" 
%>


