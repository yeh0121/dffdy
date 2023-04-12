<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

<!-- footer -->
<footer>
	<div class="container-fluid footer">
		<div class="row">
			<div class="text-center">
				<p>版權所有 &copy; 2022 李欣樺 胡文欣 葉姿妤 沈芋廷 葉絮喬 蘇莉凱</p>
				
				<%
				int counter;
				if (application.getAttribute("count")==null){
					application.setAttribute("count",100);
					counter=(int)application.getAttribute("count");
				}
				else{
					counter=(int)application.getAttribute("count");
					if(session.isNew())
					counter++;
					application.setAttribute("count",counter);
				}
				
				
				%>

				<p>瀏覽人數：<%out.print(counter);%>人</p>
			</div>
		</div>
	</div>
</footer>