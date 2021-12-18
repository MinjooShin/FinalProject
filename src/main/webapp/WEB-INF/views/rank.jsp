<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.my.myapp.board.BoardDAO, com.my.myapp.board.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>삼행시 추가</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/sign-in/">

<!-- Bootstrap core CSS -->
<link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<style>
html, body {
	height: 100%;
}

body {
	display: flex;
	align-items: center;
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
}

.form-signin {
	width: 100%;
	padding: 15px;
	margin: auto;
}

.form-signin .checkbox {
	font-weight: 400;
}

.form-signin .form-floating:focus-within {
	z-index: 2;
}

.form-signin input[type="text"] {
	margin-bottom: 3px;
}

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

tbody tr:nth-child(5n) {
	background-color: #EF5350;
}

tbody tr:nth-child(5n+1) {
	background-color: #E57373;
}

tbody tr:nth-child(5n+2) {
	background-color: #ef9a9a;
}

tbody tr:nth-child(5n+3) {
	background-color: #ffcdd2;
}

tbody tr:nth-child(5n+4) {
	background-color: #ffebee;
}
</style>


<!-- Custom styles for this template -->
<link href="css/signin.css" rel="stylesheet" type="text/css">
</head>

<body class="text-center" data-new-gr-c-s-check-loaded="14.1042.0"
	data-gr-ext-installed="">
	<%
	int i = 1;
	%>
	<main class="form-signin">

		<h1 style='margin-bottom: 20px'>Ranking</h1>


		<table id="list" class="table text-nowrap mb-0">
			<thead class="table-light">
				<tr>
					<th>Ranking</th>

					<th>Birthday Person</th>
					<th>Content</th>
					<th>Likes</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="u">


					<tr>
						<td class="align-middle"><div
								class="d-flex align-items-center">
								<div class="ms-3 lh-1">
									<h5 class=" mb-1">
										<%=i++%>
									</h5>
								</div>
							</div></td>

						<td class="align-middle"><div
								class="d-flex align-items-center">
								<div class="ms-3 lh-1">
									<h5 class=" mb-1">${u.BDboy}</h5>
								</div>
							</div></td>
						<td class="align-middle"><div
								class="d-flex align-items-center">
								<div class="ms-3 lh-1">
									<h5 class=" mb-1">${u.content}</h5>
								</div>
							</div></td>
						<td class="align-middle"><div
								class="d-flex align-items-center">
								<div class="ms-3 lh-1">
									<h5 class=" mb-1">${u.vote}</h5>
								</div>
							</div></td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
		<div style='margin-top: 20px'>
			<button class="w-100 btn btn-lg btn-primary" type="button"
				onclick="location.href='list'">Back</button>
		</div>
		<p class="mt-5 mb-3 text-muted">정세희 신민주 ©2021</p>
	</main>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>