<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>EyeWear Shop</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/templatemo.css">
<link rel="stylesheet" href="assets/css/custom.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="assets/css/fontawesome.min.css">
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
</head>

<body>
	<jsp:include page="flex/_header.jsp"/>
	<!-- About Page -->
	<section class="bg-success py-5">
		<div class="container">
			<div class="row align-items-center py-5">
				<div class="col-md-8 text-white">
					<h1>About Us</h1>
					<p>Chào mừng đến với trang web bán kính mắt của chúng tôi!
						Chúng tôi cung cấp một loạt các sản phẩm kính mắt chất lượng cao,
						đa dạng về kiểu dáng, mẫu mã và phong cách, phù hợp với mọi nhu
						cầu và sở thích của khách hàng. Chúng tôi cam kết cung cấp sản
						phẩm chính hãng, với giá cả phải chăng và chất lượng dịch vụ tốt
						nhất cho khách hàng. Đội ngũ nhân viên tận tâm và chuyên nghiệp
						của chúng tôi luôn sẵn sàng hỗ trợ và tư vấn cho khách hàng trong
						quá trình lựa chọn sản phẩm. Truy cập trang web của chúng tôi ngay
						để khám phá và mua sắm các sản phẩm kính mắt tuyệt vời của chúng
						tôi!.</p>
				</div>
				<div class="col-md-4">
					<img src="assets/img/about-hero.svg" alt="About Hero">
				</div>
			</div>
		</div>
	</section>
	<!-- End About Page -->

	<!-- Start Featured Product -->
	<section class="bg-light">
		<div class="container py-5">
			<div class="row text-center py-3">
				<div class="col-lg-6 m-auto">
					<h1 class="h1">KIẾN THỨC</h1>
					<p>Cập nhật các kiến thức liên quan về mắt </p>
				</div>
			</div>
			<div class="row">
				<div class="col-12 col-md-4 mb-4">
					<div class="card h-80">
						<a href="shop-single"> <img
							src="./assets/img/kienthuc_1.jpg" class="card-img-top"
							alt="...">
						</a>
						<div class="card-body">
							<a href="shop-single" class="h2 text-decoration-none font-weight-bold text-dark">Kính đổi màu và những lợi ích không thể bỏ qua</a>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-4 mb-4">
					<div class="card h-100">
						<a href="shop-single"> <img
							src="./assets/img/kienthuc_2.jpg" class="card-img-top"
							alt="...">
						</a>
						<div class="card-body">
							<a href="shop-single" class="h2 text-decoration-none font-weight-bold text-dark">Làm thế nào để mắt kính không bị mờ khi đeo khẩu trang?</a>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-4 mb-4">
					<div class="card h-100">
						<a href="shop-single"> <img
							src="./assets/img/kienthuc_3.jpg" class="card-img-top"
							alt="...">
						</a>
						<div class="card-body">
							<a href="shop-single" class="h2 text-decoration-none font-weight-bold text-dark">Kinh nghiệm giúp "Hội cận thị" không bị dại mắt và tăng độ</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Featured Product -->

	<jsp:include page="flex/_footer.jsp"/>
</body>

</html>