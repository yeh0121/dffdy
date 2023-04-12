<meta http-equiv=“Content-Type” content=“text/html; charset=utf-8”>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<%@ include file="head.jsp"%>
		<!-- 從這裡開始引入css檔 -->
		<link rel="stylesheet" href="css/faq.css" />
	</head>
 
  <body>
    <!--導覽列-->
    <section>
        <%@ include file="header.jsp"%>
    </section>
	
    <!-- 主要內容 -->
    <main class="container-fluid faq-main">
      <article>
        <!-------------- 從這裡開始放各個版面的內容 ------------------------------------------------------------------------------->
        <!-- 常見問題 -->
        <section class="container-fluid faqs">
          <div class="all">
            <div class="title">常見問題</div>
            <div class="container-fluid content">
              <button class="accordion">請問乾燥花與永生花有什麼差別？</button>
              <div class="panel">
                <p>
                  永生花是將鮮花浸入脫水、脫色溶液及染色劑製作而成；乾燥花不用經過脫水、脫色，只需將花乾燥即可。
                </p>
              </div>

              <button class="accordion">
                請問可以不要讓對方知道商品價格嗎？
              </button>
              <div class="panel">
                <p>可以，您可在寄送資料的備註欄填寫不要收據。</p>
              </div>

              <button class="accordion">請問出貨時間大概多久？</button>
              <div class="panel">
                <p>商家大約有5天備貨期，出貨後3天內送達收件地址。</p>
              </div>

              <button class="accordion">請問有哪些付款方式？</button>
              <div class="panel">
                <p>可使用Line Pay、信用卡、貨到付款。</p>
              </div>

              <button class="accordion">請問如何取貨？</button>
              <div class="panel">
                <p>可選擇至四大超商取貨或以宅配方式送達。</p>
              </div>
            </div>
          </div>
          <img class="flower" src="images/faq-flower.png" />
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

    <!-- 常見問題 -->
    <script src="js/faq.js"></script>
  </body>
</html>
