<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>


<!-- 評分與評論-->
<% //<div>頁籤控制
	if (Page.equals("2")){
		out.print("<div class='tab-pane fade show active'");
	}
	else{
		out.print("<div class='tab-pane fade'");
	}
	out.print("id='pills-review' role='tabpanel' aria-labelledby='pills-review-tab'>");

%>
	<div class="row">
		<div class="col-12 review">
			<div class="all-review">
				<%
					String comID=(String)session.getAttribute("ID");
					sql="SELECT * FROM `member` WHERE `ID`='"+comID+"' ";
					ResultSet rsUser=con.createStatement().executeQuery(sql);
					rsUser.next();
					sql="SELECT * FROM `board` WHERE `Account`='"+rsUser.getString(2)+"' ORDER BY `Date` DESC,`ID` DESC ";
					ResultSet rsComm=con.createStatement().executeQuery(sql);
					ResultSet comP;
					String s="★";
					String edit= request.getParameter("edit");
					String noComm="YES";
					
					while(rsComm.next()){
						sql="SELECT * FROM `commodity` WHERE `ID`='"+rsComm.getString(2)+ "'";
						comP=con.createStatement().executeQuery(sql);
						comP.next();
						noComm="No";
						if (!rsComm.getString(1).equals(edit)){
				%>  
				
						<div class="review-item">
							<div class="information">
								<div class="top">
									<div class="left">
										<!-- 商品圖 -->
										<img src="<%=rsUser.getString(11)%>" />
										<div class="name-rating">
											<!-- 評論人 -->
											<div class="name"><%=rsUser.getString(6)%></div>
											<!-- 評論星等 -->
											<div class="rating"><%=s.repeat(Integer.parseInt(rsComm.getString(6)))%></div>
										</div>
									</div>
									
									<div class="right">
										<!-- 評論日期 -->
										<div class="date"><%=rsComm.getString(5)%></div>
									</div>
								</div>

								<div class="bottom">
									<div class="product-picture">
										<a href='product.jsp?Pid=<%=comP.getString(1)%>'>
											<img src="<%=comP.getString(11)%>" alt="" />
										</a>
									</div>
									<div class="text">
										<p class="product-name"><%=comP.getString(2)%></p>
										<%=rsComm.getString(4)%>
										<div class="button-group">
											<form action="member-center.jsp" method="get">
												<input type="submit" value="編輯" />
												<input type="hidden" name="page" value="2" />
												<input type="hidden" name="edit" value="<%=rsComm.getString(1)%>" />
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>

					<%
						}else{
					%>
						<!-- 進入修改模式 -->
						<div class="review-item">
							<form name ="f" action="" method="post">
								<div class="information">
									<div class="top">
										<div class="left">
											<!-- 小人icon -->
											<img src="<%=rsUser.getString(11)%>" />
											<div class="name-rating">
												<!-- 評論人 -->
												<div class="name"><%=rsUser.getString(6)%></div>
												<!-- 評論星等 -->

												<div class="rating">
													<%
													int star=Integer.valueOf(rsComm.getString(6));
													for(int i=5;i>=1;i--){
														if(i==star){
													%>
														<input type="radio" name="star" id="star<%=i%>" checked  />
														<label for="star<%=i%>"></label>
													<%		
													}else{
													%>
														<input type="radio" name="star" id="star<%=i%>"  />
														<label for="star<%=i%>"></label>

													<%	
														}
													}
													%>

												</div>

											</div>
										</div>
										<div class="right">
											<!-- 評論日期 -->
											<div class="date"><%=rsComm.getString(5)%></div>
										</div>
									</div>
									
									<div class="bottom">
										<div class="product-picture">
											<img src="<%=comP.getString(11)%>" />
										</div>
										
										<div class="text">
											<p class="product-name"><%=comP.getString(2)%></p>
											<textarea
												class="form-control shadow-none"
												rows="4"
												name="comment"
												><%=rsComm.getString(4)%>
											</textarea>
											<div class="button-group">
												<input type="submit" name="submit2" value="提交" 
												onclick="javascript:document.f.action='index.jsp';document.f.submit();" />

												<input type="submit" name="submit2" value="刪除" 
												onclick="javascript:document.f.action='delComm.jsp';document.f.submit();" />

												<input type="submit" name="Submit" value="取消" 
												onclick="javascript:document.f.action='member-center.jsp?page=2&edit=0';document.f.submit();" />
												
												<input type="hidden" name="sendCid" value="<%=rsComm.getString(1)%>"  />
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
				<%
						}
					}
					if(noComm=="YES"){
					%>
					<br>
					<h3 align="center">您尚未留下任何評論</h3>
					<br>
					<%}
				%>
			</div>
		</div>
	</div>
</div>



