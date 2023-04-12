<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

<!-- 購物車 -->
            
			<%
				if (Page.equals("4")){
					out.print("<div class='tab-pane fade show active'");
				}
				else{
					out.print("<div class='tab-pane fade'");
				}
				out.print("id='pills-cart' role='tabpanel' aria-labelledby='pills-cart-tab'>");
				
			%>
			
			
              <div class="confirm-order">
                <div class="title">購物車</div>
                <form id="confirm-order" method="post" action="#">
                  <div class="all-order">
                    <!-- 標題 -->
                    <div class="row titles hidden-xs">
                      <div class="col-12 col-md-5 col-xl-5">商品</div>
                      <div class="col-12 col-md-2 col-xl-2">單價</div>
                      <div class="col-12 col-md-2 col-xl-2">數量</div>
                      <div class="col-12 col-md-2 col-xl-2">總計</div>
                      <div class="col-12 col-md-1 col-xl-1">刪除</div>
                    </div>
             <%
				ID=(String)session.getAttribute("ID");
				sql="SELECT * FROM `cart` WHERE `Mem_id`='"+ID+"' AND O_No is null";
				ResultSet cartlist=con.createStatement().executeQuery(sql);
				ResultSet cartP;
				int total=0;
				String noCart="YES";
				while(cartlist.next()){
				
					noCart="NO";
					sql="SELECT * FROM `commodity` WHERE `ID`='"+cartlist.getString(2)+ "'";
					cartP=con.createStatement().executeQuery(sql);
					cartP.next();
					
			%>  		
			      
					
                      <div class='row product'>
                        
                        <div class='col-4 col-md-2 col-xl-2 image'>
                          <a href='product.jsp?Pid=<%=cartP.getString(1)%>'>
                            <img src='<%=cartP.getString(11)%>'/>
                          </a>
                        </div>
						
                        <div class='col-8 col-md-3 col-xl-3 text'>
                          <%=cartP.getString(2)%>
                        </div>
                     
					 
                        <div class='col-12 col-md-2 col-xl-2 one-price'>
                          $
                          <span class='one-price-num'><%=cartP.getString(4)%></span>
                        </div>
						
                        <!-- 增減數量按鈕 -->
                        <div class='col-6 col-md-2 col-xl-2 amount'>
                         
                            
							<span class='one-price-num'><%=cartlist.getString(3)%></span>
                                  
							
                        </div>
						
                        <!-- 總計價格 -->
                        <div class='col-6 col-md-2 col-xl-2 all-price'>
                          $<span class='all-price-num'><%=cartlist.getString(4)%></span>
                        </div>
						
						
                        <!-- 刪除鍵 -->
                        <div class='col-12 col-md-1 col-xl-1 delete' >
                          <form action='delCart.jsp' method="post">
							<input type="submit" class="delProduct" name="but" value="✖" />
							<input type="hidden" name="sendPid" value="<%=cartP.getString(1)%>"  />
						  </form>
                        </div>
						
                      </div>
                   
				 <%		
				 
				 total+=Integer.valueOf(cartlist.getString(4));
					
				}
				if(noCart=="YES"){
					%>
					<br>
					<h3 align="center">購物車內尚無商品</h3>
					<br>
					<%}else{%>   
<!---------------------- 合計欄位 -------------------------------------------------------------------------->
                    <div class="row count">
					 <div class="col-12 col-md-7 col-xl-7"></div>
					 <template>
					  <div class="col-12 col-md-7 col-xl-7 save">
                        <a class="button-next" href="#">保存購物車數量</a>
                      </div>
					  </template>
                     
                      <!-- 合計標題 -->
                      <div class="col-6 col-md-2 col-xl-2 total-price-text">
                        合計
                      </div>
                      <!-- 合計金額 -->
                      <div class="col-6 col-md-1 col-xl-1 total-price">
                        $
                        <span class="total-price-num"><%=total%></span>
                      </div>
                      <!-- 下一步(到填寫基本資料畫面)-->
					  
                      <div class="col-12 col-md-2 col-xl-2 next">
                        <a class="button-next" href="car-basic-data.jsp">
                          下一步
                        </a>
                      </div>
                    </div>
					<%
					}
					session.setAttribute("CartAmount",Integer.toString(total));%>
					
                  </div>
                </form>
              </div>
            </div>
			