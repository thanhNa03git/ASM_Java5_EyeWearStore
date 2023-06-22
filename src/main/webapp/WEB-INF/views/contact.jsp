<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Send mail</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<style type="text/css">
*{
	--formWidth:460px;
	--btnWidth:70px;
	--btnCenter:195px;
}
.formMailer{
	width: var(--formWidth);
	margin: auto;
	margin-top: 1rem;
}
h2{
	color:#0000FF;
}
.btnSend{
	margin-top: 1.5rem;
	margin-left: 195px;
	width: var(--btnWidth);
	font-size:25px;
}
.btnMore{
	margin-top:1rem;
}
</style>
</head>
<body>
	<!-- Start Top Nav -->
	<nav
		class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block"
		id="templatemo_nav_top">
		<div class="container text-light">
			<div class="w-100 d-flex justify-content-between">
				<div>
					<i class="fa fa-envelope mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none"
						href="mailto:lowghiphop@gmail.com">lowghiphop@gmail.com</a> <i
						class="fa fa-phone mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none"
						href="tel:0363464646">0363-46-46-46</a>
				</div>
				<div>
					<a class="text-light" href="https://fb.com/templatemo"
						target="_blank" rel="sponsored"><i
						class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a> <a
						class="text-light" href="https://www.instagram.com/"
						target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
					<a class="text-light" href="https://twitter.com/" target="_blank"><i
						class="fab fa-twitter fa-sm fa-fw me-2"></i></a> <a class="text-light"
						href="https://www.linkedin.com/" target="_blank"><i
						class="fab fa-linkedin fa-sm fa-fw"></i></a>
				</div>
			</div>
		</div>
	</nav>
	<!-- Close Top Nav -->


	<!-- Header -->
	<nav class="navbar navbar-expand-lg navbar-light shadow">
		<div
			class="container d-flex justify-content-between align-items-center">

			<!-- Logo Brand -->
			<a class="navbar-brand text-success logo h1 align-self-center"
				href="index"> EyeWear </a>
			<!-- Responsive Menu -->
			<button class="navbar-toggler border-0" type="button"
				data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- NavBar Head -->
			<div
				class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between"
				id="templatemo_main_nav">

				<div class="flex-fill">
					<ul
						class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
						<li class="nav-item"><a class="nav-link" href="index"><s:message code="lo.mn.home"/></a>
						</li>
						<li class="nav-item"><a class="nav-link" href="about"><s:message code="lo.mn.about"/></a>
						</li>
						<li class="nav-item"><a class="nav-link" href="shop"><s:message code="lo.mn.shop"/></a>
						</li>
						<li class="nav-item"><a class="nav-link" href="contact"><s:message code="lo.mn.contact"/></a>
						</li>
						<li class="nav-item"><a class="nav-link" href="login1"><s:message code="lo.mn.login"/></a>
						</li>
						
					</ul>
				</div>

				<div class="navbar align-self-center d-flex">

					<!-- Input Search -->
					<div
						class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
						<div class="input-group">
							<input type="text" class="form-control" id="inputMobileSearch"
								placeholder="Search ...">
							<div class="input-group-text">
								<i class="fa fa-fw fa-search"></i>
							</div>
						</div>
					</div>

					<!-- Search -->
					
					<a class="nav-icon position-relative text-decoration-none" href="?lang=vi">
						<i class="bi bi-translate text-dark mr-3"></i> <span
						class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">Vi</span>
					</a>
					<!-- Shopping Cart -->
					

					<!-- Notification -->
					<a class="nav-icon position-relative text-decoration-none" href="?lang=en">
						<i class="bi bi-translate text-dark mr-3"></i> <span
						class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">En</span>
					</a>
					
					<a class="nav-icon position-relative text-decoration-none"
						href="cart"> <i
						class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i> <span
						class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
					</a>
				</div>
			</div>

		</div>
	</nav>
	<!-- Close Header -->
	<br>
	<!-- body -->
		<form enctype="multipart/form-data" class="formMailer" action="/send"  method="post">
		<h2>Liên hệ với chúng tôi</h2>
		<div class="form-group">
			<label for="formControlInput">To</label> <input
				type="email" class="form-control" id="formControlInput" name="txtTo"
				placeholder="Nhập email người nhận...">
		</div>
		<!--  <div class="form-group">
			<label for="formControlInput2">CC</label> <input
				type="text" class="form-control" id="formControlInput2" name="txtCC"
				placeholder="Nhập email(cc) ngăn cách nhau bởi dấu ','">
		</div>
		<div class="form-group">
			<label for="formControlInput3">BCC</label> <input
				type="text" class="form-control" id="formControlInput3" name="txtBCC"
				placeholder="Nhập email(bcc) ngăn cách nhau bởi dấu ','">
		</div> -->
		<div class="form-group">
			<label for="formControlInput4">Tiêu đề</label> <input
				type="text" class="form-control" id="formControlInput4" name="txtSubject"
				placeholder="Nhập tiêu đề...">
		</div> 
		
		<div class="form-group">
			<label for="formControlTextarea">Nội dung</label>
			<textarea class="form-control" id="formControlTextarea" name="txtContent"
				rows="4" placeholder="Nhập nội dung..."></textarea>
		</div>
		<div class="form-group">
			<label for="formControlInput4">File đính kèm</label> 
			<input
				type="file" class="form-control" id="formControlInput4" name="file"
			>
		</div>	
		<div id="fileMore" class="form-group" style="display: none;">
			<label for="formControlInput5">File đính kèm</label> 
			<input
				type="file" class="form-control" id="formControlInput5" name="file1"
			>
		</div>			
		<div id="btnMore" class="btn btn-info btnMore">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
		  		<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
		  		<path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
			</svg>
		 Thêm tệp</div>
		
		 <p class="text-danger">${mess}</p>
		 <br/>
		<button class="btn btn-success btnSend">Gửi</button>
		
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
	<script type="text/javascript">
		const btnMore=document.getElementById('btnMore');
		const fileMore = document.getElementById("fileMore");		
		btnMore.addEventListener('click',()=>{
			fileMore.style.display="block";
		});
	</script>
	<!-- close body -->
	<br>
	<!-- footer -->
	<footer class="bg-dark" id="tempaltemo_footer">
		<div class="container">
			<div class="row">

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-success border-bottom pb-3 border-light logo">EyeWear
						Shop</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><i class="fas fa-map-marker-alt fa-fw"></i> Công viên
							Phần mềm Quang Trung, Phường Tân Chánh Hiệp, Quận 12,TP.HCM</li>
						<li><i class="fa fa-phone fa-fw"></i> <a
							class="text-decoration-none" href="tel:0363464646">0363-46-46-46</a>
						</li>
						<li><i class="fa fa-envelope fa-fw"></i> <a
							class="text-decoration-none" href="mailto:lowghiphop@gmail.com">
								lowghiphop@gmail.com</a></li>
					</ul>
				</div>

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-light border-bottom pb-3 border-light">CHÍNH
						SÁCH</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><a class="text-decoration-none" href="#">Chính sách
								bảo hành</a></li>
						<li><a class="text-decoration-none" href="#">Chính sách
								đổi trả</a></li>
						<li><a class="text-decoration-none" href="#">Chính sách
								giao hàng</a></li>
						<li><a class="text-decoration-none" href="#">Chính sách
								bảo mật</a></li>
						<li><a class="text-decoration-none" href="#">Điều khoản
								mua hàng</a></li>
					</ul>
				</div>

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-light border-bottom pb-3 border-light">Thông
						tin</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><a class="text-decoration-none" href="#">Giới thiệu</a></li>
						<li><a class="text-decoration-none" href="#">Liên hệ</a></li>
						<li><a class="text-decoration-none" href="#">Thông tin
								tào khoản</a></li>
						<li><a class="text-decoration-none" href="#">Theo dõi đơn
								hàng</a></li>
						<li><a class="text-decoration-none" href="#">Hướng dẫn
								thanh toán</a></li>
					</ul>
				</div>

			</div>

			<div class="row text-light mb-4">
				<div class="col-12 mb-3">
					<div class="w-100 my-3 border-top border-light"></div>
				</div>
				<div class="col-auto me-auto">
					<ul class="list-inline text-left footer-icons">
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="http://facebook.com/"><i
								class="fab fa-facebook-f fa-lg fa-fw"></i></a>
						</li>
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="https://www.instagram.com/"><i
								class="fab fa-instagram fa-lg fa-fw"></i></a>
						</li>
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="https://twitter.com/"><i
								class="fab fa-twitter fa-lg fa-fw"></i></a>
						</li>
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="https://www.linkedin.com/"><i
								class="fab fa-linkedin fa-lg fa-fw"></i></a>
						</li>
					</ul>
				</div>
				<div class="col-auto">
					<label class="sr-only" for="subscribeEmail">Email address</label>
					<div class="input-group mb-2">
						<input type="text" class="form-control bg-dark border-light"
							id="subscribeEmail" placeholder="Email address">
						<div class="input-group-text btn-success text-light">Subscribe</div>
					</div>
				</div>
			</div>
		</div>

		<div class="w-100 bg-black py-3">
			<div class="container">
				<div class="row pt-2">
					<div class="col-12">
						<p class="text-left text-light">
							Copyright &copy; 2021 Công ty TNHH MotMinhTui | Designed by <a
								rel="sponsored" href="https://templatemo.com" target="_blank">Template
								trên mạng</a>
						</p>
					</div>
				</div>
			</div>
		</div>

	</footer>
</body>
</html>

