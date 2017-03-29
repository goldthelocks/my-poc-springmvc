<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<title>My POC of Spring MVC</title>

<!-- Main CSS -->
<spring:url value="/resources/css/style.css" var="coreCss" />
<!-- Bootstrap CSS -->
<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCss" />

<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />

</head>

<body>

	<!-- Navigation bar -->
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="">Home</a></li>
					<li><a href="/my-poc-springmvc/about">About</a></li>
					<li><a href="/my-poc-springmvc/contact">Contact</a></li>
				</ul>
				<!-- If I want a login page I can use this -->
				<!-- 				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
							Login</a></li>
				</ul> -->
			</div>
		</div>
	</nav>
	<!-- End Navigation bar -->

	<!-- Content Area -->

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-8 text-left">
				<h1>${title}</h1>
				<p>
					<c:if test="${not empty name}">
			Hello ${name}
		</c:if>

					<c:if test="${empty name}">
			Welcome Welcome!
		</c:if>
				</p>
				<hr>
			</div>
		</div>
	</div>

	<!-- Bootstrap core -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs" />

	<script src="${bootstrapJs}"></script>

</body>
</html>