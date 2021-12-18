
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.my.myapp.board.BoardDAO, com.my.myapp.board.BoardVO"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	max-width: 330px;
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
</style>


<!-- Custom styles for this template -->
<link href="css/signin.css" rel="stylesheet" type="text/css">
</head>

<body class="text-center" data-new-gr-c-s-check-loaded="14.1042.0"
	data-gr-ext-installed="">

	<main class="form-signin">
		<form action="addok" method="POST">
			

			<h1 class="h3 mb-3 fw-normal">삼행시를 작성해 주세요.</h1>

			<table id="edit">
				<tr class="form-floating">
					<td>Writer:</td>
					<td><input type="text" name="writer" class="form-control" /></td>
				</tr>
				<tr class="form-floating">
					<td>Phone:</td>
					<td><input type="text" name="phone" class="form-control"
							 /></td>
				</tr>
				<tr class="form-floating">
					<td>Email:</td>
					<td><input type="text" name="email" class="form-control"
							/></td>
				</tr>
				<tr class="form-floating">
					<td>Team:</td>
					<td><input type="text" name="team" class="form-control"
							/></td>
				</tr>
				<tr class="form-floating">
					<td>Birthday Boy:</td>
					<td><input  type="text" name="BDboy" class="form-control"
							/></td>
				</tr>
				<tr class="form-floating">
					<td>Content:</td>
					<td><textarea cols="50" rows="5" name="content"
							class="form-control"></textarea></td>
				</tr>



			</table>
			<div style='margin-top: 20px' class="d-grid gap-2">
				
				<button class="w-100 btn btn-lg btn-primary" type="submit">Add</button>
				<button class="w-100 btn btn-lg btn-primary" type="button"
					onclick="location.href='list'">Back</button>
					
			</div>
			<p class="mt-5 mb-3 text-muted">정세희 신민주 ©2021</p>

		</form>

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