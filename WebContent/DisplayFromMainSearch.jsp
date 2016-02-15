<%@page import="com.ajaxSearch.MainSearchCls"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%!int i;
//int j;%>
<%
	String searchedword=request.getParameter("search");
out.println(searchedword);
  MainSearchCls obj=new MainSearchCls();
Vector vec=new Vector();
vec=obj.retBdetails(searchedword);
%>
<title>Search Results</title>
<script type="text/javascript">

</script>
</head>
<body>
<form name="DisplayGenBlog" id="DisplayGenBlog">


<%
for(i=0;i<vec.size();i+=4)
{
%>
<table  >
<%--This jsp display records using MainSearchCls  --%>
<tr><td>Company Name:</td><td><%=vec.get(i) %></td></tr>
<tr><td>Phone</td><td><%=vec.get(i+1)%></td></tr>
<tr><td>Email:</td><td><%=vec.get(i+2) %></td></tr>
<tr><td>Complete Address:</td><td><%=vec.get(i+3) %></td></tr>

</table><hr><br><br>
<%} %>

</form>
</body>
</html>