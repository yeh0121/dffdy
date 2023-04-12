<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

<%
	while(rs1.next()){
%>
<div class='col-12 col-md-6 col-xl-4'>
	<div class='item'>
		<a href='product.jsp?Pid=<%=rs1.getString(1) %>'>
			<div class='picture'>
				<img class='img-fluid' src='<%=rs1.getString(11) %>'/>
			</div>
			<div class='product-name'><%=rs1.getString(2) %></div>
			<div class='product-price'>NT$<%=rs1.getString(4) %></div>
		</a>

		<form action='cart.jsp?add=3' method="post">
			<input type="submit" name="but" class="add-shopping-cart"  value="加入購物車" />
			<input type="hidden" name="sendPid" value="<%=rs1.getString(1)%>"  />
			
		</form>
	</div>
</div>
	
<%
	}
%>