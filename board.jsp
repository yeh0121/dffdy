<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>


<!-- 顯示評論 -->
<%
	Pid=(String)session.getAttribute("Pid");
	sql="SELECT * FROM `board` WHERE `Pid`='"+Pid+ "' ORDER BY `Date` DESC,`ID` DESC ";
	ResultSet rs2=con.createStatement().executeQuery(sql);
	ResultSet rsUser;
	String s="★";
%>
<div id="review-comment" class="tabcontent review-comment">
	<div class="row">
		<div class="col-12 col-md-6 col-xl-6 review">
			<div class="title">評論</div>
			<div class="all-review">
			<%
				if(rs2.next()==false){
					out.print("<div class='text' align='center'><br><br><br><br>目前尚無評論</div>");
				}
				else{
					do{
						sql="SELECT * FROM `member` WHERE `Account`='"+rs2.getString(3)+ "'";
						rsUser=con.createStatement().executeQuery(sql);
						rsUser.next();
						
						out.print("<div class='review-item'><div class='information'><div class='top'><div class='left'>");
						out.print("<img src='"+rsUser.getString(11)+"'/>");
						out.print("<div class='name-rating'><div class='name'>"+rsUser.getString(6)+"</div>");
						out.print("<div class='rating'>"+s.repeat(Integer.parseInt(rs2.getString(6)))+"</div></div></div>");
						out.print("<div class='right'><div class='date'>"+rs2.getString(5)+"</div></div></div>");
						out.print("<div class='bottom'><div class='text'>"+rs2.getString(4)+"</div></div></div></div>");
					}while(rs2.next());
				}	
			%>
			</div>
		</div>
		
		<!-- 留言區 -->
		<div class="col-12 col-md-6 col-xl-6 comment">
			<div class="title">留言</div>
			
			<form id="comment" method="port" action="saveComment.jsp">
			
				<%
			if (session.getAttribute("ID")==null){
			%>
			<!-- 留言人名字 -->
				
			
				
				<!-- 留言內容 -->
				<label>Comment</label>
				<textarea
				class="form-control shadow-none"
				id="content"
				rows="4"
				name="comment"
				placeholder="請先登入再留言~~~~~~~~~"
				></textarea>
			
			<%}
			else{
				ID=(String)session.getAttribute("ID");
				sql = "SELECT * FROM `member` WHERE `ID`='" + ID+ "' "  ; 
				ResultSet rs =con.createStatement().executeQuery(sql);
				rs.next();
				
				// out.print(ID);
				// out.print(sql);
				// out.print(rs);
			%>
				<!-- 留言人名字 -->
				<label>Your Name</label>
				<h3><%=rs.getString(6)%></h3>
				<br>
			
				
				<!-- 留言內容 -->
				<label>Comment</label>
				<textarea
				class="form-control shadow-none"
				id="content"
				rows="4"
				name="comment"
				placeholder="請輸入留言"
				required
				></textarea>
				
				<!-- 星等 -->
				<div class="rating-summit-part">
					<div class="rating">
						<input type="radio" name="star" Value="5" id="star1" required />
						<label for="star1"></label>
						
						<input type="radio" name="star" Value="4" id="star2" required />
						<label for="star2"></label>
						
						<input type="radio" name="star" Value="3" id="star3" required />
						<label for="star3"></label>
						
						<input type="radio" name="star" Value="2" id="star4" required />
						<label for="star4"></label>
						
						<input type="radio" name="star" Value="1" id="star5" required />
						<label for="star5"></label>
					</div>
					
					<!-- 送出 -->
					<input
					  class="submit"
					  type="submit"
					  value="送出"
					  
					/>
					
					
					
					<%}%>
				</div>
			</form>
		</div>
	</div>
</div>