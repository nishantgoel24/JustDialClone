<%@page import="com.ajaxSearch.ClassifiedAjaxSearch"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PaceUp.com | Search Classified</title>
<link rel="stylesheet" href="css/reset.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css"
	media="screen">

<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script type="text/javascript" src="js/jquery.autocomplete.js"></script>
<%
	ClassifiedAjaxSearch obj = new ClassifiedAjaxSearch();
%>
<%
	String keys = obj.getKeyWords();
%>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />
<script>
	$(function() {
		var avail = document.getElementById('keywords').value;
		var keyarr = avail.split(' ');

		$("#search").autocomplete({
			source : keyarr
		});
	});
</script>
</head>

<body id="page1">



	<!-- header -->
	<div class="bg">
		<div class="main">

			<div class="row-1">
				<h1>
					<a class="logo" href="home.jsp">PaceUp.com</a> <strong class="slog"
						style="margin-left: 67px;">Find, buy and sell</strong>
				</h1>

			</div>
			<div class="row-2">
				<nav>
				<ul class="menu">
					<li><a href="home.jsp">Home</a></li>
					<li><a href="search.jsp">Search Directory</a></li>
					<li><a class="active" href="Classified.jsp">Classified</a></li>
					<!-- <li><a href="PostClassified.jsp">Post Classified</a></li> -->
					<li><a href="blogs.jsp">Blogs</a></li>
					<li class="last-item"><a href="contacts.jsp">Contact Us</a></li>
				</ul>
				</nav>

			</div>




			<!-- content -->
			<section id="content">
			<div class="padding">

				<div class="wrapper">
					<div class="indent">
						<h2>Search Your Type</h2>
					</div>
					<form id="search-form" action="searchclassified.jsp" method="post"
						enctype="multipart/form-data">
						<fieldset>
							<input type="text" name="search" id="search"
								value="Mobiles,Laptops,Watches,Books,Shoes,Vehicles"
								onFocus="if(this.value =='Mobiles,Laptops,Watches,Books,Shoes,Vehicles' ) this.value=''" />
							<a href="searchclassified.jsp">Search</a>

						</fieldset>
					</form>
					<input type="hidden" name="keywords" disabled="disabled"
						id="keywords" value="<%=keys%>">


					<div class="box-bg margin-bot">
						<div class="wrapper">

							<div class="col-1">
								<div class="box fourth">
									<div class="pad">
										<div class="wrapper indent-bot">
											<strong class="numb img-indent2">01</strong>
											<div class="extra-wrap">
												<h3 class="color-1">
													<strong>Mobiles</strong>
												</h3>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-2">
								<div class="box fifth">
									<div class="pad">
										<div class="wrapper indent-bot">
											<strong class="numb img-indent2">02</strong>
											<div class="extra-wrap">
												<h3 class="color-4">
													<strong>Laptops</strong>
												</h3>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-2">
								<div class="box sixth">
									<div class="pad">
										<div class="wrapper indent-bot">
											<strong class="numb img-indent2">03</strong>
											<div class="extra-wrap">
												<h3 class="color-4">
													<strong>Watches</strong>
												</h3>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-1">
								<div class="box seventh">
									<div class="pad">
										<div class="wrapper indent-bot">
											<strong class="numb img-indent2">04</strong>
											<div class="extra-wrap">
												<h3 class="color-1">
													<strong>Books</strong>
												</h3>
											</div>
										</div>

									</div>
								</div>
							</div>
							<div class="col-2">
								<div class="box eighth">
									<div class="pad">
										<div class="wrapper indent-bot">
											<strong class="numb img-indent2">05</strong>
											<div class="extra-wrap">
												<h3 class="color-4">
													<strong>Shoes</strong>
												</h3>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-2">
								<div class="box ninth">
									<div class="pad">
										<div class="wrapper indent-bot">
											<strong class="numb img-indent2">06</strong>
											<div class="extra-wrap">
												<h3 class="color-4">
													<strong>Vehicles</strong>
												</h3>
											</div>
										</div>
									</div>
								</div>
							</div>


						</div>
					</div>
				</div>
			</div>

			</section>





			<!-- footer -->
			<jsp:include page="Footer.jsp"></jsp:include>
		</div>
	</div>
</body>
<script>
	jQuery(function() {
		$("#search").autocomplete("searchbar.jsp");
	});
</script>

</html>




