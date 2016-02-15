<%@page import="com.beans.BlogAdsRegisterBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.blog.generalblog.display.ProfileDisplay"%>
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
<%
	ProfileDisplay obj = new ProfileDisplay();
	BlogAdsRegisterBean regobj = new BlogAdsRegisterBean();
	ArrayList<BlogAdsRegisterBean> list = new ArrayList();
	String qstring = request.getQueryString();
	String arr[] = qstring.split("name=");
	list = obj.getUserProf(Integer.parseInt(arr[1]));
	regobj = list.get(0);
%>
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



			<section id="content">
			<div class="padding">

				<div class="wrapper">
					
					
						<div class="color">
							<div class="indent">
							<h2>

								<table>
									<tr>
										<td>Full Name: </td>
										<td><%=regobj.getFirstname()%> <%=regobj.getLastname()%></td>
									</tr>
									<tr>
										<td>Email: </td>
										<td><%=regobj.getEmailid()%></td>
									</tr>
									<tr>
										<td>Mobile: </td>
										<td><%=regobj.getMobile()%></td>
									</tr>
									<tr>
										<td>Address: </td>
										<td><%=regobj.getAddress()%> <%=regobj.getLocationactual()%></td>
									</tr>
								</table>
							</h2>
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


