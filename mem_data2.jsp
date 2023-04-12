<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="setSql.jsp"%>

<!-- 會員資料(可修改) -->
            
			<% //<div>
				if (Page.equals("3")){
					out.print("<div class='tab-pane fade show active'");
				}
				else{
					out.print("<div class='tab-pane fade'");
				}
				out.print("id='pills-member' role='tabpanel' aria-labelledby='pills-member-tab'>");
				
				sql="SELECT * FROM `member` WHERE `ID`='"+session.getAttribute("ID")+"'";
				ResultSet rs=con.createStatement().executeQuery(sql);
				while(rs.next()){
			%>
			
              <div class="container-fluid member-information">
                <h1 class="inf-h1">會員資料</h1>
                <div class="row">
                  <div class="col-12 col-md-4">
                    <form
                      id="user-image"
                      class="inf-img-form"
                      method="post"
                      action="addMember.jsp"
                    >
                      <!-- 會員頭像 -->
                      <img
                        src="images/personal-information/user-inf.png"
                        class="inf-img-user"
                      /><br />
                    </form>
                    <form id="user-account-password" method="post" action="addMember.jsp">
                      <!-- 帳號 -->
                      <div class="inf-input-l">
                        <input
                          type="text"
                          name="account"
                          value="<%=rs.getString(2)%>"
                          class="inf-input-text"
                          required
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
                        /><br />
                      </div>
                    </form>
                  </div>
                  <div class="col-12 col-md-4">
                    <form
                      id="ps-inf-c"
                      class="inf-icon-form"
                      method="post"
                      action="addMember.jsp"
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
                        /><br />
                      </div>
                    </form>
                  </div>
                  <div class="col-12 col-md-4">
                    <form
                      id="personal-inf-r"
                      class="inf-icon-form"
                      method="post"
                      action="addMember.jsp"
                    >
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
                        />Male
                        <input
                          type="radio"
                          name="gender"
                          value="<%=rs.getString(7)%>"
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
                        /><br />
                        <!-- 修改按鈕 -->
                        <input
                          type="button"
                          name="alter"
                          value="修改"
                          class="inf-button"
						  onclick="location.href='addMember.jsp'"
                        /><br />
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
				<%}%>

