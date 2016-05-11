<%@page
	import="com.model.UserModel,org.json.simple.JSONObject,org.json.simple.parser.JSONParser,org.json.simple.JSONArray,org.json.simple.parser.ParseException"%>
<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">

<!-- Bootstrap -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
	integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>
<!-- /Bootstrap -->

<title>FCISquare</title>

<!-- ============================================
	================= Stylesheets ===================
	============================================= -->
<!-- vendor css files -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/vendor/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/vendor/animate.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/vendor/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/js/vendor/animsition/css/animsition.min.css">

<!-- project main css files -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/main.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/google-plus.css">
<!--/ stylesheets -->
</head>

<body>
	<%
		String posts;
		String currentUserID;
		
		currentUserID = Long.toString((Long) session.getAttribute("id"));
		posts = UserModel.loadHomePageData(currentUserID);
		
	%>

	<!-- Navigation bar 
		<nav class="navbar navbar-default">
  			<div class="container-fluid">
    			<div class="navbar-header">
      				<a class="navbar-brand" href="#">SWE-2Project</a>
    			</div>
    			
    			<ul class="nav navbar-nav navbar-right">
    				<li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${it.name}<span class="caret"></span></a>
				          <ul class="dropdown-menu">
				          	<li><a href="#">Profile</a></li>
				            <li><a href="/FCISquareApp/app/showLocation">Current Position</a></li>
				            <li role="separator" class="divider"></li>
				            <li><a href="/Login.jsp">Logout</a></li>
				          </ul>
			        </li>
			      </ul>
  			</div>
		</nav>
	<!-- /Navigation bar -->

	<div class="navbar navbar-fixed-top header">
		<div class="col-md-12">
			<div class="navbar-header">
				<a href="home.jsp" class="navbar-brand">FCISquare</a>
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbar-collapse1">
					<i class="glyphicon glyphicon-search"></i>
				</button>
			</div>

			<div class="collapse navbar-collapse" id="navbar-collapse1">
				<form class="navbar-form pull-left">
					<div class="input-group" style="max-width: 470px;">
						<input class="form-control" placeholder="Search" name="srch-term"
							id="srch-term" type="text">
						<div class="input-group-btn">
							<button class="btn btn-default btn-primary" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form>

				<ul class="nav navbar-nav navbar-right">
					<li class=""><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"><i class="glyphicon glyphicon-bell"></i></a>
						<ul class="dropdown-menu">
							<li><a href="#"><span class="badge pull-right">40</span>Link</a></li>
							<li><a href="#"><span class="badge pull-right">2</span>Link</a></li>
							<li><a href="#"><span class="badge pull-right">0</span>Link</a></li>
							<li><a href="#"><span
									class="label label-info pull-right">1</span>Link</a></li>
							<li><a href="#"><span class="badge pull-right">13</span>Link</a></li>
						</ul></li>
					<li><a class="" href="#" id="btnToggle"><i
							class="glyphicon glyphicon-th-large"></i></a></li>
					<li><a href="#"><i class="glyphicon glyphicon-user"></i></a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container" id="main">
		<div class="row">
			<div class="col-sm-6 col-md-6">
				<div class="well">
					<form class="form-horizontal" role="form">
						<h4>Where are you?</h4>

						<div class="form-group" style="padding: 14px;">
							<input type="text" role="combobox" placeholder="At?"
								class="form-control"><br>
							<textarea class="form-control" placeholder="Add description"></textarea>
						</div>

						<div>
							<button class="btn btn-success pull-right" type="button">Post</button>
							<br> <br>
						</div>
					</form>


					<!--  <select name="arraySelect">
						<%for (int i = 0; i < 10; i++) {%>
						<div class="panel panel-default col-sm-6 col-md-6">
							<div class="panel-body">
								<img src="<%=request.getContextPath()%>assets/img/150x150.gif" class="img-circle pull-lift">
								<a href="#">${it.name}</a>
								<div class="clearfix"></div>
								<hr>

								<p>
									If you're looking for help with Bootstrap code, the
									<code>twitter-bootstrap</code>
									tag at <a
										href="http://stackoverflow.com/questions/tagged/twitter-bootstrap">Stackoverflow</a>
									is a good place to find answers.
								</p>

								<hr>
								<form>
									<div class="input-group">
										<div class="input-group-btn">
											<button class="btn btn-default">+1</button>
											<button class="btn btn-default">
												<i class="glyphicon glyphicon-share"></i>
											</button>
										</div>
										<input class="form-control" placeholder="Add a comment.."
											type="text">
									</div>
								</form>

							</div>
						</div>
						<%}%>
					</select> -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>