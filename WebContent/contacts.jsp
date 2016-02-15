<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PaceUP.com | Contact Us</title>
<link rel="stylesheet" href="css/reset.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css"
	media="screen">
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>


</head>
<body id="page5">
	<!-- header -->
	<div class="bg">
		<div class="main">
			<header>
			<div class="row-1">
				<h1>
					<a class="logo" href="home.jsp">PaceUp.com</a> <strong class="slog" style="margin-left:67px;">Find, Buy
						And Sell</strong>
				</h1>

			</div>
			<div class="row-2">
				<nav>
				<ul class="menu">
					<li><a href="home.jsp">Home</a></li>
					<li><a href="search.jsp">Search Directory</a></li>
					<li><a href="Classified.jsp">Classifieds</a></li>
					<li><a href="blogs.jsp">Blogs</a></li>
					<li class="last-item"><a class="active" href="contacts.jsp">Contact
							Us</a></li>
				</ul>
				</nav>
			</div>
			</header>
			<!-- content -->
			<section id="content">
			<div class="padding">
				<div class="wrapper margin-bot">
					<div class="col-3">
						<div class="indent">
							<h2 class="p0">Contact Form</h2>
							<form id="contact-form" action="#" method="post"
								enctype="multipart/form-data">
								<fieldset>
									<label><span class="text-form">Name:</span> <input
										name="p1" type="text" /> </label> <label><span
										class="text-form">Email:</span> <input name="p2" type="text" />
									</label>
									<div class="wrapper">
										<div class="text-form">Message:</div>
										<textarea></textarea>
									</div>
									<div class="buttons">
										<a class="button-2" href="#">Clear</a> <a class="button-2"
											href="#">Send</a>
									</div>
								</fieldset>
							</form>
						</div>
					</div>
					<div class="col-4">
						<div class="block-news">
							<h3 class="color-4 indent-bot2">Contacts</h3>
							<dl class="contact p3">
								<dt>
									<span>Our Address:</span>CSC India, Noida
								</dt>
								<dd>
									<span>Telephone:</span>9999-xx-xxxx
								</dd>
								<dd>
									<span>E-mail:</span>teampaceup@gmail.com
								</dd>
							</dl>

						</div>
					</div>
				</div>
				<div class="box-bg">
					<div class="wrapper">
						<div class="col-1">
							<div class="box first">
								<div class="pad">
									<div class="wrapper indent-bot">
										<strong class="numb img-indent2">01</strong>
										<div class="extra-wrap">
											<h3 class="color-1">
												<strong>Hospitals</strong>
											</h3>
										</div>
									</div>

								</div>
							</div>
						</div>
						<div class="col-1">
							<div class="box second">
								<div class="pad">
									<div class="wrapper indent-bot">
										<strong class="numb img-indent2">02</strong>
										<div class="extra-wrap">
											<h3 class="color-2">
												<strong>Restaurants</strong>
											</h3>
										</div>
									</div>

								</div>
							</div>
						</div>
						<div class="col-2">
							<div class="box third">
								<div class="pad">
									<div class="wrapper indent-bot">
										<strong class="numb img-indent2">03</strong>
										<div class="extra-wrap">
											<h3 class="color-3">
												<strong>ATMs</strong>
											</h3>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</section>


			<jsp:include page="Footer.jsp"></jsp:include>
		
		</div>
	</div>

	<script type="text/javascript">
		Cufon.now();
	</script>
	<div align=center>
		This template downloaded form <a
			href='http://all-free-download.com/free-website-templates/'>free
			website templates</a>
	</div>

</body>
</html>