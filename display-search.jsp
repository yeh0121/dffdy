<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

<%
	if(rs1.next()==false){
		out.print("<div class='product-name'>查無商品<br>請嘗試其他關鍵字</div>");
	}
	else{
		do{
			out.print("<div class='col-12 col-md-6 col-xl-4'>");
			out.print("<div class='item'>");
			out.print("<a href='product.jsp?Pid="+rs1.getString(1)+"'>");
			out.print("<div class='picture'>");
			out.print("<img class='img-fluid' src='"+rs1.getString(11)+"'/></div>");
			out.print("<div class='product-name'>"+rs1.getString(2)+"</div>");
			out.print("<div class='product-price'>NT$"+rs1.getString(4)+"</div></a>");
			out.print("<input type='submit' class='add-shopping-cart' onclick='addCart()' value='加入購物車'></div></div>");
			// out.print("<button class='add-shopping-cart' onclick='addCart()'>加入購物車</button>");
		}while(rs1.next());
	}
%>