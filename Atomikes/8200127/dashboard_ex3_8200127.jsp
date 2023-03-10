<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex3_8200127.jsp"%>
<%@ page import="exercise3_2022_2023_8200127.User" %>
<%@ page import="exercise3_2022_2023_8200127.UserDAO" %>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>

<!DOCTYPE html>
<html lang="en">
	<head>        
		<!-- Header -->       
		<%@ include file="header_ex3_8200127.jsp" %>
		<!-- End header -->		
	</head>
	
	<body>
		<%
		String username;
		String firstname;
		String lastname;
		UserDAO dao2 = new UserDAO();
		int unumber;
		List<User> users = dao2.getUsers();
		unumber = users.size();
		%>

		<% if(session.getAttribute("userObj2022") == null) {
			request.setAttribute("message", "You are not authorized to access this recource. Please login."); %>
			<jsp:forward page="login_ex3_8200127.jsp"/>
		<%
		} else {
			User usr = (User) session.getAttribute("userObj2022");
			username = usr.getUsername();
			firstname = usr.getFirstname();
			lastname = usr.getLastname();			
						
		}
		
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
					<a class="navbar-brand" href="#">8200127</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li><a href="index_ex3_8200127.jsp">Home</a></li>										
						<li><a href="about_ex3_8200127.jsp">About</a></li>				
						<li class="active"><a href="dashboard_ex3_8200127.jsp">Dashboard</a></li>
										
					</ul>
					<ul class="nav navbar-nav navbar-right">
                        <li>
							<p class="navbar-text">Signed in as <%=username%></p>
						</li>
						<li>
							<a href="logout_ex3_8200127.jsp"><span class="glyphicon glyphicon-log-out"></span> Sign out</a>
						</li>								        	
			        </ul>		
		
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>

		<div class="container theme-showcase" role="main">

			<!-- Main jumbotron for a primary marketing message or call to action -->
			<div class="jumbotron">
				<h1>3η Ατομική Άσκηση</h1>
			</div>

			<!-- Page Title -->
			<div class="page-header">
				<h1>Welcome <code><%=firstname%> <%=lastname%></code></h1>
			</div>
            
            <div class="row">

                <div class="col-xs-12">
                    <h2>Available Users <span class="badge"><%=unumber%></span></h2>
				
                </div>

            </div>

		  <table class="table table-bordered">
			<thead>
			  <tr class="info">
			    <th scope="col">A/A</th>
			    <th scope="col">Last Name</th>
			    <th scope="col">First Name</th>
			    <th scope="col">Email</th>
			  </tr>
			</thead>
			<tbody>
				<% int aa = 0;
				for(User user: users) {
					++aa;
				%>
					<tr <% if(username.equals(user.getUsername())) { %> class="success" <%}%>>
						<td><%=aa %></td>
						<td><%=user.getFirstname() %></td>
						<td><%=user.getLastname() %></td>
						<td>
							<a href="profile_ex3_8200127.jsp?uname=<%=user.getUsername()%>"><%=user.getEmail() %></a></td>
					</tr>
				
				<%
				}
				%>
					
			   
			</tbody>
		 </table>
			
		</div>
		<!-- /container -->

          <!-- footer -->
		<%@ include file="footer_ex3_8200127.jsp"  %>
		<!-- End footer -->
		
	</body>
</html>