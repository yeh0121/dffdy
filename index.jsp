<meta http-equiv=“Content-Type” content=“text/html; charset=utf-8”>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <%@ include file="head.jsp"%>
  </head>
  
  <body>
    <!--導覽列-->
    <section>
        <%@ include file="header.jsp"%>
    </section>
    
    <!-- 主要內容 -->
    <main class="container-fluid home-part">
      <article>
        <!-------------- 從這裡開始放各個版面的內容 ------------------------------------------------------------------------------->
        <!-- Brand 品牌理念 -->
        <section class="row brand-concept">
          <div class="col-12 col-md-8 col-lg-7 col-xl-6 col-xxl-5 brand-text">
            <!-- 不同大小的裝置適用於不同的背景圖 -->
            <img
              class="img-fluid brand-bg"
              src="images/brand-concept/brand-bg.jpg"
            />
            <img
              class="img-fluid brand-bg-2"
              src="images/brand-concept/brand-bg-2.jpg"
            />
            <img
              class="img-fluid brand-bg-3"
              src="images/brand-concept/brand-bg-3.jpg"
            />
            <div class="content">
              <p class="title">品牌理念</p>
              <p class="slogan">Dried flowers for dear you.</p>
              <p>
                乾燥花和永生花比起鮮花更能留存得久，也能夠將最美好的回憶保存。在友情方面，珍惜朋友，無論發生什麼，友誼永遠不會變，望友誼能長存。在愛情方面，愛永不凋謝，不論遇到什麼困難，永遠不離不棄。在親情方面，不論身在何處，總有人等你回家，不論飛多遠，總有人牽掛，請記得背後還有個家能夠依靠。
              </p>
            </div>
          </div>
          <div
            class="col-12 col-md-4 col-lg-5 col-xl-6 col-xxl-7 brand-picture"
          ></div>
        </section>
        <!-- 熱銷商品 -->
        <section class="container bestseller">
          <div class="row">
            <div class="title">熱銷商品</div>
            <% 
				sql="SELECT * FROM `commodity` order by Sold desc limit 3";
				ResultSet hot=con.createStatement().executeQuery(sql);
				int topNum=0;
				while(hot.next()){
			
			%>
              <div class="col-12 col-sm-4 bestseller-item">
                <!-- 商品連結 -->
                <a href="product.jsp?Pid=<%=hot.getString(1)%>">
                  <div class="hot-tab">
                    Top
                    <span class="top-number"><%=topNum+1%></span>
                  </div>
                  <!-- 商品圖片 -->
                  <div class="picture">
                    <img
                      class="img-fluid"
                      src="<%=hot.getString(11)%>"
                    />
                  </div>
                  <!-- 商品名稱 -->
                  <div class="product-name"><%=hot.getString(2)%></div>

                  <!-- 商品價格 -->
                  <div class="product-price">NT$<%=hot.getString(4)%></div>
                </a>
              </div>
            
			<%
			topNum++;
			}%>
			
			
			
			
          </div>
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
