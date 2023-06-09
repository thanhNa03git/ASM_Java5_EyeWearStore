<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Zay Shop eCommerce HTML CSS Template</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/templatemo.css">
<link rel="stylesheet" href="assets/css/custom.css">
<link rel="stylesheet" href="assets/css/signup.css">

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
	<jsp:include page="flex/_header.jsp" />

	<!-- Login -->
	<div class="form">

		<ul class="tab-group">
			<li class="tab active"><a href="#signup">Sign Up</a></li>
			<li class="tab"><a href="#login">Log In</a></li>
		</ul>

		<div class="tab-content">
			<div id="signup">
				<h1>Sign Up for Free</h1>

				<form action="/register" method="post">

					<div class="top-row">
						<div class="field-wrap">
							<label for="exampleInputEmail1"> Full Name<span
								class="req">*</span>
							</label> <input id="exampleInputEmail1" type="text" required
								autocomplete="off" />
						</div>

						<div class="field-wrap">
							<label for="exampleInputEmail1"> User Name<span
								class="req">*</span>
							</label> <input id="exampleInputEmail1" type="text" required
								autocomplete="off" />
						</div>
					</div>
					<div class="field-wrap">
						<label for="exampleInputPassword1"> Set A Password<span
							class="req">*</span>
						</label> <input id="exampleInputPassword1" type="password" required
							autocomplete="off" />
					</div>
					<div class="field-wrap">
						<label for="exampleInputEmail1"> Email Address<span
							class="req">*</span>
						</label> <input id="exampleInputEmail1" type="email" required
							autocomplete="off" />
					</div>


					<button type="submit" class="button button-block" />
					Get Started
					</button>

				</form>

			</div>

			<div id="login">
				<h1>Welcome Back!</h1>

				<form action="/login" method="post">
					<b><i class="text-danger">${message}${param.error}</i></b>
					<div class="field-wrap">
						<label> UserName<span class="req">*</span>
						</label> <input type="text" required autocomplete="off" name="username"
							value="" required autofocus />
					</div>

					<div class="field-wrap">
						<label> Password<span class="req">*</span>
						</label> <input type="password" required autocomplete="off"
							name="password" required data-eye />
					</div>
					<!-- Remember me -->
					<div class="field-wrap form-check">




						<!-- Quen mk -->
						<p class="forgot">
							<input type="checkbox" name="remember" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label ms-3"
								for="exampleCheck1">Remember me?</label> <a href="#">Forgot
								Password?</a>
						</p>
					</div>
					<p style="color: red">${errLogin}</p>

					<button class="button button-block" />
					Log In
					</button>

				</form>

			</div>

		</div>
		<!-- tab-content -->

	</div>
	<!-- /form -->
	<!-- end login -->


	<jsp:include page="flex/_footer.jsp" />

</body>

</html>