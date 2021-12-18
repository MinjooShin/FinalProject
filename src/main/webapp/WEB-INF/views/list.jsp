<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.my.myapp.board.BoardDAO, com.my.myapp.board.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<!-- saved from url=(0044)file:///C:/Users/user/Desktop/list_test.html -->
<html lang="en">
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Required meta tags -->

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">



<!-- Favicon icon-->
<link rel="shortcut icon" type="image/x-icon"
	href="https://codescandy.com/dashui/assets/images/favicon/favicon.ico">

<!-- Libs CSS -->


<link href="./list_files/bootstrap-icons.css" rel="stylesheet">
<link href="./list_files/dropzone.css" rel="stylesheet">
<link href="./list_files/materialdesignicons.min.css" rel="stylesheet">
<link href="./list_files/prism-okaidia.css" rel="stylesheet">








<!-- Theme CSS -->
<link rel="stylesheet" href="./list_files/theme.min.css">
<title>생일축하 게시판</title>
<style id="apexcharts-css">
.apexcharts-canvas {
	position: relative;
	user-select: none;
	/* cannot give overflow: hidden as it will crop tooltips which overflow outside chart area */
}

/* scrollbar is not visible by default for legend, hence forcing the visibility */
.apexcharts-canvas ::-webkit-scrollbar {
	-webkit-appearance: none;
	width: 6px;
}

.apexcharts-canvas ::-webkit-scrollbar-thumb {
	border-radius: 4px;
	background-color: rgba(0, 0, 0, .5);
	box-shadow: 0 0 1px rgba(255, 255, 255, .5);
	-webkit-box-shadow: 0 0 1px rgba(255, 255, 255, .5);
}

.apexcharts-inner {
	position: relative;
}

.apexcharts-text tspan {
	font-family: inherit;
}

.legend-mouseover-inactive {
	transition: 0.15s ease all;
	opacity: 0.20;
}

.apexcharts-series-collapsed {
	opacity: 0;
}

.apexcharts-tooltip {
	border-radius: 5px;
	box-shadow: 2px 2px 6px -4px #999;
	cursor: default;
	font-size: 14px;
	left: 62px;
	opacity: 0;
	pointer-events: none;
	position: absolute;
	top: 20px;
	display: flex;
	flex-direction: column;
	overflow: hidden;
	white-space: nowrap;
	z-index: 12;
	transition: 0.15s ease all;
}

.apexcharts-tooltip.apexcharts-active {
	opacity: 1;
	transition: 0.15s ease all;
}

.apexcharts-tooltip.apexcharts-theme-light {
	border: 1px solid #e3e3e3;
	background: rgba(255, 255, 255, 0.96);
}

.apexcharts-tooltip.apexcharts-theme-dark {
	color: #fff;
	background: rgba(30, 30, 30, 0.8);
}

.apexcharts-tooltip * {
	font-family: inherit;
}

.apexcharts-tooltip-title {
	padding: 6px;
	font-size: 15px;
	margin-bottom: 4px;
}

.apexcharts-tooltip.apexcharts-theme-light .apexcharts-tooltip-title {
	background: #ECEFF1;
	border-bottom: 1px solid #ddd;
}

.apexcharts-tooltip.apexcharts-theme-dark .apexcharts-tooltip-title {
	background: rgba(0, 0, 0, 0.7);
	border-bottom: 1px solid #333;
}

.apexcharts-tooltip-text-y-value, .apexcharts-tooltip-text-goals-value,
	.apexcharts-tooltip-text-z-value {
	display: inline-block;
	font-weight: 600;
	margin-left: 5px;
}

.apexcharts-tooltip-text-y-label:empty, .apexcharts-tooltip-text-y-value:empty,
	.apexcharts-tooltip-text-goals-label:empty,
	.apexcharts-tooltip-text-goals-value:empty,
	.apexcharts-tooltip-text-z-value:empty {
	display: none;
}

.apexcharts-tooltip-text-y-value, .apexcharts-tooltip-text-goals-value,
	.apexcharts-tooltip-text-z-value {
	font-weight: 600;
}

.apexcharts-tooltip-text-goals-label,
	.apexcharts-tooltip-text-goals-value {
	padding: 6px 0 5px;
}

