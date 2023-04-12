<meta http-equiv=“Content-Type” content=“text/html; charset=utf-8”>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<%@ include file="head.jsp"%>
		<!-- 從這裡開始引入css檔 -->
		<link rel="stylesheet" href="css/order-completed.css" />
	</head>
  
  <body>
	<!--導覽列-->
    <section>
        <%@ include file="header.jsp"%>
    </section>
	
    <!-- 主要內容 -->
    <main class="container-fluid">
      <article>
        <!-------------- 從這裡開始放各個版面的內容 ------------------------------------------------------------------------------->
        <section class="container order-completed-part">
          <!-- 進度圓圈動畫 -->
          <div class="circle-bar">
            <svg
              viewBox="0 0 100 100"
              xmlns="http://www.w3.org/2000/svg"
              preserveAspectRatio="none"
              data-value="100"
            >
              <circle r="45" cx="50" cy="50" />

              <path
                class="meter"
                d="M5,50a45,45 0 1,0 90,0a45,45 0 1,0 -90,0"
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-dashoffset="282.78302001953125"
                stroke-dasharray="282.78302001953125"
              />

              <text
                x="50"
                y="50"
                text-anchor="middle"
                dominant-baseline="central"
                font-size="20"
              ></text>
            </svg>
          </div>
          <!-- 告知購買人已完成訂單 -->
          <h4 class="inform-text">
            訂單已送出！請耐心等候並留意email物流訊息，感謝您的購買。
          </h4>
          <div class="order-completed-information">
            <div class="completed-order">
              <div class="title">交易明細</div>
              <form id="completed-order" method="post" action="#">
                <div class="all-order">
                  <!-- 標題 -->
                  <div class="row titles hidden-xs">
                    <div class="col-12 col-md-6 col-xl-6">商品</div>
                    <div class="col-12 col-md-2 col-xl-2">單價</div>
                    <div class="col-12 col-md-2 col-xl-2">數量</div>
                    <div class="col-12 col-md-2 col-xl-2 total-price-title">
                      總計
                    </div>
                  </div>
				  
				  
				  
				  
				  <%
						ID=(String)session.getAttribute("ID");
						sql="SELECT * FROM `order1` WHERE `Mem_id`='"+ID+"' ORDER BY O_No desc limit 1";
						ResultSet rsOrder=con.createStatement().executeQuery(sql);
						rsOrder.next();
						
							sql="SELECT * FROM `cart` WHERE `O_No`='"+rsOrder.getString(1)+"'";
							ResultSet detail=con.createStatement().executeQuery(sql);
							ResultSet cartP;
							
							
						while(detail.next()){
							sql="SELECT * FROM `commodity` WHERE `ID`='"+detail.getString(2)+ "'";
							cartP=con.createStatement().executeQuery(sql);
							cartP.next();
							
							
					%>  
                
				
				
				
                    <div class="row product">
                      <div class="col-4 col-md-2 col-xl-2 image">
                        <!-- 商品圖 -->
						<a href='product.jsp?Pid=<%=cartP.getString(1)%>'>
                        <img src="<%=cartP.getString(11)%>" alt="" />
						</a>
                      </div>
                      <!-- 商品名稱 -->
                      <div class="col-8 col-md-4 col-xl-4 text">
                        <%=cartP.getString(2)%>
                      </div>
                      <!-- 單價 -->
                      <div class="col-12 col-md-2 col-xl-2 one-price">
                        $<%=cartP.getString(4)%>
                      </div>
                      <!-- 數量 -->
                      <div class="col-6 col-md-2 col-xl-2 amount"><%=detail.getString(3)%></div>
                      <!-- 總計金額 -->
                      <div class="col-6 col-md-2 col-xl-2 all-price">$<%=detail.getString(4)%></div>
                    </div>
                  
				  
						<%}%>
				  
				  
				  
				  

                  <div class="row count">
                    <div class="col-12 col-md-8 col-xl-8"></div>
                    <div class="col-6 col-md-2 col-xl-2 total-price-text">
                      合計
                    </div>
                    <div class="col-6 col-md-2 col-xl-2 total-price">$<%=rsOrder.getString(8)%></div>
                    <div class="col-12 col-md-12 col-xl-12 next">
                      <a class="button-finish" href="index.jsp"> 完成訂單 </a>
                    </div>
                  </div>
                </div>
              </form>
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

    <!-- circle bar -->
    <script src="js/order-completed.js"></script>
  </body>
</html>
