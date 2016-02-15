<%@ page import="com.ajaxSearch.*"%>
<%@page import="com.blog.generalblog.display.GenBlogDisplay"%>
<%@page import="java.util.Vector"%>
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

<%
	BlogSearchAjax blogobj = new BlogSearchAjax();
%>
<%
	String keys = blogobj.getKeyWords();
%>


<%!int i;

	//int j;%>
<%
	String searchedword = request.getParameter("search");
	GenBlogDisplay obj = new GenBlogDisplay();
	Vector blogvec = new Vector();
	blogvec = obj.retGBlogData(searchedword);
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
					<li><a href="Classified.jsp">Classified</a></li>
					<!--  <li><a href="PostClassified.jsp">Post Classified</a></li>-->
					<li><a class="active" href="blogs.jsp">Blogs</a></li>
					<!-- <li class="last-item"><a href="postblogs.jsp">Post Blog</a></li> -->
					<li class="last-item"><a href="contacts.jsp">Contact Us</a></li>

				</ul>
				</nav>
			</div>

			<!-- content -->
			<section id="content">
			<div class="padding">

				<div class="wrapper">
					<div class="indent">
						<h2>Search Blogs</h2>
					</div>
					
					<form id="search-form" action="blogs.jsp" method="post">
						<fieldset>
							<input type="text" name="search" id="search" value="Blogs"
								onFocus="if(this.value =='Blogs' ) this.value=''" /> <a
								href="blogs.jsp">Search</a>

						</fieldset>
					</form>
					<input type="hidden" name="keywords" disabled="disabled"
						id="keywords" value="<%=keys%>">
					


					<%
						if (blogvec.size() != 0) {

							for (i = 0; i < blogvec.size(); i += 7) {
					%>
					<div class="box-bg margin-bot">
						<div class="wrapper">
							<div class="color">
								<table>
									<%--This jsp is redirected to GenBlogProfileDisplay.jsp using window.open()  --%>
									<tr>
										<td>Posted By:</td>
										<td><a href="./blogs.jsp" id="<%=blogvec.get(i)%>"
											onclick="window.open('GenBlogProfileDisplay.jsp?name='+this.id);"><%=blogvec.get(i + 5)%>
												<%=blogvec.get(i + 6)%></a></td>
									</tr>
									<tr>
										<td>Image</td>
										<td><img src="<%=blogvec.get(i + 1)%> width="
											20%" height="20%"></td>
									</tr>
									<tr>
										<td>Subject:</td>
										<td><%=blogvec.get(i + 2)%></td>
									</tr>
									<tr>
										<td>Description:</td>
										<td><%=blogvec.get(i + 3)%></td>
									</tr>

								</table>

							</div>
						</div>
					</div>
					<%
						}
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