.apexcharts-tooltip-goals-group, .apexcharts-tooltip-text-goals-label,
	.apexcharts-tooltip-text-goals-value {
	display: flex;
}

.apexcharts-tooltip-text-goals-label:not(:empty),
	.apexcharts-tooltip-text-goals-value:not(:empty) {
	margin-top: -6px;
}

.apexcharts-tooltip-marker {
	width: 12px;
	height: 12px;
	position: relative;
	top: 0px;
	margin-right: 10px;
	border-radius: 50%;
}

.apexcharts-tooltip-series-group {
	padding: 0 10px;
	display: none;
	text-align: left;
	justify-content: left;
	align-items: center;
}

.apexcharts-tooltip-series-group.apexcharts-active .apexcharts-tooltip-marker
	{
	opacity: 1;
}

.apexcharts-tooltip-series-group.apexcharts-active,
	.apexcharts-tooltip-series-group:last-child {
	padding-bottom: 4px;
}

.apexcharts-tooltip-series-group-hidden {
	opacity: 0;
	height: 0;
	line-height: 0;
	padding: 0 !important;
}

.apexcharts-tooltip-y-group {
	padding: 6px 0 5px;
}

.apexcharts-tooltip-box, .apexcharts-custom-tooltip {
	padding: 4px 8px;
}

.apexcharts-tooltip-boxPlot {
	display: flex;
	flex-direction: column-reverse;
}

.apexcharts-tooltip-box>div {
	margin: 4px 0;
}

.apexcharts-tooltip-box span.value {
	font-weight: bold;
}

.apexcharts-tooltip-rangebar {
	padding: 5px 8px;
}

.apexcharts-tooltip-rangebar .category {
	font-weight: 600;
	color: #777;
}

.apexcharts-tooltip-rangebar .series-name {
	font-weight: bold;
	display: block;
	margin-bottom: 5px;
}

.apexcharts-xaxistooltip {
	opacity: 0;
	padding: 9px 10px;
	pointer-events: none;
	color: #373d3f;
	font-size: 13px;
	text-align: center;
	border-radius: 2px;
	position: absolute;
	z-index: 10;
	background: #ECEFF1;
	border: 1px solid #90A4AE;
	transition: 0.15s ease all;
}

.apexcharts-xaxistooltip.apexcharts-theme-dark {
	background: rgba(0, 0, 0, 0.7);
	border: 1px solid rgba(0, 0, 0, 0.5);
	color: #fff;
}

.apexcharts-xaxistooltip:after, .apexcharts-xaxistooltip:before {
	left: 50%;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none;
}

.apexcharts-xaxistooltip:after {
	border-color: rgba(236, 239, 241, 0);
	border-width: 6px;
	margin-left: -6px;
}

.apexcharts-xaxistooltip:before {
	border-color: rgba(144, 164, 174, 0);
	border-width: 7px;
	margin-left: -7px;
}

.apexcharts-xaxistooltip-bottom:after, .apexcharts-xaxistooltip-bottom:before
	{
	bottom: 100%;
}

.apexcharts-xaxistooltip-top:after, .apexcharts-xaxistooltip-top:before
	{
	top: 100%;
}

.apexcharts-xaxistooltip-bottom:after {
	border-bottom-color: #ECEFF1;
}

.apexcharts-xaxistooltip-bottom:before {
	border-bottom-color: #90A4AE;
}

