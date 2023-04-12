<meta http-equiv=“Content-Type” content=“text/html; charset=utf-8”>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<%@ include file="head.jsp"%>
		<!-- 從這裡開始引入css檔 -->
		<link rel="stylesheet" href="css/controller-style.css" />
	</head>
  
  <body>
    <!--導覽列-->
    <section>
        <%@ include file="header.jsp"%>
    </section>
	
    <!-- 主要內容 -->
    <main class="container-fluid controller-main">
      <article>
        <!-------------- 從這裡開始放各個版面的內容 ------------------------------------------------------------------------------->
        
		
		
		
		
		
		<section class="controller-part">
          <h1 class="controller-h1">管理者</h1>
          <div>
            
			
			
			
			
			
			
			
            
			<%
				String srh =request.getParameter("srh");
				String editP =request.getParameter("editP");
				if (editP==null||editP. equals("0")){
			%>
			<div class="pd-information">
			
			
              <form
                id="ct-form-search"
                class="controller-form"
                method="post"
                action=""
				name="f"
              >
                <fieldset class="controller-fieldset">
                  <!-------- 表單分組2標題 --------->
                  <legend class="controller-legend">商品資訊查詢&修改</legend>

                  <label class="controller-label">商品ID:</label>
                  <input
                    type="search"
                    name="srh"
                    placeholder="ID"
                    class="controller-input-text"
                  />
                  <input
                    type="submit"
                    name="button"
                    value="查詢"
                    class="controller-bt-serch"
					onclick="javascript:document.f.action='controller.jsp';document.f.submit();"
                  />
				  <input type="hidden" name="editP" value="1">
				  
				  
				  <template>
					<!----------- 修改商品標題----------->
                  <label class="controller-label">標題:</label>
                  <input
                    type="text"
                    name="Title"
                    value=""
                    class="controller-input-text"
                  /><br />
				  

                  <!----------- 修改商品圖片----------->
                  <img src="images/bouquet/pink-rose.jpg" class="controller-image"/> 
				  
				  

				  <!----------- 修改圖片路徑----------->
                  <label class="controller-label">圖片路徑:</label>
                  <input
                    type="text"
                    name="imgPath"
                    value=""
                    class="controller-input-text"
                  /><br />

				  
                  <!----------- 修改商品價格----------->
                  <label class="controller-label">價格:</label>
                  <input
                    type="text"
                    name="Price"
                    value=""
                    class="controller-input-text"
                  /><br />

				 
                  <!----------- 修改商品備註----------->
                  <label class="controller-label">小公告:</label>
                  <input
                    type="text"
                    name="Note"
                    value=""
                    class="controller-input-text"
                  /><br />

                  <!----------- 修改商品庫存數量----------->
                  <label class="controller-label">庫存數量:</label>
                  <input
                    type="text"
                    name="Inventory"
                    value=""
                    class="controller-input-text"
                  /><br />

                  <!----------- 修改商品介紹----------->
                  <label class="controller-label">商品介紹:</label>
                  <textarea
                    name="Description"
                    cols="45"
                    rows="10"
                    class="textarea-pd"
                  ></textarea
                  ><br />

                  <!----------- 修改商品花材----------->
                  <label class="controller-label">花材:</label>
                  <input
                    type="text"
                    name="Material"
                    value=""
                    class="controller-input-text"
                  /><br />

                  <!----------- 修改商品尺寸----------->
                  <label class="controller-label">尺寸:</label>
                  <input
                    type="text"
                    name="Size"
                    value=""
                    class="controller-input-text"
                  /><br />

                  <!----------- 修改商品保存方式----------->
                  <label class="controller-label">保存方式:</label>
                  <input
                    type="text"
                    name="Preserve"
                    value=""
                    class="controller-input-text"
                  /><br />

                  <!-------- 刪除商品紐 --------->
                  <input
                    type="button"
                    name="delete"
                    value="刪除"
                    class="controller-button"
                  />
				  
                  <!-------- 提交修改內容 --------->
                  <input
                    type="submit"
                    name="alter"
                    value="提交"
                    class="controller-button"
                  />
				  </template>
                </fieldset>
              </form>
			  
			   </div>
			  <%
			  }
			  else{
				  sql="SELECT * FROM `commodity` WHERE `ID`='"+srh+"'";
				  ResultSet proList=con.createStatement().executeQuery(sql);
				  if(proList.next()){
				  
				  
			  %>
			  <div class="pd-information">
			  <form
                id="ct-form-search"
                class="controller-form"
                method="post"
                action="controller.jsp"
				name="f"
              >
                <fieldset class="controller-fieldset">
                  <!-------- 表單分組2標題 --------->
                  <legend class="controller-legend">商品資訊查詢&修改</legend>

                  <label class="controller-label">商品ID:</label>
                  <input
                    type="search"
                    name="srh"
                    placeholder="ID"
                    class="controller-input-text"
					value="<%=proList.getString(1)%>"
                  />
                  <input
                    type="submit"
                    name="button"
                    value="查詢"
                    class="controller-bt-serch"
					onclick="javascript:document.f.action='controller.jsp';document.f.submit();"
                  />
				  <input type="hidden" name="editP" value="1">
				 
                  <br />

                 

					


                  <!----------- 修改商品標題----------->
                  <label class="controller-label">標題:</label>
                  <input
                    type="text"
                    name="Title"
                    value="<%=proList.getString(2)%>"
                    class="controller-input-text"
                  /><br />
				  
				  
				  
				  <!----------- 修改商品標題----------->
                  <label class="controller-label">類別:</label>
                  <input
                    type="text"
                    name="Category"
                    value="<%=proList.getString(3)%>"
                    class="controller-input-text"
                  /><br />
				  
				   <!----------- 修改商品圖片----------->
                  <img src="<%=proList.getString(11)%>" class="controller-image"/>  
				  
				 
                  <!----------- 修改圖片路徑----------->
                  <label class="controller-label">圖片路徑:</label>
                  <input
                    type="text"
                    name="imgPath"
                    value="<%=proList.getString(11)%>"
                    class="controller-input-text"
                  /><br />

                  <!----------- 修改商品價格----------->
                  <label class="controller-label">價格:</label>
                  <input
                    type="text"
                    name="Price"
                    value="<%=proList.getString(4)%>"
                    class="controller-input-text"
                  /><br />

				  <!-------- -----慶祝新開幕，全館免運----- --------->
                  <label class="controller-label">小公告:</label>
                  <input
                    type="text"
                    name="Note"
                    placeholder="Note"
                    class="controller-input-text"
					value="<%=proList.getString(12)%>"
                  /><br />

                  <!----------- 修改商品庫存數量----------->
                  <label class="controller-label">庫存數量:</label>
                  <input
                    type="text"
                    name="Inventory"
                    value="<%=proList.getString(6)%>"
                    class="controller-input-text"
                  /><br />

                  <!----------- 修改商品介紹----------->
                  <label class="controller-label">商品介紹:</label>
                  <textarea
                    name="Description"
                    cols="45"
                    rows="10"
                    class="textarea-pd"
                  ><%=proList.getString(7)%></textarea
                  ><br />

                  <!----------- 修改商品花材----------->
                  <label class="controller-label">花材:</label>
                  <input
                    type="text"
                    name="Material"
                    value="<%=proList.getString(8)%>"
                    class="controller-input-text"
                  /><br />

                  <!----------- 修改商品尺寸----------->
                  <label class="controller-label">尺寸:</label>
                  <input
                    type="text"
                    name="Size"
                    value="<%=proList.getString(9)%>"
                    class="controller-input-text"
                  /><br />

                  <!----------- 修改商品保存方式----------->
                  <label class="controller-label">保存方式:</label>
                  <input
                    type="text"
                    name="Preserve"
                    value="<%=proList.getString(10)%>"
                    class="controller-input-text"
                  /><br />


                  
				  
                  <!-------- 提交修改內容 --------->
				  <input type="submit" name="submit2" value="提交" class="controller-button"
				  onclick="javascript:document.f.action='editProduct.jsp';document.f.submit();" />
				  
				  <!-------- 刪除商品紐 --------->
				  <input type="submit" name="submit2" 
				  value="刪除商品" class="controller-button"
				  onclick="javascript:document.f.action='delPro.jsp?delP=<%=proList.getString(1)%>';document.f.submit();" />
				  
                </fieldset>
              </form>
			  
			   </div>
			  <%}
			  else{
				  %>
				  <form
                id="ct-form-search"
                class="controller-form"
                method="post"
                action="controller.jsp"
              >
                <fieldset class="controller-fieldset">
                  <!-------- 表單分組2標題 --------->
                  <legend class="controller-legend">商品資訊查詢&修改</legend>

                  <label class="controller-label">商品ID:</label>
                  <input
                    type="search"
                    name="srh"
                    placeholder="查無商品，請重新查詢"
                    class="controller-input-text"
					value=""
                  />
                  <input
                    type="submit"
                    name="button"
                    value="查詢"
                    class="controller-bt-serch"
					onclick="javascript:document.f.action='controller.jsp';document.f.submit();"
                  />
				  <input type="hidden" name="editP" value="1">
				 
                  <br />

                 
                  

                </fieldset>
              </form>
				  <%
			  }
			  
			  }%>
			  
			  
			  
			  
			  <div class="input-pd">
              <form
                id="ct-form"
                class="controller-form"
                method="post"
                action="addProduct.jsp"
              >
                <fieldset class="controller-fieldset">
                  <!-------- 表單分組1標題 --------->
                  <legend class="controller-legend">商品上架</legend>

                  <!-------- 商品分類 --------->
                  <label class="controller-label">分類</label>
                  <select class="controller-select" name="Category">
                    <option class="controller-option">花束</option>
                    <option class="controller-option" checked >玻璃瓶</option>
                    <option class="controller-option">卡片</option>
                  </select>
                  <br />

                  <!-------- 商品圖片 --------->
                  <label class="controller-label">選擇圖片</label>
                  <input type="file" accept="image/*" multiple name="Img" /><br />

                  <!-------- 商品名稱 --------->
                  <label class="controller-label">標題:</label>
                  <input
                    type="text"
                    name="Title"
                    placeholder="Produce-title"
                    class="controller-input-text"
					value="金合歡浮游花瓶(value供測試上架用，其他商品請見商品圖文檔/flower.xlsx)"
                  /><br />

                  <!-------- 商品價格 --------->
                  <label class="controller-label">價格:</label>
                  <input
                    type="text"
                    name="Price"
                    placeholder="Price"
                    class="controller-input-text"
					value="480"
                  /><br />

                  <!-------- -----慶祝新開幕，全館免運----- --------->
                  <label class="controller-label">小公告:</label>
                  <input
                    type="text"
                    name="Note"
                    placeholder="Note"
                    class="controller-input-text"
					value="-----慶祝新開幕，全館免運-----"
                  /><br />

                  <!-------- 商品庫存數量 --------->
                  <label class="controller-label">庫存數量:</label>
                  <input
                    type="text"
                    name="Inventory"
                    placeholder="Inventory"
                    class="controller-input-text"
					value="100"
                  /><br />

                  <!-------- 商品介紹 --------->
                  <label class="controller-label">商品介紹:</label>
                  <textarea
                    name="Description"
                    cols="45"
                    rows="10"
                    class="textarea-pd"
					value=""
                  >金合歡代表純潔美好的友誼，也有著享受當下時光，體會當下感動的意涵。贈送給最要好的朋友，彼此珍惜最快樂的回憶。</textarea
                  ><br />

                  <!-------- 商品花材 --------->
                  <label class="controller-label">花材:</label>
                  <input
                    type="text"
                    name="Material"
                    placeholder="Material"
                    class="controller-input-text"
					value="永生玫瑰以及其他不凋和乾燥配花"
                  /><br />

                  <!-------- 商品尺寸 --------->
                  <label class="controller-label">尺寸:</label>
                  <input
                    type="text"
                    name="Size"
                    placeholder="Pd-size"
                    class="controller-input-text"
					value="瓶子尺寸約寬8.5cm高10cm(手工測量誤差1cm)"
                  /><br />

                  <!-------- 商品保存方式 --------->
                  <label class="controller-label">保存方式:</label>
                  <input
                    type="text"
                    name="Preserve"
                    placeholder="Preserve"
                    class="controller-input-text"
					value="請保持乾燥並放在通風處，避免受到潮濕。 永生花可存放1~2年。 定期用毛刷將灰塵清理，可維持永生花的色澤及光彩。"
                  /><br />

                  <!-------- 上架紐 --------->
                  <input
                    type="submit"
                    name="submit"
                    value="上架"
                    class="controller-button"
                  />
                </fieldset>
              </form>
            </div>
			
			  
			  
			  
           
          </div>
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
