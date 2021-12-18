<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.my.myapp.board.BoardDAO, com.my.myapp.board.BoardVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/carousel.css">
<title>Happy Birthday Posts</title>
</head>

<body>

<h1>Happy Birthday Post Detail</h1>

<table id="view">
<tr><td>Writer:</td><td><input type="text" name="writer" value=${writer} /></td></tr>
<tr><td>Phone:</td><td><input type="text" name="phone" value=${phone} /></td></tr>
<tr><td>Email:</td><td><input type="text" name="email" value=${email} /></td></tr>
<tr><td>Team:</td><td><input type="text" name="team" value=${team} /></td></tr>
<tr><td>Birthday Boy:</td><td><input type="text" name="BDboy" value=${BDboy} /></td></tr>
<tr><td>Content:</td><td><textarea cols="50" rows="5" name="content">${content}</textarea></td></tr>
<tr><td>Vote:</td><td><input type="text" name="vote" value=${vote} /></td></tr>
</table>
<button type="button" onclick="history.back()">Back</button>

</body>

</html>