.apexcharts-xaxistooltip-bottom.apexcharts-theme-dark:after {
	border-bottom-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip-bottom.apexcharts-theme-dark:before {
	border-bottom-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip-top:after {
	border-top-color: #ECEFF1
}

.apexcharts-xaxistooltip-top:before {
	border-top-color: #90A4AE;
}

.apexcharts-xaxistooltip-top.apexcharts-theme-dark:after {
	border-top-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip-top.apexcharts-theme-dark:before {
	border-top-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip.apexcharts-active {
	opacity: 1;
	transition: 0.15s ease all;
}

.apexcharts-yaxistooltip {
	opacity: 0;
	padding: 4px 10px;
	pointer-events: none;
	color: #373d3f;
	font-size: 13px;
	text-align: center;
	border-radius: 2px;
	position: absolute;
	z-index: 10;
	background: #ECEFF1;
	border: 1px solid #90A4AE;
}

.apexcharts-yaxistooltip.apexcharts-theme-dark {
	background: rgba(0, 0, 0, 0.7);
	border: 1px solid rgba(0, 0, 0, 0.5);
	color: #fff;
}

.apexcharts-yaxistooltip:after, .apexcharts-yaxistooltip:before {
	top: 50%;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none;
}

.apexcharts-yaxistooltip:after {
	border-color: rgba(236, 239, 241, 0);
	border-width: 6px;
	margin-top: -6px;
}

.apexcharts-yaxistooltip:before {
	border-color: rgba(144, 164, 174, 0);
	border-width: 7px;
	margin-top: -7px;
}

.apexcharts-yaxistooltip-left:after, .apexcharts-yaxistooltip-left:before
	{
	left: 100%;
}

.apexcharts-yaxistooltip-right:after, .apexcharts-yaxistooltip-right:before
	{
	right: 100%;
}

.apexcharts-yaxistooltip-left:after {
	border-left-color: #ECEFF1;
}

.apexcharts-yaxistooltip-left:before {
	border-left-color: #90A4AE;
}

.apexcharts-yaxistooltip-left.apexcharts-theme-dark:after {
	border-left-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip-left.apexcharts-theme-dark:before {
	border-left-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip-right:after {
	border-right-color: #ECEFF1;
}

.apexcharts-yaxistooltip-right:before {
	border-right-color: #90A4AE;
}

.apexcharts-yaxistooltip-right.apexcharts-theme-dark:after {
	border-right-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip-right.apexcharts-theme-dark:before {
	border-right-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip.apexcharts-active {
	opacity: 1;
}

.apexcharts-yaxistooltip-hidden {
	display: none;
}

.apexcharts-xcrosshairs, .apexcharts-ycrosshairs {
	pointer-events: none;
	opacity: 0;
	transition: 0.15s ease all;
}

.apexcharts-xcrosshairs.apexcharts-active, .apexcharts-ycrosshairs.apexcharts-active
	{
	opacity: 1;
	transition: 0.15s ease all;
}

.apexcharts-ycrosshairs-hidden {
	opacity: 0;
}

.apexcharts-selection-rect {
	cursor: move;
}

.svg_select_boundingRect, .svg_select_points_rot {
	pointer-events: none;
	opacity: 0;
	visibility: hidden;
}

.apexcharts-selection-rect+g .svg_select_boundingRect,
	.apexcharts-selection-rect+g .svg_select_points_rot {
	opacity: 0;
	visibility: hidden;
}

.apexcharts-selection-rect+g .svg_select_points_l,
	.apexcharts-selection-rect+g .svg_select_points_r {
	cursor: ew-resize;
	opacity: 1;
	visibility: visible;
}

.svg_select_points {
	fill: #efefef;
	stroke: #333;
	rx: 2;
}

.apexcharts-svg.apexcharts-zoomable.hovering-zoom {
	cursor: crosshair
}

.apexcharts-svg.apexcharts-zoomable.hovering-pan {
	cursor: move
}

.apexcharts-zoom-icon, .apexcharts-zoomin-icon, .apexcharts-zoomout-icon,
	.apexcharts-reset-icon, .apexcharts-pan-icon,
	.apexcharts-selection-icon, .apexcharts-menu-icon,
	.apexcharts-toolbar-custom-icon {
	cursor: pointer;
	width: 20px;
	height: 20px;
	line-height: 24px;
	color: #6E8192;
	text-align: center;
}

.apexcharts-zoom-icon svg, .apexcharts-zoomin-icon svg,
	.apexcharts-zoomout-icon svg, .apexcharts-reset-icon svg,
	.apexcharts-menu-icon svg {
	fill: #6E8192;
}

.apexcharts-selection-icon svg {
	fill: #444;
	transform: scale(0.76)
}

.apexcharts-theme-dark .apexcharts-zoom-icon svg, .apexcharts-theme-dark .apexcharts-zoomin-icon svg,
	.apexcharts-theme-dark .apexcharts-zoomout-icon svg,
	.apexcharts-theme-dark .apexcharts-reset-icon svg,
	.apexcharts-theme-dark .apexcharts-pan-icon svg, .apexcharts-theme-dark .apexcharts-selection-icon svg,
	.apexcharts-theme-dark .apexcharts-menu-icon svg,
	.apexcharts-theme-dark .apexcharts-toolbar-custom-icon svg {
	fill: #f3f4f5;
}

.apexcharts-canvas .apexcharts-zoom-icon.apexcharts-selected svg,
	.apexcharts-canvas .apexcharts-selection-icon.apexcharts-selected svg,
	.apexcharts-canvas .apexcharts-reset-zoom-icon.apexcharts-selected svg
	{
	fill: #008FFB;
}

.apexcharts-theme-light .apexcharts-selection-icon:not(.apexcharts-selected):hover svg,
	.apexcharts-theme-light .apexcharts-zoom-icon:not(.apexcharts-selected):hover svg,
	.apexcharts-theme-light .apexcharts-zoomin-icon:hover svg,
	.apexcharts-theme-light .apexcharts-zoomout-icon:hover svg,
	.apexcharts-theme-light .apexcharts-reset-icon:hover svg,
	.apexcharts-theme-light .apexcharts-menu-icon:hover svg {
	fill: #333;
}

.apexcharts-selection-icon, .apexcharts-menu-icon {
	position: relative;
}

.apexcharts-reset-icon {
	margin-left: 5px;
}

.apexcharts-zoom-icon, .apexcharts-reset-icon, .apexcharts-menu-icon {
	transform: scale(0.85);
}

.apexcharts-zoomin-icon, .apexcharts-zoomout-icon {
	transform: scale(0.7)
}

.apexcharts-zoomout-icon {
	margin-right: 3px;
}

.apexcharts-pan-icon {
	transform: scale(0.62);
	position: relative;
	left: 1px;
	top: 0px;
}

.apexcharts-pan-icon svg {
	fill: #fff;
	stroke: #6E8192;
	stroke-width: 2;
}

.apexcharts-pan-icon.apexcharts-selected svg {
	stroke: #008FFB;
}

.apexcharts-pan-icon:not(.apexcharts-selected):hover svg {
	stroke: #333;
}

.apexcharts-toolbar {
	position: absolute;
	z-index: 11;
	max-width: 176px;
	text-align: right;
	border-radius: 3px;
	padding: 0px 6px 2px 6px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.apexcharts-menu {
	background: #fff;
	position: absolute;
	top: 100%;
	border: 1px solid #ddd;
	border-radius: 3px;
	padding: 3px;
	right: 10px;
	opacity: 0;
	min-width: 110px;
	transition: 0.15s ease all;
	pointer-events: none;
}

.apexcharts-menu.apexcharts-menu-open {
	opacity: 1;
	pointer-events: all;
	transition: 0.15s ease all;
}

.apexcharts-menu-item {
	padding: 6px 7px;
	font-size: 12px;
	cursor: pointer;
}

.apexcharts-theme-light .apexcharts-menu-item:hover {
	background: #eee;
}

.apexcharts-theme-dark .apexcharts-menu {
	background: rgba(0, 0, 0, 0.7);
	color: #fff;
}

@media screen and (min-width: 768px) {
	.apexcharts-canvas:hover .apexcharts-toolbar {
		opacity: 1;
	}
}

.apexcharts-datalabel.apexcharts-element-hidden {
	opacity: 0;
}

.apexcharts-pie-label, .apexcharts-datalabels, .apexcharts-datalabel,
	.apexcharts-datalabel-label, .apexcharts-datalabel-value {
	cursor: default;
	pointer-events: none;
}

.apexcharts-pie-label-delay {
	opacity: 0;
	animation-name: opaque;
	animation-duration: 0.3s;
	animation-fill-mode: forwards;
	animation-timing-function: ease;
}

.apexcharts-canvas .apexcharts-element-hidden {
	opacity: 0;
}

.apexcharts-hide .apexcharts-series-points {
	opacity: 0;
}

.apexcharts-gridline, .apexcharts-annotation-rect, .apexcharts-tooltip .apexcharts-marker,
	.apexcharts-area-series .apexcharts-area, .apexcharts-line,
	.apexcharts-zoom-rect, .apexcharts-toolbar svg, .apexcharts-area-series .apexcharts-series-markers .apexcharts-marker.no-pointer-events,
	.apexcharts-line-series .apexcharts-series-markers .apexcharts-marker.no-pointer-events,
	.apexcharts-radar-series path, .apexcharts-radar-series polygon {
	pointer-events: none;
}

/* markers */
.apexcharts-marker {
	transition: 0.15s ease all;
}

@
keyframes opaque { 
	0% {
	opacity: 0;
	}

	100% {
opacity:1;
	}
}

/* Resize generated styles */
@
keyframes resizeanim {
	from { 
	opacity:0;
	}
	to {
	opacity: 0;
	}
}

.resize-triggers {
	animation: 1ms resizeanim;
	visibility: hidden;
	opacity: 0;
}

.resize-triggers, .resize-triggers>div, .contract-trigger:before {
	content: " ";
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
	overflow: hidden;
}

.resize-triggers>div {
	background: #eee;
	overflow: auto;
}

.contract-trigger:before {
	width: 200%;
	height: 200%;
}

.mb-2_mb-lg-0{
	font-style:italic;
	background-color:purple;
	color:white;
}
.btn_btn-white{
	background-color:blue;
	color:white;
	border-radius: 5px;
}

</style>


</head>

<body class="bg-light" class="text-center" data-new-gr-c-s-check-loaded="14.1042.0"
	data-gr-ext-installed="">
	<div id="db-wrapper" class="">



		<!-- Page content -->
		<div id="page-content">
			<div class="header @@classList">
				<!-- navbar -->
				<nav class="navbar-classic navbar navbar-expand-lg">

					<div class="ms-lg-3 d-none d-md-none d-lg-block">
						<!-- Form -->
						<form class="d-flex align-items-center">
							<input type="search" class="form-control" placeholder="Search">
						</form>
					</div>
					<!--Navbar nav -->
					<ul
						class="navbar-nav navbar-right-wrap ms-auto d-flex nav-top-wrap">


						<li class="dropdown ms-2"><a class="rounded-circle show"
							href="https://codescandy.com/dashui/index.html#" role="button"
							id="dropdownUser" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="true">
								<div class="avatar avatar-md avatar-indicators avatar-online">
									<img alt="avatar" src="../img/birthday.png"
										class="rounded-circle" width="70" height="70">
								</div>
						</a></li>
					</ul>
				</nav>
			</div>

			<!-- Container fluid -->
			<div class="bg-primary pt-10 pb-21"></div>
			<div class="container-fluid mt-n22 px-6">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-12">
						<!-- Page header -->
						<div>
							<div class="d-flex justify-content-between align-items-center">
								<div class="mb-2_mb-lg-0">
									<h3 class="title">🥳Happy Birthday to You🥳</h3>
								</div>
								<div>
									<button type="button" onclick="location.href='add'"
										class="btn_btn-white">Add Acrostic Poem</button>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-6 col-md-12 col-12 mt-6">
						<c:forEach items="${list}" var="u">
							<!-- card -->
							<div class="card ">
								<!-- card body -->
								<div class="card-body">
									<!-- heading -->
									<div
										class="d-flex justify-content-between align-items-center mb-3">
										<div>
											<h4 class="mb-0">${u.BDboy}</h4>
										</div>
										<div class="icon-shape icon-md bg-light-primary text-primary rounded-2">
											${u.team}</div>
									</div>
									<!-- project number -->


									<div>
										<h1 class="fw-bold">${u.content}</h1>
										<div class="d-flex justify-content-between align-items-center mb-3">
											<div>
												<p class="mb-0">${u.regdate}</p>
											</div>
											<div>

												<div>

													 <a href="votepost/${u.seq}"class="card-link">vote</a>

												</div>

											</div>
										</div>

									</div>



								</div>
								</div>
						</c:forEach>
					</div>
				</div>



				<!-- row  -->
				<div class="row mt-6">
					<div class="col-md-12 col-12">
						<!-- card  -->
						<div class="card">
							<!-- card header  -->
							<div class="card-header bg-white  py-4">
								<h4 class="mb-0">Birthday Acrostic Poem List</h4>
							</div>
							<!-- table  -->
							<div class="table-responsive">

								<table id="list" class="table text-nowrap mb-0">
									<thead class="table-light">
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
											<th>Vote</th>
										</tr>
									</thead>


									<tbody>
										<c:forEach items="${list}" var="u">
											<tr>
												<td class="align-middle"><div
														class="d-flex align-items-center">
														<div class="ms-3 lh-1">
															<h5 class=" mb-1">${u.seq}</h5>
														</div>
													</div></td>
												<td class="align-middle">${u.writer}</td>
												<td class="align-middle"><span class="badge bg-warning">${u.phone}</span></td>
												<td class="align-middle"><span class="badge bg-success">${u.email}</span></td>

												<td class="align-middle"><span class="badge bg-primary">${u.team}</span></td>
												<td class="align-middle"><span
													class="badge bg-secondary">${u.regdate}</span></td>
												<td class="align-middle"><div
														class="d-flex align-items-center">
														<div class="ms-3 lh-1">
															<h5 class=" mb-1">
																${u.BDboy}
															</h5>
														</div>
													</div></td>
												<td class="align-middle"><div
														class="d-flex align-items-center">
														<div class="ms-3 lh-1">
															<h5 class=" mb-1">
																${u.content}
															</h5>
														</div>
													</div></td>
												<td class="align-middle"><div
														class="d-flex align-items-center">
														<div class="ms-3 lh-1">
															<h5 class=" mb-1">
																<a href="editpost/${u.seq}">Edit</a>
															</h5>
														</div>
													</div></td>
												<td class="align-middle"><div
														class="d-flex align-items-center">
														<div class="ms-3 lh-1">
															<h5 class=" mb-1">
																<a href="javascript:delete_ok('${u.seq}')">Delete</a>
															</h5>
														</div>
													</div></td>
												<td class="align-middle"><div
														class="d-flex align-items-center">
														<div class="ms-3 lh-1">
															<h5 class=" mb-1">
																<a href="votepost/${u.seq}">Vote</a>
															</h5>
														</div>
													</div></td>

											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- card footer  -->
							<div class="card-footer bg-white text-center">
								<a href="rank"
									class="link-primary">View the Ranking of Posts</a>

							</div>
						</div>

					</div>
				</div>
				<!-- row  -->

			</div>
		</div>
	</div>



	<!-- Scripts -->
	<!-- Libs JS -->
	<script src="./list_files/jquery.min.js"></script>
	<script src="./list_files/bootstrap.bundle.min.js"></script>
	<script src="./list_files/jquery.slimscroll.min.js"></script>
	<script src="./list_files/feather.min.js"></script>
	<script src="./list_files/prism.js"></script>
	<script src="./list_files/apexcharts.min.js"></script>
	<script src="./list_files/dropzone.min.js"></script>
	<script src="./list_files/prism-toolbar.min.js"></script>
	<script src="./list_files/prism-copy-to-clipboard.min.js"></script>


	<!-- Theme JS -->
	<script src="./list_files/theme.min.js"></script>


	<svg id="SvgjsSvg1026" width="2" height="0"
		xmlns="http://www.w3.org/2000/svg" version="1.1"
		xmlns:xlink="http://www.w3.org/1999/xlink"
		xmlns:svgjs="http://svgjs.dev"
		style="overflow: hidden; top: -100%; left: -100%; position: absolute; opacity: 0;">
		<defs id="SvgjsDefs1027"></defs>
		<polyline id="SvgjsPolyline1028" points="0,0"></polyline>
		<path id="SvgjsPath1029" d="M0 0 "></path></svg>
	<grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration>
	<svg id="SvgjsSvg1001" width="2" height="0"
		xmlns="http://www.w3.org/2000/svg" version="1.1"
		xmlns:xlink="http://www.w3.org/1999/xlink"
		xmlns:svgjs="http://svgjs.dev"
		style="overflow: hidden; top: -100%; left: -100%; position: absolute; opacity: 0;">
		<defs id="SvgjsDefs1002"></defs>
		<polyline id="SvgjsPolyline1003" points="0,0"></polyline>
		<path id="SvgjsPath1004" d="M0 0 "></path></svg>
	<svg id="SvgjsSvg1001" width="2" height="0"
		xmlns="http://www.w3.org/2000/svg" version="1.1"
		xmlns:xlink="http://www.w3.org/1999/xlink"
		xmlns:svgjs="http://svgjs.dev"
		style="overflow: hidden; top: -100%; left: -100%; position: absolute; opacity: 0;">
		<defs id="SvgjsDefs1002"></defs>
		<polyline id="SvgjsPolyline1003" points="0,0"></polyline>
		<path id="SvgjsPath1004" d="M0 0 "></path></svg>

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
		
	<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
	</script>


</body>
</html>