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



</head>
<body id="page1">

	<!-- Login -->
	<div id="login-box" class="login-popup">
		<a href="#" class="close"><img src="images/close_pop.png"
			class="btn_close" title="Close Window" alt="Close" /></a>
		<form action="./Login" method="post" class="signin">
			<fieldset class="textbox">
				<label class="username"> <span>Email</span> <input
					id="username" name="username" value="" type="text"
					autocomplete="on" placeholder="Username">
				</label> <label class="password"> <span>Password</span> <input
					id="password" name="password" value="" type="password"
					placeholder="Password">
				</label> <input type="submit" name="submit" value="submit">

				<!-- <p>
					<a class="forgot" href="#">Forgot your password?</a>
				</p> -->

			</fieldset>
		</form>
	</div>

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

						<li><a href="#login-box" class="login-window">Login</a></li>


					</ul>
				</div>

			</div>

			<div class="row-2">
				<nav>
				<ul class="menu">
					<li><a class="active" href="home.jsp">Home</a></li>
					<li><a href="search.jsp">Search</a></li>
					<li><a href="Classified.jsp">Classifieds</a></li>
					<li><a href="blogs.jsp">Blogs</a></li>
					<li class="last-item"><a href="contacts.jsp">Contact Us</a></li>
				</ul>
				</nav>

			</div>

			<section id="content">
			<div class="padding">

				<div class="wrapper">

					<div style="color: black;">
						<p>UNSUCCESSFUL LOGIN !!!!!!</p>
					</div>

				</div>
			</div>
			</section>



			<!-- footer -->
			<jsp:include page="Footer.jsp"></jsp:include>

		</div>
	</div>
</body>


</html>