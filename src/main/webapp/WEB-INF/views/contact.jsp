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

	<!-- Start Content Page -->
	<div class="container-fluid bg-light py-5">
		<div class="col-md-6 m-auto text-center">
			<h1 class="h1">Liên hệ với EyeWear</h1>
			<p>Hãy gửi cho chúng tôi tất cả những thắc mắc của quý khách.
				Không được như gọi điện hay chat trực tiếp, Email sẽ được trả lời
				lần lượt, chúng tôi cam kết sẽ phản hồi nhanh nhất.</p>
		</div>
	</div>

	<!-- Start Contact -->
	<div class="container py-5">
		<div class="row py-5">
			<form class="col-md-9 m-auto" method="post" role="form">
				<div class="row">
					<div class="form-group col-md-6 mb-3">
						<label for="inputname">Name</label> <input type="text"
							class="form-control mt-1" id="name" name="name"
							placeholder="Name">
					</div>
					<div class="form-group col-md-6 mb-3">
						<label for="inputemail">Email</label> <input type="email"
							class="form-control mt-1" id="email" name="email"
							placeholder="Email">
					</div>
				</div>
				<div class="mb-3">
					<label for="inputsubject">Subject</label> <input type="text"
						class="form-control mt-1" id="subject" name="subject"
						placeholder="Subject">
				</div>
				<div class="mb-3">
					<label for="inputmessage">Message</label>
					<textarea class="form-control mt-1" id="message" name="message"
						placeholder="Message" rows="8"></textarea>
				</div>
				<div class="row">
					<div class="col text-end mt-2">
						<button type="submit" class="btn btn-success btn-lg px-3">Let’s
							Talk</button>
					</div>
				</div>
			</form>
			<form class="col-md-9 m-auto" method="post" role="form">
				<div class="mb-3">
					<p class="fw-bold">Gọi điện thoại trực tiếp.</p>
				</div>
				<div class="mb-3">
					<p class="fst-italic fw-lighter">Gọi trực tiếp cho đội ngũ Chăm Sóc Khách Hàng
						(CSKH) theo hotline: <a href="tel:0363464646" class="text-decoration-none text-danger"> <b>0363 464646</b></a> – Cuộc gọi sẽ tính phí theo giá
						cước của nhà mạng mà quý khách đang sử dụng, để tiết kiệm hơn quý
						khách có thể để lại cuộc gọi nhỡ và CSKH của chúng tôi sẽ gọi lại
						sau ít phút.</p>
				</div>
			</form>
			<div class="form-group col-md-6 mb-3"></div>
		</div>
	</div>
	<!-- End Contact -->

	<!-- Start Footer -->
	<jsp:include page="flex/_footer.jsp"/>
</body>

</html>