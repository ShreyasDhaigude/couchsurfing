<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>couchsurfing.com</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

  <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="css/superfish.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Date Picker -->
	<link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
	<!-- CS Select -->
	<link rel="stylesheet" href="css/cs-select.css">
	<link rel="stylesheet" href="css/cs-skin-border.css">
	
	<link rel="stylesheet" href="css/style.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		<div id="fh5co-wrapper">
		<div id="fh5co-page">

		<header id="fh5co-header-section" class="sticky-banner">
			<div class="container">
				<div class="nav-header">
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
					<h1 id="fh5co-logo"><a href="index.jsp"><i class="icon-airplane"></i>Travel</a></h1>
					<!-- START #fh5co-menu-wrap -->
					<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
							<li><a href="index.jsp">Home</a></li>
							<li><a href="login.jsp">Login</a></li>
							<li><a href="registration.jsp">Registration</a></li>
							<li><a href="flight.jsp">Flights</a></li>
							<li><a href="hotel.jsp">Hotel</a></li>
							<li class="active"><a href="car.jsp">Car</a></li>
							<li><a href="packages.jsp">Packages</a></li>					
							<li><a href="blog.jsp">Blog</a></li>
					       <li><a href="booking.jsp">Booking</a></li>
							<li><a href="contact.jsp">Contact</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</header>

		<!-- end:header-top -->
	
		<div class="fh5co-hero">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover" data-stellar-background-ratio="0.5" style="background-image: url(images/cover_bg_4.jpg);">
				<div class="desc">
					<div class="container">
						<div class="row">
							<div class="col-sm-5 col-md-5">
								<!-- <a href="index.html" id="main-logo">Travel</a> -->
								<div class="tabulation animate-box">

								  <!-- Nav tabs -->
								   <ul class="nav nav-tabs" role="tablist">
								      <li role="presentation">
								      	<a href="flight.jsp" aria-controls="flights" role="tab"  >Flights</a>
								      </li>
								      <li role="presentation">
								    	   <a href="hotel.jsp" aria-controls="hotels" role="tab" >Hotels</a>
								      </li>
								      <li role="presentation">
								    	   <a href="packages.jsp" aria-controls="packages" role="tab" >Packages</a>
								      </li>
								   <li>
								      <li role="presentation" class="active">
								    	   <a href="car.jsp" aria-controls="packages"  role="tab">Car</a>
								      </li>
								   </ul>
								   

								   <!-- Tab panes -->
								   
								   <div class="tab-content">

									 <div role="tabpanel" class="tab-pane active" id="hotels">
									 	 <form method="post" action="carsave.jsp">
									 
									 	<div class="row">
											<div class="col-xxs-12 col-xs-12 mt">
												<div class="input-field">
													<label for="from">City:</label>
													<input type="text" name="city" class="form-control" id="from-place" placeholder="Los Angeles, USA"/>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="date-start">Day Of booking :</label>
													<input type="text" name="book" class="form-control" id="date-start" placeholder="mm/dd/yyyy"/>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="date-end"> Day of return:</label>
													<input type="text" name="day" class="form-control" id="date-end" placeholder="mm/dd/yyyy"/>
												</div>
											</div>
											
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="from">Enter Your ID:</label>
													<input type="number" name="rid" class="form-control" id="from-place" placeholder="Enter Your ID"/>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<section>
													<label for="class">seater car:</label>
									           <input type="number" name="ccar" id="" class="form-control form-control-lg custom-form-control" placeholder="seater car">
							
												</section>
											</div>
											
								
											<div class="col-sm-12 mt">
												<section>
													<label for="class">Types:</label>
													<select name="types" class="cs-select cs-skin-border">
														<option value="Economy :white">Economy :white </option>
														<option value="Economy:green">Economy:green</option>
														<option value="Economy:silver">Economy:silver</option>						
														<option value="Luxury:dark blue">Luxury:dark blue</option>
													     <option value="Luxury:light blue and black">Luxury:light blue and black</option>
													   <option value="Luxury:dark black">Luxury:dark black</option>
													     
														
													</select>
												</section>
											</div>
											
											
											<div class="col-xxs-12 col-xs-6 mt">
													<label for="class">Adult:</label>
												 <input type="number" name="adult" id="" class="form-control form-control-lg custom-form-control" placeholder="Adult">
													
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<section>
													<label for="class">Children:</label>
											 <input type="number" name="children" id="" class="form-control form-control-lg custom-form-control" placeholder="Children">
													
												</section>
											</div>
											<div class="col-xs-12">
												<input type="submit" class="btn btn-primary btn-block" value="Car Booking">
											</div>
										</div>
										</form>
									 </div>

									</div>
								   

								</div>
							</div>
							<div class="desc2 animate-box">
								<div class="col-sm-7 col-sm-push-1 col-md-7 col-md-push-1">
									<h2>Exclusive Limited Time Offer</h2>
									<h3>Fly to Hong Kong via Los Angeles, USA</h3>
									<span class="price">Rs.2000</span>
									<!-- <p><a class="btn btn-primary btn-lg" href="#">Get Started</a></p> -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		

		<div id="fh5co-car" class="fh5co-section-gray">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>Car Rent In U.S.</h3>
						<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
					</div>
				</div>
				<div class="row row-bottom-padded-md">
					<div class="col-md-6 animate-box">
						<div class="car">
							<div class="one-4">
								<h3>Economy</h3>
								<span class="price">Rs.100<small> / day</small></span>
								<span class="price">Rs.600<small> / week</small></span>
								<span class="price">Rs.2000<small> / mos.</small></span>
								<span class="price">Rs.200<small> Total (Tax incl.)</small></span>
							</div>
							<div class="one-1" style="background-image: url(images/car-1.jpg);">
							</div>
						</div>
					</div>
					<div class="col-md-6 animate-box">
						<div class="car">
							<div class="one-4">
								<h3>Economy</h3>
								<span class="price">Rs.100<small> / day</small></span>
								<span class="price">Rs.600<small> / week</small></span>
								<span class="price">Rs.2000<small> / mos.</small></span>
								<span class="price">Rs.200<small> Total (Tax incl.)</small></span>
							</div>
							<div class="one-1" style="background-image: url(images/car-2.jpg);">
							</div>
						</div>
					</div>
					<div class="col-md-6 animate-box">
						<div class="car">
							<div class="one-4">
								<h3>Luxury</h3>
								<span class="price">Rs.500<small> / day</small></span>
								<span class="price">Rs.3000<small> / week</small></span>
								<span class="price">Rs.8000<small> / mos.</small></span>
								<span class="price">Rs.300<small> Total (Tax incl.)</small></span>
							</div>
							<div class="one-1" style="background-image: url(images/car-3.jpg);">
							</div>
						</div>
					</div>
					<div class="col-md-6 animate-box">
						<div class="car">
							<div class="one-4">
								<h3>Economy</h3>
								<span class="price">RS.100<small> / day</small></span>
								<span class="price">RS.600<small> / week</small></span>
								<span class="price">Rs.2000<small> / mos.</small></span>
								<span class="price">Rs.200<small> Total (Tax incl.)</small></span>
							</div>
							<div class="one-1" style="background-image: url(images/car-4.jpg);">
							</div>
						</div>
					</div>
					<div class="col-md-6 animate-box">
						<div class="car">
							<div class="one-4">
								<h3>Luxury</h3>
								<span class="price">Rs.500<small> / day</small></span>
								<span class="price">RS.3000<small> / week</small></span>
								<span class="price">RS.8000<small> / mos.</small></span>
								<span class="price">RS.300<small> Total (Tax incl.)</small></span>
							</div>
							<div class="one-1" style="background-image: url(images/car-5.jpg);">
							</div>
						</div>
					</div>
					<div class="col-md-6 animate-box">
						<div class="car">
							<div class="one-4">
								<h3>Luxury</h3>
								<span class="price">Rs.500<small> / day</small></span>
								<span class="price">Rs.3000<small> / week</small></span>
								<span class="price">Rs.8000<small> / mos.</small></span>
								<span class="price">Rs.300<small> Total (Tax incl.)</small></span>
							</div>
							<div class="one-1" style="background-image: url(images/car-6.jpg);">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
