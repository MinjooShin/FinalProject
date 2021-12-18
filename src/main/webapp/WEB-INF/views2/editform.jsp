<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.my.myapp.board.BoardDAO, com.my.myapp.board.BoardVO"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<form:form commandName="boardVO" method="POST" action="../editok">
	<form:hidden path="seq"/>
	<table id="edit">
		<tr><td>Writer:</td><td><form:input path="writer"/></td></tr>
		<tr><td>Phone:</td><td><form:input path="phone"/></td></tr>
		<tr><td>Email:</td><td><form:input path="email"/></td></tr>
		<tr><td>Team:</td><td><form:input path="team"/></td></tr>
		<tr><td>Birthday Boy:</td><td><form:input path="BDboy"/></td></tr>
		<tr><td>Content:</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
	</table>
	<input type="submit" value="Edit"/>
	<input type="button" value="Back" onclick="history.back()"/>
</form:form>

</body>
</html>