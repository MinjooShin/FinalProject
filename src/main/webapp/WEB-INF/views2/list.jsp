<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.my.myapp.board.BoardDAO, com.my.myapp.board.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>free board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
	
</script>
</head>
<body>
<h1>생일 축하 게시판</h1>

<table id="list" width="90%">
<tr>
	<th>Id</th>
	<th>Writer</th>
	<th>Phone</th>
	<th>Email</th>
	<th>Team</th>
	<th>Regdate</th>
	<th>Birthday Boy</th>
	<th>Content</th>
	<th>Edit</th>
	<th>Delete</th>
	<th>View</th>
	<th>Vote</th>
</tr>
<c:forEach items="${list}" var="u">
		<tr>
			<td>${u.seq}</td>
			<td>${u.writer}</td>
			<td>${u.phone}</td>
			<td>${u.email}</td>
			<td>${u.team}</td>
			<td>${u.regdate}</td>
			<td>${u.BDboy}</td>
			<td>${u.content}</td>
			<td><a href="editpost/${u.seq}">Edit</a></td>
			<td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
			<td><a href="view/${u.seq}/${u.writer}/${u.phone}/${u.email}/${u.team}/${u.BDboy}/${u.content}/${u.vote}">View</a></td>
			<td><a href="votepost/${u.seq}">Vote</a></td>
		</tr>
</c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'">Add New One</button>
</body>
</html>