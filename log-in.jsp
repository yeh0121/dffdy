<meta http-equiv=“Content-Type” content=“text/html; charset=utf-8”>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<%@ include file="head.jsp"%>
		<!-- 從這裡開始引入css檔 -->
		<link rel="stylesheet" href="css/log-in-style.css" />
	</head>
  
  <body>
    <!--導覽列-->
    <section>
        <%@ include file="header.jsp"%>
    </section>
	
    <!-- 主要內容 -->
    <main class="container-fluid login-main-style">
      <article>
        <!-------------- 從這裡開始放各個版面的內容 ------------------------------------------------------------------------------->
        <section class="member-login">
          <div class="bg-login"></div>

          <form class="form-login" method="post" action="check.jsp">
            <h1 class="h1-login">Log-in</h1>
            <fieldset class="login-fieldset-style">
              <!-------- 帳號 --------->
              <span class="text">帳號</span>
              <input
                type="text"
                name="Acc"
                placeholder="Account"
                class="login-input-text"
              /><br />
              <!-------- 密碼 --------->
              <span class="text">密碼</span>
              <input
                type="password"
                name="pwd"
                placeholder="Password"
                class="login-input-text"
              /><br />
            </fieldset>
            <!-------- 登入紐 --------->
            <div class="login-button">
              <input
                type="submit"
                name="login"
                value="登入"
                class="login-button-style"
              />
            </div>
          </form>
        </section>
        <!------------------ 各版面內容結束---------------------------------------------------------------------------------- -->
      </article>
      <!-- 如果頁面長度很短，可以讓footer固定在頁面底部 -->
      <div class="sticky-footer"></div>
    </main>
    
    <!-- footer -->
    <section>
        <%@ include file="footer.jsp"%>
    </section>

    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

    <!-- bootstrap -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>

    <!-- icon -->
    <script
      src="https://kit.fontawesome.com/e2df7f4d73.js"
      crossorigin="anonymous"
    ></script>

    <!-- to top -->
    <script src="js/top.js"></script>

    <!-- 登入或註冊 介面 -->
    <script src="js/login-signup.js"></script>
  </body>
</html>
