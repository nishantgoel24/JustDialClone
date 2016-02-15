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
</head>
<body>
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
					<li><a class="active" href="Classified.jsp">Search
							Classified</a></li>
					
					<li><a href="blogs.jsp">Blogs</a></li>
					<li class="last-item"><a href="contacts.jsp">Contact Us</a></li>
				</ul>
				</nav>

			</div>




			<!-- content -->
			<section id="content">
			<div class="padding">

				<div class="wrapper">

					<form id="search-form" action="searchclassified.jsp" method="post"
						enctype="multipart/form-data">
						<fieldset>
							<input type="text" name="search" id="search"
								value="Mobiles,Laptops,Watches,Books,Shoes,Vehicles"
								onFocus="if(this.value =='Mobiles,Laptops,Watches,Books,Shoes,Vehicles' ) this.value=''" />
							<a href="searchclassified.jsp">Search</a>

						</fieldset>
					</form>
					<div class="indent">
						<h2>Search Results</h2>
					</div>

					<div class="box-bg margin-bot">
						<div class="wrapper">
						
						
						
						
						
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




