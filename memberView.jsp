<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

<!--頁籤-->
					<ul
					class="nav nav-pills mb-3 justify-content-center"
					id="pills-tab"
					role="tablist"
					>
						<li class="nav-item" role="presentation">
							<%
								if (Page.equals("1")){
									out.print("<button class='nav-link active' aria-selected='true'");
								}
								else{
									out.print("<button  class='nav-link' aria-selected='false'");
								}
								out.print("id='pills-record-tab'  data-bs-toggle='pill'  data-bs-target='#pills-record'  ");
								out.print(" type='button' role='tab'  aria-controls='pills-record'>");
							%>
								訂單紀綠
							</button>
						</li>

						<li class="nav-item" role="presentation">
							<%
								if (Page.equals("2")){
									out.print("<button class='nav-link active' aria-selected='true'");
								}
								else{
									out.print("<button  class='nav-link' aria-selected='false'");
								}
								out.print("id='pills-review-tab'  data-bs-toggle='pill'  data-bs-target='#pills-review'  ");
								out.print(" type='button' role='tab'  aria-controls='pills-review'>");
							%>
								評分與評論
							</button>
						</li>

						<li class="nav-item" role="presentation">
							<%
								if (Page.equals("3")){
									out.print("<button class='nav-link active' aria-selected='true'");
								}
								else{
									out.print("<button   class='nav-link' aria-selected='false'");
								}
								out.print("id='pills-member-tab'  data-bs-toggle='pill'  data-bs-target='#pills-member'  ");
								out.print(" type='button' role='tab'  aria-controls='pills-member'>");
							%>
							會員資料
						</button>
						</li>

						<li class="nav-item" role="presentation">
							<%
								if (Page.equals("4")){
									out.print("<button class='nav-link active' aria-selected='true'");
								}
								else{
									out.print("<button class='nav-link' aria-selected='false'");
								}
								out.print("id='pills-cart-tab' data-bs-toggle='pill'  data-bs-target='#pills-cart'  ");
								out.print(" type='button' role='tab'  aria-controls='pills-cart'>");
							%>
								購物車
							</button>
						</li>
					</ul>

					<div class="tab-content" id="pills-tabContent">
						<!-- 訂單紀錄 -->
						<%@include file="mem_record.jsp"%>

						<!-- 評分與評論-->
						<%@include file="mem_comment.jsp"%>

						<!-- 會員資料(可修改) -->
						<%@include file="mem_data.jsp"%>

						<!-- 購物車 -->
						<%@include file="mem_cart.jsp"%>

					</div>