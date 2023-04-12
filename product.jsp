<meta http-equiv=“Content-Type” content=“text/html; charset=utf-8”>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.util.*"%>


<!DOCTYPE html>
<html lang="en">
	<head>
		<%@ include file="head.jsp"%>
		<!-- 從這裡開始引入css檔 -->
		<link rel="stylesheet" href="css/product.css" />
	</head>

	<body>
		<!--導覽列-->
		<section>
			<%@ include file="header.jsp"%>
		</section>

		<!-- 主要內容 -->
		<main class="container-fluid">
			<article>
				<%
					String Pid=request.getParameter("Pid");
					session.setAttribute("Pid",Pid);
					sql="SELECT * FROM `commodity` WHERE `ID`='"+Pid+ "'";
					ResultSet rs1=con.createStatement().executeQuery(sql);
					rs1.next();
				%>
				<!-------------- 從這裡開始放各個版面的內容 ------------------------------------------------------------------------------->
				<section class="container product-part">
					<div class="row">

						<!-- 商品圖 -->
						<div class="item col-12 col-md-6 col-xl-6 product-picture">
							<img src="<%=rs1.getString(11)%>" />
						</div>
						<!-- 商品內容 -->
						<div class="col-12 col-md-6 col-xl-6 product-content">
							<div class="item name"><%= rs1.getString(2)%></div>
							<div class="item price">NT$<%= rs1.getString(4)%></div>
							<div class="item note"><%= rs1.getString(12)%></div>
							
							
							<form name="f" action="" method="post">
							
								<div class="quantity">
									<div class="text">
										<span class="left">已售出：<%= rs1.getString(5)%></span>
										<span class="right">庫存數量：<%= rs1.getString(6)%></span>
									</div>
									
									<!-- 增減數量按鈕 -->
									<div class="form row">
										<input type="button" class="decrease col-1" value="-" data-decrease />
										<input type="text" class="middle col-10" name="num" value="1" data-value />
										<input type="button" class="increase col-1" value="+" data-increase />
									</div>
								</div>
								
								<div class="cart-checkout">
									<!-- 加入購物車 -->
									<div class="cart">
										
										<input type="submit" name="but" class="item add-shopping-cart"  value="加入購物車" 
										onclick="javascript:document.f.action='cart.jsp?add=1';document.f.submit();" />
										<input type="hidden" name="sendPid" value="<%=Pid%>"  />
									</div>
									<!-- 直接結帳 -->
									<div class="checkout">
										<input type="submit" name="but2" class="item checkout-btn" value="直接結帳" 
										onclick="javascript:document.f.action='cart.jsp?add=2';document.f.submit();"/>
									</div>
									
								
									
								</div>
							</form>
							
							
						</div>
					</div>
					<div class="tabs-part row">
						<!-- 頁籤 -->
						<div class="tab">
							<button class="tablinks" onclick="openCity(event, 'description')">
								商品描述
							</button>
							
							<button class="tablinks" onclick="openCity(event, 'review-comment')">
								評價&留言
							</button>
							
							<button class="tablinks" onclick="openCity(event, 'recommend')">
								推薦商品
							</button>
						</div>
						
						<div class="all">
							<!-- 商品描述 -->
							<div id="description" class="tabcontent description">
								<!-- 商品介紹 -->
								<div class="item"> 
									<div class="introduce title">商品介紹：</div>
									<div class="introduce content">
										<%= rs1.getString(7)%>
									</div>
								</div>
								
								<!-- 花材 -->
								<div class="item">
									<div class="material title">花材：</div>
									<div class="material content"><%= rs1.getString(8)%></div>
								</div>
								
								<!-- 尺寸 -->
								<div class="item">
									<div class="size title">尺寸：</div>
									<div class="size content">
										<%= rs1.getString(9)%>
									</div>
								</div>
								
								<!-- 保存方式 -->
								<div class="item">
									<div class="save-method title">保存方式：</div>
									<div class="save-method content">
										<%= rs1.getString(10)%>
									</div>
								</div>
							</div>

							<!-- 商品評價&留言板-->
							<%@ include file="board.jsp"%>

							<!-- 推薦商品 -->
							<div id="recommend" class="tabcontent recommend">
								<div class="row">
									<div class="title">與您推薦</div>
									
									<%
									
									sql="SELECT * FROM `commodity` order by ID desc limit 1";
									ResultSet last=con.createStatement().executeQuery(sql);
									last.next();
									List<Integer> rlist=new ArrayList<>();
									
									Random rd = new Random();
								
										
										
										
									while(rlist.size()<=3){ //總共10個數字
										int Rid=rd.nextInt(Integer.valueOf(last.getString(1))); //產生0~9數字
											if(rlist.contains(Rid)) 
												continue;     //重複的不加入
											else
												rlist.add(Rid);
											
										
										sql="SELECT * FROM `commodity` WHERE `ID`='"+(Rid+1)+ "'";
										ResultSet rand=con.createStatement().executeQuery(sql);
										rand.next();
									%>
									<div class="col-12 col-sm-6 col-lg-3 col-xl-3 recommend-item" >
										<!-- 商品連結 -->
										<a href="product.jsp?Pid=<%=rand.getString(1)%>">
											<!-- 商品圖 -->
											<div class="picture">
												<img class="img-fluid" src="<%=rand.getString(11)%>" />
											</div>
											<!-- 商品名稱 -->
											<div class="product-name"><%=rand.getString(2)%></div>
											<!-- 商品價格 -->
											<div class="product-price">NT$<%=rand.getString(4)%></div>
										</a>
									</div>
									<%}%>
									
									
									
								</div>
							</div>
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
		
		<!-- 數量增減按鈕 輸入框 -->
		<script src="js/quantity.js"></script>
	</body>
</html>
