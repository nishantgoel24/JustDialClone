<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PaceUP.com</title>
<script src="js/jquery-1.6.min.js"></script>
<script src="js/form-validator/jquery.form-validator.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('a.login-window').click(function() {

			// Getting the variable's value from a link 
			var loginBox = $(this).attr('href');

			//Fade in the Popup and add close button
			$(loginBox).fadeIn(300);

			//Set the center alignment padding + border
			var popMargTop = ($(loginBox).height() + 24) / 2;
			var popMargLeft = ($(loginBox).width() + 24) / 2;

			$(loginBox).css({
				'margin-top' : -popMargTop,
				'margin-left' : -popMargLeft
			});

			// Add the mask to body
			$('body').append('<div id="mask"></div>');
			$('#mask').fadeIn(300);

			return false;
		});

		// When clicking on the button close or the mask layer the popup closed
		$('a.close, #mask').live('click', function() {
			$('#mask , .login-popup').fadeOut(300, function() {
				$('#mask').remove();
			});
			return false;
		});
	});
</script>
<link rel="stylesheet" href="css/loginwindow.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/reset.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css"
	media="screen">



<script type="text/javascript" src="js/tms-0.3.js"></script>
<script type="text/javascript" src="js/tms_presets.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>

<%! String username=""; %>

<% username=session.getAttribute("valid").toString(); %>

</head>
<body id="page1">
	

	<!-- header -->
	<div class="bg">
		<div class="main">

			<div class="row-1">
				<h1>
					<a class="logo" href="home2.jsp">PaceUp.com</a> <strong
						class="slog">Find, buy and sell</strong>
				</h1>

				<div id="login_bar">
					<ul id="login_signup">
						<li><%=username%> is Logged in</li>
						<li><a href="home.jsp" >Sign Out</a></li>
						
						
					</ul>
				</div>

			</div>

			<div class="row-2">
				<nav>
				<ul class="menu">
					<li><a class="active" href="home2.jsp">Home</a></li>
					<li><a href="search.jsp">Search Directory</a></li>
					<li><a href="Classified.jsp">Classifieds</a></li>
					<li><a href="blogs.jsp">Blogs</a></li>
					<li class="last-item"><a href="contacts.jsp">Contact Us</a></li>
				</ul>
				</nav>

			</div>
			<div class="row-3">
				<div class="slider-wrapper">
					<div class="slider">
						<ul class="items">

							<li><img src="images/explore.jpg" alt="Explore"> <strong
								class="banner"> <strong class="b2">Explore
										Your City</strong> <strong class="b3">Search for <br>
										Hotels, Hospitals and ATMs around you
								</strong>
							</strong></li>
							<li><img src="images/ads.jpg" alt="no image"> <strong
								class="banner"> <strong class="b2">Post a free
										AD</strong> <strong class="b3">Buy and sell<br> your
										items at good price
								</strong>
							</strong></li>




						</ul>
						<a class="prev" href="#">prev</a> <a class="next" href="#">prev</a>
					</div>
				</div>
			</div>


			<!-- content -->
			<div id="content">
				

				<div class="wrapper">

					<div class="indent">
						<p>
						<h2>Our Mission</h2>
						</p>
						<p style="color: red; margin-left: 150px; margin-right: 20px;">To
							provide fast, free, reliable and comprehensive information to our
							users and connect buyers to sellers.</p>
						<div class="wrapper">
							<figure class="img-indent3"> <img
								src="images/paceuplogo.png" alt="" /> </figure>
							<div class="extra-wrap">
								<div class="indent2">PaceUP is the next generation of free
									online classifieds. PaceUP provides a simple solution to the
									complications involved in searching, selling, buying and
									meeting people near you, wherever you may reside.</div>
							</div>
						</div>
						<!-- <a class="button-2" href="#">Read More</a> -->

					</div>
				</div>
				<!-- <div class="col-2">
             <div class="block-news">
              <h3 class="color-4 p2">Recent News</h3>
              <div class="wrapper p2">
                <time class="tdate-1 fleft" datetime="2011-05-29"><strong>29</strong>may</time>
                <div class="extra-wrap">
                  <h5>Utatse eudui pretium</h5>
                  sodales proin fermen<br>
                  tum condimentum eros quis tincidunt fraesent eleifend tempor nisi, in adipiscing... <a href="#">more</a> </div>
              </div>
              <div class="wrapper">
                <time class="tdate-1 fleft" datetime="2011-05-24"><strong>24</strong>may</time>
                <div class="extra-wrap">
                  <h5>Felis molestie vitae</h5>
                  Sed massa justo pellen<br>
                  tesque turpis lorem, ornare sit amet vulpate at, consectetur vitae nunc... <a href="#">more</a> </div>
              </div>
            </div>
          </div>
        </div>-->
			</div>

			<!-- footer -->
			<jsp:include page="Footer.jsp"></jsp:include>

		</div>
	</div>
</body>

<script type="text/javascript">
	$(function() {
		$('.slider')._TMS({
			prevBu : '.prev',
			nextBu : '.next',
			playBu : '.play',
			duration : 800,
			easing : 'easeOutQuad',
			preset : 'simpleFade',
			pagination : false,
			slideshow : 3000,
			numStatus : false,
			pauseOnHover : true,
			banners : true,
			waitBannerAnimation : false,
			bannerShow : function(banner) {
				banner.hide().fadeIn(500)
			},
			bannerHide : function(banner) {
				banner.show().fadeOut(500)
			}
		});
	})
</script>
</html>