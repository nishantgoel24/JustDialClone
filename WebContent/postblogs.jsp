<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PaceUP.com | Blogs</title>
<link rel="stylesheet" href="css/reset.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css"
	media="screen">

</head>
<body id="page1">
	<!-- header -->
	<div class="bg">
		<div class="main">

			<div class="row-1">
				<h1>
					<a class="logo" href="home.jsp">PaceUp.com</a> <strong
						class="slog" style="margin-left:67px;">Find, buy and sell</strong>
				</h1>
			</div>

			<div class="row-2">
				<nav>
				<ul class="menu">
					<li><a href="home.jsp">Home</a></li>
					<li><a href="search.jsp">Search Directory</a></li>
					<li><a href="Classified.jsp">Search Classified</a></li>
					<li><a href="blogs.jsp">Search Blog</a></li>
					<li class="last-item"><a class="active" href="postblogs.jsp">Post Blog</a></li>

				</ul>
				</nav>
			</div>

			<section id="content">
			<div class="padding">

				<div class="wrapper"></div>
			</div>
			</section>


			<!-- footer -->
			<jsp:include page="Footer.jsp"></jsp:include>


		</div>
	</div>
</body>
</html>