<div id="fh5co-testimonial" style="background-image:url(images/img_bg_1.jpg);">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>Happy Clients</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="box-testimony animate-box">
						<blockquote>
							<span class="quote"><span><i class="icon-quotes-right"></i></span></span>
							<p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
						</blockquote>
						<p class="author">Shreyas Dhaigude., CEO  <span class="subtext">Creative Director</span></p>
					</div>
					
				</div>
				<div class="col-md-4">
					<div class="box-testimony animate-box">
						<blockquote>
							<span class="quote"><span><i class="icon-quotes-right"></i></span></span>
							<p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.&rdquo;</p>
						</blockquote>
						<p class="author">Shreyas Dhaigude., CEO  <span class="subtext">Creative Director</span></p>
					</div>
					
					
				</div>
				<div class="col-md-4">
					<div class="box-testimony animate-box">
						<blockquote>
							<span class="quote"><span><i class="icon-quotes-right"></i></span></span>
							<p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
						</blockquote>
						<p class="author">Akshay Rane, Founder  <span class="subtext">Creative personality</span></p>
					</div>
					
				</div>
			</div>
		</div>
	</div>
		<footer>
			<div id="footer">
				<div class="container">
					<div class="row row-bottom-padded-md">
						<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
							<h3>About Travel</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
						<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
							<h3>Top Flights Routes</h3>
							<ul>
								<li><a href="#">Manila flights</a></li>
								<li><a href="#">Dubai flights</a></li>
								<li><a href="#">Bangkok flights</a></li>
								<li><a href="#">Tokyo Flight</a></li>
								<li><a href="#">New York Flights</a></li>
							</ul>
						</div>
						<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
							<h3>Top Hotels</h3>
							<ul>
								<li><a href="#">Boracay Hotel</a></li>
								<li><a href="#">Dubai Hotel</a></li>
								<li><a href="#">Singapore Hotel</a></li>
								<li><a href="#">Manila Hotel</a></li>
							</ul>
						</div>
						<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
							<h3>Interest</h3>
							<ul>
								<li><a href="#">Beaches</a></li>
								<li><a href="#">Family Travel</a></li>
								<li><a href="#">Budget Travel</a></li>
								<li><a href="#">Food &amp; Drink</a></li>
								<li><a href="#">Honeymoon and Romance</a></li>
							</ul>
						</div>
						<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
							<h3>Best Places</h3>
							<ul>
								<li><a href="#">Boracay Beach</a></li>
								<li><a href="#">Dubai</a></li>
								<li><a href="#">Singapore</a></li>
								<li><a href="#">Hongkong</a></li>
							</ul>
						</div>
						<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
							<h3>Affordable</h3>
							<ul>
								<li><a href="#">Food &amp; Drink</a></li>
								<li><a href="#">Fare Flights</a></li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-md-offset-3 text-center">
							<p class="fh5co-social-icons">
								<a href="#"><i class="icon-twitter2"></i></a>
								<a href="#"><i class="icon-facebook2"></i></a>
								<a href="#"><i class="icon-instagram"></i></a>
								<a href="#"><i class="icon-dribbble2"></i></a>
								<a href="#"><i class="icon-youtube"></i></a>
							</p>
							<p>Copyright 2022   <a href="#">Module</a>. All Rights Reserved. <br><i class="icon-heart3"></i> by couchsurfing.com  / Demo Images: <a href="https://unsplash.com/" target="_blank">Unsplash</a></p>
						</div>
					</div>
				</div>
			</div>
		</footer>
	

	</div>
	<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

	<!-- jQuery -->


	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/sticky.js"></script>

	<!-- Stellar -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Superfish -->
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="js/bootstrap-datepicker.min.js"></script>
	<!-- CS Select -->
	<script src="js/classie.js"></script>
	<script src="js/selectFx.js"></script>
	
	<!-- Main JS -->
	<script src="js/main.js"></script>

	</body>
</html>

    