<meta http-equiv=“Content-Type” content=“text/html; charset=utf-8”>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.util.*"%>


<!DOCTYPE html>
<html lang="en">
	<head>
		<%@ include file="head.jsp"%>
		<!-- 從這裡開始引入css檔 -->
		<link rel="stylesheet" href="css/register-style.css" />
	</head>
  
  <body>
    <!--導覽列-->
    <section>
        <%@ include file="header.jsp"%>
    </section>
	
    <!-- 主要內容 -->
    <main class="container-fluid register-main-style">
      <article>
        <!-------------- 從這裡開始放各個版面的內容 ------------------------------------------------------------------------------->
        <section class="member-register">
		  <form class="form-register" name="register" method="post" action="memberinf.jsp">
          
            <h1 class="h1-register">會員註冊</h1>
            <fieldset class="register-fieldset-style">
              <!-------- 表單分組1標題 --------->
              <legend>Account</legend>
              <!-------- 帳號 --------->
              <img src="images/register/account.png" class="icon" />
              <input
                type="text"
                name="Acc"
                placeholder="Account"
                class="register-input-text"
				required
              /><br />
			  
              <!-------- 密碼 --------->
              <img src="images/register/password.png" class="icon" />
              <input
                type="password"
                name="Pwd1"
                placeholder="Password"
                minlength="8"
				class="register-input-text"
				required
              /><br />			  
			  
              <!-------- 再次確認密碼 --------->
              <img src="images/register/password-again.png" class="icon" />
              <input
                type="password"
                name="Pwd2"
                placeholder="Make sure your password"
                class="register-input-text"
				required
              /><br />
			  
            </fieldset>
			
			
            <fieldset class="register-fieldset-style">
              <!-------- 表單分組2標題 --------->
              <legend>Information</legend>
              <!-------- 使用者真實姓名 --------->
              <img src="images/register/id-card.png" class="icon" /><br />
              <input
                type="text"
                name="Name"
                placeholder="Username"
                class="register-input-text"
              /><br />
			  
              <!-------- 手機號碼 --------->
              <img src="images/register/phone-call.png" class="icon" /><br />
              <input
                type="text"
                name="Phone"
                placeholder="Phone-call"
                class="register-input-text"
              /><br />
			  
              <!-------- 地址 --------->
              <img src="images/register/home-address.png" class="icon" /><br />
              <input
                type="text"
                name="Address"
                placeholder="Address"
                class="register-input-text"
              /><br />
			  
              <!-------- EMAIL --------->
              <img src="images/register/email.png" class="icon" /><br />
              <input
                type="email"
				 name="Email"
                placeholder="Email"
                class="register-input-text"
              /><br />
			  
              <!-------- 性別 --------->
              <img src="images/register/gender.png" class="icon" /><br />
              <input type="radio" name="Gender" value="男" />Male
              <input type="radio" name="Gender" value="女" />Female<br />
			  
              <!-------- 生日 --------->
              <img src="images/register/birthday.png" class="icon" /><br />
              <input
                type="date"
                name="Birth"
                class="register-input-text"
				placeholder="西元年/月/日"
              /><br />

            </fieldset>
			
            <!-------- 註冊鈕 --------->
            <input
              type="submit"
              name="register"
              value="註冊"
              class="register-button-style"
            />
          </form>
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
	
  </body>
</html>
