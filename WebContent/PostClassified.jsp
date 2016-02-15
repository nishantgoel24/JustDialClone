<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PaceUp.com | Post Classified</title>
<link rel="stylesheet" href="css/reset.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css"
	media="screen">
<script src="js/jquery-1.6.min.js"></script>
<script src="js/form-validator/jquery.form-validator.min.js"></script>
<style type="text/css">
body,input,textarea {
	font: 14px/24px Helvetica, Arial, sans-serif;
	color: #666;
}

input {
	width: 60%
}

form {
	margin: 30px 0 0 0
}

input,textarea,select {
	background: none repeat scroll 0 0 #FFFFFF;
	border: 1px solid #C9C9C9;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.15) inset, -5px -5px 0 0 #F5F5F6,
		5px 5px 0 0 #F5F5F6, 5px 0 0 0 #F5F5F6, 0 5px 0 0 #F5F5F6, 5px -5px 0
		0 #F5F5F6, -5px 5px 0 0 #F5F5F6;
	color: #545658;
	padding: 8px;
	font-size: 14px;
	border-radius: 2px 2px 2px 2px;
}

#submit {
	background: url("images/submit_bg.gif") repeat-x scroll 0 0 transparent;
	border: 1px solid #B7D6DF;
	border-radius: 2px 2px 2px 2px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
	color: #437182;
	cursor: pointer;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 14px;
	font-weight: bold;
	height: auto;
	padding: 6px 10px;
	text-shadow: 0 1px 0 #FFFFFF;
	width: auto;
}

#submit:hover {
	background: url("images/submit_hover_bg.gif") repeat-x scroll 0 0
		transparent;
	border: 1px solid #9FBAC0;
	cursor: pointer;
}

#reset {
	background: url("images/submit_bg.gif") repeat-x scroll 0 0 transparent;
	border: 1px solid #B7D6DF;
	border-radius: 2px 2px 2px 2px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
	color: #437182;
	cursor: pointer;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 14px;
	font-weight: bold;
	height: auto;
	padding: 6px 10px;
	text-shadow: 0 1px 0 #FFFFFF;
	width: auto;
}

#reset:hover {
	background: url("images/submit_hover_bg.gif") repeat-x scroll 0 0
		transparent;
	border: 1px solid #9FBAC0;
	cursor: pointer;
}

a {
	color: #88BBC8;
	text-decoration: none;
}

a:hover {
	color: #f26525
}

#signup-form {
	width: 510px;
	margin: 0 auto;
	margin-top: 50px;
	margin-bottom: 50px;
	background: #fff;
	padding: 40px;
	border: 10px solid #f2f2f2;
}

#signup-icon {
	float: right;
	width: 48px;
	height: 48px;
}

h1,h2,h3,h4,h5,h6 {
	margin: 0;
	padding: 0;
	color: #444;
}

h1 {
	float: left;
	margin: 0 0 30px;
	font-size: 27px;
	line-height: 34px;
}

h2.secondary {
	float: left;
	width: 260px;
	font-size: 16px;
	font-weight: normal;
	color: #999;
	margin-bottom: 30px;
	line-height: 26px;
}

h3 {
	margin: 30px 0 0 0
}

.clearfix:after {
	content: ".";
	display: block;
	height: 0;
	clear: both;
	visibility: hidden;
}

.clearfix {
	display: inline-block
} /* Hide from IE Mac \*/
.clearfix {
	display: block;
} /* End hide from IE Mac */
.none {
	display: none;
} /* End Clearfix _NO__DOTCOMMA__AFTER__*/
#header {
	margin: 0 0 30px 0;
	border-bottom: 1px solid #efefef;
}

#send p {
	margin-bottom: 20px
}

textarea {
	width: 95%;
	margin: 0 0 0 2px;
}

#required p {
	font-size: 10px;
}

#apply {
	border-top: 1px solid #efefef;
	margin-top: 30px;
	padding: 20px 0 0 0;
}

#apply ul {
	margin-bottom: 50px
}

form label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
	font-size: 12px;
}
</style>






</head>
<body>
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
					<li><a href="Classified.jsp">Search Classified</a></li>
					<li><a class="active" href="PostClassified.jsp">Post
							Classified</a></li>
					<li class="last-item"><a href="blogs.jsp">Blogs</a></li>

				</ul>
				</nav>
			</div>

			<section id="content"> <!--BEGIN #signup-form -->
			<div id="signup-form">

				<!--BEGIN #subscribe-inner -->
				<div id="signup-inner">

					<div class="clearfix" id="header">

						<img id="signup-icon" src="./images/signup.png" alt="" />

						<h1 style="font-size: 200%">Post a Classified AD</h1>
					</div>


					<form action="./ClassifiedInsertServlet" name="classifiedinsert"
						id="classifiedinsert" " method="post">

						<%--!To select the image at server--%>
						<p>

							<label for="SelectImage">Select Image *</label> <input
								type="file" accept="image/*" name="imageselected" size="50"
								data-validation="required" " />
						</p>

						<p>
							<label for="ItemType">Item Type *</label> <select name="itemtype"
								id="itemtype" data-validation="required">
								<option value="1">Mobile</option>
								<option value="2">Shoes</option>
								<option value="3">Laptop</option>
								<option value="4">Vehicle</option>
								<option value="5">Book</option>
								<option value="6">Watch</option>
							</select>
						</p>

						<p>
							<label for="description">Description *</label>
							<textarea name="description" id="description" cols="5" rows="10"
								data-validation="required" data-validation="length"
								data-validation-length="5-100"></textarea>

						</p>


						<p>

							<label for="keywords">Keywords *</label> <input id="keywords"
								type="text" name="keywords" size="50"
								value="Enter the keywords with a space in between"
								onfocus="if(this.value=='Enter the keywords with a space in between'){this.value=''}"
								onblur="if(this.value==''){this.value='Enter the keywords with a space in between'}"
								data-validation="required" />
						</p>

						<p>


							<button id="submit" type="submit" formaction="./ClassifiedInsertServlet">POST</button>
							<button id="reset" type="reset">CLEAR</button>
						</p>


					</form>
			</section>



			<!-- footer -->
			<jsp:include page="Footer.jsp"></jsp:include>
		</div>
	</div>
</body>
<script>
$.validate();
</script>
</html>




