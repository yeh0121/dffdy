<meta http-equiv=“Content-Type” content=“text/html; charset=utf-8”>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.util.*"%>


<!DOCTYPE html>
<html lang="en">
	<head>
		<%@ include file="head.jsp"%>
		<!-- 引入css -->
		<link rel="stylesheet" href="css/allproducts.css" />
	</head>

	<body>
		<!--導覽列-->
		<section>
			<%@ include file="header.jsp"%>
		</section>

		<!-- 主要內容 -->
		<main class="container-fluid allproducts-main">
			<article>
				<!-------------- 從這裡開始放各個版面的內容 ------------------------------------>

				<!-- 所有產品項目 -->
				<section class="all-products">
					<div class="container">
						<div class="row">
							<% String keyword=request.getParameter("keyword"); %>	
							<div class="col-12 col-md-12 col-xl-12 title text-center">
								搜尋商品－<% out.print(keyword);%>
							</div>

							<%
								sql="SELECT * FROM `commodity` WHERE `Title` LIKE '%"+keyword+"%' OR `Title` LIKE '"+keyword+"%' OR `Title` LIKE '%"+keyword+"'";

								ResultSet rs1=con.createStatement().executeQuery(sql);	
							%>
							<%@ include file="display-search.jsp"%>
							
						</div>
					</div>
				</section>
				<!------------------ 各版面內容結束--------------------------------------------------->
			</article>
			<!-- 如果頁面長度很短，可以讓footer固定在頁面底部 -->
			<div class="sticky-footer"></div>
		</main>

		<!-- footer -->
		<section>
			<%@ include file="footer.jsp"%>
		</section>

		<%@ include file="script.jsp"%>
		
	</body>
</html>
