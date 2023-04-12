<meta http-equiv=“Content-Type” content=“text/html; charset=utf-8”>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<%@ include file="head.jsp"%>
		<!-- 從這裡開始引入css檔 -->
		<link rel="stylesheet" href="css/car-basic-data.css" />
	</head>
  
  <body>
    <!--導覽列-->
    <section>
        <%@ include file="header.jsp"%>
    </section>
	
    <!-- 主要內容 -->
    <main class="container-fluid car-bd-main">
      <article>
        <!-------------- 從這裡開始放各個版面的內容 ------------------------------------------------------------------------------->
        <!-- 結帳前填寫基本資料 -->
        <section class="car-bd-part">
          <h1 class="car-bd-h1">填寫基本資料</h1>
          <form id="car-dt" class="car-bd-form" method="post" action="sandOrder.jsp">
            <fieldset class="car-bd-fieldset">
              <legend class="car-bd-legend">送貨資料</legend>

			<%
				ID=(String)session.getAttribute("ID");
				sql = "SELECT * FROM `member` WHERE `ID`='" + ID+ "' "  ; 
				ResultSet rs =con.createStatement().executeQuery(sql);
				rs.next();
			%>

              <label class="car-bd-label">收件人姓名</label>
              <input
                type="text"
                name="Name"
                placeholder="Real Name"
                class="car-bd-input-text"
				value="<%=rs.getString(6)%>"
                required
              /><br />

              <label class="car-bd-label">電話號碼</label>
              <input
                type="tel"
                name="Phone"
                placeholder="Phone-number"
                class="car-bd-input-text"
				value="<%=rs.getString(9)%>"
                required
              /><br />

              <label class="car-bd-label">EMAIL</label>
              <input
                type="email"
                name="Email"
                placeholder="Email"
                class="car-bd-input-text"
				value="<%=rs.getString(5)%>"
                required
              /><br />
			

              
            </fieldset>

            <fieldset class="car-bd-fieldset">
              <legend class="car-bd-legend">付款資料</legend>

              <label class="car-bd-label">付款方式</label>
              <select class="car-bd-select" name="PayWay">
				<option class="car-bd-option">*請選擇*</option>
                <option class="car-bd-option">LINE PAY(取貨不付款)</option>
                <option class="car-bd-option">信用卡(取貨不付款)</option>
                <option class="car-bd-option">取貨付款</option></select
              ><br /><br />
			<%String n="&nbsp;";%>
              <label class="car-bd-label"  >取貨方式</label>
              <select class="car-bd-select" name="PickWay">
				<option class="car-bd-option">*請選擇*</option>
                <option class="car-bd-option">7-11</option>
                <option class="car-bd-option">全家</option>
                <option class="car-bd-option">萊爾富</option>
                <option class="car-bd-option">OK</option>
                <option class="car-bd-option">宅配</option>
              </select><br /><br />
			  
			  <label class="car-bd-label">門市或地址</label>
              <input
                type="text"
                name="Address"
                placeholder="Address"
                class="car-bd-input-text"
				value="<%=rs.getString(8)%>"
                required
              /><br />
			  
            </fieldset>

            <fieldset class="car-bd-fieldset">
              <legend class="car-bd-legend">訂單備註</legend>
              <label class="car-bd-label">備註</label>
              <textarea
                name="Note"
                cols="40"
                rows="10"
                class="car-bd-textarea"
              ></textarea>
			  <br />
            </fieldset>
            <div class="car-bd-button-part">
              <input
                type="submit"
                name="submit"
                value="提交訂單"
                class="car-bd-button"
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
	<%@ include file="footer.jsp"%>
	<!-- script -->
	<%@ include file="script.jsp"%>

  </body>
</html>
