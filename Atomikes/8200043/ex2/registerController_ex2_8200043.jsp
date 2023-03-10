<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex2_8200043.jsp"%>

<!DOCTYPE html>

<html lang="en">

<head>
	<%@ include file="header_ex2_8200043.jsp"%>

	<meta name="description" content="Lab exercise template 2019-2020">
	<title>2η Εργαστηριακη Άσκηση</title>

	
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
					<li class="active"><a href="index_ex2_8200043.jsp">Home</a></li>
					<li class="active"><a href="register_ex2_8200043.jsp">Register</a></li>
					<li><a href="about_ex2_8200043.jsp">About</a></li>
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
			<a href="register_ex2_8200043.jsp" class="btn btn-info" role="button"><span
            class="glyphicon glyphicon-chevron-left"></span>Back to the form</a>

		  
		</div>
			<% } %>

		<%@ include file="footer_ex2_8200043.jsp" %>
</body>

</html>