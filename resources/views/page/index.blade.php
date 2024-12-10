<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>
	<!-- Document Meta
    ============================================= -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--IE Compatibility Meta-->
	<meta name="author" content="3D Live Wallpaper"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="description" content="3D Live Wallpaper">
	<link href="{{ asset('assets2/images/favicon/favicon.ico') }}" rel="icon">

	<!-- Fonts
    ============================================= -->
	<link href='http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i%7COpen+Sans:300,300i,400,400i,600,600i,700,700i,800,800' rel='stylesheet' type='text/css'>

	<!-- Stylesheets
    ============================================= -->
	<link href="{{ asset('assets2/css/external.css') }}" rel="stylesheet">
	<link href="{{ asset('assets2/css/bootstrap.min.css') }}" rel="stylesheet">
	<link href="{{ asset('assets2/css/style.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('assets2/css/themes/theme-default.css') }}"/>


	<title>Appy | Multi-purpose App Html5 Landing</title>
</head>

<body class="body-scroll page-dark">
	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="wrapper clearfix">
		<!-- Switcher Box -->
<section class="switcher-box">
	<div class="color-options">
		<h4>Style Switcher</h4>
		<ul class="list-unstyled list-inline">
			<li data-value="{{ asset('assets2/css/themes/theme-blue.css') }}"></li>
			<li data-value="{{ asset('assets2/css/themes/theme-deep-orange.css') }}"></li>
			<li data-value="{{ asset('assets2/css/themes/theme-deep-purple.css') }}"></li>
			<li data-value="{{ asset('assets2/css/themes/theme-default.css') }}"></li>
			<li data-value="{{ asset('assets2/css/themes/theme-gray.css') }}"></li>
			<li data-value="{{ asset('assets2/css/themes/theme-green.css') }}"></li>
			<li data-value="{{ asset('assets2/css/themes/theme-light-blue.css') }}"></li>
			<li data-value="{{ asset('assets2/css/themes/theme-light-green.css') }}"></li>
			<li data-value="{{ asset('assets2/css/themes/theme-orange.css') }}"></li>
			<li data-value="{{ asset('assets2/css/themes/theme-pink.css') }}"></li>
			<li data-value="{{ asset('assets2/css/themes/theme-purple.css') }}"></li>
			<li data-value="{{ asset('assets2/css/themes/theme-red.css') }}"></li>
            <li data-value="{{ asset('assets2/css/themes/theme-yellow.html') }}"></li>
		</ul>
	</div>
	<div class="gear-check">
		<i class="fa fa-cog"></i>
	</div>
