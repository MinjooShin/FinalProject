<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Form</title>
</head>
<body>

<h1>Add New Birthday Boy's Acrostic Poem</h1>
<form action="addok" method="POST">
<table id="edit">
<tr><td>Writer:</td><td><input type="text" name="writer"/></td></tr>
<tr><td>Phone:</td><td><input type="text" name="phone"/></td></tr>
<tr><td>Email:</td><td><input type="text" name="email"/></td></tr>
<tr><td>Team:</td><td><input type="text" name="team"/></td></tr>
<tr><td>Birthday Boy:</td><td><input type="text" name="BDboy"/></td></tr>
<tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
</table>
<button type="button" onclick="location.href='list'">list</button>
<button type="submit">add</button>
</form>

</body>
</html>