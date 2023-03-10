<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="exercise3_2022_2023_8200057.User" %>
<%@ page import="exercise3_2022_2023_8200057.UserDAO" %>
<%@ page errorPage="error_ex3_8200057.jsp"%>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="en">
	<%@ include file="header_ex3_8200057.jsp" %>
	<%
           User user = (User)session.getAttribute("userObj2022");
        %>
	<body>
	<%
     if (session.getAttribute("userObj2022") != null) {

    %>
            <nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span> <span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">8200057</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="index_ex3_8200057.jsp">Home</a></li>										
						<li><a href="about_ex3_8200057.jsp">About</a></li>				
						<li ><a href="dashboard_ex3_8200057.jsp">Dashboard</a></li>
										
					</ul>				 
					<ul class="nav navbar-nav navbar-right">
                        <li>
							<p class="navbar-text">Signed in as <%=user.getUsername() %></p>
						</li>
						<li>
							<a href="logout_ex2_8200057.jsp"><span class="glyphicon glyphicon-log-out"></span> Sign out</a>
						</li>								        	
			        </ul>		
		
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>
		<% } else { %>
			<nav class="navbar navbar-inverse navbar-fixed-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span> <span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">8200057</a>
					</div>
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="index_ex3_8200057.jsp">Home</a></li>										
							<li><a href="about_ex3_8200057.jsp">About</a></li>				
							
											
						</ul>				 
						<ul class="nav navbar-nav navbar-right">
							<li><a href="register_ex3_8200057.jsp">Register</a></li>
							<li>
								<a href="login_ex3_8200057.jsp"> Sign in</a>
							</li>								        	
						</ul>		
			
					</div>
					<!--/.nav-collapse -->
				</div>
			</nav>
			
		<% } %>	

		<div class="container theme-showcase" role="main">

			<!-- Main jumbotron for a primary marketing message or call to action -->
			<div class="jumbotron">
				<h1>ISM Group 68</h1>
			</div>

			<!-- Page Title -->
			<div class="page-header">
				<h1>Ευθύμης Καραγκούνης</h1>
			</div>
			
		</div>
		<!-- /container -->

		<!-- footer -->
		<%@ include file="footer_ex3_8200057.jsp" %>
		<!-- End footer -->
		
		<!-- =================== Place all javascript at the end of the document so the pages load faster =================== -->
		<!-- jQuery library -->
		<script src="js/jquery.min.js"></script>
		<!-- Bootstrap core JavaScript -->
		<script	src="js/bootstrap.min.js"></script>
	</body>
</html>