<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex2_8200043.jsp"%>
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
	<%@ include file="header_ex2_8200043.jsp"%>

	<meta name="description" content="Lab exercise template 2019-2020">
	<title>2η Εργαστηριακη Άσκηση</title>

	
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
						<li><a href="index_ex2_8200043.jsp">Home</a></li>
						<li><a href="about_ex2_8200043.jsp">About</a></li>	
<%
						if(connected){
%>
				
						<li><a href="dashboard_ex2_8200043.jsp">Dashboard</a></li>		
						
<%}%>			
					</ul>	

					<ul class="nav navbar-nav navbar-right">
<%
						if(!connected){
%>
						
						<li class="active"><a href="register_ex2_8200043.jsp">Register</a></li>
						<li><a href="login_ex2_8200043.jsp">Sign in</a></li>
						
<%
} else { %>
                        <li>
							<p class="navbar-text">Signed in as <%= user.getUsername()%></p>
						</li>

						<li>
							<a href="logout_ex2_8200043.jsp"><span class="glyphicon glyphicon-log-out"></span> Sign out</a>
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
				<h1>2η Ατομική Άσκηση</h1>
			</div>

			<!-- Page Title -->
			<div class="page-header">
				<h1>Registration Form</h1>
			</div>
            <!--alert box-->
            <div class="alert alert-warning alert-dismissible fade in text-center" role="alert">
                <strong class = "text-center"> Please fill in the following form to create an account </strong>
            </div>
          
            <form action="registerController_ex2_8200043.jsp" method="POST" class="form-horizontal">
          
                <!-- Name -->

                <div class="form-group">
                    <label class="col-sm-2 control-label main-label">Name </label>
                    <div class="col-sm-6">
                      <input name = "name" type="text" class="form-control" placeholder="your name">
                    </div>
                </div>

                <!--Surname-->
                <div class="form-group">
                    <label class="col-sm-2 control-label main-label">Surname </label>
                    <div class="col-sm-6">
                      <input name = "surname" type="text" class="form-control" placeholder="your surname">
                    </div>
                </div>

                <!-- Email -->
                <div class="form-group">
                    <label class="col-sm-2 control-label main-label">Email </label>
                    <div class="col-sm-6">
                      <input name ="email" type="email" class="form-control" placeholder="your email">
                    </div>
                </div>

                <!-- Username -->
                <div class="form-group">
                    <label class="col-sm-2 control-label main-label">Username </label>
                    <div class="col-sm-6">
                      <input name = "username" type="text" class="form-control" placeholder="your username">
                    </div>
                </div>
                <!-- Password -->
                <div class="form-group">
                    <label class="col-sm-2 control-label main-label">Password </label>
                    <div class="col-sm-6">
                      <input name = "password" type="password" class="form-control" placeholder="your password">
                    </div>
                </div>
                <!-- Confirm -->
                <div class="form-group">
                    <label class="col-sm-2 control-label main-label">Confirm </label>
                    <div class="col-sm-6">
                      <input name = "confirm" type="password" class="form-control" placeholder="confirm your password">
                    </div>
                </div>
                <!-- agree -->
                <div class="form-group">
                
                        <label class="col-sm-2 control-label main-label"></label>
                  <div class="col-sm-6">
                  
                    <label class="checkbox-inline">
                      <input type="checkbox" name="agree" value="checked" > <strong class="text-info">I agree to the terms and conditions</strong>
                    </label>
                    
                  </div>
                            
                </div>
                
                <!-- buttons -->
                <div class="form-group">
                  <div class="col-sm-6 col-sm-offset-2">
                    <button type="submit" class="btn btn-success">
                      <span class="glyphicon glyphicon-ok"></span> Submit
                    </button> 
                    <button type="reset" class="btn btn-danger">
                      <span class="glyphicon glyphicon-remove"></span> Cancel
                    </button>              
                  </div>
                </div>
      
              </form>
			
		</div>
		<!-- /container -->

       <%@ include file="footer_ex2_8200043.jsp" %>
	</body>
</html>