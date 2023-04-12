<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@ include file="setSql.jsp"%>
<!-- header & nav -->
<header>
      <nav
        class="navbar fixed-top navbar-expand-lg navbar-light"
        style="background-color: #94b2ca">
        <div class="container-fluid">
          <!-- 店家名稱 -->
          <a class="navbar-brand logo" href="index.jsp"><span>DFFDY</span></a>
          <!-- 側邊選單按鈕 -->
          <button
            class="navbar-toggler shadow-inset"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <!-- 選單 -->
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
              <li class="nav-item dropdown">
                <a
                  class="nav-link dropdown-toggle"
                  href="#"
                  id="navbarDropdown"
                  role="button"
                  data-bs-toggle="dropdown"
                  aria-expanded="false"
                >
                  所有商品
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li>
                    <a class="dropdown-item" href="allproducts.jsp"
                      >所有商品
                    </a>
                  </li>
                  <li><hr class="dropdown-divider" /></li>
                  <li>
                    <a class="dropdown-item" href="bouquet.jsp">花束 </a>
                  </li>

                  <li>
                    <a class="dropdown-item" href="glass.jsp">玻璃瓶</a>
                  </li>

                  <li>
                    <a class="dropdown-item" href="card.jsp">卡片</a>
                  </li>
                </ul>
              </li>
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="aboutus.jsp"
                  >關於我們</a
                >
              </li>
              <li class="nav-item">
                <a class="nav-link" href="faq.jsp">常見問題 </a>
              </li>
			  <%if (session.getAttribute("ID")!=null && session.getAttribute("Iden").equals("admin")){%>
			  <li class="nav-item">
                <span class="nav-link" >登入身分：管理員 </span>
              </li>
			  <%}%>
              <li class="nav-item home-icon">
                <a class="nav-link" aria-current="page" href="index.jsp"
                  ><i class="fa-sharp fa-solid fa-house"></i
                ></a>
              </li>
			  <!--
              <li class="nav-item shopping-cart-icon">
                <a class="nav-link" aria-current="page" href="member-center.jsp?page=4">
                  <i class="fa-solid fa-cart-shopping"></i
                ></a>
              </li>
             
			  -->
			  
			  
			  <%
			String ID=(String)session.getAttribute("ID");
			String greatName="";
			if (ID!=null){
				sql="SELECT * FROM `member` WHERE `ID`='"+ID+"' ";
				ResultSet rsUser;
				rsUser=con.createStatement().executeQuery(sql);
				rsUser.next();
				greatName=rsUser.getString(6);
			}
			if (ID==null){
			%>
			  <!-- 登入前 -->
			  <li class="nav-item shopping-cart-icon">
                <a class="nav-link" aria-current="page" onclick="alert('請先登入！');">
                  <i class="fa-solid fa-cart-shopping"></i
                ></a>
              </li>
              <li class="nav-item user-icon" id="user">
                <div class="nav-link" aria-current="page">
                  <i class="fa-solid fa-user"></i>
                </div>
              </li>
			  <!-- 登入或註冊 介面 -->
              <div class="login-signup" id="login-signup">
                <div class="content">	
                  <div class="login">
                    <p>已經是會員</p>
                    <button
                      id="go-to-login"
                      type="button"
                      onclick="location.href='log-in.jsp'"
                    >
                      登入
                    </button>
                  </div>
                  <div class="dividing-line"></div>
                  <div class="signup">
                    <p>還沒有帳號嗎？</p>
                    <button
                      id="go-to-signup"
                      type="button"
                      onclick="location.href='register.jsp'"
                    >
                      註冊
                    </button>
                  </div>
                  <div class="signup">
                    <span id="leave-login-signup"> 訪客模式 </span>
                  </div>
				</div>
              </div>
            <!--</ul>-->
			<%
			}else if(session.getAttribute("Iden").equals("member")){
				
			%>
			  <!-- 一般會員登入後 -->
			  <li class="nav-item shopping-cart-icon">
                <a class="nav-link" aria-current="page" href="member-center.jsp?page=4">
                  <i class="fa-solid fa-cart-shopping"></i
                ></a>
              </li>
			  
              <li class="nav-item dropdown">
                <a
                  class="nav-link dropdown-toggle"
                  href="#"
                  id="navbarDropdown"
                  role="button"
                  data-bs-toggle="dropdown"
                  aria-expanded="false"
                >
                  <i class="fa-solid fa-user"></i>
				  <span>Hi~<%=greatName%></span>
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li>
                    <a class="dropdown-item" href="member-center.jsp?page=3"
                      >會員資訊
                    </a>
					
					
					
                  </li>
                  <li><hr class="dropdown-divider" /></li>
                  <li>
                    <a class="dropdown-item" href="log-out.jsp">登出</a>
                  </li>
                </ul>
              </li>
			  
            </ul>
			
			 <%
			 }else{
				
			%>
			  <!-- 管理員登入後 -->
			  
              <li class="nav-item dropdown">
                <a
                  class="nav-link dropdown-toggle"
                  href="#"
                  id="navbarDropdown"
                  role="button"
                  data-bs-toggle="dropdown"
                  aria-expanded="false"
                >
                  <i class="fa-solid fa-user"></i>
				  <span>Hi~<%=greatName%></span>
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li>
                    <a class="dropdown-item" href="controller.jsp?page=3"
                      >商品管理頁面
                    </a>
					
					
					
                  </li>
				  
				  <li>
                    <a class="dropdown-item" href="member-center.jsp?page=1"
                      >訂單瀏覽
                    </a>
					
                  </li>
				  
                  <li><hr class="dropdown-divider" /></li>
                  <li>
                    <a class="dropdown-item" href="log-out.jsp">登出</a>
                  </li>
                </ul>
              </li>
            </ul>
            <!--</ul>-->
			<%
			}
			%>
			
			
			
			  
            <!-- 搜尋欄 -->
            <form class="d-flex" method="get" action="search.jsp">
              <input
                class="form-control me-2 shadow-none"
                type="search"
                placeholder="輸入以查詢商品"
				name="keyword"
                aria-label="Search"
              />
              <button class="btn btn-outline-dark shadow-none" type="submit">
                <i class="fa-sharp fa-solid fa-magnifying-glass"></i>
              </button>
            </form>
          </div>
		  
        </div>
      </nav>
    </header>

<!-- 回頂端 -->
	<div class="totop">
      <a href="#top" class="totop" id="totop">
        <button class="totop-button">
          <img src="images/top.png" />
        </button>
      </a>
    </div>