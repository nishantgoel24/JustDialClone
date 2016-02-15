<%@ page import="com.ajaxSearch.*"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PaceUp.com | Search</title>
<link rel="stylesheet" href="css/reset.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css"
	media="screen">

<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script type="text/javascript" src="js/jquery.autocomplete.js"></script>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />
<%!int j;%>
<%
	MainSearchCls hosobj = new MainSearchCls();
	Vector hosvec = hosobj.retHospitals();
%>
<%
	AjaxMainSearchCls obj1 = new AjaxMainSearchCls();
%>
<%
	String keys = obj1.getKeyWords();
%>


<%!int i;

	//int j;%>
<%
	String searchedword = request.getParameter("search");
	MainSearchCls obj = new MainSearchCls();
	Vector vec = new Vector();
	vec = obj.retBdetails(searchedword);
%>

<script>
	$(function() {
		var avail = document.getElementById('keywords').value;
		var keyarr = avail.split(',');

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
					<li><a class="active" href="search.jsp">Search</a></li>
					<li><a href="Classified.jsp">Classifieds</a></li>
					<li><a href="blogs.jsp">Blogs</a></li>
					<li class="last-item"><a href="contacts.jsp">Contact Us</a></li>
				</ul>
				</nav>

			</div>




			<!-- content -->
			<section id="content">
			<div class="padding">

				<div class="wrapper">

					<form id="search-form" action="searchresult.jsp" method="post">
						<fieldset>
							<input type="text" name="search" id="search"
								value="Hospitals"
								onFocus="if(this.value =='Hospitals' ) this.value=''" />
							<a href="#">Search</a>

						</fieldset>
					</form>
					<input type="hidden" name="keywords" disabled="disabled"
						id="keywords" value="<%=keys%>">
					<div class="indent">
						<h2>Search Results</h2>



						<%
							for (j = 0; j < hosvec.size(); j += 4) {
						%>
						<div class="box-bg margin-bot">
							<div class="wrapper">
								<div class="color">
									<table>
										<%--This jsp display records using MainSearchCls  --%>
										<tr>
											<td>Name:</td>
											<td><%=hosvec.get(j)%></td>
										</tr>
										<tr>
											<td>Phone</td>
											<td><%=hosvec.get(j + 1)%></td>
										</tr>
										<tr>
											<td>Email:</td>
											<td><%=hosvec.get(j + 2)%></td>
										</tr>
										<tr>
											<td>Address:</td>
											<td><%=hosvec.get(j + 3)%></td>
										</tr>

									</table>
								</div>
							</div>
						</div>
						<%
							}
						%>
					</div>
				</div>
			</section>





			<!-- footer -->
			<jsp:include page="Footer.jsp"></jsp:include>
		</div>
	</div>
</body>


</html>
