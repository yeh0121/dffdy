<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>


<!-- 訂單紀錄 -->
			<% //<div>頁籤控制
				if (Page.equals("1")){
					out.print("<div class='tab-pane fade show active'");
				}
				else{
					out.print("<div class='tab-pane fade'");
				}
				out.print("id='pills-record' role='tabpanel' aria-labelledby='pills-record-tab'>");
				
			%>
              <div class="buy-list">
                <div class="title">所有訂單</div>
                <form id="buy-list" method="post" action="#">
				   <%
						ID=(String)session.getAttribute("ID");
						sql="SELECT * FROM `order1` ORDER BY `Date`";
						ResultSet rsOrder=con.createStatement().executeQuery(sql);
						
						
						String noOrder="YES";
						
						while(rsOrder.next()){
							noOrder="NO";
							sql="SELECT * FROM `cart` WHERE `O_No`='"+rsOrder.getString(1)+"'";
							ResultSet detail=con.createStatement().executeQuery(sql);
							ResultSet cartP;
							
							
					%>  	
				  
                    <div class="all-order">
                      <div class="row titles">
                        <!-- 訂單編號 -->
                        <div class="col-12 col-md-6 col-xl-6 order-id">
                          訂單編號：<%=rsOrder.getString(1)%>
                        </div>
                        <!-- 購買日期 -->
                        <div class="col-12 col-md-4 col-xl-4 buy-date">
                          下訂日期：<%=rsOrder.getString(3)%>
                        </div>
                        <!-- 訂單狀態 -->
                        <div class="col-12 col-md-2 col-xl-2 order-status">
                          <%=rsOrder.getString(4)%>
                        </div>
                      </div>
					  
                      <!-- 商品資訊 -->
					  
					  <%
						while(detail.next()){
							sql="SELECT * FROM `commodity` WHERE `ID`='"+detail.getString(2)+ "'";
							cartP=con.createStatement().executeQuery(sql);
							cartP.next();
					  
					  
					  
					  %>
					  
                      <div class="row product">
                        <!-- 商品圖 -->
                        <div class="col-4 col-md-2 col-xl-2 image">
                          <img src="<%=cartP.getString(11)%>"/>
                        </div>
                        <!-- 商品名稱 -->
                        <div class="col-8 col-md-4 col-xl-4 text">
                          <%=cartP.getString(2)%>
                        </div>
                        <!-- 商品價格 -->
                        <div class="col-12 col-md-2 col-xl-2 one-price">
                          $<%=cartP.getString(4)%>
                        </div>
                        <!-- 數量 -->
                        <div class="col-6 col-md-2 col-xl-2 amount">×1</div>
                        <!-- 總計價格 -->
                        <div class="col-6 col-md-2 col-xl-2 all-price">
                          $<%=detail.getString(4)%>
                        </div>
                      </div>
					  
					  				 <%
						}
						
						%>
					  
                      <div class="row count">
                        <div class="col-12 col-md-8 col-xl-8"></div>
                        <!-- 合計 -->
                        <div class="col-6 col-md-2 col-xl-2 total-price-text">
                          合計
                        </div>
                        <!-- 合計金額 -->
                        <div class="col-6 col-md-2 col-xl-2 total-price">
                          $<%=rsOrder.getString(8)%>
                        </div>
                      </div>
                    </div>
                 
						<%
					}
					if(noOrder=="YES"){
					%>
					<br>
					<h3 align="center">尚無任何訂單</h3>
					<br>
					<%}
				 %>
				 
				 
                </form>
              </div>
            </div>