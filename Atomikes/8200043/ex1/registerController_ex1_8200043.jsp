<!DOCTYPE html>

<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<meta name="description" content="Lab exercise template 2019-2020">
	<meta name="author" content="sofos@aueb.gr">
	<link rel="icon" href="../images/favicon.ico">

	<title>1η Εργαστηριακη Άσκηση</title>

	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="../../css/bootstrap.min.css">
	<!-- Bootstrap Optional theme -->
	<link rel="stylesheet" href="../../css/bootstrap-theme.min.css">
	<!-- Custom styles for this template -->
	<link href="../../css/theme_8200043.css" rel="stylesheet">
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
					aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span> <span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">8200043</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index_ex1_8200043.jsp">Home</a></li>
					<li class="active"><a href="register_ex1_8200043.jsp">Register</a></li>
					<li><a href="about_ex1_8200043.jsp">About</a></li>
				</ul>

			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>

	<div class="container theme-showcase" role="main">

			<!-- Main jumbotron for a primary marketing message or call to action -->
			<div class="jumbotron">
				<h1>1η Ατομική Άσκηση</h1>
			</div>

			<!-- Page Title -->
			
	<%  String name=request.getParameter("name"); 
	    String surname=request.getParameter("surname"); 
	    String	email=request.getParameter("email"); 
		String username=request.getParameter("username");
		String	password=request.getParameter("password");
	    String confirm=request.getParameter("confirm"); 
    	String agree=request.getParameter("agree"); // on / null 

		boolean nameSurnameCheck= name.length()>=3 && surname.length()>=3;
		boolean usernamePasswordCheck = username.length()>=5 && password.length()>=6;
		boolean passwordConfirmCheck = password.equals(confirm);
		boolean agreeCheck = agree != null;
	%>
	<%
		if(nameSurnameCheck && usernamePasswordCheck && passwordConfirmCheck && agreeCheck){
		%>

			<div class="page-header">
					<h1>Registration almost done!</h1>
			</div>

		
			<div class="alert alert-success" role="alert">
 				 <b>Note:</b> A verification link has been send to the email: <%=email%> 
			</div>
			<ul class = "list-unstyled">
         		<li><b>Name: </b> <%=name%></li>
         		<li><b>Surname: </b> <%=surname%></li>
        		<li><b>Email: </b> <%=email%></li>
      		    <li><b>Username: </b> <%=username%></li>
  		    </ul>
			
		</div> 
		<% } else{ %>

			<div class="page-header">
				<h1>Registration form has errors</h1>
			</div>

			<div class="alert alert-danger" role="alert">
				<ol>
				<%
					if (name.length()<3){
				%>		
					<li>Name must be at least 3 characters long</li>
				<%
					}if (surname.length()<3){
				%>
					<li>Surname must be at least 3 characters long</li>		
				<%	
					}if (username.length()<5){
				%>
					<li>Username must be at least 5 characters long</li>		
				<%	
					}if (password.length()<6){
				%>
					<li>Password must be at least 6 characters long</li>		
				<%	
					}if (passwordConfirmCheck == false){
				%>
					<li>Password and confirm do not match</li>
				<%
					}if (agreeCheck == false){
				%>		
					<li>You must agree to terms and conditions</li>
				<%}
				%>
				</ol>
			
			</div>
			<a href="register_ex1_8200043.jsp" class="btn btn-info" role="button"><span
            class="glyphicon glyphicon-chevron-left"></span>Back to the form</a>

		  
		</div>
			<% } %>
				<footer class="navbar-inverse">
					<div class="container">
						<div class="row">
							<div class="col-xs-12">
								<p class="text-center">&copy; Copyright 2019 by ismgroupY</p>
							</div>
						</div>
					</div>
				</footer>
</body>

</html>