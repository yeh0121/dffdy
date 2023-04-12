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
					
					sql="SELECT * FROM `board`  ORDER BY `Date` DESC ";
					ResultSet rsComm=con.createStatement().executeQuery(sql);
					ResultSet comP;
					String s="★";
					
					while(rsComm.next()){
						sql="SELECT * FROM `commodity` WHERE `ID`='"+rsComm.getString(2)+ "'";
						comP=con.createStatement().executeQuery(sql);
						comP.next();
						
						sql="SELECT * FROM `member` WHERE `Account`='"+rsComm.getString(3)+"' ";
						ResultSet rsUser=con.createStatement().executeQuery(sql);
						rsUser.next();
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
										<img src="<%=comP.getString(11)%>" alt="" />
									</div>
									<div class="text">
										<p class="product-name"><%=comP.getString(2)%></p>
										<%=rsComm.getString(4)%>
										
									</div>
								</div>
							</div>
						</div>

				<%
						}
					
				%>
						
				
			</div>
		</div>
	</div>
</div>



