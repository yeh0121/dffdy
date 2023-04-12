<meta http-equiv=“Content-Type” content=“text/html; charset=utf-8”>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.util.*"%>


<!DOCTYPE html>
<html lang="en">
	<head>
		<%@ include file="head.jsp"%>
		<!-- 從這裡開始引入css檔 -->
		<link rel="stylesheet" href="css/cart.css" />
		<link rel="stylesheet" href="css/personal-information-style.css" />
	</head>

	<body>
		<!--導覽列-->
		<section>
			<%@ include file="header.jsp"%>
		</section>

		<%
			String Page=request.getParameter("page");
		%>
		<!-- 主要內容 -->
		<main class="container-fluid">
			<article>
				<!-------------- 從這裡開始放各個版面的內容 ------------------------------------------------------------------------------->

				<section class="container-fluid member-center">
				<%if(session.getAttribute("Iden").equals("member")){%>
					<!--會員瀏覽畫面-->
					<%@include file="memberView.jsp"%>
				<%}else{%>
					<!--管理員瀏覽畫面-->
					<%@include file="adminView.jsp"%>
				<%}%>
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

		<!--購物車內 數量增減按鈕 數值變化 總金額變化 刪除功能 -->
		<script src="js/cart.js"></script>
	</body>
</html>
