<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

<!-- 會員資料(可修改) -->
<% //<div>
	if (Page.equals("3")){
		out.print("<div class='tab-pane fade show active'");
	}
	else{
		out.print("<div class='tab-pane fade'");
	}
	out.print("id='pills-member' role='tabpanel' aria-labelledby='pills-member-tab'>");
	
%>




  <div class="container-fluid member-information">
	<h1 class="inf-h1">會員資料</h1>
	
	<%
	String editD= request.getParameter("editD");
	
		sql="SELECT * FROM `member` WHERE `ID`='"+session.getAttribute("ID")+"'";
		ResultSet rs=con.createStatement().executeQuery(sql);
		while(rs.next()){
			if(editD==null||editD.equals("0")){
	%>
	  
	  <!-- 顯示資料狀態-->
	  <div class="row">
		<div class="col-12 col-md-4">
		  <form
			id="user-image"
			class="inf-img-form"
			method="post"
			action="#"
		  >
			<!-- 會員頭像 -->
			<img
			  src="<%=rs.getString(11)%>"
			  class="inf-img-user"
			/><br />
		  </form>
		  <form id="user-account-password" method="post" action="#">
			<!-- 帳號 -->
			<div class="inf-input-l">
			  <input
				type="text"
				name="account"
				value="<%=rs.getString(2)%>"
				class="inf-input-text"
				required
				readonly="readonly"
			  /><br />
			</div>
			<!-- 密碼 -->
			<div class="inf-input-l">
			  <input
				type="password"
				name="password"
				value="<%=rs.getString(3)%>"
				minlength="8"
				class="inf-input-text"
				required
				readonly="readonly"
			  /><br />
			</div>
		  </form>
		</div>
		<div class="col-12 col-md-4">
		  <form
			id="ps-inf-c"
			class="inf-icon-form"
			method="post"
			action="#"
		  >
			<!-- 會員名字 -->
			<div class="inf-input">
			  <img
				src="images/personal-information/id-card.png"
				class="inf-icon"
			  /><br />
			  <input
				type="text"
				name="uesr-name"
				value="<%=rs.getString(6)%>"
				class="inf-input-text"
				required
				readonly="readonly"
			  /><br />
			</div>
			<!-- 會員電話號碼 -->
			<div class="inf-input">
			  <img
				src="images/personal-information/phone-call.png"
				class="inf-icon"
			  /><br />
			  <input
				type="text"
				name="phone-call"
				value="<%=rs.getString(9)%>"
				class="inf-input-text"
				readonly="readonly"
			  /><br />
			</div>
			<!-- 會員地址 -->
			<div class="inf-input">
			  <img
				src="images/personal-information/home-address.png"
				class="inf-icon"
			  /><br />
			  <input
				type="text"
				name="address"
				value="<%=rs.getString(8)%>"
				class="inf-input-text"
				readonly="readonly"
			  /><br />
			</div>
		  </form>
		</div>
		<div class="col-12 col-md-4">
		  
		  <form id="personal-inf-r" class="inf-icon-form" action="member-center.jsp" method="get">
			<!-- 會員信箱 -->
			<div class="inf-input">
			  <img
				src="images/personal-information/email.png"
				class="inf-icon"
			  /><br />
			  <input
				type="email"
				value="<%=rs.getString(5)%>"
				class="inf-input-text"
				required
				readonly="readonly"
			  /><br />
			</div>
			<!-- 會員性別 -->
			<div class="inf-input">
			  <img
				src="images/personal-information/gender.png"
				class="inf-icon"
			  /><br />
			  <input
				type="radio"
				name="gender"
				value="<%=rs.getString(7)%>"
				checked
				disabled
			  />Male
			  <input
				type="radio"
				name="gender"
				value="<%=rs.getString(7)%>"
				disabled
			  />Female<br />
			</div>
			<!-- 會員生日 -->
			<div class="inf-input">
			  <img
				src="images/personal-information/birthday.png"
				class="inf-icon"
			  /><br />
			  <input
				type="date"
				name="selectdate"
				class="inf-input-text"
				value="<%=rs.getString(10)%>"
				readonly="readonly"
			  /><br />
			  <div class="inf-button-group">
				<!-- 修改按鈕 -->
					
						<input type="submit" value="編輯" class="inf-button" name="alter"/>
						<input type="hidden" name="page" value="3" />
						<input type="hidden" name="editD" value="1" />
					
					
				  <br/>
			  </div>
			</div>
		  </form>
		</div>
	  </div>
   
	
	
	
	  
		<%} }%>
		
		
		
		
		
		
		
		<%
	sql="SELECT * FROM `member` WHERE `ID`='"+session.getAttribute("ID")+"'";
	rs=con.createStatement().executeQuery(sql);
	while(rs.next()){
		if(editD!=null &&editD .equals("1")){
	  %>	
	  <!-- 修改狀態 -->
	  <div class="row">
	  
	    <form class="row" action="member-center.jsp" method="get">
		<div class="col-12 col-md-4">
		  <div id="user-image" class="inf-img-form" method="post" action="#">
			<!-- 會員頭像 -->
			<img src="<%=rs.getString(11)%>" class="inf-img-user" />
			<br/>
		  </div>
		  
		  <div id="user-account-password" method="post" action="#">
			<!-- 帳號 -->
			<div class="inf-input-l">
			  <input type="text" name="account" value="<%=rs.getString(2)%>" class="inf-input-text"
				required />
				<br/>
			</div>
			
			<!-- 密碼 -->
			<div class="inf-input-l">
			  <input type="password" name="password" value="<%=rs.getString(3)%>" minlength="8"
				class="inf-input-text" required />
				<br/>
			</div>
		  </div>
		</div>
		
		<div class="col-12 col-md-4">
		  <div id="ps-inf-c" class="inf-icon-form" method="post" action="#" >
			<!-- 會員名字 -->
			<div class="inf-input">
			  <img src="images/personal-information/id-card.png" class="inf-icon" />
			  <br />
			  
			  <input type="text" name="uesr-name" value="<%=rs.getString(6)%>" class="inf-input-text"
				required />
			  <br/>
			</div>
			
			<!-- 會員電話號碼 -->
			<div class="inf-input">
			  <img src="images/personal-information/phone-call.png" class="inf-icon" />
			  <br/>
			  
			  <input type="text" name="phone-call" value="<%=rs.getString(9)%>" class="inf-input-text" />
			  <br/>
			</div>
			
			<!-- 會員地址 -->
			<div class="inf-input">
			  <img src="images/personal-information/home-address.png" class="inf-icon" />
			  <br/>
			  
			  <input type="text" name="address" value="<%=rs.getString(8)%>" class="inf-input-text" />
			  <br/>
			</div>
		  </div>
		</div>
		
		<div class="col-12 col-md-4">
		  <div id="personal-inf-r" class="inf-icon-form" method="post" action="#" >
			<!-- 會員信箱 -->
			<div class="inf-input">
			  <img src="images/personal-information/email.png" class="inf-icon" />
			  <br/>
			  
			  <input type="email" value="<%=rs.getString(5)%>" class="inf-input-text"
				required />
			  <br/>
			</div>
			
			<!-- 會員性別 -->
			<div class="inf-input">
			  <img src="images/personal-information/gender.png" class="inf-icon" />
			  <br/>
			  
			  <input type="radio" name="gender" value="<%=rs.getString(7)%>" checked />Male
			  <input type="radio" name="gender" value="<%=rs.getString(7)%>" />Female
			  <br/>
			</div>
			<!-- 會員生日 -->
			<div class="inf-input">
			  <img src="images/personal-information/birthday.png" class="inf-icon" />
			  <br/>
			  
			  <input type="date" name="selectdate" class="inf-input-text" value="<%=rs.getString(10)%>" />
			  <br/>
			  
			  <div class="inf-button-group">
				<!-- 確認修改按鈕 -->
					<input type="submit" name="confirm-change" value="確認修改" class="inf-button"
					  onclick="window.alert('資料修改完成');" />
				  
				<!-- 取消按鈕 -->
					<input type="submit" value="取消" class="inf-button" name="cancel" />
					<input type="hidden" name="page" value="3" />
					<input type="hidden" name="editD" value="0" />
				
				<br/>
			  </div>
			</div>
		  </div>
		</div>
		
		</form>
		
	  </div>
	
	<%}
	}
	%>
	
	
	
	
	
	
  </div>
</div>


