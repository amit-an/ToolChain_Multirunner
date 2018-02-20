<%@page import="com.journaldev.util.User"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Home Page</title>
</head>
<body bgcolor="#BDD6EE" >
<br><br>
<%@ page import="java.net.InetAddress" %>
 <h3 align=right> Server hosting this page :<font color=Blue> <%=InetAddress.getLocalHost() %></h3>
 <h3 align=right> <font color=Black>Build number of the application : <font color=Blue>_BUILD_NO_ ${' '}&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp </h3>

<font color=Black>
<br><br>
<h1 align=center> Welcome to Session sharing Example Home </h1>
<br><br><br><br>
<%User user = (User) session.getAttribute("User"); %>
<h2 align=center> User "<%=user.getName() %>    " Successfully logged in</h2>
<h3 align=center> Details of the user: <strong>Email</strong>: <%=user.getEmail() %>,
<strong>Country</strong>: <%=user.getCountry() %>
<form action="Logout" method="post" >
<input type="submit" value="Logout" >
</form> </h3>
<br>
</body>
</html>
