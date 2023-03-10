<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex3_8200043.jsp"%>
<%@ page import="exercise3_2022_2023_8200043.*"%>
<%@ page import="java.util.List"%>

<%
boolean connected;
User user = null;
if(session.getAttribute("userObj2022") == null){

	connected = false;		

} else {

	connected = true;
	user = (User)session.getAttribute("userObj2022"); 
}
%>

<!DOCTYPE html>

<html lang="en">
	<head>
	<%@ include file="header_ex3_8200043.jsp"%>

	<meta name="description" content="Lab exercise template 2019-2020">
	<title>3η Ατομική Άσκηση - About Page </title>

	
	</head>
	
	<body>

		<!-- Fixed navbar -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span> <span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">8200043</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li><a href="index_ex3_8200043.jsp">Home</a></li>
						<li class="active"><a href="about_ex3_8200043.jsp">About</a></li>	
<%
						if(connected){
%>
				
						<li><a href="dashboard_ex3_8200043.jsp">Dashboard</a></li>		
						
<%}%>			
					</ul>	

					<ul class="nav navbar-nav navbar-right">
<%
						if(!connected){
%>
						
						<li><a href="register_ex3_8200043.jsp">Register</a></li>
						<li><a href="login_ex3_8200043.jsp">Sign in</a></li>
						
<%
} else { %>
                        <li>
							<p class="navbar-text">Signed in as <%= user.getUsername()%></p>
						</li>

						<li>
							<a href="logout_ex3_8200043.jsp"><span class="glyphicon glyphicon-log-out"></span> Sign out</a>
						</li>	
<%}%>						        	
			        </ul>	
		
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>

		<div class="container theme-showcase" role="main">

			<!-- Main jumbotron for a primary marketing message or call to action -->
			<div class="jumbotron">
				<h1>UniEvents</h1>
			</div>

			<!-- Page Title -->
			<div class="page-header">
				<h1>Group Members</h1>
			</div>
			
            <div class="media">
                <div class="media-left media-middle">
                  <a href="images/member1.png">
                    <img class="media-object" src="images/member1.png" alt="Image not found">
                  </a>
                </div>
                <div class="media-body media middle">
                  <h2>Georgios Zarkadas <small>8200043</small></h2> 
                  <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                  t8200043@aueb.gr
                </div>
            </div>

    
		</div>
		<!-- /container -->

		<%@ include file="footer_ex3_8200043.jsp" %>
	</body>
</html>