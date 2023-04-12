<meta http-equiv=“Content-Type” content=“text/html; charset=utf-8”>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.util.*"%>


<!DOCTYPE html>
<html lang="en">
	<head>
		<%@ include file="head.jsp"%>
		<!-- 從這裡開始引入css檔 -->
		<link rel="stylesheet" href="css/allproducts.css" />
	</head>
  
	<body>
		<!--導覽列-->
		<%@ include file="header.jsp"%>

		<!-- 主要內容 -->
		<main class="container-fluid allproducts-main">
			<article>
			<!-------------- 從這裡開始放各個版面的內容 ------------------------------------------------------------------------------->
				<!-- 動態廣告 -->
				<section class="advertising-img">
					<img src="images/advertisement/glass.png" />
				</section>
				<!-- 所有產品項目 -->
				<section class="all-products">
				<div class="container">
					<div class="row">
						<!-- 玻璃瓶 -->
						<%
							sql="SELECT * FROM `commodity` WHERE `Category`='glass'";
							ResultSet rs1=con.createStatement().executeQuery(sql);	
						%>
						<%@ include file="display.jsp"%>
					</div>
				</div>
				</section>
			<!------------------ 各版面內容結束---------------------------------------------------------------------------------- -->
			</article>
			<!-- 如果頁面長度很短，可以讓footer固定在頁面底部 -->
			<div class="sticky-footer"></div>
		</main>

		<!-- footer -->
		<%@ include file="footer.jsp"%>
		<!-- script -->
		<%@ include file="script.jsp"%>

	</body>
</html>
