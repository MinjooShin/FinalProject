<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="com.my.myapp.board.BoardDAO, com.my.myapp.board.BoardVO"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Voting Form</title>
</head>
<body>
<h1>Voting Form</h1>
<form:form commandName="boardVO" method="POST" action="../voteok">
	<form:hidden path="seq"/>
	<table id="edit">
		<tr><td>Voting(!One vote per person!): </td><td><form:input path="vote" type="number"/></td></tr>
	</table>
	<input type="submit" value="Vote" onclick='vote_click()'/>
</form:form>
<input type="button" value="Back" onclick="history.back()"/>

</body>

<script>
function vote_click(){
	alert("투표 되었습니다!");
}
</script>

</html>