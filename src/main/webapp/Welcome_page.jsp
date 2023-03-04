<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,
			initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<title>SRG Shop</title>
<link href="css/Admin_view.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merienda+One">
<link href="css/Welcome.css" rel="stylesheet" type="text/css" />
<link href="css/login.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>




</head>


<body>

	<!-- navbar -->
	<nav>
	
		<ul class="nav-flex-row">
			<li class="nav-item"><a style="color:white"; href="#m3"><b>About</b></a></li>
			<li class="nav-item"><a style="color:white";href="#menu"><b>Menu</b></a></li>
			<li class="nav-item"><a style="color:white"; href="#Contact"><b>Shop</b></a></li>
			<li class="nav-item"><a style="color:white"; href="#myModal" data-toggle="modal"><b>LOGIN</b></a>
			</li>
		</ul>
	</nav>
	<section class="section-intro" style="background-image: url('img/notebook.jpg');">
		<header>
		
			<h1 style="margin-top:350px">Welcome To SRG Shop</h1>
		</header>
		<div class="link-to-book-wrapper">
			
		</div>
	</section>

	<section class="about-section" id="m3">
		<article>
			<h3>We Are Project's,</h3>


			<p>One of South India’s most prominent and preferred stationery
				stores. For 70+ years, we have been trusted partners to a gamut of
				government institutions and private corporations which includes some
				reputed names such as VSSC, LIC, PDCs, State Bank of India & more.

				Starting from your child’s favourite colour pencils to stunning
				leather case calendars, you can find it all right here. School
				Stationery, Office Supplies, Art and Craft and so on....</p>

		</article>
	</section>

	<!-- carousel section -->
	<div id="carouselExampleControls" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner ">
			<div class="carousel-item active  d3">
				<img
					src="https://www.stationerybazaar.com/images/pzen_slideshow/colorful-stationery-multicolored-background_1623598949.jpg"
					class="d-block w-100" alt="">
			</div>
			<div class="carousel-item d3">
				<img
					src="https://www.stationerybazaar.com/images/pzen_slideshow/back-school-concept_1623598730.jpg"
					class="d-block w-100" alt="">
			</div>
			<div class="carousel-item d3">
				<img
					src="https://www.stationerybazaar.com/images/pzen_slideshow/Radius_banner_1664005428.jpg"
					class="d-block w-100" alt="">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleControls"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"> </span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleControls"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"> </span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<div class="container">
		<div class="row-flex">
			<div class="flex-column-form">
				<h3>For Home Delivery Enquiries</h3>
				<form class="media-centered">
					<div class="form-group">

						<p>Please leave your number we will call to solve your
							Enquiries</p>


						<input type="name" class="form-control" id="exampleInputName1"
							aria-describedby="nameHelp" placeholder="Enter your name">
					</div>
					<div class="form-group">
						<input type="number" class="form-control"
							id="exampleInputphoneNumber1"
							placeholder="Enter your phone number">
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
			<div class="opening-time">
				<h3>Opening times</h3>

				<p>
					<span>Monday—Thursday: 08:00 — 22:00</span> <span>Friday—Saturday:
						09:00 — 23:00 </span> <span>Sunday: 10:00 — 17:00</span>
				</p>

			</div>
			<div class="contact-address" id="Contact">
				<h3>Contact</h3>

				<p>
					<span>410-602-8008</span> <span>15 kowdiar Square</span> <span>Trivandrum,
						Kerala</span>
				</p>

			</div>
		</div>
	</div>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous">
		
	</script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous">
		
	</script>

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous">
		
	</script>
	<div id="myModal" class="modal fade">
		<div class="modal-dialog modal-login">
			<div class="modal-content">
				<div class="modal-header">
					<div class="avatar">
						<img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png"
							alt="Avatar">
					</div>
					<h4 class="modal-title">Login</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<form action="Controller" method="post">
						<div class="form-group">
							<input type="text" class="form-control" name="username"
								placeholder="Username" required="required">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" name="password"
								placeholder="Password" required="required">
						</div>
						<div class="form-group">
							<input type="hidden" name="action" value="login">
							<button type="submit"
								class="btn btn-primary btn-lg btn-block login-btn">Login</button>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<a href="#">Forgot Password?</a>
				</div>
			</div>
		</div>
	</div>

</body>

</html>