</section>
<!-- End Switcher Box -->

		<!-- Header
        ============================================= -->
		<header id="navbar-spy" class="header header-1 header-transparent header-bordered header-fixed">
			<nav id="primary-menu" class="navbar navbar-fixed-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="logo" href="index.html">
							<img class="logo-dark" src="{{ asset('assets2/images/logo/logo-dark.png') }}" alt="appy Logo">
							<img class="logo-light" src="{{ asset('assets2/images/logo/logo-light.png') }}" alt="appy Logo">
						</a>
					</div>
					<div class="collapse navbar-collapse pull-right" id="navbar-collapse-1">
						<ul class="nav navbar-nav nav-pos-right navbar-left nav-split">
							<li class="active"><a data-scroll="scrollTo" href="#slider">home</a>
							</li>
							<li><a data-scroll="scrollTo" href="#feature2">feature</a>
							</li>
							<li><a data-scroll="scrollTo" href="#video">video</a>
							</li>
							<li><a data-scroll="scrollTo" href="#screenshots">screenshots</a>
							</li>
							<li><a data-scroll="scrollTo" href="#reviews">reviews</a>
							</li>
							<li><a data-scroll="scrollTo" href="#pricing">pricing</a>
							</li>
							<li><a data-scroll="scrollTo" href="#cta">download</a>
							</li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
			</nav>
		</header>

		<!-- Slider #1
		============================================= -->
		<section id="slider" class="section slider">
			<div class="slide--item bg-overlay bg-overlay-dark">
				<div class="bg-section">
					<img src="{{ asset('assets2/images/background/bg-1.jpg') }}" alt="background">
				</div>
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<div class="slide--logo mt-100 hidden-xs wow fadeInUp" data-wow-duration="1s">
								<img src="{{ asset('assets2/images/logo/logo-light.png') }}" alt="logo hero">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-6 pt-100 wow fadeInUp" data-wow-duration="1s">
							<div class="slide--headline">
								<h1>This will be the main headline you can edit</h1>
							</div>
							<div class="slide--bio">This should be used to tell a story and let your users know a little more about your app and it’s use, How can your app benefit them?</div>
							<div class="slide--action">
								<form class="mb-0 form-action">
									<div class="input-group">
										<input type="email" class="form-control" placeholder="E-mail address">
										<span class="input-group-btn">
											<input type="submit" class="btn btn--primary" value="download" name="submit">
										</span>
									</div>
									<!-- .input-group end -->
								</form>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-4 col-md-offset-2 wow fadeInUp" data-wow-duration="1s">
							<img class="img-responsive pull-right" src="{{ asset('assets2/images/mockup/iphone-7-black.png') }}" alt="screens">
						</div>
					</div>
					<!-- .row end -->
				</div>
				<!-- .container end -->
			</div>
			<!-- .slide-item end -->
		</section>
		<!-- #slider end -->

		<!-- Feature #2
		============================================= -->
		<section id="feature2" class="section feature feature-2 text-center bg-white">
			<div class="container">
				<div class="row clearfix">
					<div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3">
						<div class="heading heading-1 mb-80 text--center wow fadeInUp" data-wow-duration="1s">
							<h2 class="heading--title">Headline of benefits</h2>
							<p class="heading--desc">we shows only the best websites, portfolios ans landing pages built completely with passion, simplicity & creativity !</p>
						</div>
					</div>
					<!-- .col-md-6 end -->
				</div>
				<!-- .row end -->
				<div class="row mb-60">
					<!-- Panel #1 -->
					<div class="col-xs-12 col-sm-4 col-md-4">
						<div class="feature-panel wow fadeInUp" data-wow-duration="1s">
							<div class="feature--icon">
								<i class="lnr lnr-users"></i>
							</div>
							<div class="feature--content">
								<h3>Stay Connected</h3>
								<p>Appy impresses you with fully responsiveness and highly customization. We did it in combination of very clean and flexible design.</p>
							</div>
						</div>
						<!-- .feature-panel end -->
					</div>
					<!-- .col-md-4 end -->

					<!-- Panel #2 -->
					<div class="col-xs-12 col-sm-4 col-md-4">
						<div class="feature-panel wow fadeInUp" data-wow-duration="1s">
							<div class="feature--icon">
								<i class="lnr lnr-cog"></i>
							</div>
							<div class="feature--content">
								<h3>Easy Unlock</h3>
								<p>Appy impresses you with fully responsiveness and highly customization. We did it in combination of very clean and flexible design.</p>
							</div>
						</div>
						<!-- .feature-panel end -->
					</div>
					<!-- .col-md-4 end -->

					<!-- Panel #3 -->
					<div class="col-xs-12 col-sm-4 col-md-4">
						<div class="feature-panel wow fadeInUp" data-wow-duration="1s">
							<div class="feature--icon">
								<i class="lnr lnr-lock"></i>
							</div>
							<div class="feature--content">
								<h3>Secure Data</h3>
								<p>Appy impresses you with fully responsiveness and highly customization. We did it in combination of very clean and flexible design.</p>
							</div>
						</div>
						<!-- .feature-panel end -->
					</div>
					<!-- .col-md-4 end -->
				</div>
				<!-- .row end -->
				<div class="row">
					<!-- Panel #4 -->
					<div class="col-xs-12 col-sm-4 col-md-4">
						<div class="feature-panel wow fadeInUp" data-wow-duration="1s">
							<div class="feature--icon">
								<i class="lnr lnr-clock"></i>
							</div>
							<div class="feature--content">
								<h3>Save Your Time</h3>
								<p>Appy impresses you with fully responsiveness and highly customization. We did it in combination of very clean and flexible design.</p>
							</div>
						</div>
						<!-- .feature-panel end -->
					</div>
					<!-- .col-md-4 end -->

					<!-- Panel #5 -->
					<div class="col-xs-12 col-sm-4 col-md-4">
						<div class="feature-panel wow fadeInUp" data-wow-duration="1s">
							<div class="feature--icon">
								<i class="lnr lnr-star"></i>
							</div>
							<div class="feature--content">
								<h3>High Rating</h3>
								<p>Appy impresses you with fully responsiveness and highly customization. We did it in combination of very clean and flexible design.</p>
							</div>
						</div>
						<!-- .feature-panel end -->
					</div>
					<!-- .col-md-4 end -->

					<!-- Panel #6 -->
					<div class="col-xs-12 col-sm-4 col-md-4">
						<div class="feature-panel wow fadeInUp" data-wow-duration="1s">
							<div class="feature--icon">
								<i class="lnr lnr-bug"></i>
							</div>
							<div class="feature--content">
								<h3>Free Updates</h3>
								<p>Appy impresses you with fully responsiveness and highly customization. We did it in combination of very clean and flexible design.</p>
							</div>
						</div>
						<!-- .feature-panel end -->
					</div>
					<!-- .col-md-4 end -->
				</div>
				<!-- .row end -->
			</div>
			<!-- .container end -->
		</section>
		<!-- #feature2 end -->

		<!-- Feature #3
		============================================= -->
		<section id="feature3" class="section feature feature-left feature-left-circle">
			<div class="container">
				<div class="row clearfix">
					<div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3">
						<div class="heading heading-1 mb-60 text--center wow fadeInUp" data-wow-duration="1s">
							<h2 class="heading--title">How does it work ?</h2>
							<p class="heading--desc">we shows only the best websites, portfolios ans landing pages built completely with passion, simplicity & creativity !</p>
						</div>
					</div>
					<!-- .col-md-6 end -->
				</div>
				<!-- .row end -->
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12">
						<div class="center-block text-center mb-100 wow fadeInUp" data-wow-duration="1s">
							<img src="{{ asset('assets2/images/mockup/iphone.png') }}" alt="screenshots">
						</div>
					</div>
				</div>
				<!-- .row end -->
				<div class="row">
					<!-- Panel #1 -->
					<div class="col-xs-12 col-sm-4 col-md-4">
						<div class="feature-panel wow fadeInUp" data-wow-duration="1s">
							<div class="feature--icon">
								1
							</div>
							<div class="feature--content">
								<h3>Download appy</h3>
								<p>After all, as described in Web Design Trends 2015 & 2016, vision.</p>
							</div>
						</div>
						<!-- .feature-panel end -->
					</div>
					<!-- .col-md-4 end -->

					<!-- Panel #2 -->
					<div class="col-xs-12 col-sm-4 col-md-4">
						<div class="feature-panel wow fadeInUp" data-wow-duration="1s">
							<div class="feature--icon">
								2
							</div>
							<div class="feature--content">
								<h3>Install & sign up</h3>
								<p>Rounding up a bunch of specific designs and talking about the merits.</p>
							</div>
						</div>
						<!-- .feature-panel end -->
					</div>
					<!-- .col-md-4 end -->

					<!-- Panel #3 -->
					<div class="col-xs-12 col-sm-4 col-md-4">
						<div class="feature-panel wow fadeInUp" data-wow-duration="1s">
							<div class="feature--icon">
								3
							</div>
							<div class="feature--content">
								<h3>Upload your images</h3>
								<p>At its core, every brand has something special to reveal something.</p>
							</div>
						</div>
						<!-- .feature-panel end -->
					</div>
					<!-- .col-md-4 end -->
				</div>
				<!-- .row end -->
			</div>
			<!-- .container end -->
		</section>
		<!-- #feature3 end -->

		<!-- Video
		============================================= -->
		<section id="video" class="section video bg-overlay bg-overlay-dark bg-parallex">
			<div class="bg-section">
				<img src="{{ asset('assets2/images/background/bg-2.jpg') }}" alt="background">
			</div>
			<div class="container">
				<div class="row clearfix">
					<div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3">
						<div class="heading heading-1 mb-60 text--center wow fadeInUp" data-wow-duration="1s">
							<h2 class="heading--title text-white">Watch a demo</h2>
							<p class="heading--desc text-white">we shows only the best websites, portfolios ans landing pages built completely with passion, simplicity & creativity !</p>
						</div>
					</div>
					<!-- .col-md-6 end -->
				</div>
				<!-- .row end -->
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 text-center wow fadeInUp" data-wow-duration="1s">
						<div class="video-ipad-holder">
							<iframe src="https://player.vimeo.com/video/58363288?color=ffffff&amp;title=0&amp;byline=0&amp;portrait=0"></iframe>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- #video end -->

		<!-- Screenshots
        ============================================= -->
		<section id="screenshots" class="section screenshots">
			<div class="container">
				<div class="row clearfix">
					<div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3">
						<div class="heading heading-1 mb-60 text--center wow fadeInUp" data-wow-duration="1s">
							<h2 class="heading--title">Screenshots</h2>
							<p class="heading--desc">we shows only the best websites, portfolios ans landing pages built completely with passion, simplicity & creativity !</p>
						</div>
					</div>
					<!-- .col-md-6 end -->
				</div>
				<!-- .row end -->
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12">
						<div class="carousel" data-slide="4" data-slide-res="2" data-autoplay="true" data-nav="false" data-dots="false" data-space="30" data-loop="true" data-speed="1000">
							<!-- screenshot #1 -->
							<div class="screenshot">
								<img class="center-block" src="{{ asset('assets2/images/screenshots/1.jpg') }}" alt="client">
							</div>

							<!-- screenshot #2 -->
							<div class="screenshot">
								<img class="center-block" src="{{ asset('assets2/images/screenshots/2.jpg') }}" alt="client">
							</div>

							<!-- screenshot #3 -->
							<div class="screenshot">
								<img class="center-block" src="{{ asset('assets2/images/screenshots/3.jpg') }}" alt="client">
							</div>

							<!-- screenshot #4 -->
							<div class="screenshot">
								<img class="center-block" src="{{ asset('assets2/images/screenshots/4.jpg') }}" alt="client">
							</div>

							<!-- screenshot #5 -->
							<div class="screenshot">
								<img class="center-block" src="{{ asset('assets2/images/screenshots/3.jpg') }}" alt="clclientient">
							</div>

							<!-- screenshot #6 -->
							<div class="screenshot">
								<img class="center-block" src="{{ asset('assets2/images/screenshots/2.jpg') }}" alt="screenshot">
							</div>
						</div>
					</div>
					<!-- .col-md-12 end -->
				</div>
				<!-- .row end -->
			</div>
			<!-- .container End -->
		</section>
		<!-- #screenshots End-->

		<!-- reviews
        ============================================= -->
		<section id="reviews" class="section reviews bg-white">
			<div class="container">
				<div class="row clearfix">
					<div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
						<div class="heading heading-1 mb-60 text--center wow fadeInUp" data-wow-duration="1s">
							<h2 class="heading--title">User reviews</h2>
							<p class="heading--desc">we shows only the best websites, portfolios ans landing pages built completely with passion, simplicity & creativity !</p>
						</div>
					</div>
					<!-- .col-md-6 end -->
				</div>
				<!-- .row end -->
				<div class="row">
					<!--  Testimonial #1  -->
					<div class="col-xs-12 col-sm-4 col-md-4">
						<div class="testimonial-panel wow fadeInUp" data-wow-duration="1s">
							<div class="testimonial-body">
								<div class="testimonial--body">
									<p>We have worked with appify.As we have grown and evolved, appfiy has created all of our profit.What I value most about our relationship is that appfiy knows us and our business.</p>
								</div>
								<div class="testimonial--meta">
									<div class="testimonial--author pull-left">
										<h5>Mark Smith</h5>
									</div>
									<div class="testimonial--rating pull-right">
										<i class=" fa fa-star"></i>
										<i class=" fa fa-star"></i>
										<i class=" fa fa-star"></i>
										<i class=" fa fa-star-half-full"></i>
										<i class=" fa fa-star-o"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--  Testimonial #2  -->
					<div class="col-xs-12 col-sm-4 col-md-4">
						<div class="testimonial-panel wow fadeInUp" data-wow-duration="1s">
							<div class="testimonial-body">
								<div class="testimonial--body">
									<p>We have worked with appify.As we have grown and evolved, appfiy has created all of our profit.What I value most about our relationship is that appfiy knows us and our business.</p>
								</div>
								<div class="testimonial--meta">
									<div class="testimonial--author pull-left">
										<h5>Jessy Arthur</h5>
									</div>
									<div class="testimonial--rating pull-right">
										<i class=" fa fa-star"></i>
										<i class=" fa fa-star"></i>
										<i class=" fa fa-star"></i>
										<i class=" fa fa-star"></i>
										<i class=" fa fa-star"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--  Testimonial #3  -->
					<div class="col-xs-12 col-sm-4 col-md-4">
						<div class="testimonial-panel wow fadeInUp" data-wow-duration="1s">
							<div class="testimonial-body">
								<div class="testimonial--body">
									<p>We have worked with appify.As we have grown and evolved, appfiy has created all of our profit.What I value most about our relationship is that appfiy knows us and our business.</p>
								</div>
								<div class="testimonial--meta">
									<div class="testimonial--author pull-left">
										<h5>Nicole Jonson</h5>
									</div>
									<div class="testimonial--rating pull-right">
										<i class=" fa fa-star"></i>
										<i class=" fa fa-star"></i>
										<i class=" fa fa-star"></i>
										<i class=" fa fa-star"></i>
										<i class=" fa fa-star-half-full"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- .row end -->
			</div>
			<!-- .container End -->
		</section>
		<!-- #reviews End-->

		<!-- Pricing Table #1
		============================================= -->
		<section id="pricing" class="section pricing pricing-1 bg-overlay bg-overlay-dark bg-parallex">
			<div class="bg-section">
				<img src="{{ asset('assets2/images/background/bg-4.jpg') }}" alt="background">
			</div>
			<div class="container">
				<div class="row clearfix">
					<div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
						<div class="heading heading-1 mb-60 text--center wow fadeInUp" data-wow-duration="1s">
							<h2 class="heading--title text-white">Pricing plans</h2>
							<p class="heading--desc text-white">we shows only the best websites, portfolios ans landing pages built completely with passion, simplicity & creativity !</p>
						</div>
					</div>
					<!-- .col-md-6 end -->
				</div>
				<!-- .row end -->
				<div class="row">
					<!-- Pricing Packge #1
					============================================= -->
					<div class=" col-xs-12 col-sm-4 col-md-4 price-table wow fadeInUp" data-wow-duration="1s">
						<div class="pricing-panel">
							<!--  Pricing heading  -->
							<div class="pricing--heading text--center">
								<h4>Single</h4>
								<div class="pricing--heading">
									<p>free</p>
									<div class="pricing--desc">
										All plans are include , People Search, and A/B Testing Report.
									</div>
								</div>
							</div>
							<!--  Pricing body  -->
							<div class="pricing--body">
								<a class="btn btn--white btn--bordered" href="#">Get Started</a>
							</div>
							<!--  Pricing Body  -->
						</div>
					</div>
					<!-- .pricing-table End -->

					<!-- Pricing Packge #2
					============================================= -->
					<div class=" col-xs-12 col-sm-4 col-md-4 price-table wow fadeInUp" data-wow-duration="1s">
						<div class="pricing-panel pricing-active">
							<!--  Pricing heading  -->
							<div class="pricing--heading text--center">
								<h4>Premium</h4>
								<div class="pricing--heading">
									<p><span class="currency">$</span>19</p>
									<div class="pricing--desc">
										All plans are include , People Search, and A/B Testing Report.
									</div>
								</div>
							</div>
							<!--  Pricing body  -->
							<div class="pricing--body">
								<a class="btn btn--primary" href="#">Get Started Now</a>
							</div>
							<!--  Pricing Body  -->
						</div>
					</div>
					<!-- .pricing-table End -->

					<!-- Pricing Packge #3
					============================================= -->
					<div class=" col-xs-12 col-sm-4 col-md-4 price-table wow fadeInUp" data-wow-duration="1s">
						<div class="pricing-panel">
							<!--  Pricing heading  -->
							<div class="pricing--heading text--center">
								<h4>Agency</h4>
								<div class="pricing--heading">
									<p><span class="currency">$</span>29</p>
									<div class="pricing--desc">
										All plans are include , People Search, and A/B Testing Report.
									</div>
								</div>
							</div>
							<!--  Pricing body  -->
							<div class="pricing--body">
								<a class="btn btn--white btn--bordered" href="#">Get Started</a>
							</div>
							<!--  Pricing Body  -->
						</div>
					</div>
					<!-- .pricing-table End -->
				</div>
				<!-- .row end -->
			</div>
			<!-- .container end -->
		</section>
		<!-- #pricing1 end -->

		<!-- CTA #1
		============================================= -->
		<section id="cta" class="section cta text-center pb-0">
			<div class="container">
				<div class="row clearfix">
					<div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3">
						<div class="heading heading-1 mb-50 text--center wow fadeInUp" data-wow-duration="1s">
							<h2 class="heading--title">Download & install appy now</h2>
						</div>
					</div>
					<!-- .col-md-6 end -->
				</div>
				<!-- .row end -->
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 mb-100 wow fadeInUp" data-wow-duration="1s">
						<a class="btn-hover" href="#"><img src="{{ asset('assets2/images/appstore.png') }}" alt="download appstore"></a>
						<a class="btn-hover" href="#"><img src="{{ asset('assets2/images/playstore.png') }}" alt="download playstore"></a>
					</div>
					<!-- .col-md-12 end -->
					<div class="col-xs-12 col-sm-12 col-md-12 wow fadeInUp" data-wow-duration="1s">
						<img src="assets/images/mockup/2-layers.png" alt="mockup"/>
						<!-- .col-md-12 end -->
					</div>
				</div>
				<!-- .row end -->
			</div>
			<!-- .container end -->
		</section>
		<!-- #cta1 end -->

		<!-- Newsletter #1
		============================================= -->
		<section id="newsletter" class="section newsletter text-center bg-overlay bg-overlay-dark">
			<div class="bg-section">
				<img src="{{ asset('assets2/images/background/bg-3.jpg') }}" alt="Background"/>
			</div>
			<div class="container">
				<div class="row clearfix">
					<div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
						<div class="heading heading-1 mb-60 text--center wow fadeInUp" data-wow-duration="1s">
							<h2 class="heading--title text-white">Subscribe to get updates</h2>
							<p class="heading--desc text-white">we shows only the best websites, portfolios ans landing pages built completely with passion, simplicity & creativity !</p>
						</div>
					</div>
					<!-- .col-md-6 end -->
				</div>
				<!-- .row end -->
				<div class="row">
					<div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
						<form class="mb-0 form-action wow fadeInUp" data-wow-duration="1s">
							<div class="input-group">
								<input type="email" class="form-control" placeholder="E-mail address">
								<span class="input-group-btn">
									<input type="submit" class="btn btn--primary" value="Subscribe" name="submit">
								</span>
							</div>
							<!-- .input-group end -->
						</form>
					</div>
					<!-- .col-md-12 end -->
				</div>
				<!-- .row end -->
			</div>
			<!-- .container end -->
		</section>
		<!-- #newsletter end -->

		<!-- Footer #5
		============================================= -->
		<footer id="footer" class="footer footer-5">
			<!-- Copyrights
			============================================= -->
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 text--center">
						<div class="footer--copyright">
							<span>&copy; 2017 Appy, crafted With <i class="fa fa-heart"></i> by</span> <a href="http://themeforest.net/user/zytheme/portfolio?ref=zytheme">zytheme.com</a>
						</div>
					</div>
				</div>
			</div>
			<!-- .container end -->
		</footer>
	</div>
	<!-- #wrapper end -->

	<!-- Footer Scripts
	============================================= -->
	<script src="{{ asset('assets2/js/jquery-2.2.4.min.js') }}"></script>
	<script src="{{ asset('assets2/js/plugins.js') }}"></script>
	<script src="{{ asset('assets2/js/functions.js') }}"></script>
</body>

<!-- Mirrored from landing.zytheme.com/appy/landing-dark.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 10 Dec 2024 06:32:48 GMT -->
</html>
