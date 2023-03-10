<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="exercise3_2022_2023_8200057.User" %>
<%@ page import="exercise3_2022_2023_8200057.UserDAO" %>
<%@ page errorPage="error_ex3_8200057.jsp"%>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="en">
<%@ include file="header_ex3_8200057.jsp" %>
<%
if (session.getAttribute("userObj2022") == null) {

    request.setAttribute("message", "You are not authorized to view this page!");

%>
    <jsp:forward page="login_ex3_8200057.jsp" />

<%
    return;
}    
%>


	
	<body>
		<%
           User user = (User)session.getAttribute("userObj2022");
        %>

		<!-- Fixed navbar -->
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
						<li><a href="index_ex3_8200057.jsp">Home</a></li>										
						<li><a href="about_ex3_8200057.jsp">About</a></li>				
						<li class="active"><a href="dashboard_ex3_8200057.jsp">Dashboard</a></li>
										
					</ul>				 
					<ul class="nav navbar-nav navbar-right">
                        <li>
							<p class="navbar-text">Signed in as <%=user.getUsername() %></p>
						</li>
						<li>
							<a href="logout_ex3_8200057.jsp"><span class="glyphicon glyphicon-log-out"></span> Sign out</a>
						</li>								        	
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
				<h1>Welcome <code> <%=user.getFirstname() %> <%=user.getLastname() %> </code></h1>
			</div>
			<% UserDAO udao1 = new UserDAO();
			   List<User> userz = udao1.getUsers();
				%>  


            <div class="row">

                <div class="col-xs-12">
                    <h2>Available Users <span class="badge"><% userz.size(); %></span></h2>
                </div>

            </div>
			<table class="table table-bordered table-condensed table-hover">
				<tr class="info">
					<th>A/A</th>
					<th>Last Name</th>
					<th>First Name</th>
					<th>Email</th>
				</tr>
				<%
				int count;
				count=0; 
				for (User i : userz) {
				 count++; %>
				<tr <% if(user.getUsername()==i.getUsername()) { %> class="success" <%}%>>
					<th><%=count%></th>
					<th><%=i.getLastname()%></th>
					<th><%=i.getFirstname()%></th>
                    <th><%=i.getEmail()%></th>
				</tr>
				<% } %>
			</table>
			
		</div>
		<!-- /container -->

        <!-- footer -->
		<%@ include file="footer_ex3_8200057.jsp" %>
		<!-- End footer -->

		<!-- =================== Place all javascript at the end of the document so the pages load faster =================== -->
		<!-- jQuery library -->
		<script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
		<!-- Bootstrap core JavaScript -->
		<script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>	
		
	</body>
</html>