<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

<!-- 動態廣告 -->
<section class="dynamic-advertising">
	<!-- 輪播 (Carousel) -->
	<!-- 個別設置 .carousel-item 的時間間隔  在 .carousel-item 上添加 data-bs-interval="" 以更改自動循環至下一個項目的延遲時間。 -->
	<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button
			type="button"
			data-bs-target="#carouselExampleDark"
			data-bs-slide-to="0"
			class="active"
			aria-current="true"
			aria-label="Slide 1"
			></button>
			
			<button
			type="button"
			data-bs-target="#carouselExampleDark"
			data-bs-slide-to="1"
			aria-label="Slide 2"
			></button>
			
			<button
			type="button"
			data-bs-target="#carouselExampleDark"
			data-bs-slide-to="2"
			aria-label="Slide 3"
			></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="3000">
				<img
				src="images/advertisement/bouquet.png"
				class="d-block w-100"
				alt="..."
				/>
			</div>
			<div class="carousel-item" data-bs-interval="3000">
				<img
				src="images/advertisement/glass.png"
				class="d-block w-100"
				alt="..."
				/>
			</div>
			<div class="carousel-item" data-bs-interval="3000">
				<img
				src="images/advertisement/card.png"
				class="d-block w-100"
				alt="..."
				/>
			</div>
		</div>
		
		<button
		class="carousel-control-prev"
		type="button"
		data-bs-target="#carouselExampleDark"
		data-bs-slide="prev"
		>
			<span
			class="carousel-control-prev-icon"
			aria-hidden="true"
			></span>
			<span class="visually-hidden">Previous</span>
		</button>
		
		<button
		class="carousel-control-next"
		type="button"
		data-bs-target="#carouselExampleDark"
		data-bs-slide="next"
		>
			<span
			class="carousel-control-next-icon"
			aria-hidden="true"
			></span>
			<span class="visually-hidden">Next</span>
		</button>
	</div>
</section>